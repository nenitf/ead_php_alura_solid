FROM php:7.4-cli

WORKDIR /app

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini
#RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# outras opções
#docker run -itv $(pwd):/app -w /app -p 8181:8080 php7.4 -S 0.0.0.0:8080 -t public
#docker run --rm -itv $(pwd):/app -w /app -u $(id -u):$(id -g) composer {comando}
#docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:7.4-cli php your-script.php
