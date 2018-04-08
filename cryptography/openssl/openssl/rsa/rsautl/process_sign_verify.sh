



##生成密钥
#openssl  genrsa  -out rsa_pri_2048.key 2048
## 导出公钥
#openssl rsa -in rsa_pri_2048.key   -pubout  >rsa_pub_2048.pub



# 生成测试文件
# vi test.txt
# 用私钥对文件内容进行签名 输出到 test_sign.txt
openssl  rsautl  -sign -inkey rsa_pri_2048.key -in test.txt  >test_sign.txt 
hexdump  test_sign.txt 

# 验证 默认用私钥文件验证
#       -inkey file
#           the input key file, by default it should be an RSA private key.
openssl rsautl -verify -inkey  rsa_pri_2048.key -in test_sign.txt 
    #-pubin
    #           the input file is an RSA public key.
# -pubin 指定输出的是公钥文件 
openssl rsautl -verify  -inkey  rsa_pub_2048.pub  -in test_sign.txt  -pubin 

#       Examine the raw signed data:
openssl rsautl -verify -inkey  rsa_pub_2048.pub -in test_sign.txt -pubin -raw -hexdump
