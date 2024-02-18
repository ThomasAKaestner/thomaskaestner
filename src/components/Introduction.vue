<template>
    <div class="bg-black flex flex-col h-screen" id="Introduction">
        <div class="m-auto">
            <div class="flex-col md:flex">
                <div class="max-w-6xl md:mx-auto p-8 shadow-lg md:rounded-lg md:flex items-center text-black customThirdBackgroundColor">
                    <!-- Text on the top or left for small screens -->
                    <div class="w-full pb-8 sm:pr-8">
                        <h1 class="text-3xl md:text-5xl text-black font-bold mb-6">Moin,</h1>
                        <p class="">
                            Ich bin <b>Thomas</b>, ein <b>Backend-Softwareentwickler</b> aus Hamburg.
                            Seit 2018 widme ich mich mit Leidenschaft Softwareprojekten im <b> E-Commerce- und
                            Logistikbereich </b> und habe dabei durch diverse Projekte umfangreiche Kenntnisse in
                            verschiedenen Programmiersprachen und der Konzeption von Software erlangt.
                            Insbesondere habe ich mich auf <b>PHP</b>,
                            <b>Laravel</b>, <b>Symfony</b>, <b>GO</b> und <b>AWS</b> spezialisiert.
                        </p>
                        <div class="hidden md:grid grid-row grid-cols-1 grid-cols-6 gap-4 pt-6">
                            <div>
                                <a href="https://github.com/ThomasAKaestner">
                                    <img class="w-4 md:w-8 pb-2 m-auto" src="img/icons/github.png">
                                    <p class="text-center">Github</p>
                                </a>
                            </div>
                            <div>
                                <a href="https://de.linkedin.com/in/thomas-alan-k%C3%A4stner-931b67199">
                                    <img class="w-6 md:w-8 pb-2 m-auto" src="img/icons/linkedin.png">
                                    <p class="text-center">LinkedIn</p>
                                </a>
                            </div>
                            <div>
                                <a href="https://www.xing.com/profile/ThomasAlan_Kaestner2">
                                    <img class="w-6 md:w-8 pb-2 m-auto" src="img/icons/xing.png">
                                    <p class="text-center">Xing</p>
                                </a>
                            </div>
                            <div>
                                <a href="mailto: freelancing.thomasalankaestner@gmail.com">
                                    <img class="w-8 pb-2 xs:w-4 m-auto" src="img/icons/mail.png">
                                    <p class="text-center">Email</p>
                                </a>
                            </div>
                            <div>
                                <a href="https://www.malt.de/profile/thomaskaestner">
                                    <img class="w-8 pb-2 m-auto" src="img/icons/malt.png">
                                    <p class="text-center">Malt</p>
                                </a>
                            </div>
                            <div>
                                <a href="https://www.freelancermap.de/profil/php-entwicker">
                                    <img class="w-8 pb-2 m-auto" src="img/icons/freelancer-map.png">
                                    <p class="text-center">Freelancer Map</p>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Image on the bottom or right for small screens -->
                    <div class="w-full">
                        <div class="flex justify-center">
                            <div>
                                <img src="/img/default.jpg" alt="Your Image"
                                     class="rounded-full h-64 w-64 object-cover overflow-hidden">
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "Introduction"
}
</script>