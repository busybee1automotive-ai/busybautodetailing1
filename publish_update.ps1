$git = "C:\Program Files\Git\cmd\git.exe"
Set-Location "C:\Users\maris\source\repos\busybautodetailing1\busybautodetailing1"
& $git status --short | Out-File -FilePath "gitstatus.txt" -Encoding utf8
& $git add index.html | Out-File -FilePath "git_add.txt" -Encoding utf8
& $git commit -m "Update quote form to SMS quote request" 2>&1 | Out-File -FilePath "git_commit.txt" -Encoding utf8
& $git push origin main 2>&1 | Out-File -FilePath "git_push.txt" -Encoding utf8
"done" | Out-File -FilePath "git_done.txt" -Encoding utf8
