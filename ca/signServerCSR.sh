openssl ca -config ca.cnf -out ../server/$1/certServer.pem -infiles ../server/$1/certServer.csr
#rm ../server/certServer.csr
