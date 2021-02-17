function Invoke-MyTool() {
    dotnet run -p tools/MyTool/MyTool.csproj -- @args
}

Export-ModuleMember *-*