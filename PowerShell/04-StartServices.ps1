# .\MongoServices.ps1
#CD C:\Sitecore\Mongo

foreach($service in $mongoservices)
{
    $serviceName = $service["ServiceName"]    
    
    "Starting Service: " + $serviceName
    
    Start-Service -Name $serviceName
        
    "Finished Starting Service"

}

"rs.conf()" | .\mongodb-win32-x86_64-2008plus-2.4.5\bin\mongo.exe
