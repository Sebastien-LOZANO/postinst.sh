#!/bin/bash

echo "### Script de Post-Installation ###"

cd /

echo "### Modification de VIM ###"
cat > /etc/vim/vimrc.local <<EOF
syntax on
set hls
set showmatch
set laststatus=2
set modeline
set modelines=1
set title
EOF

echo "### suppression du fichier 70-persistent-net.rules ###"
rm -f /etc/udev/rules.d/70-persistent-net.rules
