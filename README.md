
# Dockerfile of setnicka/ulozto-downloader

Docker container of [setnicka/ulozto-downloader](https://github.com/setnicka/ulozto-downloader) project


## Install/Build

```
▶ git clone https://github.com/jansramek/ulozto-downloader.git
▶ cd ulozto-downloader
▶ docker build -t ulozto-downloader .
```

## Usage

```
▶ docker run -t -v <destination_path>:/d ulozto-downloader --parts 16 <https://uloz.to/file/...>
```
Note: `<destination_path>` paramater must be an absolute path to destination folder, where the file will be downloaded to.

