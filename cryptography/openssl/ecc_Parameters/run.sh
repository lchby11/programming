
# 这里有详细阐述
# http://www.secg.org/sec2-v2.pdf

# 这里阐述 Secp256k1
#https://en.bitcoin.it/wiki/Secp256k1
#openssl ecparam -list_curves
#openssl ecparam -param_enc  explicit -conv_form uncompressed -text -noout -no_seed  -name secp112r1
 for i in  secp112r1 secp112r2 secp128r1 secp128r2 secp160k1 secp160r1 secp160r2 secp192k1 secp224k1 secp224r1 secp256k1 secp384r1 secp521r1 prime192v1 prime192v2 prime192v3 prime239v1 prime239v2 prime239v3 prime256v1 sect113r1 sect113r2 sect131r1 sect131r2 sect163k1 sect163r1 sect163r2 sect193r1 sect193r2 sect233k1 sect233r1 sect239k1 sect283k1 sect283r1 sect409k1 sect409r1 sect571k1 sect571r1 c2pnb163v1 c2pnb163v2 c2pnb163v3 c2pnb176v1 c2tnb191v1 c2tnb191v2 c2tnb191v3 c2pnb208w1 c2tnb239v1 c2tnb239v2 c2tnb239v3 c2pnb272w1 c2pnb304w1 c2tnb359v1 c2pnb368w1 c2tnb431r1 wap-wsg-idm-ecid-wtls1 wap-wsg-idm-ecid-wtls3 wap-wsg-idm-ecid-wtls4 wap-wsg-idm-ecid-wtls5 wap-wsg-idm-ecid-wtls6 wap-wsg-idm-ecid-wtls7 wap-wsg-idm-ecid-wtls8 wap-wsg-idm-ecid-wtls9 wap-wsg-idm-ecid-wtls10 wap-wsg-idm-ecid-wtls11 wap-wsg-idm-ecid-wtls12 Oakley-EC2N-3 Oakley-EC2N-4
do
	echo "======================================================================================"
	echo $i
	openssl ecparam -param_enc  explicit -conv_form uncompressed -text -noout -no_seed  -name $i 
done
