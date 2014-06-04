
foreach($service in $mongoservices)
{
    $serviceName = $service["ServiceName"]    
    
    "Stopping Service: " + $serviceName
    
    Stop-Service -Name $serviceName
        
    "Finished Stopping Service"

}

