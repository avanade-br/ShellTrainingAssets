#!/usr/bin/python3
import sys, semver

raw1 = sys.argv[1]
raw2 = sys.argv[2]
if not semver.VersionInfo.isvalid(raw1):
  msg = 'Invalid version: {}'.format(raw1)
elif not semver.VersionInfo.isvalid(raw2):
  msg = 'Invalid version: {}'.format(raw2)
else:
  v1 = semver.VersionInfo.parse(raw1)
  v2 = semver.VersionInfo.parse(raw2)
  c = v1.compare(v2)
  if c < 0:
    msg = 'Version {} is less than {}'.format(v1, v2)
  elif c > 0:
    msg = 'Version {} is greater than {}'.format(v1, v2)
  else:
    msg = 'Versions {} and {} are the same'.format(v1, v2)
print(msg)

