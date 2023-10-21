## Generate Admin Token Example
`echo -n "MySecretPassword" | argon2 "$(openssl rand -basez32)" -e -id -k 65540 -t 3 -p 4 | sed 's#\$#\$\$#g'`