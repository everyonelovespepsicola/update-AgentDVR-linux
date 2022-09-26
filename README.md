# update-AgentDVR-linux
update AgentDVR linux

cd AgentDVR

sudo systemctl stop AgentDVR.service

bash <(curl -s "https://raw.githubusercontent.com/ispysoftware/agent-install-scripts/main/v2/download.sh")

unzip -o "*.zip"

rm  *.zip

chmod +x Agent

find . -name "*.sh" -exec chmod +x {} \;

sudo systemctl start AgentDVR.service
