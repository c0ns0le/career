
$packages = @{
"conemu" = "";                                                                      # console replacement
"GoogleChrome" = "";
"paint.net" = "";
"adobereader" = "";
"notepadplusplus" = "";                                                             # default text editor for most people

"VisualStudio2013Professional" = "-InstallArguments /Features:'WebTools SQL'";
"VS2013.4" = "";
"ncrunch.vs2013" = "";
"resharper" = "";
"specflow" = "";                                                                    # integration testing tool
"SqlToolbelt" = "";
"nuget.commandline" = "";
"NugetPackageManagerForVisualStudio2013" = "";

"git-credential-winstore" = "";                                                     # stores your git credentials so you only have to enter them once.
"SourceTree" = "";                                                                 #git ui tool

"SqlServerExpress" = "";
"MsSqlServerManagementStudio2014Express" = "";

"fiddler" = "";                                                                     # http communication analysis tool
"linqpad" = "";
"sysinternals" = "";
"procexp" = "";
};

Write-Host("---------------------------------------------------------")
Write-Host("Installing $packageName")
Write-Host("---------------------------------------------------------")

$packages.Keys | % { 
    $application = $_
    $args = $packages.item($_)
    $cmd = "choco install $application $args"
    write-host $cmd
    Invoke-Expression $cmd
}