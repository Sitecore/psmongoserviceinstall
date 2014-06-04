

foreach($service in $mongoservices)
{
    $serviceName = $service["ServiceName"]

    "Removing Service: " + $serviceName

    ..\bin\mongod.exe --remove --serviceName $serviceName
    
    "Finished Removing Service"
}

