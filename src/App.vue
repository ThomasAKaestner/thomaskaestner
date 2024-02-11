<template>
    <div id="app">
        <router-view/>
        <div id="footer">
            <footer class="bg-black">
                <div class="w-full mx-auto max-w-screen-xl p-4 md:flex md:items-center md:justify-between">
                <span class="text-sm text-gray-500 sm:text-center">© 2024 <a href=""
                                                                             class="hover:underline">Thomas Kästner</a>. All Rights Reserved.</span>
                    <ul class="flex flex-wrap items-center mt-3 text-sm font-medium text-gray-500  sm:mt-0">
                        <li>
                            <a href="/" class="hover:underline me-4 md:me-6">Hauptseite</a>
                        </li>
                        <li>
                            <a href="/blog" class="hover:underline me-4 md:me-6">Blog</a>
                        </li>
                        <li>
                            <a href="/impressum" class="hover:underline me-4 md:me-6">Impressum</a>
                        </li>
                        <li>
                            <a href="/#contact" class="hover:underline">Kontakt</a>
                        </li>
                    </ul>
                </div>
            </footer>

        </div>
    </div>
</template>

<style>
#app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
}

@import './assets/styles/custom_styles.css';
</style>
<script setup>
</script>