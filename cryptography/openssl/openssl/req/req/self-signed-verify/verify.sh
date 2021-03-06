



# 验证签名
# https://linuxctl.com/2017/02/x509-certificate-manual-signature-verification/#what-does-signing-a-certificate-mean


# 如果是自签名的 self-signed 
# 则 密钥 private.key  或者证书 req_self_sign.crt中都可以提取到公钥 而且是一样的


#  从私钥中更合理，相当于签名csr和crt的是同一个私钥 
#  从CA的私钥中提取公钥 发布出去 这样客户端就能拿到这个公钥
# Obtaining the Issuer’s Public Key

openssl  rsa -in private.key -pubout  -out public.key

openssl x509  -in req_self_sign.crt -noout -pubkey -out public1.key

md5sum public*

#4ec1498fc02c71bd154bd5499766edd8  public1.key
#4ec1498fc02c71bd154bd5499766edd8  public.key


# 我们用 public.key
# Extracting the Signature
# 提取签名信息


# The signature (along with algorithm) can be viewed from the signed certificate using openssl

openssl x509 -in req_self_sign.crt  -noout -text

#Certificate:
#    Data:
#        Version: 3 (0x2)
#        Serial Number:
#            b6:d8:3b:b3:86:3f:24:fd
#    Signature Algorithm: sha256WithRSAEncryption
#        Issuer: C = CN, ST = ShenZhen, L = ShenZhen, O = TC, OU = CDG, CN = www.example.com, emailAddress = 17842379@qq.com
#        Validity
#            Not Before: Apr 18 22:31:24 2018 GMT
#            Not After : Apr 18 22:31:24 2019 GMT
#        Subject: C = CN, ST = ShenZhen, L = ShenZhen, O = TC, OU = CDG, CN = www.example.com, emailAddress = 17842379@qq.com
#        Subject Public Key Info:
#            Public Key Algorithm: rsaEncryption
#                Public-Key: (2048 bit)
#                Modulus:
#                    00:c4:e7:f4:b7:72:44:71:2e:12:c7:44:57:26:f5:
#                    e3:47:8c:44:b7:92:40:28:1b:b9:3f:f6:73:cc:c3:
#                    3f:89:7d:fe:bc:fa:1e:df:9c:10:be:32:8d:28:e1:
#                    1d:23:f9:70:12:b9:e8:92:1c:54:b7:86:7a:6b:8c:
#                    b4:dd:12:ff:58:72:31:7e:9d:cb:5d:0b:f0:ca:dc:
#                    69:4b:5e:d4:76:a0:31:06:8f:a2:79:28:30:d1:8f:
#                    99:e7:83:87:16:54:38:19:78:06:55:03:56:b0:d9:
#                    51:63:6e:84:0d:e6:e6:75:6f:d5:4c:6f:38:5c:68:
#                    24:f1:44:b4:6a:88:b3:34:71:74:b7:3c:43:01:b4:
#                    7f:0c:0d:7f:4d:94:64:0b:99:a4:6c:c9:56:3a:b0:
#                    d6:0d:8a:28:32:c5:5f:24:6e:df:92:43:d8:54:7f:
#                    05:9e:69:1b:fc:88:d2:16:3f:56:e8:6e:fd:60:2b:
#                    d2:8b:35:23:a5:de:8e:d0:5c:e4:35:43:9b:e0:44:
#                    a3:8b:49:89:57:fd:c2:0d:ac:68:6d:e5:a3:0e:f2:
#                    b4:15:c1:67:33:eb:d0:49:01:c6:6d:d0:da:1b:a4:
#                    f1:23:b5:d8:66:a0:71:47:6a:21:77:71:bd:5d:6d:
#                    a7:93:86:02:d0:fd:53:65:d1:4b:b5:fd:ba:19:ef:
#                    5b:35
#                Exponent: 65537 (0x10001)
#        X509v3 extensions:
#            X509v3 Subject Key Identifier: 
#                2A:EB:1A:AD:F4:17:01:F9:56:1F:B3:EB:3E:E0:CF:DE:3B:C2:9D:7B
#            X509v3 Authority Key Identifier: 
#                keyid:2A:EB:1A:AD:F4:17:01:F9:56:1F:B3:EB:3E:E0:CF:DE:3B:C2:9D:7B
#
#            X509v3 Basic Constraints: critical
#                CA:TRUE
#    Signature Algorithm: sha256WithRSAEncryption
#         30:2c:96:2c:79:87:bd:7d:93:a7:30:b7:53:96:62:49:28:cf:
#         33:73:43:0e:72:d7:4c:0e:dd:37:d4:91:e8:be:73:47:11:d8:
#         f3:f5:ca:fe:c5:13:7c:3e:90:db:b4:36:3e:c3:09:bb:9e:ea:
#         89:5a:a3:9d:1f:1d:da:7f:9f:62:59:b2:0f:79:3a:a9:d0:24:
#         0d:72:3c:5d:06:0e:d7:57:9c:39:e1:d3:03:69:df:e5:c6:33:
#         cd:54:ee:b9:48:89:ab:e8:9a:27:a8:76:dd:89:7d:13:33:64:
#         83:d0:73:16:c5:0d:fe:43:87:c2:c4:8e:b2:8c:a6:2e:2a:3d:
#         b6:9a:fe:fb:b0:87:39:0d:a4:ef:d1:72:04:36:17:50:5f:2e:
#         91:61:01:d1:47:4a:34:55:ff:6d:1e:12:49:d1:57:f6:4e:74:
#         72:dd:6a:44:9c:9b:59:d1:71:29:41:0f:f0:c0:f3:1b:95:25:
#         3f:86:40:7b:1d:1d:27:2c:ab:ab:35:04:7a:4b:90:da:9a:f1:
#         0d:37:e3:fb:81:cf:44:14:bd:b2:da:09:47:1f:e4:22:f4:2f:
#         8e:0f:71:1a:86:37:7c:44:36:d0:e9:77:23:c9:45:5c:fa:24:
#         94:76:b1:66:40:05:30:7b:8f:8a:45:b8:6c:94:3f:42:ff:34:
#         2f:61:73:12


