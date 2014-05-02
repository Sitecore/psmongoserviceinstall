# .\MongoServices.ps1


foreach($service in $mongoservices)
{
    $serviceName = $service["ServiceName"]
    $serviceDisk = $service["Disk"]+"\"
    $servicePath = $mongoservicepath -f $serviceDisk, $serviceName
    
    $dataPath = "{0}data\" -f $servicePath
    $logPath = "{0}logs\" -f $servicePath
    md $dataPath -ErrorAction SilentlyContinue
    md $logPath -ErrorAction SilentlyContinue
}

