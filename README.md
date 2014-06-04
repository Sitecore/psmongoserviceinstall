psmongoserviceinstall
=====================

PowerShell MongoDB Windows Service Installation Scripts

Revision 0.0.2

2014-06-04

These scripts provide a quick way to create and destroy Mongo DB service installs. It is useful when you are creating many number of servers that will be part of a replica set or sharding strategy. 

Instructions

1. Edit the 00-MongoServiceArrayDefinition.ps1 file to establish the number of services and the server properties for each one
2. Execute the script 00...  to set the PowerShell variables required for the rest of the scripts
3. Execute the scripts in order starting with 01-06 to install the Mongo DB Windows service
4. Execute the last scripts to stop and remove the Windows service

I recommend you use the Powershell IDE and open all files needed at once (using an Administrator account). 
