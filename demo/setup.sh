#!/bin/sh
set -e

privkey="package.rsa"
pubkey="${privkey}.pub"

gen_keys () {
	(
		umask 0007
		openssl genrsa -out "$privkey" 2048
	)
	openssl rsa -in "$privkey" -pubout -out "$pubkey"
}

set -x
mkdir -p assets/keys && cd assets/keys
[ ! -f "$privkey" ] || [ ! -f "$pubkey" ] && gen_keys
cd -

cat > .env << EOF
UID=$(id -u)
EOF
