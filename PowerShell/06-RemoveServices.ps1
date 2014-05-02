# .\MongoServices.ps1
# CD C:\Sitecore\Mongo

foreach($service in $mongoservices)
{
    $serviceName = $service["ServiceName"]

    "Removing Service: " + $serviceName

    mongodb-win32-x86_64-2008plus-2.4.5\bin\mongod.exe --remove --serviceName $serviceName
    
    "Finished Removing Service"
}

