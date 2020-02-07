
git add .
git commit -m "deploy"
git push
rem git checkout master

git push origin --delete gh-pages
rem git branch gh-pages

npm run deploy

git branch gh-pages
git subtree split --prefix dist -b gh-pages 

rem create a local gh-pages branch containing the splitted output folder

git push -f origin gh-pages:gh-pages 

rem force the push of the gh-pages branch to the remote gh-pages branch at origin
git branch -D gh-pages 