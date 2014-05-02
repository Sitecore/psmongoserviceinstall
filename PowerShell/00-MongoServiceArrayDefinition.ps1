
$mongoservicepath = "{0}Sitecore\Mongo\{1}\"

$servicedirname = "config"

# {0}: "Path"; {1}: "ServiceName"

$mongoservices = @( 
     @{ "ServiceName" = "XDB-00-USWEST-00-Primary"; "Disk" = "D:"; "Port" = 27017; "Monitor" = 28017; "Priority" = 100; "ReplicaSet" = "rs1" };
     @{ "ServiceName" = "XDB-00-USWEST-01-Secondary"; "Disk" = "F:"; "Port" = 27018; "Monitor" = 28018; "Priority" = 90; "ReplicaSet" = "rs1" };
     @{ "ServiceName" = "XDB-00-USWEST-02-Secondary"; "Disk" = "G:"; "Port" = 27019; "Monitor" = 28019; "Priority" = 80; "ReplicaSet" = "rs1" };
)
