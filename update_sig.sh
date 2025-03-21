#!/bin/fish
xbps-rindex --sign --signedby "binarylinuxx" --privkey privkey.pem pkgs/
xbps-rindex --sign-pkg --privkey privkey.pem pkgs/*.xbps
