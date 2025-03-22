#!/bin/fish
# Sign the repository
xbps-rindex --sign --signedby "binarylinuxx" --privkey privkey.pem pkgs/

# Sign each package
for pkg in pkgs/*.xbps
    xbps-rindex --sign-pkg --privkey privkey.pem $pkg
end

# Add packages to the repository index
xbps-rindex -a pkgs/*.xbps

