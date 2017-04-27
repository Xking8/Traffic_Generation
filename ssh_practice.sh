#!//usr/bin/expect

spawn ssh -p 3022 yvonne@140.113.13.138
expect " "
send "606606\n"
send "echo hello"
expect "yvonne"
interact timeout 1 return
send "\n"
#send "echo hey"
expect " "
#send "ping 8.8.8.8\r"
send "iperf -s -i 1 & disown\n"
interact  timeout 5 return


spawn ssh -p 3022 yvonne@140.113.13.138
expect " "
send "606606\n"
send "echo hello"
expect "yvonne"

