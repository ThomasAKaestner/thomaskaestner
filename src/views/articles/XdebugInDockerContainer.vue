<script setup>

</script>

<template>
    <div id="xdebugInDockerContainer">
        <div class="bg-black">
            <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
                <div class="text-base leading-6 font-medium text-gray-500 dark:text-gray-300">
                    <time datetime="2023-12-28T12:00:00.000Z">2021-05-23</time>
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

                <!-- Neues Projekt anlegen -->
                <div class="mb-6">
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

                <!-- Ordner Struktur anlegen -->
                <div class="mb-6">
                    <h5 class="text-xl font-bold my-4">2. Ordner Struktur anlegen:</h5>
                    <p class="">Erstelle einen neuen Ordner im Hauptverzeichnis <code
                            class="bg-gray-700 p-1">docker</code>
                        und erstelle zwei neue Ordner in dem docker Ordner:</p>
                    <code
                            class="bg-gray-700 p-1">nginx</code>
                    und
                    <code
                            class="bg-gray-700 p-1">php-fpm</code>
                </div>

                <!-- Dockerfile anlegen -->
                <div class="mb-6">
                    <h5 class="text-xl font-bold my-4">3. Dockerfile anlegen:</h5>
                    <p class="">Erstellen Sie eine Datei namens <code
                            class="bg-gray-700 p-1">Dockerfile</code> im <code
                            class="bg-gray-700 p-1">php-fpm</code> Ordner und fügen Sie den
                        entsprechenden Inhalt ein.</p>
                    <Terminal :code="dockerfileCode"></Terminal>
                    <div class="prose bg-black text-white">
                        <p>Dieses Dockerfile definiert eine Docker-Image-Build-Anleitung für die Erstellung eines Images, das PHP 8.3 mit dem FPM (FastCGI Process Manager) als Basis verwendet.</p>
                        <p>Hier ist eine Erklärung Zeile für Zeile:</p>
                        <ol class="list-decimal list-inside ml-6">
                            <li><span class="font-bold">FROM php:8.3-fpm</span>: Dies definiert das Basisimage für das Docker-Image. In diesem Fall wird das Image "php:8.3-fpm" verwendet, das eine vorinstallierte PHP 8.3-Version mit dem FPM-Manager bereitstellt.</li>
                            <li><span class="font-bold">WORKDIR "/application"</span>: Diese Anweisung legt das Arbeitsverzeichnis im Container auf "/application" fest. Alle weiteren Befehle werden relativ dazu ausgeführt.</li>
                            <li><span class="font-bold">RUN apt-get update \</span>: Aktualisiert die Paketliste im Container, um sicherzustellen, dass die neuesten Versionen verfügbar sind.</li>
                            <li><span class="font-bold">&& apt-get -y --no-install-recommends install \ php8.3-xdebug \</span>: Installiert das PHP-Xdebug-Paket für die Version 8.3. Xdebug ist ein leistungsstarkes Debugging-Tool für PHP. Der Parameter <span class="italic">-y</span> stellt sicher, dass apt-get ohne manuelle Bestätigung ausgeführt wird, und <span class="italic">--no-install-recommends</span> installiert keine optionalen Pakete, was die Größe des Images reduziert.</li>
                            <li><span class="font-bold">&& apt-get clean \</span>: Bereinigt das apt-Paket-Cache, um das Image zu verkleinern und ungenutzten Speicherplatz freizugeben.</li>
                            <li><span class="font-bold">&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*</span>: Löscht temporäre Dateien und Verzeichnisse, um die Größe des Images weiter zu reduzieren und unnötige Dateien zu entfernen.</li>
                        </ol>
                        <p>Diese Dockerfile erstellt also ein Docker-Image, das PHP 8.3 mit Xdebug-Unterstützung basierend auf dem FPM-Manager enthält und dabei unnötige Dateien und temporäre Verzeichnisse entfernt, um die Image-Größe zu minimieren.</p>
                    </div>
                </div>

                <!-- php-ini-overrides.ini anlegen -->
                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">5. php-ini-overrides.ini anlegen:</h5>
                    <p>Lege nun im
                        <code class="bg-gray-700 p-1">php-fpm</code>
                        die <code class="bg-gray-700 p-1">php-ini-overrides.ini</code> datei an.
                    </p>
                    <Terminal :code="phpIniCode"></Terminal>
                    <div class="prose bg-black text-white">
                        <p><span class="italic">upload_max_filesize = 100M</span>: Dies legt die maximale Dateigröße fest, die hochgeladen werden kann. In diesem Fall ist die maximale Größe auf 100 Megabyte festgelegt.</p>
                        <p><span class="italic">post_max_size = 108M</span>: Dies legt die maximale Größe für POST-Daten fest, die von PHP akzeptiert werden. In diesem Fall ist die maximale Größe auf 108 Megabyte festgelegt.</p>
                        <p><span class="italic">xdebug.mode = debug</span>: Dies legt den Modus von Xdebug fest. In diesem Fall wird der Debug-Modus aktiviert.</p>
                        <p><span class="italic">xdebug.client_host = host.docker.internal</span>: Dies legt die Hostadresse fest, die von Xdebug zum Verbinden mit einem Debugger verwendet wird. In diesem Fall wird "host.docker.internal" verwendet, um auf den Host zuzugreifen, auf dem Docker läuft.</p>
                        <p><span class="italic">xdebug.start_with_request = yes</span>: Dies legt fest, ob Xdebug bei jeder Anfrage gestartet werden soll. In diesem Fall wird Xdebug gestartet, wenn eine Anfrage empfangen wird.</p>
                    </div>

                </div>

                <!-- Nginx konfigurieren -->
                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">6. Nginx konfigurieren:</h5>
                    <p class="">Erstellen nun eine Datei <code
                            class="bg-gray-700 p-1">nginx.conf</code> im nginx Ordner und füge folgenden Inhalt ein:</p>
                    <Terminal :code="nginxConfigCode"></Terminal>
                </div>

                <!-- docker-compose Datei anlegen -->
                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">7. docker-compose Datei anlegen:</h5>
                    <p class="">Erstellen Sie eine Datei namens <code
                            class="bg-gray-700 p-1">docker-compose.yml</code> im Projektordner und fügen Sie den
                        entsprechenden Inhalt ein.</p>

                    <Terminal :code="dockerComposeCode"></Terminal>
                </div>


                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">5. Index.php zum testen anlegen:</h5>
                    <p class="">Erstellen Sie eine Datei namens <code
                            class="bg-gray-700 p-1">index.php</code> im Projektordner und fügen Sie den
                        entsprechenden Inhalt ein.</p>
                    <Terminal :code="indexCode"></Terminal>
                </div>


                <div class="mb-4">
                    <h5 class="text-xl font-bold my-4">6. Debug Settings in PHPStorm einrichten</h5>
                    <p>
                        Zum test müssen wir in den PHPStorm Settings unter Server einen neuen Server mit dem Namen  <code
                        class="bg-gray-700 p-1">Docker</code> anlegen. Host ist hier 0.0.0.0 und port 2000. Als debugger muss Xdebug ausgewählt werden
                    </p>
                    <p>
                        Beim pathmapping muss hier an die index.php mit /application/index.php gemappet werden.
                    </p>
                    <img src="/img/screenshots/xdebugSetting.png" class="w-full">
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

<script>
import Terminal from "@/components/Terminal.vue";

export default {
    components: {
        Terminal
    },
    data() {
        return {
            dockerfileCode: `
FROM php:8.3-fpm
WORKDIR "/application"

RUN apt-get update \\
&& apt-get -y --no-install-recommends install \\
php8.3-xdebug \\
&& apt-get clean \\
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*`,
            dockerComposeCode: `
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
`,
            nginxConfigCode: `
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

    location ~ \\.php$ {
        fastcgi_pass php-fpm:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param PHP_VALUE "error_log=/var/log/nginx/application_php_errors.log";
        fastcgi_buffers 16 16k;
        fastcgi_buffer_size 32k;
        include fastcgi_params;
    }
}`,
            phpIniCode: `
upload_max_filesize = 100M
post_max_size = 108M
xdebug.mode = debug
xdebug.client_host = host.docker.internal
xdebug.start_with_request = yes`, indexCode: `
<?php

$var = "a";

$var = $var . "b";

echo $var;
return $var;`
        }
    }
};

</script>