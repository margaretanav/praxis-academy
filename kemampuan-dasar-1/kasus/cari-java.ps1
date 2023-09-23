function cari-java {
    param(
        [string]$Direktori
    )

    Get-ChildItem -File -Recurse -Path $Direktori | ForEach-Object{
        if ($_.Extension -eq ".java"){
            Write-Host "Ada file Java pada direktori $($_.DirectoryName)"
        }
        if ()
    }
}
cari-java -Direktori "D:\Netbeans"