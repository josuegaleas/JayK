/*
 * Author: Josue Galeas
 * Last Edit: 2018.03.19
 */

#include <stdint.h>
#include <stdbool.h>
#include <avr/io.h>
#include <util/delay.h>
#include "print.h"
#include "debug.h"
/* #include "timer.h" */
#include "util.h"
#include "matrix.h"

#ifndef DEBOUNCE
#define DEBOUNCE 5
#endif

/* static matrix_row_t row_debounced = 0; */
/* static matrix_row_t row_debouncing = 0; */
/* static bool debouncing = false; */
/* static uint16_t debouncing_time = 0; */

static uint8_t debouncing = DEBOUNCE;
static matrix_row_t matrix[MATRIX_ROWS];
static matrix_row_t matrix_debouncing[MATRIX_ROWS];

static void init_cols(void);
static matrix_row_t read_cols(void);
static void unselect_rows(void);
static void select_row(uint8_t row);

void matrix_init(void)
{
	/* debug_enable = true; */
	/* debug_matrix = true; */
	/* debug_mouse = true; */

	unselect_rows();
	init_cols();

	for (uint8_t i = 0; i < MATRIX_ROWS; i++)
	{
		matrix[i] = 0;
		matrix_debouncing[i] = 0;
	}
}

uint8_t matrix_scan(void)
{
	/* if (row_debouncing != r) */
	/* { */
	/* 	row_debouncing = r; */
	/* 	debouncing = true; */
	/* 	debouncing_time = timer_read(); */
	/* } */

	/* if (debouncing && timer_elapsed(debouncing_time) > DEBOUNCE) */
	/* { */
	/* 	row_debounced = row_debouncing; */
	/* 	debouncing = false; */
	/* } */

	for (uint8_t i = 0; i < MATRIX_ROWS; i++)
	{
		select_row(i);
		_delay_us(30); // FIXME
		matrix_row_t cols = read_cols();

		if (matrix_debouncing[i] != cols)
		{
			matrix_debouncing[i] = cols;
			if (debouncing)
			{
				debug("Bounce: ");
				debug_hex(debouncing);
				debug("\n");
			}
			debouncing = DEBOUNCE;
		}
		unselect_rows();
	}

	if (debouncing)
	{
		if (--debouncing)
		{
			_delay_ms(1);
		}
		else
		{
			for (uint8_t i = 0; i < MATRIX_ROWS; i++)
			{
				matrix[i] = matrix_debouncing[i];
			}
		}
	}

	return 1;
}

inline matrix_row_t matrix_get_row(uint8_t row)
{
	return matrix[row];
}

static void init_cols(void)
{
	/* Columns 0-4 on PD3-7 */
	DDRD &= ~0b11111000;
	PORTD |= 0b11111000;

	/* Columns 5-12 on PC0-7 */
	DDRC &= ~0b11111111;
	PORTC |= 0b11111111;

	/* Columns 13-20 on PF7-0 */
	DDRF &= ~0b11111111;
	PORTF |= 0b11111111;
}

static matrix_row_t read_cols(void)
{
	/* Columns 0-20: PD3-7, PC0-7, PF7-0 */
	/* FIXME: 16-20 will give problems because of shift count overflow */
	/* Need to find a better solution somehow */
	return (PIND & (1<<3) ? 0:(1<<0)) |
		(PIND & (1<<4) ? 0:(1<<1)) |
		(PIND & (1<<5) ? 0:(1<<2)) |
		(PIND & (1<<6) ? 0:(1<<3)) |
		(PIND & (1<<7) ? 0:(1<<4)) |
		(PINC & (1<<0) ? 0:(1<<5)) |
		(PINC & (1<<1) ? 0:(1<<6)) |
		(PINC & (1<<2) ? 0:(1<<7)) |
		(PINC & (1<<3) ? 0:(1<<8)) |
		(PINC & (1<<4) ? 0:(1<<9)) |
		(PINC & (1<<5) ? 0:(1<<10)) |
		(PINC & (1<<6) ? 0:(1<<11)) |
		(PINC & (1<<7) ? 0:(1<<12)) |
		(PINF & (1<<7) ? 0:(1<<13)) |
		(PINF & (1<<6) ? 0:(1<<14)) |
		(PINF & (1<<5) ? 0:(1<<15)) |
		(PINF & (1<<4) ? 0:(1<<16)) |
		(PINF & (1<<3) ? 0:(1<<17)) |
		(PINF & (1<<2) ? 0:(1<<18)) |
		(PINF & (1<<1) ? 0:(1<<19)) |
		(PINF & (1<<0) ? 0:(1<<20));
}

static void unselect_rows(void)
{
	/* Rows 0-4: PA3-7 */
	DDRA &= ~0b11111000;
	PORTA &= ~0b11111000;
}

static void select_row(uint8_t row)
{
	DDRA |= (1<<row);
	PORTA &= ~(1<<row);
}
