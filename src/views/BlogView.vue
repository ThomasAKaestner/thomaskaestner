<script>
import {defineComponent} from 'vue'
import ListElement from "@/components/blog/ListElement.vue";

export default defineComponent({
    name: "BlogView",
    components: {ListElement}
})
</script>

<template>
    <div class="bg-black">
        <div class="text-white text-left max-w-3xl mx-auto py-12 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
            <h1 class="text-4xl font-bold">Tech Blog</h1>
            <p>Updates, Tips & Meinungen über PHP, Symfony, Laravel, Golang, AWS, Kubernetes, Terraform und Docker.</p>
            <ul class="divide-y divide-gray-400">
                <ListElement
                    :title="AWSCloudFormationPageTitle"
                    :text="AWSCloudFormationPageText"
                    :date="AWSCloudFormationPageDate"
                    :url="AWSCloudFormationPageUrl"
                ></ListElement>
                <ListElement
                        :title="symfonyServerlessPageTitle"
                        :text="symfonyServerlessPageText"
                        :date="symfonyServerlessPageDate"
                        :url="symfonyServerlessPageUrl"
                ></ListElement>
              <ListElement
                    :title="aufrufModelleAwsTitle"
                    :text="aufrufModelleAwsText"
                    :date="aufrufModelleAwsDate"
                    :url="aufrufModelleAwsUrl"></ListElement>
                <ListElement
                        :title="laravelServerlessPageTitle"
                        :text="laravelServerlessPageText"
                        :date="laravelServerlessPageDate"
                        :url="laravelServerlessPageUrl"
                ></ListElement>
                <ListElement
                    :title="phpServerlessPageTitle"
                    :text="phpServerlessPageText"
                    :date="phpServerlessPageDate"
                    :url="phpServerlessPageUrl"
                ></ListElement>
                <ListElement
                        :title="perfectPHPPipeLineTitle"
                        :text="perfectPHPPipeLineText"
                        :date="perfectPHPPipeLineDate"
                        :url="perfectPHPPipeLineUrl"
                ></ListElement>
                <ListElement
                        :title="dockerXdebugTitle"
                        :text="dockerXdebugTitleText"
                        :date="dockerXdebugTitleDate"
                        :url="dockerXdebugUrl"
                ></ListElement>
            </ul>
        </div>
    </div>
</template>

<script>
import ListElement from "@/components/blog/ListElement.vue";

export default {
    components: {
        ListElement
    },
    data() {
        return {
            AWSCloudFormationPageTitle: 'AWS Cloudformation',
            AWSCloudFormationPageText: 'This is the text content for the Child Component.',
            AWSCloudFormationPageDate: '2023-10-08',
            AWSCloudFormationPageUrl: '/blog/aws-cloud-formation',

            aufrufModelleAwsTitle: 'Aufrufmodelle von AWS Lambda Funktionen',
            aufrufModelleAwsText: 'Die Aufrufmodelle für AWS Lambda-Funktionen bieten verschiedene Muster für die Interaktion mit Lambda. Diese Modelle, synchron und asynchron, erfüllen spezifische Anwendungs- und Entwickleranforderungen. Die Auswahl des richtigen Modells ist entscheidend für die Effizienz und Leistung der Serverless-Anwendungen.',
            aufrufModelleAwsDate: '2023-10-08',
            aufrufModelleAwsUrl: '/blog/aufrufmodelle-von-aws-lambda-funktionen',

            symfonyServerlessPageTitle: 'Symfony Serverless',
            symfonyServerlessPageText: '\n' +
                'Symfony Serverless nutzt das bref-Framework, um Symfony-Anwendungen auf AWS Lambda serverless laufen zu lassen. Diese Kombination erlaubt eine nahtlose Integration von Symfony in die serverlose Architektur von AWS Lambda, was Entwicklern ermöglicht, Symfony-Anwendungen kosteneffizient und skalierbar zu betreiben, ohne sich um die Verwaltung von Servern kümmern zu müssen.',
            symfonyServerlessPageDate: '2023-09-11',
            symfonyServerlessPageUrl: '/blog/symfony-serverless',

            laravelServerlessPageTitle: 'Laravel Serverless',
            laravelServerlessPageText: '\n' +
                'Laravel Serverless läuft ausschließlich auf AWS Lambda unter Verwendung des bref-Frameworks. Diese Kombination ermöglicht es, Laravel-Anwendungen in einer serverlosen Umgebung zu betreiben, indem sie nahtlos in die Architektur von AWS Lambda integriert werden.',
            laravelServerlessPageDate: '2023-09-11',
            laravelServerlessPageUrl: '/blog/laravel-serverless',

            phpServerlessPageTitle: 'PHP Serverless mit Bref',
            phpServerlessPageText: 'Das Projekt PHP Serverless mit Bref bietet eine innovative Lösung für das Bereitstellen von PHP-Anwendungen in serverlosen Umgebungen. Durch die Nutzung von Bref können Entwickler PHP-Anwendungen nahtlos auf Serverless-Plattformen wie AWS Lambda ausführen. Diese effiziente und skalierbare Infrastruktur ermöglicht es Entwicklern, sich auf die Entwicklung hochwertiger PHP-Anwendungen zu konzentrieren, ohne sich um die Verwaltung von Servern kümmern zu müssen',
            phpServerlessPageDate: '2023-09-11',
            phpServerlessPageUrl: '/blog/php-serverless-mit-bref',

            perfectPHPPipeLineTitle: 'Die perfekte CI/CD Pipeline für PHP',
            perfectPHPPipeLineText: '\n' +
                'Die perfekte CI/CD Pipeline für PHP umfasst automatisierte Tests, Code-Qualitätsprüfungen, Containerisierung und automatische Bereitstellung. Durch diese Methoden können Entwickler Arbeitsabläufe verbessern und die Zuverlässigkeit ihrer Anwendungen steigern.',
            perfectPHPPipeLineDate: '2022-08-02',
            perfectPHPPipeLineUrl: '/blog/die-perfekte-CI-CD-Pipeline-fuer-php',

            dockerXdebugTitle: 'Xdebug in Docker Container laufen lassen',
            dockerXdebugTitleText: '\n' +
                'Xdebug ist ein leistungsstolles Werkzeug zur Fehlerbehebung und Profilerstellung in PHP-Anwendungen. Die Integration mit Docker-Containern ermöglicht eine effiziente Entwicklungsumgebung. Durch einfache Schritte kann Xdebug in Docker-Containern eingerichtet werden, um das Debuggen von PHP-Anwendungen zu erleichtern.',
            dockerXdebugTitleDate: '2021-05-23',
            dockerXdebugUrl: '/blog/xdebug-in-docker-container-laufen-lassen',
        };
    }
}
</script>