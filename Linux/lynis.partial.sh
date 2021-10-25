#!/bin/bash
sudo lynis audit --tests-from-group malware,authentication,neetworking,storage,filesystems  >> tmp/lynis.partial_scan.log
