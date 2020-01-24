#!/bin/bash
df --human  --local --output="fstype,source,target,file,pcent,size,used,avail" --exclude=tmpfs
