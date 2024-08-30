import pyautogui
import pyperclip
from robot.api.deco import keyword
import time


#Método para subir um arquivo
@keyword
def upload_file(file_path, name_archive):
        pyperclip.copy(file_path)
        time.sleep(1) 
        pyautogui.hotkey('alt', 'd')
        time.sleep(1)
        pyautogui.hotkey('ctrl', 'v')
        pyautogui.press('enter')
        time.sleep(2)
        pyperclip.copy(name_archive)
        time.sleep(1) 
        pyautogui.hotkey('alt', 'n')
        time.sleep(1) 
        pyautogui.hotkey('ctrl', 'v')
        pyautogui.press('enter')
        