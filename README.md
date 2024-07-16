# Домашнее задание к занятию 5. «Практическое применение Docker» - Михалёв Сергей


## Задача 0
1. Убедитесь что у вас НЕ(!) установлен ```docker-compose```, для этого получите следующую ошибку от команды ```docker-compose --version```
```
Command 'docker-compose' not found, but can be installed with:

sudo snap install docker          # version 24.0.5, or
sudo apt  install docker-compose  # version 1.25.0-1

See 'snap info docker' for additional versions.
```
В случае наличия установленного в системе ```docker-compose``` - удалите его.  
2. Убедитесь что у вас УСТАНОВЛЕН ```docker compose```(без тире) версии не менее v2.24.X, для это выполните команду ```docker compose version```  
###  **Своё решение к задачам оформите в вашем GitHub репозитории!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!**

**Решение**
- скриншот веб-интерфейса RabbitMQ
  * <img src="images/Task_0.png" alt="Task_0.png" width="250" height="auto">

 ## Задача 1
1. Сделайте в своем github пространстве fork репозитория ```https://github.com/netology-code/shvirtd-example-python/blob/main/README.md```.   
2. Создайте файл с именем ```Dockerfile.python``` для сборки данного проекта(для 3 задания изучите https://docs.docker.com/compose/compose-file/build/ ). Используйте базовый образ ```python:3.9-slim```. Протестируйте корректность сборки. Не забудьте dockerignore. 
3. (Необязательная часть, *) Изучите инструкцию в проекте и запустите web-приложение без использования docker в venv. (Mysql БД можно запустить в docker run).
4. (Необязательная часть, *) По образцу предоставленного python кода внесите в него исправление для управления названием используемой таблицы через ENV переменную.
---

**Решение**
1. Создан [Dockerfile.python](Dockerfile.python)
2. Запустил в контейнере Mysql
   * <img src="images/Task_1_1.png" alt="Task_1_1.png" width="750" height="auto">
3. Запустил проект без докера с спользованием виртуального окружения
   * <img src="images/Task_1_2.png" alt="Task_1_2.png" width="500" height="auto">
   * <img src="images/Task_1_3.png" alt="Task_1_3.png" width="200" height="auto">
4. Для испотльзования переменнх окружения установил библиотеку *dotenv*.
