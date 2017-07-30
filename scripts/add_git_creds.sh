USERNAME=$GIT_USERNAME
EMAIL=$GIT_EMAIL
PASSWORD=$GIT_PASSWORD

git config --global user.email $EMAIL
git config --global user.name $USERNAME
git config --global credential.helper store
echo "https://$USERNAME:$PASSWORD@github.com" > ~/.git-credentials
