# CharmDevKit

## 1. Как установить

1) установить vscode https://code.visualstudio.com/Download
2) установить плагины (Ctrl + Shift + X) `Haxe` и `Debugger For Chrome`
3) сделать `git clone --recursive https://github.com/charmdev/CharmDevKit`
4) скачать CDK-newrender.zip отсюда https://github.com/charmdev/CharmDevKit/releases и распаковать в `CharmDevKit`
5) прописать переменные окружения 
```
CHARM_DEV_KIT=path_to_charmdevkit_on_your_system
HAXEPATH=%CHARM_DEV_KIT%/bin/haxe
NEKO_INSTPATH=%CHARM_DEV_KIT%/bin/neko
PATH+=%HAXEPATH%
PATH+=%NEKO_INSTPATH%
```
6) перейти в директорию, в которою склонировался CharmDevKit и выполнить из консоли `sh setup.sh`

## 2. сборка проекта

пример tasks.json:
```
{
    "version": "2.0.0",
    "tasks": [
        {
            "taskName": "build",
            "type": "shell",
            "command": "haxelib run lime build html5"
        }
    ]
}
```


## 3. Отладка html5

1) для генерации source-map в project.xml нужно добавить `<haxeflag name="-debug"/>`
2) запускаем сервер статики `http-server -c1 ./bin/html5/bin`
3) прописываем конфиг дебагера .vscode/launch.json
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "chrome",
            "request": "launch",
            "name": "Launch Chrome against localhost",
            "url": "http://localhost:8080",
            "webRoot": "${workspaceRoot}"
        },
        {
            "type": "chrome",
            "request": "attach",
            "name": "Attach to Chrome",
            "port": 9222,
            "webRoot": "${workspaceRoot}"
        }
    ]
}
```
4) запускаем дебаггер (F5)
