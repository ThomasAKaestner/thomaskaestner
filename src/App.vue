<template>
  <div id="app">
    <Introduction />
    <AboutMe />
    <MyMotivation />
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
import MyMotivation from "@/components/MyMotivation";
import AboutMe from "@/components/AboutMe";

export default {
  name: 'App',
  components: {
    AboutMe,
    MyMotivation,
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