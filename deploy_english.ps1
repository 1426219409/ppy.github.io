$headers = @{'Content-Type'='application/json'}
$body = '{"token":"WX1MERaSuToq/gXV","project_path":"d:\\Desktop\\网站\\dwz\\dwz\\html"}'

Write-Output 'Deploying...'
$response = Invoke-RestMethod -Uri 'https://mcp.juejin.cn/api/deploy' -Method POST -Headers $headers -Body $body
Write-Output 'Deploy successful!'
Write-Output $response