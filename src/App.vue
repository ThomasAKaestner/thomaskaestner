<template>
  <div id="app">
    <Introduction />
    <MySkills />
    <Contact />
  </div>
</template>

<script>
import Introduction from "@/components/Introduction";
import MySkills from "@/components/MySkills";
import Contact from "@/components/Contact";

export default {
  name: 'App',
  components: {
    Contact,
    MySkills,
    Introduction,
  }
}
</script>
<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>