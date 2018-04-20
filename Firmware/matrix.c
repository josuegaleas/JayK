/*
 * Author: Josue Galeas
 * Last Edit: 2018.04.20
 */

#include <stdint.h>
#include <stdbool.h>
#include <avr/io.h>
#include <util/delay.h>
#include "print.h"
#include "debug.h"
#include "util.h"
#include "matrix.h"

#ifndef DEBOUNCE
#define DEBOUNCE 5
#endif

static const matrix_row_t one = 1;
static uint8_t debouncing = DEBOUNCE;
static matrix_row_t matrix[MATRIX_ROWS];
static matrix_row_t matrix_debouncing[MATRIX_ROWS];

static void init_cols(void);
static matrix_row_t read_cols(void);
static void unselect_rows(void);
static void select_row(uint8_t row);

void matrix_init(void)
{
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
	for (uint8_t i = 0; i < MATRIX_ROWS; i++)
	{
		select_row(i);
		_delay_us(30); /* FIXME: Is this the right amount of time? */
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
	/* Columns 5-12 on PC0-7 */
	/* Columns 13-20 on PF7-0 */
	/* DDR: 0, PORT: 1 */

	DDRD &= ~0b11111000;
	PORTD |= 0b11111000;

	DDRC &= ~0b11111111;
	PORTC |= 0b11111111;

	DDRF &= ~0b11111111;
	PORTF |= 0b11111111;
}

static matrix_row_t read_cols(void)
{
	/* Columns 0-4 on PD3-7 */
	/* Columns 5-12 on PC0-7 */
	/* Columns 13-20 on PF7-0 */

	return (PIND & (1 << 3) ? 0:(one << 0)) |
		(PIND & (1 << 4) ? 0:(one << 1)) |
		(PIND & (1 << 5) ? 0:(one << 2)) |
		(PIND & (1 << 6) ? 0:(one << 3)) |
		(PIND & (1 << 7) ? 0:(one << 4)) |
		(PINC & (1 << 0) ? 0:(one << 5)) |
		(PINC & (1 << 1) ? 0:(one << 6)) |
		(PINC & (1 << 2) ? 0:(one << 7)) |
		(PINC & (1 << 3) ? 0:(one << 8)) |
		(PINC & (1 << 4) ? 0:(one << 9)) |
		(PINC & (1 << 5) ? 0:(one << 10)) |
		(PINC & (1 << 6) ? 0:(one << 11)) |
		(PINC & (1 << 7) ? 0:(one << 12)) |
		(PINF & (1 << 7) ? 0:(one << 13)) |
		(PINF & (1 << 6) ? 0:(one << 14)) |
		(PINF & (1 << 5) ? 0:(one << 15)) |
		(PINF & (1 << 4) ? 0:(one << 16)) |
		(PINF & (1 << 3) ? 0:(one << 17)) |
		(PINF & (1 << 2) ? 0:(one << 18)) |
		(PINF & (1 << 1) ? 0:(one << 19)) |
		(PINF & (1 << 0) ? 0:(one << 20));
}

static void unselect_rows(void)
{
	/* Rows 0-4 on PA3-7 */
	/* DDR: 0, PORT: 0 */

	DDRA |= 0b11111000;
	PORTA |= 0b11111000;
}

static void select_row(uint8_t row)
{
	/* Rows 0-4 on PA3-7 */
	/* DDR: 1, PORT: 0 */

	DDRA |= (1 << (row + 3));
	PORTA &= ~(1 << (row + 3));
}
