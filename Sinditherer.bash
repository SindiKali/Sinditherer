#!/bin/bash
read -p "Digite a URL do site: " url
echo "Pesquisando informações do domínio..."

whois "$url" > whois_info.txt
email=$(grep -i 'email:' whois_info.txt | awk '{print $2}')
dns=$(grep -i 'Name Server: ' whois_info.txt | awk '{print $2}')

echo "E-mail de contato:"
grep -i 'email:' whois_info.txt

echo "Servidores DNS:"
grep -i 'Name Server:' whois_info.txt