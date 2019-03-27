Write-Host Starting test

# $ErrorActionPreference = 'SilentlyContinue';
# docker kill jiratest
# docker rm -f jiratest

$ErrorActionPreference = 'Stop';
# Write-Host Starting container
# docker run --name jiratest -p 8080:8080 -d jira
# Start-Sleep 20

# docker exec -t jiratest java -version

# Invoke-WebRequest http://localhost:8080

# docker logs jiratest

# $ErrorActionPreference = 'SilentlyContinue';
# docker kill jiratest
# docker rm -f jiratest

Write-Host testing renovate -ForegroundColor Green
docker run --rm -t renovate renovate --version

Write-Host testing rancher-cli -ForegroundColor Green
docker run --rm -t rancher-cli rancher --version

$images = @('dotnet-sdk', 'dotnet-aspnet')

$images | ForEach-Object {
    Write-Host testing $_ -ForegroundColor Green
    docker run --rm -t $_ dotnet --info
}