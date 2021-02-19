pkcon refresh && pkcon update
pkcon install firefox-locale-ru transmission-qt curl mc links cmus mpv htop

sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update && sudo apt install -y libreoffice libreoffice-kde libreoffice-pdfimport libreoffice-help-ru libreoffice-l10n-ru myspell-ru hyphen-ru mythes-ru

echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/yandex-disk.list > /dev/null
wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- | sudo apt-key add -
sudo apt update && sudo apt install -y yandex-disk

sudo apt install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install -y brave-browser

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client

wget -q -O - https://repo.protonvpn.com/debian/public_key.asc | sudo apt-key add -
echo "deb https://repo.protonvpn.com/debian unstable main" | sudo tee /etc/apt/sources.list.d/protonvpn.list
sudo apt-get update && sudo apt-get install protonvpn
