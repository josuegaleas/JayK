# JayKey1
Full-size mechanical keyboard with USB-C and no lighting, inspired by the [ONO-SENDAI MATRIX 83](https://imgur.com/a/v5pzh#FiXKcm0).

JayKey2 with *more* features can be found [here](https://github.com/josuegaleas/JayKey2).

### Disclaimer
I have not printed this PCB out yet, and I am not 100% certain the design works. Please print with discretion.

## Features
- TMK-based firmware
- Numpad on the left for comfort
- USB-C port, either on the left or right corner
- No lighting for less complexity and lower cost

## Layout
### Default Layer
![Default Layer](https://raw.githubusercontent.com/josuegaleas/jay-images/master/keyboard-layout.png?raw=true)
### Other Layers
![Other Layers](https://raw.githubusercontent.com/josuegaleas/jay-images/master/keyboard-layout_layers.png?raw=true)

JSON files can be found [here](http://www.keyboard-layout-editor.com/#/gists/af0c6e535240ab3f75b8c3ce740c63bb) and [here](http://www.keyboard-layout-editor.com/#/gists/dfdca11b15b211802d6edf1502e16ecf), for editing in [KLE](http://www.keyboard-layout-editor.com/).

## Major Components
- Microcontroller — [Microchip's AT90USB1286](https://www.microchip.com/wwwproducts/en/AT90USB1286)
- USB-C port — [Hirose's CX90B1-24P](https://www.hirose.com/product/en/products/CX/CX90B1%2D24P/)
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

## References
- Layout — [Physical Keyboard Layouts Explained In Detail](https://www.massdrop.com/talk/947/keyboard-layouts-explained-in-detail-many-pics)
- PCB
	- [Keyboard PCB Guide](https://github.com/ruiqimao/keyboard-pcb-guide)
	- [Teensy++ 2.0 USB Development Board](https://www.pjrc.com/store/teensypp.html)
	- [Microchip's AT90USBKEY](https://www.microchip.com/DevelopmentTools/ProductDetails/AT90USBKEY2)
- Firmware
	- [TMK Keyboard Firmware Collection](https://github.com/tmk/tmk_keyboard/)
	- [How to build your very own keyboard firmware](https://deskthority.net/workshop-f7/how-to-build-your-very-own-keyboard-firmware-t7177.html)
	- [Introduction to Keyboard Programming](https://www.massdrop.com/article/introduction-to-keyboard-programming)

## Development
Clone this repository with:
```
git clone --recursive https://github.com/josuegaleas/JayKey1.git
```
Within KiCad, navigate to the `PCB` folder and open `JayKey1.pro`.

Firmware can be compiled using `make` within the `Firmware` folder.
