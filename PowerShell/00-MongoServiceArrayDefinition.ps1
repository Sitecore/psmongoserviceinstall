#cd C:\Sitecore\Development\MONGOPS\psmongoserviceinstall\PowerShell

$mongoservicepath = "{0}Sitecore\Servers\MongoData\{1}\"

$servicedirname = "config"
$serviceNamePrefix = "SCXDB"
$serviceUserName = ".\adminuser"
$servicePassword = "password"
$hostName = "localhost"
$replicaSetId = "rs1"

$rootDir = Get-Item -Path ".."
$configDir = $rootDir.CreateSubdirectory($servicedirname)


# {0}: "Path"; {1}: "ServiceName"

$mongoservices = @( 
     @{ "ServiceName" = $serviceNamePrefix+"-00-Primary"; "Disk" = "C:"; "Port" = 27017; "Monitor" = 28017; "HostName" = $hostName; "Priority" = 100; "ReplicaSet" = $replicaSetId };
     @{ "ServiceName" = $serviceNamePrefix+"-01-Secondary"; "Disk" = "C:"; "Port" = 27018; "Monitor" = 28018; "HostName" = $hostName; "Priority" = 90; "ReplicaSet" = $replicaSetId };
     @{ "ServiceName" = $serviceNamePrefix+"-02-Secondary"; "Disk" = "C:"; "Port" = 27019; "Monitor" = 28019; "HostName" = $hostName; "Priority" = 80; "ReplicaSet" = $replicaSetId };
)

$mongoservices
