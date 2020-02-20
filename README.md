# Dockerized wordcloud_cli

Everything is Better with Docker


# Usage

1. Clone this project: 

    ```sh
    $ git clone https://github.com/dm-logv/wordcloud-cli-dockerized.git 
    $ cd wordcloud-cli-dockerized
    $ git checkout cli-args
    ```

1. Build a docker image:
    
    ```sh
    $ docker build -t dmlogv/wordcloud-cli-dockerized:cli-args .
    ```

1. Mount current directory as `/data` volume, run `wordcloud_cli`, and use `Dockerfile` as example word source.
   Docker have to have an access to the directory (see `Docker Preferences > Resources > File Sharing`).

    ```sh
    $ docker run -v "$(pwd):/data:rw" -t dmlogv/wordcloud-cli-dockerized:cli-args \
        --text /data/Dockerfile \
        --imagefile /data/out.png
    ```

1. You also can choose a font file:

    ```sh
    $ docker run -v "$(pwd):/data:rw" -t dmlogv/wordcloud-cli-dockerized:cli-args \
          --fontfile /fonts/Consolas-Italic.ttf \
          --text /data/Dockerfile \
          --imagefile /data/out-italic.png
    ```
  
    Or even:
  
    ```sh
    $ for fontstyle in Regular Italic Bold; do 
      echo ${fontstyle}
      docker run -v "$(pwd):/data:rw" dmlogv/wordcloud-cli-dockerized:cli-args \
          --fontfile /fonts/Consolas-${fontstyle}.ttf \
          --text /data/Dockerfile \
          --imagefile /data/out-${fontstyle}.png
    done
    ```

1. Open generated images:

    ```sh
    $ open *.png
    ```
