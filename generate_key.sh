mkdir ${PWD}/key
openssl rand -base64 756 > ${PWD}/key/mongo.key
chmod 400 ${PWD}/key/mongo.key
# chown 999:999 ${PWD}/rs_keyfile