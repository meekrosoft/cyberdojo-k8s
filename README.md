# Kubernetes deployment files for kubernetes


## Manually generating certs

sudo certbot certonly --manual -d *.cyber-dojo.org --agree-tos --no-bootstrap --manual-public-ip-logging-ok --preferred-challenges dns-01 --server https://acme-v02.api.letsencrypt.org/directory

kubectl create secret tls custom-tls-cert --key /etc/letsencrypt/live/cyber-dojo.org/privkey.pem --cert /etc/letsencrypt/live/cyber-dojo.org/cert.pem
