<template>
  <div id="app">
    <router-view/>
    <nav class="bg-black text-gray-200">
      <router-link to="/">Hauptseite</router-link>
      |
      <router-link to="/impressum">Impressum</router-link>
    </nav>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
</style>