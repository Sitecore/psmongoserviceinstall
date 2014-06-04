$rsConfig = @{
    "_id" = $replicaSetId;
    "version" = 1;
    "members" = New-Object System.Collections.ArrayList; 
}

$memberId = 0

foreach($service in $mongoservices)
{

    $rsConfig["members"].Add( @{ "_id" = $memberId; "host" = $service["HostName"]+":"+$service["Port"]; "priority" = $service["Priority"]; } )
    $memberId = $memberid + 1

}

$rsConfigJson = $rsConfig | ConvertTo-Json


$rsCommand = @"

rsConfig = $rsConfigJson

rs.initiate(rsConfig)

"@



$rsCommand | ..\bin\mongo.exe --port 27017