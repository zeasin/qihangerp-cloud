from cx_Freeze import setup, Executable

script_path = "main.py"

build_exe_options = {
    "includes": [],
    "excludes": ['tkinter'],
    "packages": [],
    'include_files': [],
}

setup(
    name="电商大数据工具",
    version="1.0",
    description="电商大数据工具",
    options={
        "build_exe": build_exe_options
    },
    executables=[Executable(script_path, base="Win32GUI")]
)