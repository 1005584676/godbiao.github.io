@ echo off
echo �������ó�������ԱȨ��...
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof

:st
copy "%~0" "%windir%\system32\"
echo ���ó�������ԱȨ�޳ɹ�
@echo off  
echo     ���������������������͸������˺�һ�£����磺���ڣ��������ӦΪ��leizhang46
set/p pcname=
echo Windows Registry Editor Version 5.00>ComputerName.reg 
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam]>>ComputerName.reg 
echo @="%pcname%">>ComputerName.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName]>>ComputerName.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName]>>ComputerName.reg 
echo "ComputerName"="%pcname%">>ComputerName.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName]>>ComputerName.reg 
echo "ComputerName"="%pcname%">>c:\TempInfo.reg>>ComputerName.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Eventlog]>>ComputerName.reg 
echo "ComputerName"="%pcname%">>ComputerName.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName]>>ComputerName.reg 
echo "ComputerName"="%pcname%">>ComputerName.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters]>>ComputerName.reg 
echo "NV Hostname"="%pcname%">>ComputerName.reg 
echo "Hostname"="%pcname%">>ComputerName.reg 
echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\ShellNoRoam]>>ComputerName.reg 
echo @="%pcname%">>ComputerName.reg 
regedit /s ComputerName.reg 
del /q ComputerName.reg 
echo     �������Լ���... 
pause    
