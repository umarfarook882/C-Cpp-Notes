

# Compile html pages 
build:
	scala -save build.scala -make all

# Upload html pages to github to branch gh-pages 
upload:
	cd dist && git add * && git commit -a -m "Update site" && git push

# Copy src/ source code to dist directory.
code:
	cp -r -v src dist/

# Update html pages images 
image:
	cp -r -v images dist/

clean:
	scala -save build.scala -clean

