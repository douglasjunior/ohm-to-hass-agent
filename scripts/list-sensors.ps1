. "$PSScriptRoot\read-sensor.ps1"

return List-Sensors | Sort-Object SensorType, Name | Format-Table -Property SensorType, Name, Value
