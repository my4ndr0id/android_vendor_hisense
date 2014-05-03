#!/system/bin/sh
# wifitest_recv.sh 
# lixiuyong. 2012.04.05
# 
# ˵����
# 1.�ýű��������ͨƽ̨wifi���ղ��Թ��ܣ�������������1����wifi�豸-����2������ģ�飬�������ģʽ-����3���������״̬��
# 2.���øýű�ʵ��wifi������Ƶ����״̬����Ĭ�Ϸ���Ƶ��Ϊ2437MHz�����书��Ϊ10dBm��


MODPATH=/system/lib/modules/ath6kl
MODARG=testmode=1

##########################################################
# STEP 1: Load wifi module and enter TCMD mode
##########################################################
rmmod wlan
rmmod cfg80211
sleep 2
/system/bin/insmod $MODPATH/cfg80211.ko 
/system/bin/insmod $MODPATH/ath6kl_sdio.ko $MODARG
sleep 2

######################################
# STEP 2: Enter continous recv mode.
######################################

/system/bin/athtestcmd -i wlan0 --rx promis --rxfreq 2437 

echo "wifi: enter RF receiving mode."
sleep 2

/system/bin/athtestcmd -i wlan0 --rx report 
setprop persist.wifi.result 0

exit 0