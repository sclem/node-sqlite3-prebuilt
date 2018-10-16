### node-sqlite-prebuilt

Binary releases (currently windows node-webkit only) for node-sqlite bindings

The release "node_sqlite3.node" file goes in node_modules/sqlite3/lib/binding/node-webkit-v*-win32-x64/

### compiling instructions

#### prerequisites

nodejs (latest)

visual c++ build tools

#### steps

* after installing the c++ build tools, (usually will happen automatically if you check the box during nodejs install), click start, go to visual studio installer. Under workloads, visualC++ build tools, on the right pane check the box for "VC++ 2015.3 v14.00 (v140) toolset for desktop" and modify the installation.

* clone the repo.

* update and source versions.env

* run build.sh

the sqlite file is tar.gz in the build/ folder
