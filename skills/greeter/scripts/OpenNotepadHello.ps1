# PowerShell script to open Notepad and write "Hello"

# Start Notepad process
$notepad = Start-Process -FilePath "notepad.exe" -PassThru

# Wait for Notepad to be ready
Start-Sleep -Seconds 1

# Use the SendKeys method to type "Hello" in Notepad
Add-Type -AssemblyName System.Windows.Forms

# Activate the Notepad window
$null = [System.Windows.Forms.SendKeys]::SendWait("Hello")