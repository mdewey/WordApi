docker build -t sdg-words-image .

docker tag sdg-words-image registry.heroku.com/sdg-words/web

docker push registry.heroku.com/sdg-words/web

heroku container:release web -a sdg-words
# docker run -p 4000:80 sdg-words-image 