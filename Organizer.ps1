$files = Get-ChildItem

New-Item -ItemType Directory -Name "TextFiles" -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Name "Images" -ErrorAction SilentlyContinue

foreach ($file in $files) {
    if ($file.Extension -eq ".txt") {
        Move-Item $file.FullName -Destination ".\TextFiles"
    }

    elseif ($file.Extension -eq ".jpg") {
        Move-Item $file.FullName -Destination ".\Images"
    }
}