// This is the c configuration file for the keymap
/*
Copyright 2012 Jun Wako <wakojun@gmail.com>
Copyright 2015 Jack Humbert
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#pragma once

/* Select hand configuration */

#define SPLIT_USB_DETECT
#define MASTER_RIGHT
// #define MASTER_LEFT
// #define EE_HANDS

#define TAPPING_FORCE_HOLD
#define TAPPING_TERM 100

// --- RGB LIGHT CONFIG ---
// > Reference
// >    https://docs.qmk.fm/#/feature_rgblight

#ifdef RGBLIGHT_ENABLE
    // #define DRIVER_LED_TOTAL 70

    #undef RGBLED_NUM
    #define RGBLED_NUM 6 // 接続されているLEDの数

    // #undef RGBLIGHT_LIMIT_VAL
    // #define RGBLIGHT_LIMIT_VAL 255

    // --- COLOR ---
    #define RGBLIGHT_DEFAULT_HUE 128

    #define RGB_DI_PIN D3

    #define RGBLIGHT_LAYERS
    /*
    #define LED_LAYOUT( \
        L00, L01, L02, L03, L04, L05,    R00, R01, R02, R03, R04, R05, \
        L10, L11, L12, L13, L14, L15,    R10, R11, R12, R13, R14, R15, \
        L20, L21, L22, L23, L24, L25,    R20, R21, R22, R23, R24, R25, \
        L30, L31, L32, L33, L34, L35,    R30, R31, R32, R33, R34, R35, \
        L40, L41, L42, L43, L44,         R40, R41, R42, R43, R44 \
    ) { \
        L05, L04, L03, L02, L01, L00, \
        L10, L11, L12, L13, L14, L15, \
        L25, L24, L23, L22, L21, L20, \
        L30, L31, L32, L33, L34, L35, \
        L44, L43, L42, L41, L40, \
        R00, R01, R02, R03, R04, R05, \
        R15, R14, R13, R12, R11, R10, \
        R20, R21, R22, R23, R24, R25, \
        R35, R34, R33, R32, R31, R30, \
        R40, R41, R42, R43, R44 \
    }

    #define RGBLIGHT_LED_MAP LED_LAYOUT( \
            0, 1,  2,  3,  4,  5,       31, 30, 31, 32, 33, 34,\
            6, 7,  8,  9,  10, 11,      35, 36, 37, 38, 39, 40, \
            12, 13, 14, 15, 16, 17,     41, 42, 43, 44, 45, 46, \
            18, 19, 20, 21, 22, 23,     47, 48, 49, 50, 51, 52, \
            24, 25, 26, 27, 28,      54, 55, 56, 57, \
    )
    */
    // Underglow
    // #undef RGBLED_NUM
    // #define RGBLED_NUM 14    // Number of LEDs
    // #define RGBLIGHT_ANIMATIONS
    // #define RGBLIGHT_SLEEP
#endif
