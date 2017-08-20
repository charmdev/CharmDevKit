HAXELIB='bin/haxe/haxelib'
HAXELIB_ROOT='haxelib-root'
HAXELIB_DEV='haxelib-dev'

bin\vscode\bin\code --extensions-dir bin\vscode-extensions --install-extension nadako.vshaxe
bin\vscode\bin\code --extensions-dir bin\vscode-extensions --install-extension msjsdiag.debugger-for-chrome

$HAXELIB setup $HAXELIB_ROOT

$HAXELIB install standart_deps.hxml --always
$HAXELIB dev openfl $HAXELIB_DEV/openfl

