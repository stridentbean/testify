mkdir tests

for file in *.js
do
  # The first parameter will be the testify directory
  # pwd will be where the user is currently

  # Insert Test File
  fileWithStartingCapital="$(tr '[:lower:]' '[:upper:]' <<< ${file:0:1})${file:1}"
  cp $1"/starterFiles/starterSpecFile.js" `pwd`"/tests/test"$fileWithStartingCapital
  
  # Update Test File Describe
  sed 's/testFile/'$fileWithStartingCapital'/g' `pwd`"/tests/test"$fileWithStartingCapital > `pwd`"/tests/test"$fileWithStartingCapital".tmp"
  mv `pwd`"/tests/test"$fileWithStartingCapital".tmp" `pwd`"/tests/test"$fileWithStartingCapital

done

# insert supplimentary files
cp $1"/starterFiles/Gruntfile.js" `pwd`"/Gruntfile.js"
cp $1"/starterFiles/package.json" `pwd`"/package.json"

npm install
grunt watch