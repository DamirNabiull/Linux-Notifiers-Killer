sudo apt-get install python3-pip

sudo cp -f 20auto-upgrades /etc/apt/apt.conf.d/20auto-upgrades
sudo cp -f 50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades
sudo cp -f 99update-notifier /etc/apt/apt.conf.d/99update-notifier
cd /etc/cron.daily/
sudo systemctl stop apt-daily-upgrade.timer
sudo systemctl disable apt-daily-upgrade.timer
systemctl list-unit-files | grep apt
sudo systemctl stop apt-daily.timer
sudo systemctl disable apt-daily.timer
sudo systemctl stop apt-daily-upgrade.service
sudo systemctl disable apt-daily-upgrade.service
sudo systemctl stop apt-daily.service
sudo systemctl disable apt-daily.service
systemctl list-unit-files | grep apt
#dbus-monitor --session "interface=org.freedesktop.Notifications"
echo update-manager hold | sudo dpkg --set-selections
cat /etc/xdg/autostart/update-notifier.desktop | grep 'X-GNOME-Autostart-enabled'
cd ~
cat .profile
pkill update-notifier
ps aux | grep notifier
sudo chmod -x /usr/bin/update-notifier
ls -l /usr/bin/update-notifier
echo "End of Configuration - Reboot"
reboot
