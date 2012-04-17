

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \
    device/motorola/spyder/audio/liba2dp.so:obj/lib/liba2dp.so \
    device/motorola/spyder/audio/libasound.so:obj/lib/libasound.so \
    device/motorola/spyder/audio/libaudio.so:obj/lib/libaudio.so \
    device/motorola/spyder/audio/libaudio_ext.so:obj/lib/libaudio_ext.so \
    device/motorola/spyder/audio/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
    device/motorola/spyder/audio/libaudiopolicy_ext.so:obj/lib/libaudiopolicy_ext.so 


# Audio
PRODUCT_COPY_FILES += \
    device/motorola/spyder/audio/acoustics.default.so:system/lib/hw/acoustics.spyder.so \
    device/motorola/spyder/audio/alsa.default.so:system/lib/hw/alsa.default.so \
    device/motorola/spyder/audio/alsa.omap4.so:system/lib/hw/alsa.spyder.so \
    device/motorola/spyder/audio/liba2dp.so:system/lib/liba2dp.so \
    device/motorola/spyder/audio/libasound.so:system/lib/libasound.so \
    device/motorola/spyder/audio/libaudio.so:system/lib/libaudio.so \
    device/motorola/spyder/audio/libaudio_ext.so:system/lib/libaudio_ext.so \
    device/motorola/spyder/audio/libaudiopolicy.so:system/lib/libaudiopolicy.so \
    device/motorola/spyder/audio/libaudiopolicy_ext.so:system/lib/libaudiopolicy_ext.so \


# Hardware HALs
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/imgtec/gralloc.omap4.so:system/lib/hw/gralloc.omap4.so \

# CameraFix
PRODUCT_COPY_FILES += \
    device/motorola/spyder/camera/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
    device/motorola/spyder/camera/camera.omap4.so:system/lib/hw/camera.omap4.so \
    device/motorola/spyder/camera/libcamera.so:system/lib/libcamera.so \
    device/motorola/spyder/camera/libomxcameraadapter.so:system/lib/libomxcameraadapter.so \
    device/motorola/spyder/camera/libtiutils.so:system/lib/libtiutils.so \

# WirelessTether
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/app/wifi_tether_v3_1-beta11.apk:system/app/wifi_tether_v3_1-beta11.apk \
    device/motorola/spyder/prebuilt/lib/libwtnativetask.so:system/lib/libwtnativetask.so \
    device/motorola/spyder/prebuilt/bin/bootsound:system/bin/bootsound 
#    device/motorola/spyder/prebuilt/media/android_audio.mp3:system/media/android_audio.mp3 \
#    device/motorola/spyder/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip \
    

# Rootfs files
#PRODUCT_COPY_FILES += \
#    out/target/product/spyder/root/init:system/etc/rootfs/init \
#    out/target/product/spyder/root/sbin/adbd:system/etc/rootfs/sbin/adbd \
#    device/motorola/spyder/root/default.prop:system/etc/rootfs/default.prop \
#    device/motorola/spyder/root/init.rc:system/etc/rootfs/init.rc \
#    device/motorola/spyder/root/init.mapphone_cdma.rc:system/etc/rootfs/init.mapphone_cdma.rc \
#    device/motorola/spyder/root/init.mapphone_umts.rc:system/etc/rootfs/init.mapphone_umts.rc \
#    device/motorola/spyder/root/usbcheck.sh:system/etc/rootfs/usbcheck.sh \
#    device/motorola/spyder/root/ueventd.rc:system/etc/rootfs/ueventd.rc \

# Hijack files
#PRODUCT_COPY_FILES += \
#    device/motorola/spyder/root/default.prop:root/default.prop \
#    device/motorola/spyder/root/init.rc:root/init.rc \
#    device/motorola/spyder/root-hijack/init.mapphone_cdma.rc:root/init.mapphone_cdma.rc \
#    device/motorola/spyder/root-hijack/init.mapphone_umts.rc:root/init.mapphone_umts.rc \
#    device/motorola/spyder/root/usbcheck.sh:root/usbcheck.sh \
#    device/motorola/spyder/root/ueventd.rc:root/ueventd.rc \


# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/bin/usbd:system/bin/usbd \
    device/motorola/spyder/prebuilt/bin/battd:system/bin/battd \
    device/motorola/spyder/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/spyder/prebuilt/bin/strace:system/bin/strace \
    device/motorola/spyder/prebuilt/bin/dumpe2fs:system/bin/dumpe2fs \
    device/motorola/spyder/prebuilt/bin/e2fsck:system/bin/e2fsck \
    device/motorola/spyder/prebuilt/bin/mke2fs:system/bin/mke2fs \
    device/motorola/spyder/prebuilt/bin/resize2fs:system/bin/resize2fs \
    device/motorola/spyder/prebuilt/bin/finalize_release:system/bin/finalize_release \
    device/motorola/spyder/prebuilt/bin/tune2fs:system/bin/tune2fs \
    device/motorola/spyder/prebuilt/etc/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
    device/motorola/spyder/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/spyder/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/spyder/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/spyder/prebuilt/etc/wifi/tiwlan_ap.ini:system/etc/wifi/tiwlan_ap.ini \
    device/motorola/spyder/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    device/motorola/spyder/prebuilt/etc/init.d/04pdsbackup:system/etc/init.d/04pdsbackup \
    device/motorola/spyder/prebuilt/usr/idc/cpcap-key.idc:system/usr/idc/cpcap-key.idc \
    device/motorola/spyder/prebuilt/usr/idc/cy8c201xx.idc:system/usr/idc/cy8c201xx.idc \
    device/motorola/spyder/prebuilt/usr/idc/light-prox.idc:system/usr/idc/light-prox.idc \
    device/motorola/spyder/prebuilt/usr/idc/mapphone-switch.idc:system/usr/idc/mapphone-switch.idc \
    device/motorola/spyder/prebuilt/usr/idc/omap-keypad.idc:system/usr/idc/omap-keypad.idc \
    device/motorola/spyder/prebuilt/usr/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
    device/motorola/spyder/prebuilt/usr/keychars/cpcap-key.kcm:system/usr/keychars/cpcap-key.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/cy8c201xx.kcm:system/usr/keychars/cy8c201xx.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/light-prox.kcm:system/usr/keychars/light-prox.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/mapphone-switch.kcm:system/usr/keychars/mapphone-switch.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/omap-keypad.kcm:system/usr/keychars/omap-keypad.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/atmxt-i2c.kcm:system/usr/keychars/atmxt-i2c.kcm \
    device/motorola/spyder/prebuilt/usr/keylayout/aev_abs.kl:system/usr/keylayout/aev_abs.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/cdma_spyder-keypad.kl:system/usr/keylayout/cdma_spyder-keypad.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/light-prox.kl:system/usr/keylayout/light-prox.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/mapphone-switch.kl:system/usr/keylayout/mapphone-switch.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/cy8c201xx.kl:system/usr/keylayout/cy8c201xx.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/omap-keypad.kl:system/usr/keylayout/omap-keypad.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/atmxt-i2c.kl:system/usr/keylayout/atmxt-i2c.kl 
    #device/motorola/spyder/prebuilt/bin/hijack:system/bin/hijack \
    #device/motorola/spyder/prebuilt/bin/hijack.log_dump:system/bin/hijack.log_dump \
    #device/motorola/spyder/prebuilt/etc/hijack-boot.zip:system/etc/hijack-boot.zip \

# Phone settings
#PRODUCT_COPY_FILES += \
#    device/sample/etc/apns-conf_verizon.xml:system/etc/apns-conf.xml \
#    vendor/cm/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml \


# Graphics
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/imgtec/pvrsrvinit:system/bin/pvrsrvinit \
    device/motorola/spyder/prebuilt/imgtec/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/libglslcompiler.so:system/lib/libglslcompiler.so \
    device/motorola/spyder/prebuilt/imgtec/libIMGegl.so:system/lib/libIMGegl.so \
    device/motorola/spyder/prebuilt/imgtec/libpvr2d.so:system/lib/libpvr2d.so \
    device/motorola/spyder/prebuilt/imgtec/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
    device/motorola/spyder/prebuilt/imgtec/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
    device/motorola/spyder/prebuilt/imgtec/libsrv_init.so:system/lib/libsrv_init.so \
    device/motorola/spyder/prebuilt/imgtec/libsrv_um.so:system/lib/libsrv_um.so \
    device/motorola/spyder/prebuilt/imgtec/libusc.so:system/lib/libusc.so \
    device/motorola/spyder/prebuilt/imgtec/libdrm.so:system/lib/libdrm.so \




# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/spyder/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')


