pamac build google-chrome
pamac build env-modules
pamac build neovim
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -
echo "Try spotify spotify-1.1.42-deb if this doesn't work..."
pamac build spotify 

source link.sh
