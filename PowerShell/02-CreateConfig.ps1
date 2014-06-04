
$rootDir = Get-Item -Path ".."
$configDir = $rootDir.CreateSubdirectory($servicedirname)


$configFileContents = @"
logpath = {0}Logs\mongo.log
dbpath = {0}Data\
port = {1}
replSet = {2}
rest = true
"@



foreach($service in $mongoservices)
{

    $serviceName = $service["ServiceName"]
    $serviceDisk = $service["Disk"]+"\"
    $servicePath = [System.String] $mongoservicepath -f $serviceDisk, $serviceName
    "Service path: " + $servicePath
    "Service port: " + $service["Port"]
    "Service replica set: " + $service["ReplicaSet"]

    $configFileName = $configDir.FullName+"\"+$serviceName+".conf"
    "Writing file: " + $configFileName

    $stream = [System.IO.StreamWriter] "$configFileName"
    
    $stream.Write($configFileContents, $servicePath, $service["Port"], $service["ReplicaSet"] )
      
    $stream.close()

    "Finished writing file"
}

