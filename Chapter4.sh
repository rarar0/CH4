#! /bin/bash
#CSCI 2461-70
#Alex Malm

#Use fdisk to look at your disks

fdisk -l

#Check yo disks
fsck /dev/sdc1

#Create a thing, mount and unmount it
touch bingo.img
dd if=/dev/zero of=bingo.img bs=512 count=64
mkfs -t ext4 ~/bingo.img

mount -t ext4 ~/bingo.img /dev/sdd1
#more to come
