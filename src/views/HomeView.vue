<template>
    <div class="home">
        <Introduction/>
        <MyProducts/>
        <MyProjects/>
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
export default {
    name: 'HomeView',
    components: {
        MyProducts,
        Contact,
        MyProjects,
        Introduction,
        Skills
    }
}
</script>
