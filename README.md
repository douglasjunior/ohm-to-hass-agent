# Read sensors from Open Hardware Monitor

Here you will found my Power Shell scripts to read sensors from [Open Hardware Monitor](https://openhardwaremonitor.org/) with [HASS.Agent](https://lab02-research.org/hassagent/).

## Scripts

- [CPU Temperature](./cpu-temperature.ps1)
- [CPU Frequency](./cpu-frequency.ps1)
- [GPU Temperature](./gpu-temperature.ps1)
- [GPU Frequency](./gpu-frequency.ps1)

## Usage

1. Open `Open Hardware Monitor` and keep it running on background (you might want to configure it to startup with Windows too).

1. Copy or create the `.ps1` script as you want. 

    - Import the `read-sensor.ps1` script:
    - Call the `Read-Sensor` function setting the `SensorType` and `Name` respectively.


1. Test your script pasting the `path` to the `.ps1` file on the PowerShell terminal, ex:

    ```
    C:\scripts\gpu-temperature.ps1
    ```

1. On `HASS.Agent` add a new `Local Sensor` -> select `Power Shell Sensor` -> and paste the path to the `.ps1` file (ex. `C:\scripts\gpu-temperature.ps1`) in the proper field.

1. You are done!
