$Files = [IO.Directory]::EnumerateFiles('c:\new\powershell','*.ps1','AllDirectories')

ForEach ($file in $Files) 
{
echo $file
    .\ValidSyntax.ps1 -output $file
}