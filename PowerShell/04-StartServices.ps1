
foreach($service in $mongoservices)
{
    $serviceName = $service["ServiceName"]   
    $servicePort = $service["Port"] 
    
    "Starting Service: " + $serviceName
    
    Start-Service -Name $serviceName
        
    "Finished Starting Service"
    
    "need to wait"
    
    "db.collections()" | ..\bin\mongo.exe --port $servicePort

}
