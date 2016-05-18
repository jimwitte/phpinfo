# phpinfo
sample web app to practice automated docker builds and docker-compose.

1. git clone https://github.com/jimwitte/phpinfo.git
2. add your .env environment variables file. As a demo, you can create an empty .env file.
2. docker-compose up -d
3. view app in browser. Make changes, git commits.
4. git push. Dockerhub will create new docker image.
5. docker-compose stop -- stop container
6. docker-compose rm -v -- to remove container and associated volumes


Notes
----
* required packages for build listed in separate text file
* needed env variables in separate file, excluded from .git (.gitignore). If this file is to contain passwords, maybe pull from secure location.
