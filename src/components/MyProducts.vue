<template>
  <div class="bg-black" id="products">
    <div class="flex flex-col h-auto px-4 md:px-32 lg:px-64 text-gray-300">
      <div class="text-center font-semibold text-lg py-4">
        Produkte
      </div>
      <div class="py-12 w-full">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 h-auto md:py-32">
          <div class="border p-4">
            <h3 class="pb-4 underline">Komplette Webseite</h3>
            <div>
              Setzen Sie Ihre komplette Website mit mir um. Dabei verwende ich auf Wunsch gern ein Content Management
              System, so dass Sie bei Wunsch Inhalte selbst über eine einfache Bedienoberfläche anpassen können.
            </div>
            <div class="border p-4 m-4 cursor-pointer">
              <a href="#contact">Jetzt Angebot anfordern</a>
            </div>
          </div>
          <div class="border p-4">
            <h3 class="pb-4 underline">Backend Applikation</h3>
            <div>
              Sie sind auf der Suche nach einem GO oder PHP Entwickler für ihre Backendapplikation? Ich konzepiere,
              entwickle oder maintaine ihre Backendapplikation in PHP oder GO.
            </div>
            <div class="border p-4 m-4 cursor-pointer">
              <a href="#contact">Jetzt Angebot anfordern</a>
            </div>
          </div>
          <div class="border p-4">
            <h3 class="pb-4 underline">Kontakt</h3>
            <div>
              Sie brauchen Technisches Wissen oder wollen anderweitig Kontakt aufbauen?
              Schreiben Sie mich gerne an.
            </div>
            <div class="border p-4 m-4 cursor-pointer">
              <a href="#contact">Kontakt</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MyProducts"
}
</script>

<style scoped>

</style>