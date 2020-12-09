function Get-FileName([string]$uri)
{
  $splitted = $uri.Split('/')
  $fullFileName = $splitted[$splitted.Count - 1]
  $fileName = $fullFileName.Substring(0, $fullFileName.LastIndexOf('.'))

  return $fileName
}

function Get-NanumBarunGothic
{
  $downloadUri = 'https://hangeul.naver.com/api/nanum/font/NanumFontSetup_TTF_BARUNGOTHIC.zip'
  $fileName = Get-FileName $downloadUri
  $fileExtension = 'zip'

  Invoke-WebRequest -Uri $downloadUri -OutFile ".\downloads\$fileName.$fileExtension"
  Expand-Archive -Path ".\downloads\$fileName.$fileExtension" -DestinationPath ".\downloads\$fileName"
  Copy-Item -Path ".\downloads\$fileName\*.ttf" -Destination ".\fonts"
}

function Get-NanumGothic
{
  $downloadUri = 'https://hangeul.naver.com/api/nanum/font/NanumFontSetup_TTF_GOTHIC.zip'
  $fileName = Get-FileName $downloadUri
  $fileExtension = 'zip'

  Invoke-WebRequest -Uri $downloadUri -OutFile ".\downloads\$fileName.$fileExtension"
  Expand-Archive -Path ".\downloads\$fileName.$fileExtension" -DestinationPath ".\downloads\$fileName"
  Copy-Item -Path ".\downloads\$fileName\*.ttf" -Destination ".\fonts"
}

function Get-NanumMyungjo
{
  $downloadUri = 'https://hangeul.naver.com/api/nanum/font/NanumFontSetup_TTF_MYUNGJO.zip'
  $fileName = Get-FileName $downloadUri
  $fileExtension = 'zip'

  Invoke-WebRequest -Uri $downloadUri -OutFile ".\downloads\$fileName.$fileExtension"
  Expand-Archive -Path ".\downloads\$fileName.$fileExtension" -DestinationPath ".\downloads\$fileName"
  Copy-Item -Path ".\downloads\$fileName\*.ttf" -Destination ".\fonts"
}

function Get-NotoSansCjkKr
{
  $downloadUri = 'https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKkr-hinted.zip'
  $fileName = Get-FileName $downloadUri
  $fileExtension = 'zip'

  Invoke-WebRequest -Uri $downloadUri -OutFile ".\downloads\$fileName.$fileExtension"
  Expand-Archive -Path ".\downloads\$fileName.$fileExtension" -DestinationPath ".\downloads\$fileName"
  Copy-Item -Path ".\downloads\$fileName\NotoSansCJKkr-*.otf" -Destination ".\fonts"
}

function Get-D2Coding
{
  $downloadUri = 'https://github.com/naver/d2codingfont/releases/download/VER1.3.2/D2Coding-Ver1.3.2-20180524.zip'
  $fileName = Get-FileName $downloadUri
  $fileExtension = 'zip'

  Invoke-WebRequest -Uri $downloadUri -OutFile ".\downloads\$fileName.$fileExtension"
  Expand-Archive -Path ".\downloads\$fileName.$fileExtension" -DestinationPath ".\downloads\$fileName"
  Copy-Item -Path ".\downloads\$fileName\D2Coding\*.ttc" -Destination ".\fonts"
}

function Get-IosevkaDefault
{
  $downloadUri = 'https://github.com/be5invis/Iosevka/releases/download/v4.0.2/ttf-iosevka-4.0.2.zip'
  $fileName = Get-FileName $downloadUri
  $fileExtension = 'zip'

  Invoke-WebRequest -Uri $downloadUri -OutFile ".\downloads\$fileName.$fileExtension"
  Expand-Archive -Path ".\downloads\$fileName.$fileExtension" -DestinationPath ".\downloads\$fileName"
  Copy-Item -Path ".\downloads\$fileName\*.ttf" -Destination ".\fonts"
}

function Get-IosevkaTerm
{
  $downloadUri = 'https://github.com/be5invis/Iosevka/releases/download/v4.0.2/ttf-iosevka-term-4.0.2.zip'
  $fileName = Get-FileName $downloadUri
  $fileExtension = 'zip'

  Invoke-WebRequest -Uri $downloadUri -OutFile ".\downloads\$fileName.$fileExtension"
  Expand-Archive -Path ".\downloads\$fileName.$fileExtension" -DestinationPath ".\downloads\$fileName"
  Copy-Item -Path ".\downloads\$fileName\*.ttf" -Destination ".\fonts"
}

function Get-IosevkaFixed
{
  $downloadUri = 'https://github.com/be5invis/Iosevka/releases/download/v4.0.2/ttf-iosevka-fixed-4.0.2.zip'
  $fileName = Get-FileName $downloadUri
  $fileExtension = 'zip'

  Invoke-WebRequest -Uri $downloadUri -OutFile ".\downloads\$fileName.$fileExtension"
  Expand-Archive -Path ".\downloads\$fileName.$fileExtension" -DestinationPath ".\downloads\$fileName"
  Copy-Item -Path ".\downloads\$fileName\*.ttf" -Destination ".\fonts"
}

if (-Not (Test-Path -Path '.\fonts')) { New-Item -ItemType Directory -Path '.\fonts' }
if (-Not (Test-Path -Path '.\downloads')) { New-Item -ItemType Directory -Path '.\downloads' }

Get-NanumBarunGothic
Get-NanumGothic
Get-NanumMyungjo
Get-NotoSansCjkKr
Get-D2Coding
Get-IosevkaDefault
Get-IosevkaTerm
Get-IosevkaFixed
