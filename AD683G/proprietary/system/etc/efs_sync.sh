#!/system/bin/sh
# efs_sync.sh 
# zhangjingxin.2012.08.29
# 
# ˵����
# ǿ��ͬ���ļ�ϵͳEFS
cat /sys/devices/platform/rs300000a7.65536/force_sync
sleep 1
cat /sys/devices/platform/rs300000a7.65536/sync_sts
