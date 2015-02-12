FROM maxexcloo/nginx-php:latest
MAINTAINER Viranch Mehta <email@viranch.me>

# nginx php conf
ADD config/default-php.conf /etc/nginx/addon.d/

# stikked version
ENV VERSION 0.9.0

# download stikked
RUN mkdir -p /data/http
WORKDIR /data/http
RUN wget -O - "https://github.com/claudehohl/Stikked/archive/${VERSION}.tar.gz" | tar zx --strip-components=1

# clean up
RUN rm -rf AUTHORS.md CC0 README.md doc
RUN mv htdocs/* .
RUN rm -rf htdocs

# add stikked config
ADD config/stikked.php /data/http/application/config/
