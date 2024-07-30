# Instructions

PowerShell scripts to read sensors from `Open Hardware Monitor` and return to `HASS.Agent`.

## Requirements

- [Open Hardware Monitor](https://openhardwaremonitor.org/)
- [HASS.Agent](https://lab02-research.org/hassagent/)
- Windows 11
- PowerShell

## Scripts available

- [CPU Temperature](./scripts/cpu-temperature.ps1)
- [CPU Frequency](./scripts/cpu-frequency.ps1)
- [CPU Load](./scripts/cpu-load.ps1)
- [Memory Usage](./scripts/memory-usage.ps1)
- [GPU Temperature](./scripts/gpu-temperature.ps1)
- [GPU Frequency](./scripts/gpu-frequency.ps1)
- [GPU Load](./scripts/gpu-load.ps1)
- [GPU VRAM Usage](./scripts/gpu-vram-usage.ps1)

## Open Hardware Monitor

1. Download `Open Hardware Monitor` and unzip it: https://openhardwaremonitor.org/

1. Run `OpenHardwareMonitor.exe` as Administrator.

1. If you want, configure it to startup with Windows. Click on `Options` menu and then:

    - [x] Start minimized
    - [x] Minimize to Tray
    - [x] Run on Windows startup

## HASS.Agent

1. Download `HASS.Agent` and install it: https://lab02-research.org/hassagent/

1. Follow the instructions to connect `HASS.Agent` to your Home Assistant and MQTT servers (required to send sensors data from PC to Home Assistant).

1. (Optional) Configure the `Satellite Service` to allow the `HASS.Agent` to work when the user is not logged on Windows.

1. Add `Sensors` following the `Script usage` instructions below.

## Script usage

1. Make sure that `Open Hardware Monitor` is running in background.

1. Copy or create the `.ps1` script as you want.

    In the script content you need to:

    - Import the `read-sensor.ps1` script:
    - Call the `Read-Sensor` function setting the `SensorType` and `Name` respectively.

    > Don't forget to copy the [read-sensor.ps1](./scripts/read-sensor.ps1) to the same folder

1. Test your script pasting the `path` to the `.ps1` file on the PowerShell terminal, ex:

    ```
    C:\scripts\gpu-temperature.ps1
    ```

1. On `HASS.Agent` add a new `Local Sensor` -> select `PowerShellSensor` -> and paste the path to the `.ps1` file (ex. `C:\scripts\gpu-temperature.ps1`) in the `powershell command or script` field.

1. Save and you are done! 🎉

## Notes

Some `SensorType` and `Name` are not always the same in `Open Hardware Monitor` GUI and on PowerShell script.

So, to find the correct sensors available in PowerShell, run the script [list-sensors.ps1](./scripts/list-sensors.ps1) on Terminal.

Example:

| SensorType  | Name                  | Value (example)  |
|-------------|-----------------------|--------|
| Clock       | Bus Speed             | 100,44 |
| Clock       | CPU Core #1           | 4017,42|
| Clock       | CPU Core #2           | 4017,42|
| Clock       | CPU Core #3           | 4017,42|
| Clock       | CPU Core #4           | 4017,42|
| Clock       | CPU Core #5           | 4017,42|
| Clock       | CPU Core #6           | 4017,42|
| Clock       | CPU Core #7           | 4017,42|
| Clock       | CPU Core #8           | 4017,42|
| Clock       | GPU Core              | 1410,00|
| Clock       | GPU Memory            | 7200,98|
| Clock       | GPU Shader            | 0,00   |
| Control     | GPU Fan               | 47,00  |
| Data        | Available Memory      | 19,79  |
| Data        | Total Bytes Written   | 2760,48|
| Data        | Total Bytes Written   | 1393,42|
| Data        | Used Memory           | 12,13  |
| Factor      | Write Amplification   | 3,10   |
| Factor      | Write Amplification   | 4,44   |
| Fan         | GPU                   | 1644,00|
| Level       | Remaining Life        | 99,00  |
| Level       | Remaining Life        | 99,00  |
| Load        | CPU Core #1           | 7,03   |
| Load        | CPU Core #2           | 4,69   |
| Load        | CPU Core #3           | 7,81   |
| Load        | CPU Core #4           | 7,03   |
| Load        | CPU Core #5           | 6,25   |
| Load        | CPU Core #6           | 7,81   |
| Load        | CPU Core #7           | 0,00   |
| Load        | CPU Core #8           | 7,81   |
| Load        | CPU Total             | 6,05   |
| Load        | GPU Bus Interface     | 0,00   |
| Load        | GPU Core              | 0,00   |
| Load        | GPU Frame Buffer      | 0,00   |
| Load        | GPU Memory            | 12,65  |
| Load        | GPU Video Engine      | 0,00   |
| Load        | Memory                | 38,00  |
| Load        | Used Space            | 48,20  |
| Load        | Used Space            | 37,87  |
| Load        | Used Space            | 36,21  |
| Power       | CPU Core #1           | 7,10   |
| Power       | CPU Core #2           | 6,11   |
| Power       | CPU Core #3           | 6,76   |
| Power       | CPU Core #4           | 6,07   |
| Power       | CPU Core #5           | 5,85   |
| Power       | CPU Core #6           | 6,92   |
| Power       | CPU Core #7           | 4,23   |
| Power       | CPU Core #8           | 4,56   |
| Power       | CPU Cores             | 47,60  |
| Power       | CPU Package           | 59,39  |
| Power       | GPU Power             | 43,00  |
| SmallData   | GPU Memory Free       | 7155,68|
| SmallData   | GPU Memory Total      | 8192,00|
| SmallData   | GPU Memory Used       | 1036,32|
| Temperature | CPU Package           | 57,12  |
| Temperature | CPU Tctl              | 67,12  |
| Temperature | GPU Core              | 42,00  |
| Temperature | Temperature           | 26,00  |
| Temperature | Temperature           | 27,00  |
| Throughput  | GPU PCIE Rx           | 0,00   |
| Throughput  | GPU PCIE Tx           | 0,00   |
