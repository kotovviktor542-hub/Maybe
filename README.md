# Maybe

Android-игра на **Godot 4.3** (GL Compatibility, портретная ориентация).

> Статус: каркас. Игровая логика ещё не заложена — ждём ТЗ.

## Структура

```
project.godot        # конфиг проекта, main_scene = scenes/main.tscn
export_presets.cfg   # Android-пресет (arm64-v8a, package com.example.maybe)
icon.svg             # иконка
scenes/main.tscn     # главная сцена
scripts/main.gd      # скрипт главной сцены
```

## Сборка APK

Собирается автоматически через GitHub Actions при пуше в `main`:
workflow `.github/workflows/build.yml` → debug-APK → релиз с тегом `v0.1.0-buildNN`.

Готовые сборки: [Releases](https://github.com/kotovviktor542-hub/Maybe/releases)

## Локально

```bash
godot --headless --import .
godot --headless --export-debug "Android" build/android/Maybe.apk
```

## Требования к настройкам репозитория

- Settings → Actions → General → Workflow permissions = **Read and write**
