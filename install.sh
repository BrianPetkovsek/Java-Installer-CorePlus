tce-load -iw python

mkdir /tmp/java-install-script
wget https://docs.google.com/document/d/1vGjycNCq3L14SbTRYY8AHGUmo_7Xqji4w2kuEkrcAhQ/export?format=html -O /tmp/java-install-script/tmp.file
wget https://drive.google.com/uc?export=download&id=1Jamkv7AWbOtKTRXR1nvkH2k5RM93q4C9 -O gdrivel.py
python gdrivedl.py $(cat /tmp/java-install-script/tmp.file)

rm -f /tmp/java-install-script/tmp.file

tar -xzf jdk-8u271-linux-i586.tar.gz

rm -f jdk-8u271-linux-i586.tar.gz

echo "export PATH=$PATH:/home/tc/jdk1.8.0_271/bin" >> ~/.bash_profile
echo "export JAVA_HOME=/home/tc/jdk1.8.0_271/bin/java" >> ~/.bash_profile

tce-load -iw libXtst