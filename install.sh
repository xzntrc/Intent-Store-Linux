baseuser=$(logname)
curl https://intent.store/jre/jre-8u51-linux-x64.tar.gz -o /home/$baseuser/Downloads/jreintent.tar.gz
curl https://intent.store/intentlauncher/Intent%20Launcher.zip -o /home/$baseuser/IntentLauncher.zip
unzip /home/$baseuser/IntentLauncher.zip
mkdir /opt/intent
mv Intent\ Launcher*.jar /opt/intent
tar xvf /home/$baseuser/Downloads/jreintent.tar.gz -C /opt
echo -e '#!/bin/sh\nexport PATH="/opt/jre1.8.0_51/bin:$PATH";java -jar /usr/share/"Intent Launcher"* "$@"' | tee /usr/local/bin/intent
chmod +x /usr/local/bin/intent
echo -e '[Desktop Entry]\nType=Application\nExec=intent\nTerminal=false\nHidden=false\nName=Intent Launcher\nIcon=terminal' | tee /home/$baseuser/.local/share/applications/intent.desktop
