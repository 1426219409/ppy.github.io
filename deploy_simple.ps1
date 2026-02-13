$headers = @{'Content-Type'='application/json'}
$body = '{"token":"WX1MERaSuToq/gXV","project_path":"d:\\Desktop\\网站\\dwz\\dwz\\html"}'

Write-Output '开始部署...'
$response = Invoke-RestMethod -Uri 'https://mcp.juejin.cn/api/deploy' -Method POST -Headers $headers -Body $body
Write-Output '部署成功！'
Write-Output $response