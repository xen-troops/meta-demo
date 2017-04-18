#!/bin/sh
dd if=/dev/xvda1 of=/home/root/test_1.img bs=512 count=10000000 &
dd if=/dev/xvda2 of=/home/root/test_2.img bs=512 count=10000000 &