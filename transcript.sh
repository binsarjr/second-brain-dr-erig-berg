#!/bin/bash

# Memeriksa apakah jumlah argumen yang diberikan sesuai
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <youtube_link> <filepath>"
	exit 1
fi

# Menyimpan argumen ke variabel
youtube_link="$1"
filepath="$2"

# Menjalankan perintah yang diminta
echo $youtube_link >"$filepath"
yt --transcript "$youtube_link" | fabric --model "gpt-4o" --pattern dr_berg >>"$filepath"

# Informasi selesai
echo "Transkrip telah disimpan di $filepath"
