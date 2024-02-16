<script setup>

</script>

<template>
  <div id="symfonyserverless">
    <div class="bg-black">
      <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
        <div class="text-base leading-6 font-medium text-gray-500 dark:text-gray-300">
          <time datetime="2023-12-28T12:00:00.000Z">2023-09-11</time>
        </div>
        <h1 class="text-4xl font-bold">Symfony Serverless</h1>
        <div class="flex items-center py-8">
          <div class="flex-grow border-b border-gray-300"></div>
        </div>
        <h4 class="text-lg">
          Symfony Serverless nutzt das bref-Framework, um Symfony-Anwendungen auf AWS Lambda serverless laufen
          zu lassen. Diese Kombination erlaubt eine nahtlose Integration von Symfony in die serverlose
          Architektur von AWS Lambda, was Entwicklern ermöglicht, Symfony-Anwendungen kosteneffizient und
          skalierbar zu betreiben, ohne sich um die Verwaltung von Servern kümmern zu müssen.
        </h4>


        <!-- Serverless Framework installieren -->
        <div class="my-4">
          <h5 class="text-xl font-bold">
            1. Serverless Framework installieren
          </h5>
          <div class="my-4">
            <Terminal :code="installServerlessCommand"></Terminal>
          </div>
        </div>


        <!-- Neues Symfony Projekt anlegen -->
        <div class="my-4">
          <h5 class="text-xl font-bold">
            2. Neues Symfony Projekt anlegen
          </h5>
          <p>Erstelle ein neues Symfony Projekt</p>
          <Terminal :code="initSymfonyCommand"></Terminal>
        </div>


        <!-- Bref installieren -->
        <div class="my-4">
          <h5 class="text-xl font-bold">
            3. Bref installieren
          </h5>
          <p>
            brefphp/bref ist eine serverlose Plattform für die Bereitstellung von PHP-Anwendungen auf AWS Lambda,
            unabhängig vom verwendeten Framework. Es bietet Tools für die Konfiguration von Lambda-Funktionen, die
            Verwaltung von AWS-Ressourcen und die lokale Entwicklung von serverlosen Anwendungen.
          </p>
          <Terminal :code="installBrefCommand"></Terminal>
        </div>

        <!-- Bref/Symfony-Bridge installieren -->
        <div class="my-4">
          <h5 class="text-xl font-bold">
            4. brefphp/symfony-bridge installieren
          </h5>
          <div class="my-2">
            <h3 class="text-xl">Was ist brefphp/symfony-bridge?</h3>
            <p>
              brefphp/symfony-bridge ist eine Brücke zwischen Symfony und AWS Lambda für serverlose Anwendungen.
              Hauptfunktionen: Integration von Symfony mit Bref, Handler-Funktionen für Lambda, Event-Integration,
              Konfigurations- und Dienstintegration sowie Optimierungen für Serverless-Umgebungen.
            </p>
            <Terminal :code="installSymfonyBridgeCommand"></Terminal>
          </div>
        </div>


        <!-- Serverless.yaml mit Command erstellen -->
        <div class="my-4">
          <h5 class="text-xl font-bold">
            5. serverless.yaml mit Command erstellen
          </h5>
          <p>
            Die serverless.yaml-Datei ist die Konfigurationsdatei für die Bereitstellung von serverlosen Anwendungen
            auf AWS Lambda. Sie enthält Informationen über die Funktionen, Ereignisse, Ressourcen und Berechtigungen
            der Anwendung. In dieser Datei wird auch der Handler definiert, der die Lambda-Funktion ausführt.
          </p>
          <Terminal :code="initServerlessYamlCommand"></Terminal>
        </div>


        <!-- Projekt deployen -->
        <div class="my-4">
          <h5 class="text-xl font-bold">
            6. Projekt deployen
          </h5>
          <p>
            Deploye das Projekt auf AWS Lambda
          </p>
          <Terminal :code="deployProjectCommand"></Terminal>
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
      initSymfonyCommand:
          'symfony new my_project_name',
      installBrefCommand:
          'composer require bref/bref',
      installSymfonyBridgeCommand:
          'composer require bref/symfony-bridge',
      initServerlessYamlCommand:
          'vendor/bin/bref init',
      deployProjectCommand:
          'serverless deploy',
      installServerlessCommand: `npm i -g serverless
serverless config credentials — provider aws — key {key} — secret {secret}`
    }
  }
};


</script>