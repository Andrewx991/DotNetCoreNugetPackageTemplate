function CreateNugetPackageSolution {
    param(
        [string] $packageName
    )

    New-Item -Type directory -Name $packageName
    pushd $packageName
    dotnet new sln
    dotnet new classlib
    dotnet sln "$packageName.sln" add "$packageName.csproj"
    popd
}
