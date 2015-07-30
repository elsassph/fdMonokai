@echo off

rd dist /S /Q
del $(BaseDir)\Settings\Themes\CURRENT

:: UI theme
copy $(BaseDir)\Settings\Themes\MonokaiDarkSoda.fdi $(BaseDir)\Settings\Themes\CURRENT
md dist\$(BaseDir)\Settings\Themes
copy $(BaseDir)\Settings\Themes\MonokaiDarkSoda.fdi dist\$(BaseDir)\Settings\Themes\MonokaiDarkSoda.fdi

:: complete theme
zip -9 -r temp.zip $(BaseDir)
md dist\$(BaseDir)\Settings\Themes\FullThemes
copy temp.zip dist\$(BaseDir)\Settings\Themes\FullThemes\MonokaiDarkSoda.fdz
del temp.zip

:: syntax theme
zip -9 -r temp.zip $(BaseDir)/Settings/Languages
md dist\$(BaseDir)\Settings\Themes\SyntaxThemes
copy temp.zip dist\$(BaseDir)\Settings\Themes\SyntaxThemes\MonokaiDarkSoda.fdz
del temp.zip

:: installer
cd dist
del MonokaiDarkSoda-theme.fdz
zip -9 -r MonokaiDarkSoda-theme.fdz $(BaseDir)
cd ..

del $(BaseDir)\Settings\Themes\CURRENT
rd dist\$(BaseDir) /S /Q
