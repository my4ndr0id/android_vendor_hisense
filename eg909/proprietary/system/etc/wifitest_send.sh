#!/system/bin/sh
# wifitest_send.sh 
# lixiuyong. 2012.04.05
# 
# ˵����
# 1.�ýű��������ͨƽ̨wifi���ղ��Թ��ܣ�������������1����wifi�豸-����2������ģ�飬�������ģʽ-����3�����뷢��/����״̬��
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
# STEP 2: Enter continous sending mode.
######################################

/system/bin/athtestcmd -i wlan0 --tx frame --txfreq 2437 --txrate 0 --tgtpwr 
setprop persist.wifi.result 0

echo "wifi: enter RF sending mode."

exit 0



