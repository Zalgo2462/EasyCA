mkdir $2
openssl genrsa -out $2/keyServer.pem 2048
openssl req -new -key $2/keyServer.pem -out $2/certServer.csr -config $1
