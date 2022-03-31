<template>
  <div class="bg-gray-300" id="mySkills">
    <div class="text-center font-semibold text-lg py-4">
      Fähigkeiten
    </div>
    <div class="md:flex lg:h-screen md:h-auto px-4 md:px-32 lg:px-64">
      <div class="grid grid-cols-1 md:grid-cols-6 md:gap-8 md:gap-y-0 gap-y-12">
        <div>
          <img class="w-32 m-auto" src="img/icons/php.png">
          <a href="https://www.php.net/" target="_blank" rel="noopener noreferrer" ><p>PHP</p></a>
<!--          <p>Seit 2018 programmiere ich hoch skalierbare Backend-Applikationen in PHP.
          Über die Jahre konnte ich viele Erfahrungen sammeln und verfolge PHP seit der Version 5.6.0.</p>-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/laravel.png">
          <a href="https://laravel.com/" target="_blank" rel="noopener noreferrer" ><p>Laravel</p></a>
<!--          <p>Laravel ist das Framework mit welchem ich die meisten Projekte umgesetzt habe.
            Bereits 2018 konnte ich die ersten Erfahrungen sammeln.</p>-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/symfony.png">
          <a href="https://symfony.com/" target="_blank" rel="noopener noreferrer" ><p>Symfony</p></a>
<!--
          <p>Mit dem Framework Symfony konnte ich bereits zwei Projekte umsetzten.</p>
-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/golang.png">
          <a href="https://go.dev/" target="_blank" rel="noopener noreferrer" ><p>Golang</p></a>
<!--
          <p>Golang </p>
-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/aws.png">
          <a href="https://aws.amazon.com/" target="_blank" rel="noopener noreferrer" ><p>AWS</p></a>
<!--          <p>Mit der AWS cloud arbeite ich seit 2018. Ich kenne mich mit vielen verschiedenen
            Produkten aus und bin in der Lage eine Infrastruktur aufzusetzten.</p>-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/javascript.png">
          <p>JavaScript</p>
<!--          <p>Auf JavaScript bin ich immer wieder im Entwickeln von Frontendapplikationen gestoßen. Auch mit AWS Lambda & Node.js
          konnte ich indirekt Erfahrungen mit JavaScript sammeln.</p>-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/vue-dark.png">
          <p>Vue.js</p>
<!--          <p>Vue.js ist das Framework welches ich für die meisten Frontendprojekte genutzt habe.
            Mit Vue.js fällt es mir leicht eine neue Frontendapplikation umzusetzten. </p>-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/jquery.png">
          <a href="https://jquery.com/" target="_blank" rel="noopener noreferrer"><p>jQuery</p></a>
<!--
          <p>jQuery habe ich von 2018 bis Anfang 2020 genutzt. Über diesen Zeitraum habe ich fast täglich mit dieser JavaScript Libary gearbeitet.</p>
-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/tailwindcss-dark.png">
          <p>Tailwind.css</p>
<!--
          <p>Neben naitiv CSS und der Bootstrap Libary habe ich mit dem CSS Framework "Tailwindcss" viele Frontends geschalten können.</p>
-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/mySql.png">
          <p>MySql</p>
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/redis.png">
          <p>Redis</p>
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/docker.png">
          <a href="https://www.docker.com/" target="_blank" rel="noopener noreferrer"><p>Docker</p></a>
<!--
          <p>Aufsetztung von verschiedenen Docker Environments, sowie Projektumsetztungen mit Docker-Swarm und Kubernetes.</p>
-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/automated-testing.png">
          <p>Automated Testing & TDD</p></div>
        <div>
          <img class="w-32 m-auto" src="img/icons/api.png">
          <p>Api Development</p>
<!--
          <p>Entwicklung von professionellen Rest-Apis sowie Webhooks. Dokumentation der APIs wurden meist mit Swagger umgesetzt.</p>
-->
        </div>
        <div>
          <img class="w-32 m-auto" src="img/icons/pipelines.png">
          <a href="https://docs.gitlab.com/ee/ci/" target="_blank" rel="noopener noreferrer"><p>CI/CD-Pipelines</p></a>
<!--          <p>Erstellung von CI/CD-Pipelines mit Github-Actions und GitLab CI/CD.</p>-->
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MySkills"
}
</script>
