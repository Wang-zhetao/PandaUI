rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m 'update' &&
git branch -M main &&
git remote add origin git@github.com:Wang-zhetao/PandaUI.git &&
git push -f -u origin main
cd -

echo https://wang-zhetao.github.io/PandaUI/index.html