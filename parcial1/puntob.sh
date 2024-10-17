sudo fdisk /dev/sdc << EOF
n
p
1

+2.5G
n
p
2

+2.5G
n
p
3

+2.5G
n
e



w
EOF

sudo mkfs -t ext3 /dev/sdc1
sudo mkfs -t ext3 /dev/sdc2
sudo mkfs -t ext3 /dev/sdc3

sudo mkdir -p /mnt/part{1..3}

sudo mount -o remount /dev/sdc1 /mnt/part1
sudo mount -o remount /dev/sdc2 /mnt/part2
sudo mount -o remount /dev/sdc3 /mnt/part3

lsblk

