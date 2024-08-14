# Video Demo
[![Youtube](http://i3.ytimg.com/vi/qw46eqpLP1Q/maxresdefault.jpg)](https://www.youtube.com/watch?v=qw46eqpLP1Q)

## Firmware Structure
See this readme in this repo: [SAO31](https://github.com/lle/defcon31-addon)
The foundation firmware is from my SAO from last year. This year's firmware adds an the Racing game mode in addition to the animation/screensaver mode.

## How to Flash
Things you need:
* ST-Link - I personally use an STM32F0 Nucleo Board: [497-15096-ND](https://www.digikey.ca/en/products/detail/stmicroelectronics/NUCLEO-F072RB/5047984)
* Female Connector: [H2193-ND](https://www.digikey.ca/en/products/detail/hirose-electric-co-ltd/DF13-4P-1-25DSA/241767?s=N4IgTCBcDaIBJgIwE4DMBaAcgERAXQF8g)
* Male Connector: [H2181-ND](https://www.digikey.ca/en/products/detail/hirose-electric-co-ltd/DF13-4S-1-25C/241750)
* Precrimped wires x4: [H4BXG-10112-B8-ND](https://www.digikey.ca/en/products/detail/hirose-electric-co-ltd/H4BXG-10112-B8/426117)

### Instruction
* Connect the ST-Link SWD header to the PCB's programming port
![connection](https://raw.githubusercontent.com/lle/defcon31-addon/main/img/stLink.jpg)

* Compile the code in STM CubeIDE: "Project"->"Build All"
* Connect your Nucleo board to your computer
* Configure the debugger as follows: "Run" -> "Debug Configurations"
![connection](https://raw.githubusercontent.com/lle/defcon31-addon/main/img/debugConfig.png)
* Flash the firmware: "Run" -> "Run"
* You will see this in the logs
```
Memory Programming ...
Opening and parsing file: ST-LINK_GDB_server_a15460.srec
  File          : ST-LINK_GDB_server_a15460.srec
  Size          : 21.34 KB 
  Address       : 0x08000000 
Erasing memory corresponding to segment 0:
Erasing internal memory sectors [0 21]
Download in Progress:
File download complete
Time elapsed during download operation: 00:00:01.454
Verifying ...
Download verified successfully 
Shutting down...
Exit.
```
https://github.com/lle/defcon31-addon
