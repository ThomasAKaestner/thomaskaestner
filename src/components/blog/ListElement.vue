<script>
import {defineComponent} from 'vue'

export default defineComponent({
    name: "ListElement"
})
</script>

<template>
    <li class="py-12">
        <article class="space-y-2 xl:grid xl:grid-cols-4 xl:space-y-0 xl:items-baseline">
            <dl>
                <dt class="sr-only">Published on</dt>
                <dd class="text-base leading-6 font-medium text-gray-500 dark:text-gray-300">
                    <time datetime="2023-12-28T12:00:00.000Z">
                        {{ date }}
                    </time>
                </dd>
            </dl>
            <div class="space-y-5 xl:col-span-3">
                <div class="space-y-6">
                    <h2 class="text-2xl leading-8 font-bold tracking-tight">
                        <a class="text-gray-900 dark:text-white" :href="url">
                            {{ title }}
                        </a>
                    </h2>
                    <div class="prose dark:prose-invert max-w-none text-gray-500 dark:text-gray-300">
                        {{ text }}
                    </div>
                </div>
                <div class="text-base leading-6 font-medium"><a class="link" aria-label="read more"
                                                                :href="url">Mehr lesen →</a></div>
            </div>
        </article>
    </li>
</template>

<script>
export default {
    props: {
        title: String,
        text: String,
        date: String,
        url: String
    }
}
</script>