@echo off

:: complete theme
zip -9 -r temp.zip $(BaseDir)
del dist\$(BaseDir)\Settings\Themes\FullThemes\MonokaiDarkSoda.fdz
copy temp.zip dist\$(BaseDir)\Settings\Themes\FullThemes\MonokaiDarkSoda.fdz

:: syntax theme
zip -d -r temp.zip $(BaseDir)/Settings/Themes
del dist\$(BaseDir)\Settings\Themes\SyntaxThemes\MonokaiDarkSoda.fdz
copy temp.zip dist\$(BaseDir)\Settings\Themes\SyntaxThemes\MonokaiDarkSoda.fdz

del temp.zip

:: installer
cd dist
del MonokaiDarkSoda-theme.fdz
zip -9 -r MonokaiDarkSoda-theme.fdz $(BaseDir)
cd ..
