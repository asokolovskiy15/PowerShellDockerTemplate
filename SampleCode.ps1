Copy-Item "C:\backups\klbackup*\" "\\Server\Backups\klBackup\" -force -recurse -ErrorAction stop
Remove-Item "C:\backups\klbackup*" -force -recurse
$folders = Get-ChildItem "\\Server\Backups\klBackup\klbackup*"
$i = 0
While ($i -lt $folders.count-3) {
   Remove-Item $folders[$i] -force -recurse
   $i++
}