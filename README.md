# wipe
## Decription
Sanitize a device mounted on /mnt, pausing after each 500MB to prevent the
device from overheating and going offline.

Stops when device is full or becomes unmounted.

## Alternative
Use shred if you can. This script was only created because I couldn't sanitize
dad's old drives using his USB docking station because the drives kept
overheating. The docking station has no cooling and interferes with the air
flow around the inserted disks. Badly designed.

### Using shred
<code>
shred -uvn 10 ${FILENAME}
shred -vfz /dev/sdc1
</code>