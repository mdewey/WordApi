docker build -t my-cool-image .

docker tag my-cool-image registry.heroku.com/my-cool-heroku-name/web

docker push registry.heroku.com/my-cool-heroku-name/web

heroku container:release web -a my-cool-heroku-name