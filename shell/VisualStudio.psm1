function Start-VisualStudio() {
    $solutionName = (Get-Item .).Name

    dotnet new sln --force --name $solutionName
    dotnet sln add @(Get-ChildItem -Recurse *.csproj)
    start "$solutionName.sln"
}

Export-ModuleMember *-*