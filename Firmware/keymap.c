/*
 * Author: Josue Galeas
 * Last Edit: 2018.03.15
 */

#include <stdint.h>
#include <stdbool.h>

#include "keycode.h"
#include "action.h"
#include "action_macro.h"
#include "report.h"
#include "host.h"
#include "print.h"
#include "debug.h"
#include "keymap.h"

const uint8_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] =
{
	/* Default Layer */
	KEYMAP(GRV, PSLS, PAST, PMNS, ESC, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, PSCR, SLCK, PAUS, \
			P7, P8, P9, PPLS, TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, INS, HOME, PGUP, \
			P4, P5, P6, NO, CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, NO, ENT, DELETE, END, PGDN, \
			P1, P2, P3, PENT, LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, NO, RSFT, NO, FN1, UP, FN2, \
			P0, NO, PDOT, NO, LCTL, LGUI, LALT, NO, NO, SPC, NO, NO, NO, RALT, RGUI, NO, FN0, RCTL, LEFT, DOWN, RGHT),

	/* FN Layer */
	KEYMAP(NLCK, TRNS, TRNS, TRNS, TRNS, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS),

	/* Lower Layer */
	KEYMAP(TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, SLEP, WAKE, PWR, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, MUTE, VOLD, VOLU, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, MPRV, MPLY, MNXT, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS),

	/* Upper Layer */
	KEYMAP(TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, BTN1, MS_U, BTN2, TRNS, WH_U, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, MS_L, MS_D, MS_R, WH_L, WH_D, WH_R, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, BTN3, BTN4, BTN5, ACL0, ACL1, ACL2, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
			TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS),
};

const action_t PROGMEM fn_actions[] =
{
	ACTION_LAYER_MOMENTARY(1), // FN
	ACTION_LAYER_MOMENTARY(2), // Lower
	ACTION_LAYER_MOMENTARY(3), // Upper
};