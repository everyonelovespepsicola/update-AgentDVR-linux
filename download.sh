

  purl="https://www.ispyconnect.com/api/Agent/DownloadLocation2?productID=24&is64=true&platform=OSX"


AGENTURL=$(curl -s --fail "$purl" | tr -d '"')
Filename=${AGENTURL*/}

if [ -f $Filename ]; then
  echo "Latest file already downloaded ($Filename)"
  exit
fi

echo "Downloading $AGENTURL"

curl --show-error --location "$AGENTURL" -o "$Filename"
echo "Saved to $Filename"
fi

echo "Downloading $AGENTURL"

curl --show-error --location "$AGENTURL" -o "$Filename"
echo "Saved to $Filename"
