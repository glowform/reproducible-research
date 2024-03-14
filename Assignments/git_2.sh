git init --bare CentralRepo

git clone CentralRepo Dev1

git clone CentralRepo Dev2

cd Dev1
git config --local user.name "Developer_1"
cd ../Dev2
git config --local user.name "Developer_2"

cd ../Dev1
echo "This will be the file with code" > code.R
git add .
git commit -m "Added the file with code"
git push

cd ../Dev2
git pull

cd ../Dev1
touch readme.txt
git add .
git commit -m "Added readme.txt"
git push

cd ../Dev2
git status
git fetch
git status
git pull
ls
echo "second line of text" >> readme.txt
touch readme.md
git add .
git commit -m "Added readme.md and changed readme.txt"
git push

cd ../Dev1
echo "A line added by Dev1" > text3.txt
git add .
git commit -m "Added text3"
git push
git pull
git push