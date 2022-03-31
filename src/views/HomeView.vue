<template>
  <div class="home">
    <Introduction />
    <AboutMe />
    <MyProducts />
    <MySkills />
    <MyProjects />
    <Contact />
  </div>
</template>

<script>
// @ is an alias to /src
import Introduction from "@/components/Introduction";
import AboutMe from "@/components/AboutMe";
import MyProjects from "@/components/MyProjects";
import MySkills from "@/components/MySkills";
import Contact from "@/components/Contact";
import MyProducts from "@/components/MyProducts";

export default {
  name: 'HomeView',
  components: {
    MyProducts,
    Contact,
    MySkills,
    MyProjects,
    AboutMe,
    Introduction
  }
}
</script>
