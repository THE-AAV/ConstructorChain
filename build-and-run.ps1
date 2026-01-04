# Build and run the NoobChain project using the local gson jar.
$gsonJar = Join-Path $PSScriptRoot 'dependency\gson-2.10.1.jar'
if (-Not (Test-Path $gsonJar)) {
    Write-Host "Gson jar not found. Run .\dependency\get-gson.ps1 first or run this script to fetch it."
    & .\dependency\get-gson.ps1
}

$cp = ".;$gsonJar"
Write-Host "Compiling..."
javac -cp $cp *.java
if ($LASTEXITCODE -ne 0) { Write-Host "Compilation failed"; exit $LASTEXITCODE }

Write-Host "Running NoobChain..."
java -cp $cp NoobChain
