function Start-VisualStudio() {
    $solutionName = (Get-Item .).Name

    dotnet new sln --force --name $solutionName
    Get-ChildItem -Recurse *.csproj | ForEach { dotnet sln add $_.FullName }
    start "$solutionName.sln"
}

Export-ModuleMember *-*