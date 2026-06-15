# 使用本機 Godot 執行 headless 單元測試
$GodotExe = "D:\MyProgramFiles\godot\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64_console.exe"
$ProjectRoot = Split-Path -Parent $PSScriptRoot

if (-not (Test-Path $GodotExe)) {
    Write-Error "Godot not found: $GodotExe"
    exit 1
}

& $GodotExe --headless --path $ProjectRoot -s res://tests/run_tests.gd
exit $LASTEXITCODE
