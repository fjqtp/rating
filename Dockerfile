FROM php:7.4.2-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    nodejs \
    zip \
    libpng-dev \
    libicu-dev \
    libzip-dev \
    zlibc \
    zlib1g \
  && docker-php-ext-install zip \
  && docker-php-ext-configure intl \
  && docker-php-ext-install intl \
  && docker-php-ext-install opcache \
  && docker-php-ext-install mysqli \
  && docker-php-ext-configure pdo_mysql \
  && docker-php-ext-install pdo pdo_mysql \
  && docker-php-ext-install gd

RUN curl -sL https://getcomposer.org/installer | php -- --install-dir /usr/bin --filename composer
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt install -y nodejs npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node

#RUN npm install

#RUN npm fund
#RUN npm audit fix
#RUN npm install bower