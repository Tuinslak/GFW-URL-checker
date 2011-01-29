# List of URLs blocked by the Great Firewall of China (Golden Shield Project)

… or at least, an attempt to create a list.

Checks once a day if the hosts (URLs) in the hosts directory are accessible and commits the output in three files (testResults/).

	results_ok.csv	=>	list of hosts accessible (header 200 OK reply)
	results_nok.csv	=>	list of hosts unaccessible (no reply)
	results.csv		=>	list of all hosts

Mind that it only check HTTP header responses, and doesn't actually check the content of the returned page (e.g. altered page content)	

# Submit URLs

Submit URLs, IPs or domains to <gfw@tuinslak.be>. I'll probably create some small submit page in the future.

# Shells wanted 

I'm looking for additional Unix/Linux shells all around the world (but preferably countries that apply censorship). All I need is wget, git and cron installed, 10ish mb quota, and a bit of your CPU time and networking. Contact me on the e-mail above. 

# Todo

Only checks HTTP. HTTPS might be useful. 

--

Maintained by Yeri Tiete (aka Tuinslak) 

Blog: <http://yeri.be>
