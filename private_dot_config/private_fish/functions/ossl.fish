# shorthand verify a cert
function ossl --wraps openssl -d 'openssl verify'
  openssl x509 -text -in $argv
end
