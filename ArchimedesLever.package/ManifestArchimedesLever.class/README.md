I am a service which can be reached on the internet by two types of entities:

	1. An instance of Pharo running the Archimedes Handle, on the developers machine
	2. An instance of Pharo which runs the Archimedes World service headlessly in a cloud deployment service such as Google Cloud Run, AWS Fargate or even Kubernetes somwehere.
	
The Archimedes World Service connects out to me and let me send it updates which it can apply to its running service(s). This means that it need not expose any other http port than it needs for its services, since it here acts as a client.

The Archimedes Handle service is a small tool which let the local developer connect to me and send source code updates which gets evaluated and compiled in the target service as needed.

For the Handle Service I provide the following endpoints:

	1. List connected Archimedes Worlds
	2. Deploy or update a package on a world.
	3. Start or Stop a package script on a world.
	4. Remove a package frrom a world
	
For the World Service I provide the following endpoints:

	1. Register world.
	2. Unregister world.

I do not provide any authentication or encryption at all. I am intended to be used udenrmeath an existing https endpoint, which may or may not imlement authentication, such as AWS API Gateway, Google Cloud Run principals permissions, or even a self-managed nginx-server (if you feel you have way too much spare time on your hands).
