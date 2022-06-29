
#Set Toast on Boot
am start -a android.intent.action.MAIN -e toasttext "STRP x PUBG INITIALIZED" -n bellavita.toast/.MainActivity


#Auto Clean Caches After Reboot
if [ -d /data/data/com.mobile.legends ]; then
rm -rf /data/data/com.mobile.legends/cache
rm -rf /data/media/0/Android/data/com.mobile.legends/cache
fi
if [ -d /data/data/com.tencent.ig ]; then
rm -rf /data/data/com.tencent.ig/cache
rm -rf /data/media/0/Android/data/com.tencent.ig/cache
fi

if [ -d /data/data/com.ea.gp.apexlegendsmobilefps ]; then
rm -rf /data/data/com.tencent.ig/cache
rm -rf /data/media/0/Android/data/com.ea.gp.apexlegendsmobilefps/cache
fi
if [ -d /data/data/com.pubg.krmobile ]; then
rm -rf /data/data/com.pubg.krmobile/cache
rm -rf /data/media/0/Android/data/com.pubg.krmobile/cache
fi
if [ -d /data/data/com.pubg.imobile ]; then
rm -rf /data/data/com.pubg.imobile/cache
rm -rf /data/media/0/Android/data/com.pubg.imobile/cache
fi
if [ -d /data/data/com.vng.pubgmobile ]; then
rm -rf /data/data/com.vng.pubgmobile/cache
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/cache
fi
if [ -d /data/data/com.miHoYo.GenshinImpact ]; then
rm -rf /data/data/com.miHoYo.GenshinImpact/cache
rm -rf /data/media/0/Android/data/com.miHoYo.GenshinImpact/cache
fi
if [ -d /data/data/com.vanced.android.youtube ]; then
rm -rf /data/data/com.vanced.android.youtube/cache
rm -rf /data/media/0/Android/data/com.vanced.android.youtube/cache
fi
if [ -d /data/data/com.garena.game.codm ]; then
rm -rf /data/data/com.garena.game.codm/cache
rm -rf /data/media/0/Android/data/com.garena.game.codm/cache
fi
if [ -d /data/data/com.activision.callofduty.shooter ]; then
rm -rf /data/data/com.activision.callofduty.shooter/cache
rm -rf /data/media/0/Android/data/com.activision.callofduty.shooter/cache
fi
if [ -d /data/data/com.facebook.katana ]; then
rm -rf /data/data/com.facebook.katana/cache
rm -rf /data/media/0/Android/data/com.facebook.katana/cache
fi
if [ -d /data/data/org.telegram.messenger ]; then
rm -rf /data/data/org.telegram.messenger/cache
rm -rf /data/media/0/Android/data/org.telegram.messenger/cache
fi
if [ -d /data/data/com.facebook.orca ]; then
rm -rf /data/data/com.facebook.orca/cache
rm -rf /data/media/0/Android/data/com.facebook.orca/cache
fi
if [ -d /data/data/org.telegram.plus ]; then
rm -rf /data/data/org.telegram.plus/cache
rm -rf /data/media/0/Android/data/org.telegram.plus/cache
fi
if [ -d /data/data/com.whatsapp ]; then
rm -rf /data/data/com.whatsapp/cache
rm -rf /data/media/0/Android/data/com.whatsapp/cache
fi
if [ -d /data/data/com.supercell.clashofclans ]; then
rm -rf /data/data/com.supercell.clashofclans/cache
rm -rf /data/media/0/Android/data/com.supercell.clashofclans/cache
fi
if [ -d /data/data/com.dts.freefireth ]; then
rm -rf /data/data/com.dts.freefireth/cache
rm -rf /data/media/0/Android/data/com.dts.freefireth/cache
fi
if [ -d /data/data/com.epicgames.fortnite ]; then
rm -rf /data/data/com.epicgames.fortnite/cache
rm -rf /data/media/0/Android/data/com.epicgames.fortnite/cache
fi
if [ -d /data/data/com.garena.game.kgid ]; then
rm -rf /data/data/com.garena.game.kgid.shooter/cache
rm -rf /data/media/0/Android/data/com.garena.game.kgid/cache
fi
if [ -d /data/data/com.riotgames.league.wildrift ]; then
rm -rf /data/data/com.garena.game.kgid.shooter/cache
rm -rf /data/media/0/Android/data/com.riotgames.league.wildrift/cache
fi
if [ -d /data/data/com.zhiliaoapp.musically ]; then
rm -rf /data/data/com.activision.callofduty.shooter/cache
rm -rf /data/media/0/Android/data/com.zhiliaoapp.musically/cache
fi
if [ -d /data/data/com.google.android.googlequicksearchbox ]; then
rm -rf /data/data/com.activision.callofduty.shooter/cache
rm -rf /data/media/0/Android/data/com.google.android.googlequicksearchbox/cache
fi
if [ -d /data/data/com.android.vendingofduty.shooter ]; then
rm -rf /data/data/com.activision.callofduty.shooter/cache
rm -rf /data/media/0/Android/data/com.android.vending/cache
fi
if [ -d /data/data/com.android.chrome ]; then
rm -rf /data/data/com.activision.callofduty.shooter/cache
rm -rf /data/media/0/Android/data/com.android.chrome/cache
fi
if [ -d /data/data/com.ngame.allstar.eu ]; then
rm -rf /data/data/com.ngame.allstar.eu/cache
rm -rf /data/media/0/Android/data/com.ngame.allstar.eu/cache
fi
if [ -d /data/data/com.ngame.allstar.eu ]; then
rm -rf /data/data/com.madfingergames.deadtrigger2/cache
rm -rf /data/media/0/Android/data/com.madfingergames.deadtrigger2/cache
fi

