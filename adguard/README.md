After installing AdGuard home using the `curl` script, I stumbled upon this behavior on Ubuntu 21.10.
In the set-up instructions on the dashboard (127.0.0.1), it was mentioned that port 53 is occupied most likely by `systemd-resolved`.

I followed the provided instructions and it was fixed. In particular:
```
sudo mkdir /etc/systemd/resolved.conf.d
cd /etc/systemd/resolved.conf.d
sudo vim adguardhome.conf
sudo mv /etc/resolv.conf /etc/resolv.conf.backup
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
systemctl reload-or-restart systemd-resolved
```

The `adguardhome.conf` file contains:
```
[Resolve]
DNS=127.0.0.1
DNSStubListener=no
```