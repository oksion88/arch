#!/usr/bin/env python3
import subprocess
import json
import sys

def get_keyboard_layout():
    try:
        result = subprocess.run(['xkblayout-state', 'print', '%s'], capture_output=True, text=True, check=True)
        layout = result.stdout.strip()
        return layout
    except subprocess.CalledProcessError as e:
        return f"Ошибка: {e}"
    except FileNotFoundError:
        return "Ошибка: xkblayout-state не найден"

if __name__ == "__main__":
    layout = get_keyboard_layout()
    #Создаем JSON-объект с данными о раскладке. Добавьте другие поля по необходимости.
    output = {
        "name": "keyboard", # Имя модуля для i3status
        "instance": "layout", # Имя экземпляра (можно указать несколько раскладок)
        "full_text": layout
    }

    print(json.dumps(output))