# 从而得到签名 和  签名算法 sha256WithRSAEncryption


# We can take this hex and dump it to disk as a binary like this:
# 把签名 保存为二进制
# extract hex of signature

SIGNATURE_HEX=$(openssl x509 -in req_self_sign.crt -text -noout -certopt ca_default -certopt no_validity -certopt no_serial -certopt no_subject -certopt no_extensions -certopt no_signame | grep -v 'Signature Algorithm' | tr -d '[:space:]:')

#获取到
#302c962c7987bd7d93a730b75396624928cf3373430e72d74c0edd37d491e8be734711d8f3f5cafec5137c3e90dbb4363ec309bb9eea895aa39d1f1dda7f9f6259b20f793aa9d0240d723c5d060ed7579c39e1d30369dfe5c633cd54eeb94889abe89a27a876dd897d13336483d07316c50dfe4387c2c48eb28ca62e2a3db69afefbb087390da4efd172043617505f2e916101d1474a3455ff6d1e1249d157f64e7472dd6a449c9b59d17129410ff0c0f31b95253f86407b1d1d272cabab35047a4b90da9af10d37e3fb81cf4414bdb2da09471fe422f42f8e0f711a86377c4436d0e97723c9455cfa249476b1664005307b8f8a45b86c943f42ff342f617312

# create signature dump
# 存放签名的二进制
echo ${SIGNATURE_HEX} | xxd -r -p > signature_crt.bin

# 注意这里的签名应该是 对 `der格式存放的二进制` 进行加密之后的字符串
# 所以对这段字符串进行解密之后 得到了der格式的二进制， 用 asn1parse 命令查看


