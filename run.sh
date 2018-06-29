docker run -itd --name mc --mount type=bind,source="$(pwd)",target=/home mc
docker attach mc
