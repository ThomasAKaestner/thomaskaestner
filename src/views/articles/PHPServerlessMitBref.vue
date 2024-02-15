<script setup>

</script>

<template>
  <div id="awsLambdaLayers">
    <div class="bg-black">
      <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
        <div class="text-base leading-6 font-medium text-gray-500">
          <time datetime="2023-12-28T12:00:00.000Z">2024-09-11</time>
        </div>
        <h1 class="text-5xl font-bold">PHP Serverless mit Bref</h1>
        <div class="flex items-center py-8">
          <div class="flex-grow border-b border-gray-300"></div>
        </div>
        <!-- Serverless Framework installieren -->
        <div class="my-2">
          <h5 class="text-xl font-bold">
            1. Serverless Framework installieren
          </h5>
          <div class="my-4">
            <code class="bg-gray-700 p-2">
              npm i -g serverless
              serverless config credentials — provider aws — key
              {key} — secret
              {secret}
            </code>
          </div>
        </div>
        <!-- Projekt erstellen und bref installieren -->
        <div class="my-2">
          <h5 class="text-xl font-bold">
            2. Projekt erstellen und bref installieren
          </h5>
          <div class="my-4">
            <p>Erstelle einen neuen Projektordner</p>
            <div class="py-2">
              <code class="bg-gray-700 p-2">
                mkdir bref-demo
                cd bref-demo
              </code>
            </div>
            <p>Installiere bref mit composer</p>
            <div class="py-2">
              <code class="bg-gray-700 p-2">
                composer require bref/bref
              </code>
            </div>
          </div>
        </div>
        <!--- index.php erstellen -->
        <div class="my-2">
          <h5 class="text-xl font-bold">
            3. index.php erstellen
          </h5>
          <p>Erstelle eine index.php Datei in deinem Projektordner</p>
          <div class="my-2">
          <pre class="bg-gray-700 p-2">

          <code>
              {{ indexPHPCode }}
          </code>
            </pre>
          </div>
          <div class="my-2">
            Dies definiert die eigentliche serverlose Funktion. Sie erhält zwei Parameter: $event, der die Eingabedaten
            für die Funktion darstellt, und $context, der den Ausführungskontext der Funktion darstellt. Die Funktion
            gibt ein Array zurück, das durch json_encode in ein JSON-Format umgewandelt wird. In diesem Beispiel wird
            einfach ein Array mit einem einzigen Schlüssel-Wert-Paar 'info' => 'this is going to cloudwatch'
            zurückgegeben.
          </div>
        </div>


        <!-- Serverless.yml erstellen -->
        <div class="my-2">
          <h5 class="text-xl font-bold">
            3. Serverless.yml erstellen
          </h5>
          <p>Lasse folgenden command laufen um das Bref framework zu initialisieren</p>
          <div class="py-2">
            <code class="bg-gray-700 p-2">
              vendor/bin/bref init
            </code>
          </div>
          <p>Wähle die Event-driven Applikation aus</p>
        </div>
        <!-- Serverless.yaml konfigurieren -->
        <div class="my-2 text-white">
          <h5 class="text-xl font-bold py-2">
            4. Serverless.yaml konfigurieren
          </h5>
          <pre class="bg-gray-700 p-2"><code>{{ codeSample }}</code></pre>
        </div>
        <!-- Mit der Serverless CLI nach AWS deployen -->
        <div class="my-2 text-white">
          <h5 class="text-xl font-bold">
            5. Mit der Serverless CLI die Funktion nach AWS deployen
          </h5>
          <div>
            <p>Deploye dein Projekt mit der Serverless CLI</p>
            <div class="py-2">
              <code class="bg-gray-700 p-2">
                serverless deploy
              </code>
            </div>
          </div>
        </div>
        <!-- Deine Lambda function testen -->
        <div class="my-2 text-white">
          <h5 class="text-xl font-bold">
            6. Deine Lambda function testen
          </h5>
          <p>
            Öffne die AWS Console und navigiere zu Lambda. Dort solltest du deine
            Lambda function sehen.
          </p>
          <p>
            Klicke auf deine Lambda function und teste sie mit dem Test-Event
            "Hello World".
          </p>
          <p>
            Navigiere zu den Cloudwatch Logs und überprüfe, ob deine Lambda
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      indexPHPCode: `
<?php

require __DIR__ . '/../vendor/autoload.php';

use Bref\\Context\\Context;

return function ($event, Context $context) {
    echo json_encode(['info' => 'this is going to cloudwatch']);
};`,
      codeSample: `
service: app <--- Name deines Services hier festlegen

provider:
  name: aws
  region: eu-west-2 <--- deine Region hier festlegen
  runtime: provided.al2

plugins:
  - ./vendor/bref/bref

functions:
  php-lambda:
    handler: index.php
    description: ''
    layers:
      - $\{bref:layer.php-73}

# Exclude files from deployment
package:
  patterns:
    - '!tests/**'
`
    };
  }
};
</script>