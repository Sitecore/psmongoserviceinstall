
$reconfigPriority = @"

//rs.add("server.cloudapp.net:27019")
//rs.add("192.168.0.4:27018")

rs0 = rs.conf()
rs0["members"][3]["priority"]  = 79
//rs0["members"][2] = null

//rs0["members"][0]["host"] = 'server.cloudapp.net:27017'
//rs0["members"][0]["priority"] = 100
//rs0["members"][1]["priority"] = 98

rs.reconfig(rs0)

//rs.conf()

//show dbs

rs.status()

rs.conf()

"@


$reconfigPriority | .\mongodb-win32-x86_64-2008plus-2.4.5\bin\mongo.exe 