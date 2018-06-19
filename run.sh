docker run -itd --name mc --mount type=bind,source="$HOME",target=/home mc
docker attach mc
