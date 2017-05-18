#/bin/bash/
#run as Root
flavor="jdk"
version="121"
shortversion=$version
java_version="$flavor-$version"

sudo update-alternatives --install "/usr/bin/java" "java" "/opt/Oracle_Java/jdk1.8.0_$shortversion/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/opt/Oracle_Java/jdk1.8.0_$shortversion/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/Oracle_Java/jdk1.8.0_$shortversion/bin/javaws" 1
sudo update-alternatives --install "/usr/bin/jar" "jar" "/opt/Oracle_Java/jdk1.8.0_$shortversion/bin/jar" 1


sudo update-alternatives --set "java" "/opt/Oracle_Java/jdk1.8.0_$version/bin/java"
sudo update-alternatives --set "javac" "/opt/Oracle_Java/jdk1.8.0_$version/bin/javac"
sudo update-alternatives --set "javaws" "/opt/Oracle_Java/jdk1.8.0_$version/bin/javaws"
sudo update-alternatives --set "jar" "/opt/Oracle_Java/jdk1.8.0_$version/bin/jar"

java -version
