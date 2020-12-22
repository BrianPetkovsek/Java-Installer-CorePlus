tce-load -iw openssl
tce-load -iw python

mkdir /tmp/java-install-script
wget https://docs.google.com/document/d/1vGjycNCq3L14SbTRYY8AHGUmo_7Xqji4w2kuEkrcAhQ/export?format=html -O /tmp/java-install-script/tmp.file
wget https://github.com/BrianPetkovsek/Java-Installer-CorePlus/raw/main/gdrivel.py -O gdrivel.py
python gdrivel.py $(cat /tmp/java-install-script/tmp.file) -P /tmp/java-install-script -O jdk-8u271-linux-i586.tar.gz

rm -f /tmp/java-install-script/tmp.file

tar -xzf /tmp/java-install-script/jdk-8u271-linux-i586.tar.gz

rm -f /tmp/java-install-script/jdk-8u271-linux-i586.tar.gz

echo "export PATH=$PATH:/home/tc/jdk1.8.0_271/bin" >> ~/.bash_profile
echo "export JAVA_HOME=/home/tc/jdk1.8.0_271/bin/java" >> ~/.bash_profile

tce-load -iw libXtst
