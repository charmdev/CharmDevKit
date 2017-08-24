HAXELIB='bin/haxe/haxelib.exe'
HAXELIB_ROOT='haxelib-root'
HAXELIB_DEV='haxelib-dev'

$HAXELIB setup $HAXELIB_ROOT

$HAXELIB install standart_deps.hxml --always
$HAXELIB dev openfl $HAXELIB_DEV/openfl
$HAXELIB dev repack $HAXELIB_DEV/repack/lib
$HAXELIB dev samcodes-notifications $HAXELIB_DEV/samcodes-notifications
$HAXELIB dev spinehaxe $HAXELIB_DEV/spinehaxe/src
$HAXELIB dev stablexui $HAXELIB_DEV/stablexui
$HAXELIB dev GAnalytics $HAXELIB_DEV/GAnalytics
$HAXELIB dev extension-nativedialog $HAXELIB_DEV/extension-nativedialog
$HAXELIB dev extension-iap $HAXELIB_DEV/extension-iap
$HAXELIB dev extension-googleplaygames $HAXELIB_DEV/extension-googleplaygames
$HAXELIB dev extension-facebook $HAXELIB_DEV/extension-facebook
$HAXELIB dev ConnectionManagerExtension $HAXELIB_DEV/ConnectionManagerExtension
$HAXELIB dev AppsFlyerExtension $HAXELIB_DEV/AppsFlyerExtension

 npm install http-server -g
