<script setup>

</script>

<template>
  <div class="bg-gray-800 h-full text-white">
    <div class="bg-gray-800 flex flex-col h-screen" id="Introduction">
      <div class="m-auto">
        <div class="flex-col md:flex">
          <div
              class="max-w-6xl md:mx-auto p-8 shadow-lg md:rounded md:flex items-center text-black bg-gray-300">
            <!-- Text on the top or left for small screens -->
            <div class="w-full pb-8 sm:pr-8">
              <h1 class="text-3xl md:text-4xl text-black font-bold mb-4">Shopware 6 Entwickler</h1>
              <p class="mb-4">
                Hi, ich bin Thomas ein Shopware Entwickler aus Hamburg.
              </p>

              <button class="shopwareBgColor text-white font-bold py-2 px-4 rounded">
                Kontakt
              </button>
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
    <h4 class="text-3xl md:text-5xl customThirdTextColor font-bold mb-6">Was ich anbiete ...</h4>
    <div class="flex">
      <div>
        <img src="/img/icons/shopware_products.png" alt="Shopware 6" style="width:800px" class="w-auto object-cover overflow-hidden">
      </div>
      <div class="flex justify-center items-center">
        <ul class="list-disc text-xl text-left">
          <li>Shopware 6 Beratung</li>
          <li>Shopware Integration in Ihre Technologie-Landschaft: PIM, ERP-Systeme, CRM-Systeme und mehr.</li>
          <li>Shopware Plugin Entwicklung</li>
          <li>Migration von Shopware 5 auf Shopware 6</li>
          <li>Shopware 6 QA mit Cypress</li>
          <li>Migration von anderen Shopsystemen zu Shopware 6</li>
          <li>Shopware 6 - Prozess Automatisierung</li>
        </ul>
      </div>
    </div>

    <!-- Shopware 6 Qualitätssicherung -->
    <div>
      <h4 class="text-3xl md:text-5xl customThirdTextColor font-bold mb-6">Shopware 6 Qualitätssicherung</h4>
      <div class="flex">
        <div class="flex">
          <img src="/img/icons/shopware_icon.png" alt="Shopware 6" class="h-32 w-32 object-cover overflow-hidden">
          <div class="text-8xl">+</div>
          <img src="/img/icons/cypress.png" alt="Cypress" class="h-32 w-auto object-cover overflow-hidden">
        </div>
        <div class="flex text-left">
          <div>
            <div class="text-xl">Shopware 6 Qualitätssicherung</div>
            <p>
              Ich richte ein Monitoring-System ein, das die Verfügbarkeit Ihres Shops rund um die Uhr überwacht. So
              werden Sie umgehend benachrichtigt, wenn es zu Ausfällen oder Leistungseinbußen kommt.
            </p>
          </div>


          <div>
            Monitoring der Shopware-Store-Erreichbarkeit
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>