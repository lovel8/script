#!/bin/bash

#GOBIN=go1.16.5.darwin-amd64.pkg
GOBIN=go1.20.5.darwin-amd64.pkg

wget https://golang.google.cn/dl/${GOBIN}

if [ -z "$1" ]; then
        echo "./install.sh ${GOBIN}"
else
        GOBIN=$1

fi

if [ -d "/usr/local/go" ]; then
        echo "Uninstalling old version..."
        sudo rm -rf /usr/local/go
fi
echo "Installing..."
sudo installer -pkg ${GOBIN} -target /usr/local
echo "Done"

# 配置Go环境变量
case ":${PATH}:" in
    *:"/usr/local/go/bin":*)
        ;;
    *)
        echo "PATH='$PATH:/usr/local/go/bin'" >> ~/.profile
        source ~/.profile
        ;;
esac


