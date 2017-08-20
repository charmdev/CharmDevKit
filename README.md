# CharmDevKit

## 1. Как установить

1) сделать `git clone https://github.com/charmdev/CharmDevKit`
2) перейти в директорию, в которою склонировался CharmDevKit и выполнить из консоли `sh setup.sh`
3) прописать переменные окружения 
```
CHARM_DEV_KIT=path_to_charmdevkit_on_your_system
HAXEPATH=%CHARM_DEV_KIT%/bin/haxe
NEKO_INSTPATH=%CHARM_DEV_KIT%/bin/neko
PATH+=%HAXEPATH%
PATH+=%NEKO_INSTPATH%
```

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

для генерации source-map в project.xml нужно добавить `<haxeflag name="-debug"/>`

пример .vscode/launch.json
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "chrome",
            "request": "launch",
            "name": "Launch Chrome against localhost",
            "url": "http://localhost:3000",
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
