$path = "c:\projects\Freelance\Antigravity\my-resume\quest.html"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

# Fix corrupted symbols
$content = $content -replace 'âœ“', ([char]0x2713)
$content = $content -replace 'ðŸ“ž', ([char]0xD83D + [char]0xDCDE)
$content = $content -replace 'âœ‰', ([char]0x2709)
$content = $content -replace 'ðŸŒ ', ([char]0xD83C + [char]0xDF10)
$content = $content -replace 'ðŸ’¼', ([char]0xD83D + [char]0xDCBC)
$content = $content -replace 'â€“', ([char]0x2013)

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
