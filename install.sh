curl https://intent.store/jre/jre-8u51-linux-x64.tar.gz -o ~/Downloads/jreintent.tar.gz
curl https://intent.store/intentlauncher/Intent%20Launcher.zip -o ~/IntentLauncher.zip
unzip ~/IntentLauncher.zip
mkdir /opt/intent
mv Intent\ Launcher*.jar /opt/intent
tar xvf ~/Downloads/jreintent.tar.gz -C /opt
sudo echo -e '#!/bin/sh\nexport PATH="/opt/jre1.8.0_51/bin:$PATH";java -jar /usr/share/"Intent Launcher*" "$@"' | sudo tee /usr/local/bin/intent
chmod +x /usr/local/bin/intent
sudo echo -e '[Desktop Entry]\nType=Application\nExec=intent\nTerminal=false\nHidden=false\nName=Intent Launcher\nIcon=terminal' | tee /home/$USER/.local/share/applications/intent.desktop
