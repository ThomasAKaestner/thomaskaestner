<template>
  <!-- This div should be always taking the screen hight -->
  <div id="fullscreen">
    <img height="200px" width="200px" src="/src/assets/logo.png">
    <h1 class="center">Thomas Kästner</h1>
  </div>
</template>

<script>
export default {
  name: "Introduction"
}
</script>

<style scoped>
#fullscreen {
  position: fixed;
  width: 100%;
  height: 100%;
}
</style>