name=glib
version=1.2.8

gzip -dc backstep/warehouse/$name-$version.tar.gz | tar xf -
cd $name-$version
./configure --prefix $HOME/Unix && make

