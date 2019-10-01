dotnet publish -c Release 

cp dockerfile ./bin/release/netcoreapp3.0/publish

docker build -t sdg-words-image ./bin/release/netcoreapp3.0/publish

docker tag sdg-words-image registry.heroku.com/sdg-words/web

docker push registry.heroku.com/sdg-words/web

heroku container:release web -a sdg-words
# docker run -p 4000:80 sdg-words-image 