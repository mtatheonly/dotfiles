#!/usr/bin/zsh

#autoload -Uz compinit && compinit
#autoload -Uz bashcompinit && bashcompinit

function dockerbash {
    docker exec -it $1 /bin/bash
}

function dockersh {
    docker exec -it $1 /bin/sh
}

function dockerlogsf {
    docker logs -f $1
}

function dockerlogs {
    docker logs $1
}

function dockercp {
    dir=`mktemp -d`
    docker cp $1 $dir
    docker cp $dir/* $2
    rm -rf $dir
}

function dockeruser {    
    docker run --rm -i -t -u `id -u`:`id -g` -w /app -v $(pwd):/app -e HOME=/tmp $@
}

__complete_docker_exec() {
    docker ps | grep -v 'NAMES' | sed -r -e 's/.*  (.*)/\1/g'
}

__complete_docker_user_run() {
    docker images | grep -v 'REPOSITORY' | grep -v '<none>' | awk '{print $1":"$2}'
}

complete -F __complete_docker_exec dockersh
complete -F __complete_docker_exec dockerbash
complete -F __complete_docker_exec dockerlogs
complete -F __complete_docker_exec dockerlogsf
complete -F __complete_docker_exec -o filenames dockercp
complete -F __complete_docker_user_run dockeruser
