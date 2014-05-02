# .\MongoServices.ps1
# CD C:\Sitecore\Mongo

$rootDir = Get-Item -Path "."
$configDir = $rootDir.CreateSubdirectory($servicedirname)

$serviceUserName = ".\azureuser"
$servicePassword = "Test123!"

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
    
    mongodb-win32-x86_64-2008plus-2.4.5\bin\mongod.exe --config $configFileName --install --serviceName $serviceName --serviceDisplayName $serviceName --serviceUser $serviceUserName --servicePassword $servicePassword
        
    "Finished Installing Service"

}

