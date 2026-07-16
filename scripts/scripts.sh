lsblk
#mount hdd into /external folder
sudo mount /dev/sda1 /external/

#enable external files on nextcloud
sudo docker exec -u www-data media-server-app-1 php occ app:enable files_external

#certificate storage
mkdir -p traefik/letsencrypt
touch traefik/letsencrypt/acme.json
chmod 600 traefik/letsencrypt/acme.json