# 可以用命令复查
#xxd signature_crt.bin
#hexdump -C signature_crt.bin


#Decrypting the Signature (RSA)
# 对签名进行解密 
# 利用已经拿到的公钥和签名，得到原始hash字符串

# -pubin 意思输入时公钥 ，默认是私钥
# 这个输出是二进制
openssl rsautl -verify -inkey public.key -in signature_crt.bin -pubin  -out signature_crt_decrypted.bin


# 这个输出 是 文字形式
# 这个相当于  两步合成一步了 rsautl asn1parse 
# openssl rsautl ... openssl asn1parse ...
#openssl rsautl -verify -inkey public.key -in signature_crt.bin -asn1parse -pubin  -out signature_crt_decrypted.bin
#```
#    0:d=0  hl=2 l=  49 cons: SEQUENCE
#    2:d=1  hl=2 l=  13 cons:  SEQUENCE
#    4:d=2  hl=2 l=   9 prim:   OBJECT            :sha256
#   15:d=2  hl=2 l=   0 prim:   NULL
#   17:d=1  hl=2 l=  32 prim:  OCTET STRING
#      0000 - c4 d5 8d 4c 46 ef a5 55-64 bf 28 76 0b 82 05 c0   ...LF..Ud.(v....
#      0010 - 15 08 4c 3c 16 2d 10 6c-ae b0 a1 1b 08 46 ff 03   ..L<.-.l.....F..
#```

# 对这段字符串进行解密之后 得到了der格式的二进制， 用 asn1parse 命令查看
# 这样就拿到了原始的hash字符串  C4D58D4C46EFA55564BF28760B8205C015084C3C162D106CAEB0A11B0846FF03

openssl asn1parse -inform der -in signature_crt_decrypted.bin
#    0:d=0  hl=2 l=  49 cons: SEQUENCE
#    2:d=1  hl=2 l=  13 cons: SEQUENCE
#    4:d=2  hl=2 l=   9 prim: OBJECT            :sha256
#   15:d=2  hl=2 l=   0 prim: NULL
#   17:d=1  hl=2 l=  32 prim: OCTET STRING      [HEX DUMP]:C4D58D4C46EFA55564BF28760B8205C015084C3C162D106CAEB0A11B0846FF03

# 所以可以反推
# 1. 先对hash字符串按der格式存放，包括其他信息
# 2. 然后对der的二进制进行私钥签名，就得到了crt中的签名字符串
====================================================================================================
#以上是根据公钥和证书中的信息拿到了hash字符串
#下面开始以原始数据 构造hash字符串，进而可以对hash字符串签名， 这样hash和签名都能拿到
====================================================================================================


# Hashing the Original Signature
# Hash 原字符串

#Now that we got a hash of the orginal certificate, we need to verify if we can obtain the same hash by using the same hashing function (in this case SHA-384). In order to do that, we need to extract just the body of the signed certificate. Which, in our case, is everything but the signature. The start of the body is always the first digit of the second line of the following command:

# 我们的算法是 hash256
# extract just the body of the signed certificate. Which, in our case, is everything but the signature



