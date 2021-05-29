if [ $1 == 'up' ]
    then
    docker-compose up -d
elif [ $1 == 'rs' ]
    then
    docker-compose restart web && docker-compose logs -f --tail 100 web
elif [ $1 == 'stop' ]
    then
    docker-compose down
elif [ $1 == 'build' ]
    then
    docker-compose build && docker-compose up -d
elif [ $1 == 'logs' ]
    then
    docker-compose logs -f --tail 100 web
elif [ $1 == 'create-db' ]
    then
    npx sequelize-cli db:create
elif [ $1 == 'migrate' ]
    then
    npx sequelize-cli db:migrate
elif [ $1 == 'g-seed' ]
    then
    npx sequelize-cli seed:generate --name $2
elif [ $1 == 'seed-all' ]
    then
    npx sequelize-cli db:seed:all
fi