#!/bin/bash

$(cat <<EOF >$HOME/bin/mc

if [[ "\$(docker ps -a | grep mc)" != "" ]]; then
    echo "docker stop mc"
    docker stop mc
    echo "docker rm mc"
    docker rm mc
fi

if [[ "\$(docker images | grep mc)" == "" ]]; then
    echo "/bin/bash -c $(pwd)/build.sh"
    /bin/bash -c $(pwd)/build.sh
fi

echo "/bin/bash -c $(pwd)/run.sh"
/bin/bash -c $(pwd)/run.sh
exit 0
EOF
)

chmod +x $HOME/bin/mc
