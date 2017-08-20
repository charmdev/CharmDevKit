HAXELIB='bin/haxe/haxelib'
HAXELIB_ROOT='haxelib-root'
HAXELIB_DEV='haxelib-dev'

$HAXELIB setup $HAXELIB_ROOT

$HAXELIB install standart_deps.hxml --always
$HAXELIB dev openfl $HAXELIB_DEV/openfl/dev

