$prereleaseIdentifier=$(date -u +%Y%m%d%H%M%S)
dotnet build -c Release -p:MinVerDefaultPreReleaseIdentifiers=$prereleaseIdentifier
dotnet pack --no-build -c Release -p:MinVerDefaultPreReleaseIdentifiers=$prereleaseIdentifier
dotnet nuget push ".\artifacts\package\release\*.nupkg" --source "C:\nuget_packages\" --skip-duplicate
