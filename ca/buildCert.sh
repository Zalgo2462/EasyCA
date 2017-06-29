mkdir ./CA
mkdir ./CA/private
mkdir ./CA/newcerts
printf "CA Key Pass: "
openssl genpkey -out ./CA/private/cakey.pem -outform PEM -pass stdin -aes256 -algorithm ec -pkeyopt ec_paramgen_curve:prime256v1 -pkeyopt ec_param_enc:named_curve
openssl req -x509 -new -sha256 -key ./CA/private/cakey.pem -out ./CA/cacert.pem -config req.cnf
touch ./CA/index
echo '01' > ./CA/serial
