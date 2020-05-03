#!/bin/bash
date >> /root/hd-stats.log
echo Samsung_SSD_860_EVO_500GB_S4XBNF1M809879F $(echo "scale=3; ($(/usr/sbin/smartctl -a /dev/disk/by-id/ata-Samsung_SSD_860_EVO_500GB_S4XBNF1M809879F | grep Total_LBAs_Written | awk -F ' ' '{print $10}') * 512) / (1024 * 1024 * 1024 * 1024)" | bc) TiB >> /root/hd-stats.log
