#! /usr/bin/pwsh

# Make sure that the build/ subdirectory exists and set our cwd to it.
Remove-Item -Path .\build -Recurse -Force
New-Item -Path .\build -ItemType Directory
Set-Location -Path .\build\

# Run cmake to generate the build files, clean, and run a build
cmake ..
& "C:/Program Files/Microsoft Visual Studio/2022/Community/MSBuild/Current/Bin/msbuild.exe" spdlog.sln -target:Clean
& "C:/Program Files/Microsoft Visual Studio/2022/Community/MSBuild/Current/Bin/msbuild.exe" spdlog.sln

# Move cwd back to project root
Set-Location ..\
