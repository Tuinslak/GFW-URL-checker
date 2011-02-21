# List of URLs blocked by the Great Firewall of China (Golden Shield Project)

… or at least, an attempt to create a list.

Checks once a day if the hosts (URLs) in the hosts directory are accessible and commits the output in three files (testResults/).

	results_ok.csv	=>	list of hosts accessible	(header 200 OK reply)
	results_nok.csv	=>	list of hosts unaccessible	(no reply)
	results.csv		=>	list of all hosts

Mind that it only check HTTP header responses, and doesn't actually check the content of the returned page (e.g. altered page content)	

It's currently running and checking from 3 locations; Belgium, The Netherlands, and China. If you want additional countries to be monitored, I will need access to a shell (see below).

# Submit URLs

Submit URLs, IPs or domains to <gfw@tuinslak.be>. I'll probably create some small submit page in the future.

Alternatively, you can create a ticket (<https://github.com/Tuinslak/GFW-URL-checker/issues>) on Github.

# Shells wanted 

I'm looking for additional Unix/Linux shells all around the world (but preferably countries that apply censorship). All I need is wget, git and cron installed, 10ish mb quota, and a bit of your CPU time and networking. Contact me on the e-mail above. These can be ARM shells (such as Guruplug/Sheevaplug).

# Why ?

I got annoyed not being able to share certain sites with people residing in China. 

I then decided to find simple ways to by-pass the GFW using OpenVPN + Squid proxy and a PAC file redirecting only blocked URLs through the proxy. But I didn't have a complete list of blocked URLs and wasn't able to find one on the net, so I tried to populate my own.

Knowledge is power.

--

Maintained by Yeri Tiete (aka Tuinslak) 

Blog: <http://yeri.be>
