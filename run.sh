docker build --tag "cuba-flights" --file "Dockerfile" .

docker run -e PASSWORD=yourpassword --rm -p 8787:8787 --volume "$(pwd)":/home/rstudio/kitematic cuba-flights

