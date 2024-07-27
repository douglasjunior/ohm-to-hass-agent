function Read-Sensor($sensorType, $sensorName) {
  $sensorData = Get-WmiObject `
      -Namespace "root\OpenHardwareMonitor" `
      -Query "SELECT * FROM Sensor WHERE SensorType='$sensorType' AND Name='$sensorName'" `
      | Select-Object -first 1

  return "$($sensorData.Value)"
}