@echo off
REM Build script for CS:GO cheat menu DLL using MSVC

REM Set paths to your DirectX SDK and ImGui include/lib folders accordingly
set DXSDK_DIR=C:\Path\To\DirectXSDK
set IMGUI_DIR=C:\Path\To\ImGui

cl /LD csgo_cheat_menu.cpp ^
    /I "%DXSDK_DIR%\Include" ^
    /I "%IMGUI_DIR%" ^
    /link /LIBPATH:"%DXSDK_DIR%\Lib\x86" d3d9.lib d3dx9.lib user32.lib gdi32.lib shell32.lib opengl32.lib

echo Build complete. Output: csgo_cheat_menu.dll
pause
