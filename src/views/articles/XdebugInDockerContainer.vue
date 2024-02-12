<script setup>

</script>

<template>
    <div id="xdebugInDockerContainer">
        <div class="bg-black">
            <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
                <div class="text-base leading-6 font-medium text-gray-500 dark:text-gray-300">
                    <time datetime="2023-12-28T12:00:00.000Z">2022-05-23</time>
                </div>
                <h1 class="text-4xl font-bold">Xdebug in Docker Container laufen lassen</h1>
                <div class="flex items-center py-8">
                    <div class="flex-grow border-b border-gray-300"></div>
                </div>
                <h4 class="text-lg">
                    Xdebug ist ein leistungsstolles Werkzeug zur Fehlerbehebung und Profilerstellung in PHP-Anwendungen.
                    Die Integration mit Docker-Containern ermöglicht eine effiziente Entwicklungsumgebung. Durch
                    einfache Schritte kann Xdebug in Docker-Containern eingerichtet werden, um das Debuggen von
                    PHP-Anwendungen zu erleichtern.
                </h4>


                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">1. Neues Projekt anlegen:</h5>
                    <p class="">Erstellen Sie einen neuen Ordner für Ihr Projekt und navigieren Sie in
                        diesen Ordner.</p>
                    <div class="customThirdBackgroundColor text-white rounded-lg shadow-md">
                        <div class="bg-gray-600 rounded-t-lg px-4 py-2 mb-2 flex items-center">
                            <div class="w-3 h-3 bg-red-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-yellow-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-green-500 rounded-full mr-2"></div>
                        </div>
                        <div class="customThirdBackgroundColor mx-3 pb-1 text-black">
                            <p><span class="text-black">&gt;&gt;</span> mkdir docker-test</p>
                        </div>
                    </div>
                </div>

                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">2. Dockerfile anlegen:</h5>
                    <p class="">Erstellen Sie eine Datei namens <code
                        class="bg-gray-700 p-1">Dockerfile</code> im Projektordner und fügen Sie den
                        entsprechenden Inhalt ein.</p>

                    <div class="customThirdBackgroundColor text-white rounded-lg shadow-md">
                        <div class="bg-gray-600 rounded-t-lg px-4 py-2 mb-2 flex items-center">
                            <div class="w-3 h-3 bg-red-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-yellow-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-green-500 rounded-full mr-2"></div>
                        </div>
                        <div class="customThirdBackgroundColor mx-3 pb-1 text-black">
                            <p>
                                <span class="text-black"></span>
                                <code class="text-sm">
                                    FROM php:8.3-fpm
                                    WORKDIR "/application"

                                    RUN apt-get update \
                                    && apt-get -y --no-install-recommends install \
                                    php8.3-xdebug \
                                    && apt-get clean \
                                    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
                                </code>
                            </p>
                        </div>
                    </div>
                </div>


                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">3. docker-compose Datei anlegen:</h5>
                    <p class="">Erstellen Sie eine Datei namens <code
                        class="bg-gray-700 p-1">docker-compose.yml</code> im Projektordner und fügen Sie den
                        entsprechenden Inhalt ein.</p>
                    <div class="customThirdBackgroundColor text-white rounded-lg shadow-md">
                        <div class="bg-gray-600 rounded-t-lg px-4 py-2 mb-2 flex items-center">
                            <div class="w-3 h-3 bg-red-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-yellow-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-green-500 rounded-full mr-2"></div>
                        </div>
                        <div class="customThirdBackgroundColor mx-3 pb-1 text-black">
                            <p>
                                <span class="text-black"></span>
                                <code class="text-sm">
                                    version: '3.1'
                                    services:
                                    webserver:
                                    image: 'nginx:alpine'
                                    working_dir: /application
                                    volumes:
                                    - '.:/application'
                                    - './docker/nginx/nginx.conf:/etc/nginx/conf.d/default.conf'
                                    ports:
                                    - '22000:80'

                                    php-fpm:
                                    environment:
                                    PHP_IDE_CONFIG: "serverName=Docker"
                                    build: php-fpm
                                    working_dir: /application
                                    volumes:
                                    - '.:/application'
                                    - './docker/php-fpm/php-ini-overrides.ini:/etc/php/8.3/fpm/conf.d/99-overrides.ini'
                                </code>
                            </p>
                        </div>
                    </div>
                </div>



                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">4. Nginx konfigurieren:</h5>
                    <p class="">Erstellen Sie einen Ordner namens <code
                        class="bg-gray-700 p-1">nginx</code> im Projektordner</p>
                    <p class="">Erstellen nun eine Datei <code
                        class="bg-gray-700 p-1">nginx.conf</code> im nginx Ordner und füge folgenden Inhalt ein:</p>

                    <div class="customThirdBackgroundColor text-white rounded-lg shadow-md">
                        <div class="bg-gray-600 rounded-t-lg px-4 py-2 mb-2 flex items-center">
                            <div class="w-3 h-3 bg-red-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-yellow-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-green-500 rounded-full mr-2"></div>
                        </div>
                        <div class="customThirdBackgroundColor mx-3 pb-1 text-black">
                            <p>
                                <span class="text-black"></span>
                                <code class="text-sm">
                                    server {
                                    listen 80 default;

                                    client_max_body_size 108M;

                                    access_log /var/log/nginx/application.access.log;

                                    root /application;
                                    index index.php;

                                    # try to serve file directly, fallback to index.php
                                    location / {
                                    try_files $uri /index.php$is_args$args;
                                    }

                                    if (!-e $request_filename) {
                                    rewrite ^.*$ /index.php last;
                                    }

                                    location ~ \.php$ {
                                    fastcgi_pass php-fpm:9000;
                                    fastcgi_index index.php;
                                    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
                                    fastcgi_param PHP_VALUE "error_log=/var/log/nginx/application_php_errors.log";
                                    fastcgi_buffers 16 16k;
                                    fastcgi_buffer_size 32k;
                                    include fastcgi_params;
                                    }
                                    }

                                </code>
                            </p>
                        </div>
                    </div>


                </div>


                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">5. Index.php anlegen:</h5>
                    <p class="">Erstellen Sie eine Datei namens <code
                        class="bg-gray-700 p-1">index.php</code> im Projektordner und fügen Sie den
                        entsprechenden Inhalt ein.</p>

                    <div class="customThirdBackgroundColor text-white rounded-lg shadow-md">
                        <div class="bg-gray-600 rounded-t-lg px-4 py-2 mb-2 flex items-center">
                            <div class="w-3 h-3 bg-red-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-yellow-500 rounded-full mr-2"></div>
                            <div class="w-3 h-3 bg-green-500 rounded-full mr-2"></div>
                        </div>
                        <div class="customThirdBackgroundColor mx-3 pb-1 text-black">
                            <p>
                                <span class="text-black"></span>
                                <code class="text-sm">
                                        ""
                                </code>
                            </p>
                        </div>
                    </div>

                </div>


                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">6. Debug Settings in PHPStorm einrichten</h5>
                    <p class="">Erstellen Sie eine Datei namens <code
                        class="bg-gray-700 p-1">Dockerfile</code> im Projektordner und fügen Sie den
                        entsprechenden Inhalt ein.</p>
                </div>



                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">7. Testen</h5>
                    <p class="">Erstellen Sie eine Datei namens <code
                        class="bg-gray-700 p-1">Dockerfile</code> im Projektordner und fügen Sie den
                        entsprechenden Inhalt ein.</p>



                </div>



            </div>
        </div>
    </div>
</template>

<style scoped>

</style>