#!/bin/bash
cmd=$@

echo '#################################################'
echo '#  INITIALIZING LOKIS DELL DOCKER CONTAINER 0,1 #'
echo '#################################################'
echo ''
echo '* starting dataeng'
/etc/init.d/dataeng start
if [ $? -ne 0 ] ; then
  echo '!!!!! failed to start dataeng, bye!'
  exit 1;
fi

if [ $#  -eq 0 ] ; then
  echo '* no command defined, dropping to a shell'
  exec /bin/bash -i
else
  echo '* executing: ' ${cmd}
  exec ${cmd}
fi

