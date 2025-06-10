#!/bin/sh

# CentOS 8.2
sudo yum install -y net-tools
sudo systemctl stop firewalld     # 立即停止防火墙
sudo systemctl disable firewalld  # 禁止开机自动启动防火墙
sudo systemctl mask firewalld     # 防止被其他服务重新启动

sudo modprobe iptable_nat
sudo modprobe ip_tables
sudo modprobe nf_nat
sudo systemctl restart docker

