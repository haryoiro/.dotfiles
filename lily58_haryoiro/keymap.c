
#include QMK_KEYBOARD_H

/*
*   COMBOKEY DEFINITIONS
*/
enum combos
{
  CR_H_BS,
  CR_LEFT_HOME,
  CR_DOWN_PGDN,
  CR_UP_PGUP,
  CR_RGHT_END,
}

const uint16_t PROGMEM cr_h_combo[]    = {KC_LCTL, KC_H,    COMBO_END}; // CTRL + H -> Backslash

// ADVANCED VIM LIKE ALLOW
const uint16_t PROGMEM cr_left_combo[] = {KC_LCTL, KC_LEFT, COMBO_END};
const uint16_t PROGMEM cr_down_combo[] = {KC_LCTL, KC_DOWN, COMBO_END};
const uint16_t PROGMEM cr_up_combo[]   = {KC_LCTL, KC_UP,   COMBO_END};
const uint16_t PROGMEM cr_rght_combo[] = {KC_LCTL, KC_RGHT, COMBO_END};

combo_t key_combos[] = {
    CR_H_BS       = COMBO(ctrl_h_combo,  KC_INT1),
    CR_LEFT_HOME  = COMBO(cr_left_combo, KC_HOME),
    CR_DOWN_PGDN  = COMBO(cr_down_combo, KC_PGDN),
    CR_UP_PGUP    = COMBO(cr_up_combo,   KC_PGUP),
    CR_RGHT_END   = COMBO(cr_rght_combo, KC_END),
};

/*
 *   LAYER DEFINITIONS
 */
enum layer_number
{
  _DEFA = 0,
  _FUNC,
  _ALOW,
  _SYMB,
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

    [_DEFA] = LAYOUT(
        KC_LGUI,  KC_1,     KC_2,     KC_3,     KC_4,     KC_5,                         KC_6,     KC_7,     KC_8,    KC_9,     KC_0,      KC_GRV,
        KC_TAB,   KC_Q,     KC_W,     KC_E,     KC_R,     KC_T,                         KC_Y,     KC_U,     KC_I,    KC_O,     KC_P,      KC_LBRC,
        KC_LCTL,  KC_A,     KC_S,     KC_D,     KC_F,     KC_G,                         KC_H,     KC_J,     KC_K,    KC_L,     KC_SCLN,   KC_RBRC,
        KC_LSFT,  KC_Z,     KC_X,     KC_C,     KC_V,     KC_B,     XXXXXXX,  XXXXXXX,  KC_N,     KC_M,     KC_COMM, KC_DOT,   KC_SLSH,   KC_LSFT,
                                      KC_LALT,  KC_ESC,   MO(_SYMB),KC_SPC,   KC_ENT,   MO(_ALOW),XXXXXXX,  MO(_FUNC)),

    [_FUNC] = LAYOUT(
        _______,  _______,  _______,  _______,  _______,  _______,                      _______,  _______,  _______,  _______,  _______,  _______,
        KC_F1,    KC_F2,    KC_F3,    KC_F4,    KC_F5,    KC_F6,                        KC_F7,    KC_F8,    KC_F9,    KC_F10,   KC_F11,   KC_F12,
        _______,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,                      XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,
        _______,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,
                                      _______,  _______,  _______,  _______,  _______,  _______,  _______,  _______),

    [_ALOW] = LAYOUT(
        XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,                      XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,
        XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,                      KC_HOME,  KC_PGDN,  KC_PGUP,  KC_END,   XXXXXXX,  XXXXXXX,
        KC_F1,    KC_F2,    KC_F3,    KC_F4,    KC_F5,    KC_F6,                        KC_LEFT,  KC_DOWN,  KC_UP,    KC_RGHT,  XXXXXXX,  XXXXXXX,
        KC_F7,    KC_F8,    KC_F9,    KC_F10,   KC_F11,   KC_F12,   XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,
                                      _______,  _______,  _______,  _______,  _______,  _______, _______, _______),

    [_SYMB] = LAYOUT(
        _______,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,                      XXXXXXX,  XXXXXXX,  XXXXXXX,  KC_MINS,  KC_EQL,   KC_JYEN,
        _______,  KC_1,     KC_2,     KC_3,     KC_4,     KC_5,                         KC_6,     KC_7,     KC_8,     KC_9,     KC_0,     KC_QUOT,
        _______,  KC_EXLM,  KC_DQUO,  KC_HASH,  KC_DLR,   KC_PERC,                      KC_CIRC,  KC_AMPR,  KC_ASTR,  KC_LPRN,  KC_RPRN,  KC_SCLN,
        _______,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  XXXXXXX,  KC_LBRC,  KC_RBRC,  KC_SLSH,  KC_RO,
                                      _______,  _______,  _______,  _______,  _______,  _______,  _______,  _______)
};


//SSD1306 OLED update loop, make sure to enable OLED_ENABLE=yes in rules.mk
#ifdef OLED_ENABLE

oled_rotation_t oled_init_user(oled_rotation_t rotation) {
  if (!is_keyboard_master())
    return OLED_ROTATION_180;  // flips the display 180 degrees if offhand
  return rotation;
}

// When you add source files to SRC in rules.mk, you can use functions.
const char *read_layer_state(void);
const char *read_logo(void);
void set_keylog(uint16_t keycode, keyrecord_t *record);
const char *read_keylog(void);
const char *read_keylogs(void);


void oled_task_user(void) {
  if (is_keyboard_master()) {
      oled_write_ln(read_layer_state(), false);
      oled_write_ln(read_keylog(), false);
      oled_write_ln(read_keylogs(), false);
  } else {
      oled_write(read_logo(), false);
  }
}


bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    set_keylog(keycode, record);
  return true;
}

#endif  // OLED_ENABLE
