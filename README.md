# Multiple mDNS

The purpose of this script is to map multiple mDNS hostnames to a single mcahine. Please make sure that you have `avahi-daemon` and `avahi-utils` installed.

# Usage

1. Dump files to `/root`.
2. Edit the file mdns-aliases as required.
3. Run the following in `/root` directory:
   ```
    sudo chmod 755 mdns-publish.service
    sudo chown root:root mdns-publish.service
    sudo mv mdns-publish.service /etc/systemd/system
    sudo systemctl enable mdns-publish
   ```
