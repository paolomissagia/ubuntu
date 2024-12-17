mkdir -p ~/.local/share/fonts/

cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/NerdFontsSymbolsOnly.zip
unzip NerdFontsSymbolsOnly.zip -d NerdFontsSymbolsOnly
cp NerdFontsSymbolsOnly/*.ttf ~/.local/share/fonts
rm -rf NerdFontsSymbolsOnly
cd -

cd /tmp
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip
unzip JetBrainsMono-2.304.zip -d JetBrainsMono
cp JetBrainsMono/fonts/ttf/*.ttf ~/.local/share/fonts
rm -rf JetBrainsMono
cd -

fc-cache