openssl asn1parse -i -in  req_self_sign.crt
#    0:d=0  hl=4 l=1000 cons: SEQUENCE          
#    4:d=1  hl=4 l= 720 cons:  SEQUENCE          
#    8:d=2  hl=2 l=   3 cons:   cont [ 0 ]        
#   10:d=3  hl=2 l=   1 prim:    INTEGER           :02
#   13:d=2  hl=2 l=   9 prim:   INTEGER           :B6D83BB3863F24FD
#   24:d=2  hl=2 l=  13 cons:   SEQUENCE          
#   26:d=3  hl=2 l=   9 prim:    OBJECT            :sha256WithRSAEncryption
#   37:d=3  hl=2 l=   0 prim:    NULL              
#   39:d=2  hl=3 l= 136 cons:   SEQUENCE          
#   42:d=3  hl=2 l=  11 cons:    SET               
#   44:d=4  hl=2 l=   9 cons:     SEQUENCE          
#   46:d=5  hl=2 l=   3 prim:      OBJECT            :countryName
#   51:d=5  hl=2 l=   2 prim:      PRINTABLESTRING   :CN
#   55:d=3  hl=2 l=  17 cons:    SET               
#   57:d=4  hl=2 l=  15 cons:     SEQUENCE          
#   59:d=5  hl=2 l=   3 prim:      OBJECT            :stateOrProvinceName
#   64:d=5  hl=2 l=   8 prim:      UTF8STRING        :ShenZhen
#   74:d=3  hl=2 l=  17 cons:    SET               
#   76:d=4  hl=2 l=  15 cons:     SEQUENCE          
#   78:d=5  hl=2 l=   3 prim:      OBJECT            :localityName
#   83:d=5  hl=2 l=   8 prim:      UTF8STRING        :ShenZhen
#   93:d=3  hl=2 l=  11 cons:    SET               
#   95:d=4  hl=2 l=   9 cons:     SEQUENCE          
#   97:d=5  hl=2 l=   3 prim:      OBJECT            :organizationName
#  102:d=5  hl=2 l=   2 prim:      UTF8STRING        :TC
#  106:d=3  hl=2 l=  12 cons:    SET               
#  108:d=4  hl=2 l=  10 cons:     SEQUENCE          
#  110:d=5  hl=2 l=   3 prim:      OBJECT            :organizationalUnitName
#  115:d=5  hl=2 l=   3 prim:      UTF8STRING        :CDG
#  120:d=3  hl=2 l=  24 cons:    SET               
#  122:d=4  hl=2 l=  22 cons:     SEQUENCE          
#  124:d=5  hl=2 l=   3 prim:      OBJECT            :commonName
#  129:d=5  hl=2 l=  15 prim:      UTF8STRING        :www.example.com
#  146:d=3  hl=2 l=  30 cons:    SET               
#  148:d=4  hl=2 l=  28 cons:     SEQUENCE          
#  150:d=5  hl=2 l=   9 prim:      OBJECT            :emailAddress
#  161:d=5  hl=2 l=  15 prim:      IA5STRING         :17842379@qq.com
#  178:d=2  hl=2 l=  30 cons:   SEQUENCE          
#  180:d=3  hl=2 l=  13 prim:    UTCTIME           :180418223124Z
#  195:d=3  hl=2 l=  13 prim:    UTCTIME           :190418223124Z
#  210:d=2  hl=3 l= 136 cons:   SEQUENCE          
#  213:d=3  hl=2 l=  11 cons:    SET               
#  215:d=4  hl=2 l=   9 cons:     SEQUENCE          
#  217:d=5  hl=2 l=   3 prim:      OBJECT            :countryName
#  222:d=5  hl=2 l=   2 prim:      PRINTABLESTRING   :CN
#  226:d=3  hl=2 l=  17 cons:    SET               
#  228:d=4  hl=2 l=  15 cons:     SEQUENCE          
#  230:d=5  hl=2 l=   3 prim:      OBJECT            :stateOrProvinceName
#  235:d=5  hl=2 l=   8 prim:      UTF8STRING        :ShenZhen
#  245:d=3  hl=2 l=  17 cons:    SET               
#  247:d=4  hl=2 l=  15 cons:     SEQUENCE          
#  249:d=5  hl=2 l=   3 prim:      OBJECT            :localityName
#  254:d=5  hl=2 l=   8 prim:      UTF8STRING        :ShenZhen
#  264:d=3  hl=2 l=  11 cons:    SET               
#  266:d=4  hl=2 l=   9 cons:     SEQUENCE          
#  268:d=5  hl=2 l=   3 prim:      OBJECT            :organizationName
#  273:d=5  hl=2 l=   2 prim:      UTF8STRING        :TC
#  277:d=3  hl=2 l=  12 cons:    SET               
#  279:d=4  hl=2 l=  10 cons:     SEQUENCE          
#  281:d=5  hl=2 l=   3 prim:      OBJECT            :organizationalUnitName
#  286:d=5  hl=2 l=   3 prim:      UTF8STRING        :CDG
#  291:d=3  hl=2 l=  24 cons:    SET               
#  293:d=4  hl=2 l=  22 cons:     SEQUENCE          
#  295:d=5  hl=2 l=   3 prim:      OBJECT            :commonName
#  300:d=5  hl=2 l=  15 prim:      UTF8STRING        :www.example.com
#  317:d=3  hl=2 l=  30 cons:    SET               
#  319:d=4  hl=2 l=  28 cons:     SEQUENCE          
#  321:d=5  hl=2 l=   9 prim:      OBJECT            :emailAddress
#  332:d=5  hl=2 l=  15 prim:      IA5STRING         :17842379@qq.com
#  349:d=2  hl=4 l= 290 cons:   SEQUENCE          
#  353:d=3  hl=2 l=  13 cons:    SEQUENCE          
#  355:d=4  hl=2 l=   9 prim:     OBJECT            :rsaEncryption
#  366:d=4  hl=2 l=   0 prim:     NULL              
#  368:d=3  hl=4 l= 271 prim:    BIT STRING        
#  643:d=2  hl=2 l=  83 cons:   cont [ 3 ]        
#  645:d=3  hl=2 l=  81 cons:    SEQUENCE          
#  647:d=4  hl=2 l=  29 cons:     SEQUENCE          
#  649:d=5  hl=2 l=   3 prim:      OBJECT            :X509v3 Subject Key Identifier
#  654:d=5  hl=2 l=  22 prim:      OCTET STRING      [HEX DUMP]:04142AEB1AADF41701F9561FB3EB3EE0CFDE3BC29D7B
#  678:d=4  hl=2 l=  31 cons:     SEQUENCE          
#  680:d=5  hl=2 l=   3 prim:      OBJECT            :X509v3 Authority Key Identifier
#  685:d=5  hl=2 l=  24 prim:      OCTET STRING      [HEX DUMP]:301680142AEB1AADF41701F9561FB3EB3EE0CFDE3BC29D7B
#  711:d=4  hl=2 l=  15 cons:     SEQUENCE          
#  713:d=5  hl=2 l=   3 prim:      OBJECT            :X509v3 Basic Constraints
#  718:d=5  hl=2 l=   1 prim:      BOOLEAN           :255
#  721:d=5  hl=2 l=   5 prim:      OCTET STRING      [HEX DUMP]:30030101FF
#  728:d=1  hl=2 l=  13 cons:  SEQUENCE          
#  730:d=2  hl=2 l=   9 prim:   OBJECT            :sha256WithRSAEncryption
#  741:d=2  hl=2 l=   0 prim:   NULL              
#  743:d=1  hl=4 l= 257 prim:  BIT STRING        



#We can extract this data and store it to disk like so:
# 提取数据 存储
# 这里面是crt里面的主题数据
# 从这个思路出发 可以知道 crt是如何签名的

openssl asn1parse -in req_self_sign.crt -strparse 4 -out req_self_sign_body.bin -noout


#Finally, we can run this through the same hashing function to determine the digest

openssl dgst -sha256 req_self_sign_body.bin


# SHA256(req_self_sign_body.bin)= c4d58d4c46efa55564bf28760b8205c015084c3c162d106caeb0a11b0846ff03

#As you can see, both hashes match, so we can now confirm that:

# 可以看出两者是匹配的

#private.key   did sign  req_self_sign.crt
# private.key 这个私钥 确实签名了  req_self_sign.crt





