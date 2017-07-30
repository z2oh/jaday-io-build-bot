cd /src
rm -rf ./z2oh.github.io
git clone https://github.com/z2oh/z2oh.github.io.git
cd z2oh.github.io
git checkout dev-deploy
git pull
npm install -g gulp
npm install -g bower
npm install --production
bower install --production --allow-root
gulp build
rm -rf /build
mkdir /build
mv ./build /
git checkout master
git reset --hard HEAD
git clean -dfx
git rm -r ./src
git rm -r ./webcomponentsjs
git rm -r ./bower_components
git rm ./bower.json
git rm ./index.html
mv /build/* ./
git add -A
git commit -am "automatic build by hal-803"
git push -f