#GMS DOZE Reduce Battery Drain while Playing Games
pm disable com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver
su -c "pm enable com.google.android.gms/.ads.AdRequestBrokerService"
su -c "pm enable com.google.android.gms/.ads.identifier.service.AdvertisingIdService"
su -c "pm enable com.google.android.gms/.ads.social.GcmSchedulerWakeupService"
su -c "pm enable com.google.android.gms/.analytics.AnalyticsService"
su -c "pm enable com.google.android.gms/.analytics.service.PlayLogMonitorIntervalService"
su -c "pm enable com.google.android.gms/.backup.BackupTransportService"
su -c "pm enable com.google.android.gms/.update.SystemUpdateActivity"
su -c "pm enable com.google.android.gms/.update.SystemUpdateService"
su -c "pm enable com.google.android.gms/.update.SystemUpdateService\$ActiveReceiver"
su -c "pm enable com.google.android.gms/.update.SystemUpdateService\$Receiver"
su -c "pm enable com.google.android.gms/.update.SystemUpdateService\$SecretCodeReceiver"
su -c "pm enable com.google.android.gms/.thunderbird.settings.ThunderbirdSettingInjectorService"
su -c "pm enable com.google.android.gsf/.update.SystemUpdateActivity"
su -c "pm enable com.google.android.gsf/.update.SystemUpdatePanoActivity"
su -c "pm enable com.google.android.gsf/.update.SystemUpdateService"
su -c "pm enable com.google.android.gsf/.update.SystemUpdateService\$Receiver"
su -c "pm enable com.google.android.gsf/.update.SystemUpdateService\$SecretCodeReceiver"

#Disable FSync & more universal Smoother Gameplay
if [ -e /sys/kernel/dyn_fsync/Dyn_fsync_active ]; then
lock_val "0" /sys/kernel/dyn_fsync/Dyn_fsync_active
fi
if [ -e /sys/class/misc/fsynccontrol/fsync_enabled ]; then
lock_val "0" /sys/class/misc/fsynccontrol/fsync_enabled
fi
if [ -e /sys/module/sync/parameters/fsync ]; then
lock_val "0" /sys/module/sync/parameters/fsync
fi
if [ -e /sys/module/sync/parameters/fsync_enabled ]; then
lock_val "N" /sys/module/sync/parameters/fsync_enabled
fi
if [ -e /sys/module/sync/parameters/auto_fsync_delay_sec ]; then
lock_val "0" /sys/module/sync/parameters/auto_fsync_delay_sec
fi
done
