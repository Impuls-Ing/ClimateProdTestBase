#!/bin/bash

# Name des Docker-Containers
container_name="torizon-climateprodtestapp-1"

# Gerätepfad, den Sie überprüfen möchten
device_path="/dev/usb/lp0"

# Befehl, um in den Docker-Container zu wechseln und zu überprüfen, ob das Gerät vorhanden ist
result=$(docker exec $container_name bash -c "[ -e $device_path ] && echo 'present' || echo 'not present'")

# Überprüfen des Rückgabewerts
if [ "$result" == "present" ]; then
    echo "$device_path ist vorhanden. Nichts weiter tun."
else
    echo "$device_path ist nicht vorhanden. Zu Container hinzufügen."
    docker exec $container_name mkdir /dev/usb
    docker exec $container_name mknod /dev/usb/lp0 c 180 0
    docker exec $container_name chown root:lp /dev/usb/lp0
    docker exec $container_name chmod 660 /dev/usb/lp0
fi

