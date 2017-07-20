USERNAME=$GIT_USERNAME
EMAIL=$GIT_EMAIL
PASSWORD=$GIT_PASSWORD

git config --global user.email $EMAIL
git config --global user.name $USERNAME
echo "https://$USERNAME:$PASSWORD@github.com" > ~/.git-credentials