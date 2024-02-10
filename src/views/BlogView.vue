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
                    :title="symfonyServerlessPageTitle"
                    :text="symfonyServerlessPageText"
                    :date="symfonyServerlessPageDate"
                    ></ListElement>
                <ListElement
                    :title="laravelServerlessPageTitle"
                    :text="laravelServerlessPageText"
                    :date="laravelServerlessPageDate"
                ></ListElement>
                <ListElement
                    :title="perfectPHPPipeLineTitle"
                    :text="perfectPHPPipeLineText"
                    :date="perfectPHPPipeLineDate"
                ></ListElement>
                <ListElement
                    :title="dockerXdebugTitle"
                    :text="dockerXdebugTitleText"
                    :date="dockerXdebugTitleDate"
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
            symfonyServerlessPageTitle: 'Symfony Serverless',
            symfonyServerlessPageText: 'This is the text content for the Child Component.',
            symfonyServerlessPageDate: '2024-02-10',
            laravelServerlessPageTitle: 'Laravel Serverless',
            laravelServerlessPageText: 'This is the text content for the Child Component.',
            laravelServerlessPageDate: '2024-02-10',
            awsCloudFormationTitle: 'Laravel Serverless',
            awsCloudFormationText: 'This is the text content for the Child Component.',
            awsCloudFormationDate: '2024-02-10',
            perfectPHPPipeLineTitle:'Die perfekte PHP Pipeline',
            perfectPHPPipeLineText:'This is the text content for the Child Component.',
            perfectPHPPipeLineDate:'2023-08-02',
            dockerXdebugTitle:'Xdebug in seperatem Docker Container laufen lassen',
            dockerXdebugTitleText:'This is the text content for the Child Component.',
            dockerXdebugTitleDate:'2022-05-23',
        };
    }
}
</script>