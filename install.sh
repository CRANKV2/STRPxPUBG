#!/system/bin/sh
SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true
CLEANSERVICE=true
DEBUG=true
MODDIR=/data/adb/modules

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"

# Set what you want to display when installing your module
print_modname() {
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	KR=/sdcard/Android/data/com.pubg.krmobile
USR_KR=/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android
VNG=/sdcard/Android/data/com.vng.pubgmobile
USR_VNG=/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/AndroidTW=/sdcard/Android/data/com.rekoo.pubgm
USR_TW=/sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android
CH=/sdcard/Android/data/com.tencent.tmgp.pubgmhd
USR_CH=/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android
GB=/storage/emulated/0/Android/data/com.tencent.ig
USR_GB=/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android
IN=/sdcard/Android/data/com.pubg.imobile
USR_IN=/sdcard/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android
DIR1=${EXTERNAL_STORAGE}/z/SomeScripts
DIR2="$MODPATH/PUBG"
TMPR=${EXTERNAL_STORAGE}/PUBGAUDIO
PACKAGE_NAME="${EXTERNAL_STORAGE}/Android/data"
	ui_print "┏━━━┓┏━━━━┓┏━━━┓┏━━━┓
┃┏━┓┃┃┏┓┏┓┃┃┏━┓┃┃┏━┓┃
┃┗━━┓┗┛┃┃┗┛┃┗━┛┃┃┗━┛┃
┗━━┓┃╋╋┃┃╋╋┃┏┓┏┛┃┏━━┛
┃┗━┛┃╋╋┃┃╋╋┃┃┃┗┓┃┃╋╋╋
┗━━━┛╋╋┗┛╋╋┗┛┗━┛┗┛╋╋╋
╋╋╋╋╋╋╋╋┏┓┏┓╋╋╋╋╋╋╋╋╋
╋┏━━┳━━┓┗╋╋┛┏━━┳━━┓╋╋
╋┗━━┻━━┛┏╋╋┓┗━━┻━━┛╋╋
╋╋╋╋╋╋╋╋┗┛┗┛╋╋╋╋╋╋╋╋╋
┏━━━┓┏┓╋┏┓┏━━┓╋┏━━━┓╋
┃┏━┓┃┃┃╋┃┃┃┏┓┃╋┃┏━┓┃╋
┃┗━┛┃┃┃╋┃┃┃┗┛┗┓┃┃╋┗┛╋
┃┏━━┛┃┃╋┃┃┃┏━┓┃┃┃┏━┓╋
┃┃╋╋╋┃┗━┛┃┃┗━┛┃┃┗┻━┃╋
┗┛╋╋╋┗━━━┛┗━━━┛┗━━━┛╋"
ui_print "Powered by @CRANKV2"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ui_print ""
  ui_print "▌UNIVERSAL All PUBG Packages All Soc's ▌"
  ui_print " "
  ui_print "▌VERSION ▰ 1.0"
  ui_print "▌CODENAME ▰ STRP x PUBG"
  ui_print "▌DEVICE INFORMATIONS..:"
  sleep 2
  ui_print "▌MODEL ▰ $(getprop ro.build.product)"
  ui_print "▌DEVICE ▰ $(getprop ro.product.model)"
  ui_print "▌BRAND ▰ $(getprop ro.product.system.manufacturer)"
  ui_print "▌PROCESSOR ▰ $(getprop ro.product.board)"
  ui_print "▌CPU ▰ $(getprop ro.hardware)"
  ui_print "▌ANDROID VERSION ▰ $(getprop ro.build.version.release)"
  ui_print "▌KERNEL ▰ $(uname -r)"
  ui_print "▌RAM ▰ $(free | grep Mem |  awk '{print $2}')"
  sleep 2
  ui_print " "
  ui_print "▌Join Android Root Modules Community"
  ui_print "▌On Telegram For More!!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  ui_print " "
  sleep 2
  ui_print "▌PUBG Extreme Graphic Script!"
  sleep 0.5
  ui_print "▌For using NEW PUBG XTREME GRAPHIC Script..."
  sleep 0.5
  ui_print "▌Type 'su -c PUBGEXTREME' into Termux!"
  sleep 1.5
  ui_print "▌PUBG Ultra Audio Auto Install!"
  sleep 1.5
ui_print "▌Termux Menu With More Features Coming In Next Update!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print " "
ui_print "╔▌Checking which ARM ur device has..."
sleep 2
ui_print "║"
ui_print "╠▌Your ARM Is ▰ $(getprop ro.product.cpu.abi)"
sleep 1
ui_print "║"
ui_print "╠▌Extracting and Moving files for ▰ $(getprop ro.product.cpu.abi)"
[[ "$IS64BIT" == "true" ]] && tar -xf "$MODPATH/pubg64.tar.xz" -C "$MODPATH" || tar -xf "$MODPATH/pubg32.tar.xz" -C "$MODPATH"
sleep 2.5
ui_print "║"
ui_print "╚══⇒ DONE .. All Scripts Placed Successfully!"
ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
 ui_print ""
 rm -rf $TMPR
 sleep 2.5
 ui_print "▌Installing ULTRA AUDIO FOR ALL PUBG VERSIONS!"
 ui_print ""
 ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2.5
if [[ -d $PACKAGE_NAME/com.pubg.krmobile ]]
then
ui_print "▌Found com.pubg.krmobile Package Installing Ultra Audio for it!"
ui_print "▌This can Take Couple sec. depending on Device.."
mkdir $TMPR
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
unzip $DIR2/AUDIO -d $TMPR &> /dev/null
ui_print "▌Extracting Files.."
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
ui_print "▌Files Sucessfully Placed!"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cp -a $TMPR/files $KR &> /dev/null
cp -r $DIR2/UserSettings.ini $USR_KR &> /dev/null
sleep 2
ui_print "▌Let's Continue Main Installer..."
sleep 1.5
elif [[ -d $PACKAGE_NAME/com.vng.pubgmobile ]]
then
ui_print " "
ui_print "▌Found PUBG com.vng.pubgmobile Package Installing Ultra Audio for it!"
ui_print "▌This can Take Couple sec. depending on Device.."
mkdir $TMPR
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
unzip $DIR2/AUDIO -d $TMPR &> /dev/null
ui_print "▌Extracting Files.."
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print "▌Files Sucessfully Placed!"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cp -a $TMPR/files $VNG &> /dev/null
cp -r $DIR2/UserSettings.ini $USR_VNG &> /dev/null
sleep 2
ui_print "▌Let's Continue Main Installer..."
sleep 1.5
elif [[ -d $PACKAGE_NAME/com.rekoo.pubgm ]]
then
ui_print " "
ui_print "▌Found com.rekoo.pubgm Package Installing Ultra Audio for it!"
ui_print "▌This can Take Couple sec. depending on Device.."
mkdir $TMPR
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
unzip $DIR2/AUDIO -d $TMPR &> /dev/null
ui_print "▌Extracting Files.."
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print "▌Files Sucessfully Placed!"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cp -a $TMPR/files $TW &> /dev/null
cp -r $DIR2/UserSettings.ini $USR_CH &> /dev/null
sleep 2
ui_print "▌Let's Continue Main Installer..."
sleep 1.5
elif [[ -d $PACKAGE_NAME/com.tencent.tmgp.pubgmhd ]]
then
ui_print " "
ui_print "▌Found com.tencent.tmgp.pubgmhd Package Installing Ultra Audio for it!"
ui_print "▌This can Take Couple sec. depending on Device.."
mkdir $TMPR
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
unzip $DIR2/AUDIO -d $TMPR &> /dev/null
ui_print "▌Extracting Files.."
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print "▌Files Sucessfully Placed!"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cp -a $TMPR/files $CH &> /dev/null
cp -r $DIR2/UserSettings.ini $USR_CH &> /dev/null
sleep 2
ui_print "▌Let's Continue Main Installer..."
sleep 1.5
elif [[ -d $PACKAGE_NAME/com.tencent.ig ]]
then
ui_print " "
ui_print "▌Found com.tencent.ig Package Installing Ultra Audio for it!"
ui_print "▌This can Take Couple sec. depending on Device.."
mkdir $TMPR
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
unzip $DIR2/AUDIO -d $TMPR &> /dev/null
ui_print "▌Extracting Files.."
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print "▌Files Sucessfully Placed!"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 3
cp -a $TMPR/files $GB &> /dev/null
cp -r $DIR2/UserSettings.ini $USR_GB &> /dev/null
sleep 2
ui_print "▌Let's Continue Main Installer..."
sleep 1.5
elif [[ -d $PACKAGE_NAME/com.pubg.imobile ]]
then
ui_print " "
ui_print "▌Found com.pubg.imobile Package Installing Ultra Audio for it!"
ui_print "▌This can Take Couple sec. depending on Device.."
mkdir $TMPR
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
unzip $DIR2/AUDIO -d $TMPR &> /dev/null
ui_print "▌Extracting Files.."
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
ui_print "▌Files Sucessfully Placed!"
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
cp -a $TMPR/files $IN &> /dev/null
cp -r $DIR2/UserSettings.ini $USR_IN &> /dev/null
sleep 2
ui_print "▌Let's Continue Main Installer..."
sleep 1.5
fi
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 2
  ui_print " "
  ui_print "▌I Am Not Responsible For Any Problems "
  ui_print "▌You Will Face From This MODULE!" 
  ui_print ""
ui_print " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sleep 1
  ui_print "▌Adding Games to Denylist / MagiskHide:"
  ui_print ""
  sleep 1.5
  ui_print "▌Enabling MagiskHide / Denylist.."
magiskhide disable >/dev/null 2>&1
magiskhide enable >/dev/null 2>&1
magisk --denylist enable >/dev/null 2>&1
sleep 1.5
ui_print "▌DONE ▌"
sleep 1.5
ui_print ""
ui_print "▌Adding Games please wait..."
magiskhide add com.tencent.ig >/dev/null 2>&1
magiskhide add com.epicgames.fortnite >/dev/null 2>&1
magiskhide add com.vng.pubgmobile >/dev/null 2>&1
magiskhide add com.pubg.krmobile >/dev/null 2>&1
magiskhide add com.activision.callofduty.shooter >/dev/null 2>&1
magiskhide add com.garena.game.codm >/dev/null 2>&1
magiskhide add com.pubg.newstate >/dev/null 2>&1
magiskhide add com.plato.android >/dev/null 2>&1
magiskhide add com.dts.freefireth >/dev/null 2>&1
magiskhide add com.dts.freefiremax >/dev/null 2>&1
magiskhide add com.kitkagames.fallbuddies >/dev/null 2>&1
magiskhide add com.ea.gp.apexlegendsmobilefps >/dev/null 2>&1
magisk --denylist add com.pubg.newstate >/dev/null 2>&1
magisk --denylist add com.garena.game.codm >/dev/null 2>&1
magisk --denylist add com.activision.callofduty.shooter >/dev/null 2>&1
magisk --denylist add com.pubg.krmobile >/dev/null 2>&1
magisk --denylist add com.epicgames.fortnite >/dev/null 2>&1
magisk --denylist add com.tencent.ig >/dev/null 2>&1
magisk --denylist add com.plato.android >/dev/null 2>&1
magisk --denylist add com.dts.freefireth >/dev/null 2>&1
magisk --denylist add com.dts.freefiremax >/dev/null 2>&1
magisk --denylist add com.kitkagames.fallbuddies >/dev/null 2>&1
magisk --denylist add com.ea.gp.apexlegendsmobilefps >/dev/null 2>&1
sleep 3
ui_print "▌Added all Necessary Games!"
  sleep 3
}


on_install() {
  ui_print "▌Installing STRP x PUBG▌"
  ui_print ""
  ui_print "▌PUBG Extreme Graphic"
  ui_print "▌PUBG Ultra Audio"
  ui_print "▌MENU Coming Soon..!"
  ui_print " "
  sleep 2
  ui_print "▌Please wait for Success Message!" 
  ui_print "▌Can take few seconds!"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'tmp/*' -d $MODPATH >&2
    unzip -o "$ZIPFILE" 'PUBG/*' -d $MODPATH >&2
  wget -O "/data/local/tmp/StratosphereToast.apk" "https://github.com/CRANKV2/CRV2/blob/main/StratosphereToast.apk?raw=true"
  pm install /data/local/tmp/StratosphereToast.apk
  ui_print " "
  ui_print "▌DONE ▌"
  rm -rf $TMPR
}


set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh