dl_and_move_plugin() {
  name="$1"
  curl -O $(curl -i -s "https://wordpress.org/plugins/$name/" | egrep -o "https://downloads.wordpress.org/plugin/[^']+")
  unzip -o "$name".*.zip -d $(pwd)/wp-content/plugins
}

dl_and_move_plugin "wp-super-cache"
dl_and_move_plugin "wp-mail-smtp"


