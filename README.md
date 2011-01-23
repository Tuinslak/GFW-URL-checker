# List of URLs blocked by the Great Firewall of China (Golden Shield Project)

… or at least, an attempt to create a list.

Checks once a day if the hosts (URLs) in the hosts directory are accessible and commits the output in two files (testResults/).

	results_ok.csv => list of hosts accessible (header 200 OK reply)
	results_nok.csv => list of hosts unaccessible (no reply)

Mind that it only check HTTP header responses, and doesn't actually check the content of the returned page (e.g. altered page content)	

Submit URLs, IPs or domains to <gfw@tuinslak.be>

I'm looking for additional Unix/Linux hosts all around the world (but preferably countries that apply censorship). All I need is wget, git and cron installed (10ish mb quota). Contact me on the e-mail above. 

--

Maintained by Yeri Tiete (aka Tuinslak) 

Blog: <http://yeri.be>