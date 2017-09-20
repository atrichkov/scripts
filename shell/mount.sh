#!/bin/sh

# run script with sh mount.sh

# bob #
BOB_USER='<user>';
BOB_PASSWORD='<password>';

echo $BOB_PASSWORD | sshfs $BOB_USER@bob.economedia.bg:/var/www/cmsaii /mnt/bobcmsaii/ -o password_stdin

echo $BOB_PASSWORD | sshfs $BOB_USER@bob.economedia.bg:/var/www/ecms /mnt/ecms/ -o password_stdin
