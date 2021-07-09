# Go to client Folder
cd client

# Build production version of React app
npm run build

# Go to Root folder
cd ..

# Delete build folder if it already exists
if build/
then
    rm -rf build/
fi

# Move build folder to Root folder
mv client/build/ ./

# Add all changes in root folder to git stage
git add .

# Commit all changes
git commit -m "React build completed"

# Go to poduction branch
git checkout main

# Replace main/build/ folder with dev/build/ folder
git checkout --patch origin/dev ./build