function Read-Sensor($sensorType, $sensorName) {
  $sensorData = List-Sensors $sensorType $sensorName "1"

  return "$($sensorData.Value)"
}

function List-Sensors($sensorType, $sensorName, $limit) {
  $query = "SELECT * FROM Sensor WHERE SensorType=SensorType"

  if ($sensorType) {
    $query += " AND SensorType='$sensorType'"
  }

  if ($sensorName) {
    $query += " AND Name='$sensorName'"
  }

  $sensorData = Get-WmiObject `
      -Namespace "root\OpenHardwareMonitor" `
      -Query $query

  if ($limit) {
    $sensorData = $sensorData | Select-Object -first $limit
  }

  return $sensorData
}
