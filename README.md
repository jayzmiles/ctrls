# ctrls

Inspired by Tyler Etter's [Athenaeum](https://github.com/northern-information/athenaeum) - A collection of stand-alone scripts demonstrating interactive patterns for the monome [norns](https://monome.org/docs/norns/).

## Scripts

- **1_momentary_and_toggle.lua** - An independent momentary button (k2) and toggle (k3). K2 is active for as long as you press + hold `k2`. K3 can be toggled on and off by pressing `k3`.
- **2_momentary_with_latch.lua** - A momentary button (k2) and a latching toggle button (k3). This interactive pattern is similar to the "FUNC" button on the Elektron Digitakt/Digitone. Press + hold `k2` to activate. Optionally, press `k3` to latch or unlatch `k2`.

- **3_momentary_with_latch_enc.lua** - A momentary button (k2) and a latching encoder (e2). A variation on momentary_with_latch.lua. Press + hold `k2` to activate. Optionally, spin `e2` to latch or unlatch `k2`. This interactive pattern is similar the Teenage Engineering OP-1's sequencer "HOLD".

## Todo

- **x_long_press.lua** - A momentary button (k2) that performs an action after being pressed for some time.
- **x_locking_encoder.lua** - A locking encoder (e2) and a momentary button (k2) to unlock it.
- **x_mode_selector.lua** - A momentary button (k2) that opens a contextual menu, which can be navigated using an encoder (e2). Releasing (k2) makes a selection.
