<script>
import {defineComponent} from 'vue'

export default defineComponent({
  name: "ArticleHeader"
})
</script>

<template>
  <div id="ArticleHeader">
    <div class="text-base leading-6 font-medium text-gray-500">
      <time datetime="2023-12-28T12:00:00.000Z">{{ date }}</time>
    </div>
    <h1 class="text-5xl font-bold">{{ title }}</h1>
    <p class="py-2">{{ text }}</p>
    <div class="flex items-center py-8">
      <div class="flex-grow border-b border-gray-300"></div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    date: String,
    title: String,
    text: String
  }
}
</script>