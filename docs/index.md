# USB Power Cut Beta 2

A small device which can disconnect power to an attached USB device. The data pins are connected permanently.

## Example use cases
- Disconnect the Beacon surface scanner if not in use
- Turn off a screen powered by USB

## Usage
- Connect GND to any V-/GND point on your mainboard (NOT Fan-, that is not GND/V- but a switched GND!)
- Connect CTL to any pin that can pull CTL low, examples:
  - Fan- on any fan output
  - GPIO pins which are directly connected to STM32 MCUs (RP2040 MCUs cannot handle direct connection, Fan- on RP2040 MCUs is fine)
  - Toggle Switch between CTL and GND 

## Technical Details
- CTL is pulled up to 5V via a 10k resistor (hence the RP2040 MCU limitation)
- Uses a dedicated USB power controller to safely switch power (AP2111SG)
- Maximum current capability: 2A


