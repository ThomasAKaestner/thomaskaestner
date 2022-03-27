<template>
  <div class="home">
    <Introduction />
    <AboutMe />
    <MyMotivation />
    <MySkills />
    <MyProjects />
    <Contact />
  </div>
</template>

<script>
// @ is an alias to /src
import Introduction from "@/components/Introduction";
import MyMotivation from "@/components/MyMotivation";
import AboutMe from "@/components/AboutMe";
import MyProjects from "@/components/MyProjects";
import MySkills from "@/components/MySkills";
import Contact from "@/components/Contact";

export default {
  name: 'HomeView',
  components: {
    Contact,
    MySkills,
    MyProjects,
    AboutMe,
    MyMotivation,
    Introduction
  }
}
</script>
