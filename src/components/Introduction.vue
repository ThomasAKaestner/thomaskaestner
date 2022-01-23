<template>
  <!-- This div should be always taking the screen hight -->
  <div id="fullscreen" class="bg-gray-100 flex h-screen">
    <div class="m-auto">
      <img alt="Vue logo" src="assets/logo.png">
      <h1 class="center">Thomas Kästner</h1>
    </div>
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