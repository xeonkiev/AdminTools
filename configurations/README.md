# Index

For more informations : [Index](https://github.com/damln/AdminTools)

## SSH with public key

On your server
	
	sudo cp ./sshd_config.txt /etc/ssh/sshd_config

On your client

	cat ~/.ssh/id_dsa.pub | ssh user@machine "cat - >> ~/.ssh/authorized_keys"
