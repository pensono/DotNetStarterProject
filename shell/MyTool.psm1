function Invoke-MyTool() {
    dotnet run -p tools/MyTool/StarterProject.MyTool.csproj -- @args
}

Export-ModuleMember *-*