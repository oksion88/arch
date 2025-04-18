import subprocess
import time

def get_brightness():
    """Получает текущий уровень яркости в процентах (от 0 до 100)."""
    try:
        output = subprocess.check_output(['brightnessctl', 'g'], text=True).strip()
        current_brightness = float(output)

        output = subprocess.check_output(['brightnessctl', 'm'], text=True).strip()
        max_brightness = float(output)

        percentage = int((current_brightness / max_brightness) * 100)
        return percentage

    except (subprocess.CalledProcessError, FileNotFoundError, ValueError, ZeroDivisionError):
        return None

def main():
    """Основная функция скрипта."""
    while True:
        brightness_percentage = get_brightness()
        if brightness_percentage is not None:
            print(f"{brightness_percentage}%")
        else:
            print("Не удалось получить яркость.")

        time.sleep(0.3)

if __name__ == "__main__":
    main()
