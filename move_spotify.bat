rem documentation in: https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/mklink

cd D:

set sourceLocal=C:\Users\lauti\AppData\Local\Spotify
set destLocal=D:\Spotify\Local
set sourceRoaming=C:\Users\lauti\AppData\Roaming\Spotify
set destRoaming=D:\Spotify\Roaming

xcopy /v /i /s /e /k /o %sourceLocal% %destLocal%
xcopy /v /i /s /e /k /o %sourceRoaming% %destRoaming%
echo Copied files to destination

rmdir /s /q %sourceLocal%
rmdir /s /q %sourceRoaming%
echo deleted files in source

mklink /d %sourceLocal% %destLocal%
mklink /d %sourceRoaming% %destRoaming%
echo Created symlinks

echo DONE
pause