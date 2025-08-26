#!/bin/bash
read -p "Digite a URL do site: " url
echo "Pesquisando informações do domínio..."
whois "$url" > whois_info.txt