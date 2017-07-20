git clone https://github.com/z2oh/z2oh.github.io.git
cd z2oh.github.io
git checkout dev-deploy
git pull
npm install -g gulp
npm install -g bower
npm install --production
bower install --production
gulp build
mkdir /build
mv ./build /
git checkout master
git rm -rf ./
rm -r ./*
mv /build/* ./
git add -A
git commit -am "automatic build by hal-803"
git push -f
