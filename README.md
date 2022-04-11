# htb

fstarters 10.129.96.68 
checking icmp @5 for 10.129.96.68
PING 10.129.96.68 (10.129.96.68) 56(84) bytes of data.
64 bytes from 10.129.96.68: icmp_seq=1 ttl=63 time=75.7 ms
64 bytes from 10.129.96.68: icmp_seq=2 ttl=63 time=75.6 ms
64 bytes from 10.129.96.68: icmp_seq=3 ttl=63 time=75.8 ms
64 bytes from 10.129.96.68: icmp_seq=4 ttl=63 time=75.6 ms
64 bytes from 10.129.96.68: icmp_seq=5 ttl=63 time=75.4 ms

--- 10.129.96.68 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4007ms
rtt min/avg/max/mdev = 75.443/75.629/75.798/0.120 ms
-----------------------------------------------------
Running scan on 10.129.96.68 - Storing in nmap/10.129.96.68_1649654991_allport
-----------------------------------------------------
Starting Nmap 7.92 ( https://nmap.org ) at 2022-04-11 06:29 BST
Initiating Ping Scan at 06:29
Scanning 10.129.96.68 [2 ports]
Completed Ping Scan at 06:29, 0.08s elapsed (1 total hosts)
Initiating Parallel DNS resolution of 1 host. at 06:29
Completed Parallel DNS resolution of 1 host. at 06:29, 0.00s elapsed
Initiating Connect Scan at 06:29
Scanning 10.129.96.68 [65535 ports]
Discovered open port 22/tcp on 10.129.96.68
Discovered open port 80/tcp on 10.129.96.68
Connect Scan Timing: About 10.56% done; ETC: 06:34 (0:04:23 remaining)
Connect Scan Timing: About 26.31% done; ETC: 06:35 (0:04:06 remaining)
Connect Scan Timing: About 34.63% done; ETC: 06:35 (0:03:43 remaining)
Connect Scan Timing: About 42.87% done; ETC: 06:35 (0:03:17 remaining)
Connect Scan Timing: About 51.13% done; ETC: 06:35 (0:02:50 remaining)
Connect Scan Timing: About 59.48% done; ETC: 06:35 (0:02:22 remaining)
Connect Scan Timing: About 67.78% done; ETC: 06:35 (0:01:53 remaining)
Connect Scan Timing: About 76.05% done; ETC: 06:35 (0:01:24 remaining)
Connect Scan Timing: About 84.30% done; ETC: 06:35 (0:00:55 remaining)
Completed Connect Scan at 06:35, 359.85s elapsed (65535 total ports)
Nmap scan report for 10.129.96.68
Host is up (2.8s latency).
Not shown: 64069 filtered tcp ports (no-response), 1464 closed tcp ports (conn-refused)
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http

Read data files from: /usr/bin/../share/nmap
Nmap done: 1 IP address (1 host up) scanned in 360.01 seconds
================================================
Doing more detailed scan of 22, 80
saving in nmap/10.129.96.68_1649654991_detail
================================================
Starting Nmap 7.92 ( https://nmap.org ) at 2022-04-11 06:36 BST
NSE: Loaded 155 scripts for scanning.
NSE: Script Pre-scanning.
Initiating NSE at 06:36
Completed NSE at 06:36, 0.00s elapsed
Initiating NSE at 06:36
Completed NSE at 06:36, 0.00s elapsed
Initiating NSE at 06:36
Completed NSE at 06:36, 0.00s elapsed
Failed to resolve "22,".
Initiating Ping Scan at 06:36
Scanning 2 hosts [2 ports/host]
Completed Ping Scan at 06:36, 1.83s elapsed (2 total hosts)
Initiating Parallel DNS resolution of 1 host. at 06:36
Completed Parallel DNS resolution of 1 host. at 06:36, 0.00s elapsed
Nmap scan report for 80 (0.0.0.80) [host down]
Initiating Connect Scan at 06:36
Scanning 10.129.96.68 [1000 ports]
Discovered open port 80/tcp on 10.129.96.68
Discovered open port 22/tcp on 10.129.96.68
Completed Connect Scan at 06:36, 1.18s elapsed (1000 total ports)
Initiating Service scan at 06:36
Scanning 2 services on 10.129.96.68
Completed Service scan at 06:36, 6.19s elapsed (2 services on 1 host)
NSE: Script scanning 10.129.96.68.
Initiating NSE at 06:36
Completed NSE at 06:36, 3.48s elapsed
Initiating NSE at 06:36
Completed NSE at 06:36, 0.35s elapsed
Initiating NSE at 06:36
Completed NSE at 06:36, 0.00s elapsed
Nmap scan report for 10.129.96.68
Host is up (0.075s latency).
Not shown: 998 closed tcp ports (conn-refused)
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 8.2p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   3072 b4:de:43:38:46:57:db:4c:21:3b:69:f3:db:3c:62:88 (RSA)
|   256 aa:c9:fc:21:0f:3e:f4:ec:6b:35:70:26:22:53:ef:66 (ECDSA)
|_  256 d2:8b:e4:ec:07:61:aa:ca:f8:ec:1c:f8:8c:c1:f6:e1 (ED25519)
80/tcp open  http    Apache httpd 2.4.41 ((Ubuntu))
|_http-server-header: Apache/2.4.41 (Ubuntu)
|_http-generator: WordPress 5.8.1
|_http-title: Backdoor &#8211; Real-Life
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

NSE: Script Post-scanning.
Initiating NSE at 06:36
Completed NSE at 06:36, 0.00s elapsed
Initiating NSE at 06:36
Completed NSE at 06:36, 0.00s elapsed
Initiating NSE at 06:36
Completed NSE at 06:36, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 2 IP addresses (1 host up) scanned in 13.57 seconds
