# radiodotnet-pic-builder

Album graphics builder for RadioDotNet


# Usage

1. Clone this project: 

    ```sh
    $ git clone https://github.com/dm-logv/radiodotnet-pic-builder.git 
    $ cd radiodotnet-pic-builder
    $ git checkout dev
    ```

1. Build a docker image:
    
    ```sh
    $ docker build -t wordcloud_cli .
    ```

1. Mount current directory as `/data` volume, run `wordlcoud_cli`, and use `Dockerfile` as example word source.
   Docker have to have an access to the directory (see `Docker Preferences > Resources > File Sharing`).

    ```sh
    $ docker run -v "$(pwd):/data:rw" -t wordcloud_cli --text /data/Dockerfile --imagefile /data/out.png
    ```
