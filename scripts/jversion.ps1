[CmdletBinding()]
param (
    [Parameter()]
    [System.String]
    $v
)

$path = $env:Path.Split(";")

if ( Test-Path "D:\.sdks\java\jdk-$v") {
    if ($path[-1] -match "java\\jdk-") {
        $path[-1] = "D:\.sdks\java\jdk-$v\bin"
        $env:Path = $path -join ";"
    }
    else {
        $env:Path += ";D:\.sdks\java\jdk-$v\bin"
    }
    Write-Output "Java $v activated."
    java -version
}
else {
    Write-Output "Java version not found.\n"
    if ($path[-1] -notmatch "java\\jdk-") {
        Write-Output "Activate default version 11."
        $env:Path += ";D:\.sdks\java\jdk-$v\bin"
        java -version
    }
    else {
        java -version
    }
}

