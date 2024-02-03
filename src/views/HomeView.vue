<template>
    <div class="home">
        <Introduction/>
        <MyProducts/>
        <MyProjects/>
        <Certifications />
        <Skills/>
        <Contact/>
    </div>
</template>

<script>
// @ is an alias to /src
import Introduction from "@/components/Introduction";
import MyProjects from "@/components/MyProjects";
import Contact from "@/components/Contact";
import MyProducts from "@/components/MyProducts";
import Skills from "@/components/Skills";
import Certifications from "@/components/Certifications.vue";
export default {
    name: 'HomeView',
    components: {
        Certifications,
        MyProducts,
        Contact,
        MyProjects,
        Introduction,
        Skills
    }
}
</script>
