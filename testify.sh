mkdir test
bower install --save chai
bower install --save mocha
bower install --save underscore
bower install --save jquery

# Insert TestRunner.html
cp $1"/starterTestRunner.html" `pwd`"/TestRunner.html"
for file in *.js
do
  # The first parameter will be the testify directory
  # pwd will be where the user is currently

  # Insert Test File
  fileWithStartingCapital="$(tr '[:lower:]' '[:upper:]' <<< ${file:0:1})${file:1}"
  cp $1"/starterSpecFile.js" `pwd`"/test/test"$fileWithStartingCapital
  
  # Update Test File Describe
  sed 's/testFile/'$fileWithStartingCapital'/g' `pwd`"/test/test"$fileWithStartingCapital > `pwd`"/test/test"$fileWithStartingCapital".tmp"
  mv `pwd`"/test/test"$fileWithStartingCapital".tmp" `pwd`"/test/test"$fileWithStartingCapital

  # Insert Source File in TestRunner
  sed '
  /-- source files --/ a\
  <script src="'$fileWithStartingCapital'"></script>
  ' "TestRunner.html" > `pwd`"/TestRunner.html.tmp"
  mv `pwd`"/TestRunner.html.tmp" `pwd`"/TestRunner.html"

  # Insert Test File in TestRunner
  sed '
  /-- tests --/ a\
  <script src="test/test'$fileWithStartingCapital'"></script>
  ' "TestRunner.html" > `pwd`"/TestRunner.html.tmp"
  mv `pwd`"/TestRunner.html.tmp" `pwd`"/TestRunner.html"
done