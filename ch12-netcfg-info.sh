#!/bin/bash
# (16) 编写一个 shell 脚本，获取本机的 HOSTNAME、IP 地址以及 DNS 地址。

# 获取 HOSTNAME
hostname=$(hostname)

# 获取 IP 地址
ip_address=$(hostname -I)

# 获取 DNS 地址
dns_address=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')

# 输出结果
echo "HOSTNAME: $hostname"
echo "IP 地址: $ip_address"
echo "DNS 地址: $dns_address"