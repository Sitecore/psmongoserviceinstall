

foreach($service in $mongoservices)
{
    $serviceName = $service["ServiceName"]
    $serviceDisk = $service["Disk"]+"\"
    $servicePath = $mongoservicepath -f $serviceDisk, $serviceName
    
    $dataPath = "{0}data\" -f $servicePath
    $logPath = "{0}logs\" -f $servicePath
    
    $configFileName = $configDir.FullName+"\"+$serviceName+".conf"
    "Installing Service: " + $serviceName
    "Config File: " + $configFileName
    
    ..\bin\mongod.exe --config $configFileName --install --httpinterface --serviceName $serviceName --serviceDisplayName $serviceName --serviceUser $serviceUserName --servicePassword $servicePassword
        
    "Finished Installing Service"

}

