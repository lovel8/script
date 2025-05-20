#!/bin/sh

networksetup -setproxybypassdomains "Wi-Fi" 192.168.0.0/16 localhost 127.0.0.1
networksetup -getproxybypassdomains "Wi-Fi"

