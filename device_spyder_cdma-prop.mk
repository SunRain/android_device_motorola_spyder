PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libmoto_ril.so \
	rild.libargs=-d /dev/ttyO0 \
	telephony.lteOnCdmaDevice=1 \
	persist.ril.modem.mode =1 \
	ro.telephony.default_network=10 \
	ro.com.google.clientid=android-motorola \
	ro.cdma.home.operator.numeric=310004 \
	ro.cdma.home.operator.alpha=Verizon \
	ro.config.svlte1x=true \
	ro.mot.hw.uaprof=http://uaprof.vtext.com/mot/xt912/xt912.xml \
	ro.mot.eri=1 \
	ro.cdma.nbpcd=1 \
	ro.HorizontalBUA=true \
	persist.ril.mux.noofchannels=8 \
	persist.radio.vzw.cdma.mdn= \
	ro.telephony.gsm-routes-us-smsc = 1 \
	persist.radio.ap.phonetype=2 \
	ril.dumpstate.timeout=60 \
	ro.hdcp.support=2 \
	ro.mot.hw.navkeyboard.devname=cy8c201xx \
	ro.com.google.clientidbase=android-motorola \
	ro.com.google.clientidbase.ms=android-verizon \
	ro.com.google.clientidbase.am=android-verizon \
	ro.com.google.clientidbase.gmm=android-motorola \
	ro.com.google.clientidbase.yt=android-verizon \
	ro.kernel.android.ril=yes \
	persist.ril.mux.noofchannels=10 \
	persist.ril.mux.ttydevice=/dev/ttyO0 \
	persist.ril.features=0x90A \
	persist.ril.mux.retries=500 \
	persist.ril.mux.sleep=2 \
	persist.ril.rssi.enable.param6=1 \
	ril.wrigley.modem.tty=/dev/usb/tty1-2:1.10 \
	persist.radio.lte.mm.disable=0 \
	ro.media.enc.aud.fileformat=qcp \
	ro.media.enc.aud.codec=qcelp \
	ro.media.enc.aud.bps=13300 \
	ro.media.enc.aud.ch=1 \
	ro.media.enc.aud.hz=8000 \
	ro.mot.setuptype=2 \
	ro.HorizontalBUA=true \
	ro.HorizontalVVM=true \
	ro.horizontalIM=true \
	ro.horizontalNGM=false \
	ro.horizontalVMM=false \
	ro.horizontalMOD=false \
	ro.horizontalVOD=false \
	ro.horizontalEmail=false \
	ro.sf.lcd_density=240 \
	ro.mot.phonemode.vzw4gphone=1 \
	ro.mot.lte_on_cdma=1 \
	ro.mot.tmp.telephony.refactor=true \
	ro.cdma.subscription=0 \
	ro.telephony.default_network=10 \
	lte_ril.libpath=/system/lib/lib-mot-lte-ril.so \
	cdma_ril.libpath=/system/lib/libmoto_ril.so \
	ril.rat=LTE \
	lte_ril.netcfg_to=90 \
	ro.telephony.call_ring.multiple=false \
	ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
	ro.com.android.dataroaming=true \
	ro.cdma.data_retry_config=max_retries=infinite,0,0,10000,10000,100000,10000,10000,10000,10000,140000,540000,960000 \
	ro.gsm.data_retry_config=default_randomization=2000,max_retries=infinite,0,0,80000,125000,485000,905000 \
	ro.gsm.2nd_data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
	ro.setupwizard.enable_bypass=1 \
	ril.subscription.types=NV,RUIM \
	ro.cdma.subscribe_on_ruim_ready=true \
	persist.sys.gsm_signalstrength=false \
	ro.config.not_world_phone=false
