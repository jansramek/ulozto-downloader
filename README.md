
# Dockerfile of setnicka/ulozto-downloader

Docker container of [setnicka/ulozto-downloader](https://github.com/setnicka/ulozto-downloader) project


## Install/Build

```
▶ git clone git@github.com:jansramek/ulozto-downloader.git
▶ cd ulozto-downloader
▶ docker build -t <image_name> <path_to_build>
```

## Usage

```
▶ docker run -t -v <local_path>:/d ulozto-downloader --parts 16 <https://uloz.to/file/...>
```
