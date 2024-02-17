<script>
import {defineComponent} from 'vue'

export default defineComponent({
    name: "AWSLambdaBerechtigungen"
})
</script>

<template>
    <div class="AWSLambdaBerechtigungen">
        <div class="bg-black">
            <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
                <ArticleHeader
                        :date="articleHeaderDate"
                        :title="articleHeaderTitel"
                        :text="articleHeaderText"></ArticleHeader>
                <p class="py-2">
                    AWS Lambda Berechtigungen sind entscheidend für die sichere und effiziente Ausführung von
                    Lambda-Funktionen in der AWS-Cloud. Zwei Hauptberechtigungen stechen dabei hervor:
                </p>
                <h3 class="text-2xl font-bold text-white mt-4">IAM Execution Role/ IAM-Ausführungsrolle:</h3>
                <p class="py-2">
                    Diese Berechtigung ermöglicht Lambda-Funktionen den Zugriff auf andere
                    AWS-Services und Ressourcen während ihrer Ausführung. Durch die Zuweisung einer IAM-Ausführungsrolle
                    können Funktionen sicher auf benötigte Ressourcen zugreifen, ohne dass sensible Zugangsdaten
                    hartcodiert werden müssen.
                </p>
                <h3 class="text-2xl font-bold text-white mt-4">IAM Resource Policy/ IAM-Ressourcenrichtlinie:</h3>
                <p class="py-2">
                    Diese Richtlinie legt fest, welche Entitäten auf die Lambda-Funktion selbst
                    zugreifen dürfen. Sie ermöglicht es, den Zugriff auf die Funktion auf bestimmte AWS-Prinzipien oder
                    bestimmte Aktionen zu beschränken, um die Sicherheit und den Schutz der Funktion zu gewährleisten.
                </p>
                <p class="py-2">
                    Die richtige Konfiguration und Verwaltung dieser Berechtigungen ist entscheidend für eine sichere
                    und effektive Nutzung von AWS Lambda in Cloud-Anwendungen.
                </p>

                <div class="flex justify-center">
                    <img src="/img/schema/IAM-lambda.png" class="w-full md:w-2/3">
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import ArticleHeader from "../../components/articleHeader/ArticleHeader.vue";

export default {
    components: {
        ArticleHeader
    },
    data() {
        return {
            articleHeaderDate: '2023-10-08',
            articleHeaderTitel: 'Einführung in AWS Lambda Berechtigungen',
            articleHeaderText: 'AWS Lambda Berechtigungen ermöglichen sichere und effiziente Funktionsausführung in der AWS-Cloud. Hauptberechtigungen umfassen die IAM-Ausführungsrolle, die Funktionen den Zugriff auf Ressourcen ermöglicht, und die IAM-Ressourcenrichtlinie, die den Zugriff auf die Funktion steuert. Die IAM-Ausführungsrolle gewährt Funktionen Zugriff auf AWS-Services, während die IAM-Ressourcenrichtlinie den Zugriff auf die Funktion steuert. Eine korrekte Konfiguration und Verwaltung dieser Berechtigungen ist für die Sicherheit und Effektivität von AWS Lambda entscheidend.',
        }
    }
};
</script>