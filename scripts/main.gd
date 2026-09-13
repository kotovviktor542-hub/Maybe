extends Control

## Точка входа. Пока это каркас-заглушка:
## показывает, что APK собрался и запускается на устройстве.

@onready var status_label: Label = $VBox/StatusLabel
@onready var tap_button: Button = $VBox/TapButton

var tap_count: int = 0


func _ready() -> void:
	status_label.text = "Maybe\nGodot %s\nСборка работает" % _engine_version()
	tap_button.pressed.connect(_on_tap_pressed)


func _engine_version() -> String:
	var info: Dictionary = Engine.get_version_info()
	return "%d.%d.%d" % [info.major, info.minor, info.patch]


func _on_tap_pressed() -> void:
	tap_count += 1
	tap_button.text = "Тапов: %d" % tap_count
