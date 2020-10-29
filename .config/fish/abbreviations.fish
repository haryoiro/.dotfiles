abbr --add g 'git'
abbr --add ga 'git add'
abbr --add gaa 'git add .'
abbr --add gc 'git commit -m'
abbr --add gp 'git push'
abbr --add gpom 'git push origin master'
abbr --add gpod 'git push origin development'
abbr --add gpl 'git pull'
abbr --add gch 'git checkout'
abbr --add gcm 'git checkout master'
abbr --add gcd 'git checkout development'
abbr --add gd 'git diff'

abbr --add d 'docker'
abbr --add dps 'docker ps -lq'
abbr --add dim 'docker image'
abbr --add drma 'docker rm (docker ps -aq)' # delete all stopped containers
abbr --add dcl 'docker rm (docker ps -aq); docker rmi (docker images -qf dangling=true)' # clean
abbr --add de 'docker exec'

abbr --add dc 'docker-compose'
abbr --add dcu 'docker-compose up -d'
abbr --add dcub 'docker-compose up -d --build'
abbr --add dcs 'docker-compose stop'
abbr --add dcd 'docker-compose down'
abbr --add dcps 'docker-compose ps'
abbr --add dcpsa 'docker-compose ps -a'
abbr --add dce 'docker-compose exec'

abbr --add c 'code'
abbr --add do 'dolphin'

abbr --add y 'yarn'