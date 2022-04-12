Поднять контейнер:

```docker-compose up```

Проверить, что все заработало:

```echo -en "$(curl localhost:5005/model/parse -d '{"text":"какое завтра число"}')"```

```echo -en "$(curl localhost:5005/model/parse -d '{"text":"привет"}')"```
