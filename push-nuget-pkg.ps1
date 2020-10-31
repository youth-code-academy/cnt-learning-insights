<#
    Pushes the nuget package after creating it.
#>

param (
    # The API key for authenticating
    [Parameter(Mandatory=$true)]
    [string]$apikey
)

# Clean all packages
Write-Output 'Cleaning all packages in folder...'
Remove-Item '*.nupkg'

# Create the package
# Remember to change the version manually in the NUSPEC file
Write-Output 'Creating package...'
. .\create-nuget-pkg.ps1

$nugetpkg = Get-Item '*.nupkg'
if (!$nugetpkg)
{
    throw 'Could not find a NuGet package to push'
}

Write-Output "Pushing '$nugetpkg'..."

# Push it
dotnet nuget push
    $nugetpkg.FullName
    --api-key $apikey
    --source github
