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
                        :title="laravelServerlessPageTitle"
                        :text="laravelServerlessPageText"
                        :date="laravelServerlessPageDate"
                        :url="laravelServerlessPageUrl"
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
            AWSCloudFormationPageDate: '2023-11-09',
            AWSCloudFormationPageUrl: '/blog/aws-cloud-formation',

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

            perfectPHPPipeLineTitle: 'Die perfekte CI/CD Pipeline für PHP',
            perfectPHPPipeLineText: '\n' +
                'Die perfekte CI/CD Pipeline für PHP umfasst automatisierte Tests, Code-Qualitätsprüfungen, Containerisierung und automatische Bereitstellung. Durch diese Methoden können Entwickler Arbeitsabläufe verbessern und die Zuverlässigkeit ihrer Anwendungen steigern.',
            perfectPHPPipeLineDate: '2023-08-02',
            perfectPHPPipeLineUrl: '/blog/die-perfekte-CI-CD-Pipeline-fuer-php',


            dockerXdebugTitle: 'Xdebug in separaten Docker Container laufen lassen',
            dockerXdebugTitleText: ' Xdebug wird in einem separaten Docker-Container betrieben, um Konflikte zu vermeiden und die Einbindung in PHP-Projekte zu erleichtern. Eine Anleitung zur Konfiguration des Containers und zur Verbindung mit der Entwicklungsumgebung ermöglicht effizientes Debugging.',
            dockerXdebugTitleDate: '2022-05-23',
            dockerXdebugUrl: '/blog/xdebug-in-separaten-docker-container-laufen-lassen',

        };
    }
}
</script>