#!/bin/bash -e

COMMAND="$1"

if [[ $COMMAND == "start" ]]; then
  docker-compose run --rm server create_db
  docker-compose up -d
  echo "redash now running at 127.0.0.1:8080"
elif [[ $COMMAND == "stop" ]]; then
  docker-compose down
  docker system prune -f
  echo "redash stopped"
elif [[ $COMMAND == "cleanup" ]]; then
  docker-compose down -v --rmi all --remove-orphans
  docker system prune -f
  echo "redash stopped and all artifacts cleaned"
else
    echo "Please provide action you would like to perform. Valid actions are start,stop,cleanup..."
    echo "e.g 'bash setup.sh start' starts the redash service"
fi