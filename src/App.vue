<template>
  <div id="app">
    <Introduction />
    <MySkills />
    <MyProjects />
    <Contact />
  </div>
</template>
<script>
import Introduction from "@/components/Introduction";
import MySkills from "@/components/MySkills";
import Contact from "@/components/Contact";
import MyProjects from "@/components/MyProjects";

export default {
  name: 'App',
  components: {
    Contact,
    MySkills,
    Introduction,
    MyProjects
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