version: "3"
services:
	hub:
		image: selenium/hub:3.14
		ports:
			- "4444:4444"
	chrome:
		image: selenium/node-chrome:3.14
		depends_on:
			- hub
			environment:
				- HUB_HOST=hub
	firefox:
		image:selenium/node-firefox:3.14
		depends_on
			- hub
				- HUB_POST=hub
	
	
    