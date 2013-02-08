# Index

For more informations : [Index](https://github.com/damln/AdminTools)

## SSH with public key

On your server

	sudo cp ./sshd_config.txt /etc/ssh/sshd_config

On your client

	cat ~/.ssh/id_dsa.pub | ssh user@machine "cat - >> ~/.ssh/authorized_keys"


## Amazon EC2 ssh (Ubuntu)

Connect with .pem key :

    ssh -i my.pem ubuntu@your_amazon_host_ip

    sudo passwd ubuntu # set a password

    sudo sed -i 's/^PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config

You can now connect without .pem key on your Amazon EC2 instance.
