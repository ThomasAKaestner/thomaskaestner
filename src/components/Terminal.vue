<script>
import {defineComponent} from 'vue'

export default defineComponent({
    name: "Terminal"
})
</script>

<template>
    <div id="terminal" class="py-2">
        <div class="customThirdBackgroundColor text-white rounded-lg shadow-md">
            <div class="bg-gray-600 rounded-t-lg px-4 py-2 mb-2 flex items-center">
                <div class="w-3 h-3 bg-red-500 rounded-full mr-2"></div>
                <div class="w-3 h-3 bg-yellow-500 rounded-full mr-2"></div>
                <div class="w-3 h-3 bg-green-500 rounded-full mr-2"></div>
            </div>
            <div class="customThirdBackgroundColor mx-3 pb-1 text-black">
                <p>
                    <span class="text-black"></span>
                    <pre><code class="text-sm">{{ code }}</code></pre>
                </p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: {
        code: String
    }
}
</script>