#!/bin/bash

wget https://homecommunity.oss-cn-beijing.aliyuncs.com/zihao_release.tar 

tar -xvf zihao_release.tar

mkdir /zihao

mv zihao_release /zihao/master

cd /zihao/master/

local_ip=127.0.0.1:7000
local_host=5f3761ed-008a-475b-ad37-8cc35c88402c

# install zihao
chmod u+x restart_zihao.sh

sh restart_zihao.sh

chmod +x /etc/rc.d/rc.local
echo '/zihao/master/restart_zihao.sh' >> /etc/rc.d/rc.local

sleep 10s

chmod u+x ./web/download/deploySlave.sh

./web/download/deploySlave.sh $local_ip $local_host
