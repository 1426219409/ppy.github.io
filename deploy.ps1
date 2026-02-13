$headers = @{
    'Content-Type' = 'application/json'
}

$body = @{
    token = 'WX1MERaSuToq/gXV'
    project_path = 'd:\Desktop\网站\dwz\dwz\html'
} | ConvertTo-Json

try {
    $response = Invoke-RestMethod -Uri 'https://mcp.juejin.cn/api/deploy' -Method POST -Headers $headers -Body $body
    Write-Output '部署成功！'
    Write-Output $response
} catch {
    Write-Output '部署失败：'
    Write-Output $_.Exception.Message
}