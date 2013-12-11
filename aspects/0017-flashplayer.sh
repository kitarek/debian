#!/bin/sh
apt-get install -qq -y flashplugin-nonfree
update-flashplugin-nonfree --install >/dev/null

FILENAME="/etc/adobe/mms.cfg"
FILECONTENT="""
 # Adobe player settings
 AVHardwareDisable = 0
 FullScreenDisable = 0
 LocalFileReadDisable = 1
 FileDownloadDisable = 1
 FileUploadDisable = 1
 LocalStorageLimit = 1
 ThirdPartyStorage = 1
 AssetCacheSize = 10
 AutoUpdateDisable = 1
 LegacyDomainMatching = 0
 LocalFileLegacyAction = 0
 AllowUserLocalTrust = 0
 # DisableSockets = 1
 OverrideGPUValidation = 1
 EnableLinuxHWVideoDecode=1
"""
DIR=$(dirname $FILENAME)
mkdir -p "$DIR"
echo "${FILECONTENT}" >> "$FILENAME"
