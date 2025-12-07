$repoUrl = Read-Host "请粘贴您的 GitHub 仓库地址 (例如 https://github.com/username/voice-assistant.git)"
if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "错误: 地址不能为空" -ForegroundColor Red
    exit 1
}

Write-Host "正在配置远程仓库..."
git remote remove origin 2>$null
git remote add origin $repoUrl
git branch -M main

Write-Host "正在推送到 GitHub..."
git push -u origin main

if ($?) {
    Write-Host "`n成功！代码已推送到 GitHub。" -ForegroundColor Green
    Write-Host "现在请打开浏览器访问您的仓库页面："
    Write-Host "1. 点击 'Actions' 标签页"
    Write-Host "2. 等待 'Android Build' 任务变绿"
    Write-Host "3. 点击任务进入详情，下载 'voice-assistant-debug' (APK文件)"
} else {
    Write-Host "`n推送失败。请检查您是否已在终端登录 GitHub (git config) 或是否有权限。" -ForegroundColor Red
}
