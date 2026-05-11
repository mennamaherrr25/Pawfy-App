$files = Get-ChildItem -Path lib -Filter *.dart -Recurse
foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    $newContent = $content -replace "core/theme/app_text_styles.dart", "core/constants/app_text_styles.dart"
    if ($content -ne $newContent) {
        Set-Content -Path $file.FullName -Value $newContent -NoNewline
        Write-Host "Updated $($file.FullName)"
    }
}
