# JayK
Full-size mechanical keyboard with USB-C and no lighting, inspired by the [ONO-SENDAI MATRIX 83](https://imgur.com/a/v5pzh#FiXKcm0).

JayK Pro with *more* features can be found [here](https://github.com/josuegaleas/JayK-Pro).

### Disclaimer
I have not printed this PCB out yet, and I am not 100% certain the design works. Please print with discretion.

## Features
- TMK-based firmware
- Numpad on the left for comfort
- USB-C port for modernness
- No lighting for less complexity and lower cost

## Layout
### Default Layer
![Default Layer](https://raw.githubusercontent.com/josuegaleas/jay-images/master/keyboard.png)
### Other Layers
![Other Layers](https://raw.githubusercontent.com/josuegaleas/jay-images/master/keyboard_Layers.png)

JSON files for these layouts can be found [here](https://gist.github.com/josuegaleas/417a4ff5fc216ecdc7868effc9a7b36f) and [here](https://gist.github.com/josuegaleas/c81fd5085f4eeaf2fcede5950b9f7410), for editing in [KLE](http://www.keyboard-layout-editor.com/).

## Major Components
- Microcontroller — [Microchip's AT90USB1286](https://www.microchip.com/wwwproducts/en/AT90USB1286)
- USB-C Port — [Amphenol's 12401610E4#2A](https://www.amphenol-icc.com/usb-3-1-type-c-gen-2-12401610e42a.html)
- Crystal — [EPSON's FA-238](https://www5.epsondevice.com/en/products/crystal_unit/fa238.html)

## Tools
- Layout — [Keyboard Layout Editor](http://www.keyboard-layout-editor.com/)
- PCB — [KiCad EDA](http://kicad-pcb.org/)
- Firmware
	- [tmk_core](https://github.com/tmk/tmk_core)
	- [avr-gcc](https://www.gnu.org/software/gcc/gcc.html)
	- [dfu-programmer](https://dfu-programmer.sourceforge.io/)
- Models — [Plate & Case Builder](http://builder.swillkb.com/)

### KiCad Libraries
- [kicad_lib_tmk](https://github.com/tmk/kicad_lib_tmk)
- [keyboard_parts.pretty](https://github.com/tmk/keyboard_parts.pretty)
- [keebs.pretty](https://github.com/egladman/keebs.pretty)
- [jay-kicad-lib](https://github.com/josuegaleas/jay-kicad-lib)

## Development
Clone this repository with:
```bash
git clone --recursive https://github.com/josuegaleas/JayK.git
```

### Hardware
Within KiCad, navigate to the `PCB` folder and open `JayK.pro`.

Using a grid size of `0.0234375` inches for editing the layout.

### Software
Firmware can be compiled using `make` within the `Firmware` folder.

Refer to [this](https://github.com/tmk/tmk_keyboard/blob/master/tmk_core/doc/build.md) for dependencies and programming.

## References
- Layout — [Physical Keyboard Layouts Explained In Detail](https://drop.com/talk/947/physical-keyboard-layouts-explained-in-detail)
- PCB
	- [Keyboard PCB Guide](https://github.com/ruiqimao/keyboard-pcb-guide)
	- [Teensy++ 2.0 USB Development Board](https://www.pjrc.com/store/teensypp.html)
	- [Microchip's AT90USBKEY](https://www.microchip.com/DevelopmentTools/ProductDetails/AT90USBKEY2)
- Firmware
	- [TMK Keyboard Firmware Collection](https://github.com/tmk/tmk_keyboard/)
	- [How to build your very own keyboard firmware](https://deskthority.net/viewtopic.php?f=7&t=7177&start=)
