<template>
  <div class="bg-black text-gray-200" id="myProjects">
    <div class="text-center font-semibold text-lg py-4">
      Meine Projekte
    </div>
    <div class="flex md:h-screen">
      <div class="container m-auto">
        <div
            class="flex flex-col md:grid grid-cols-9 mx-auto p-2 text-black"
        >

          <!-- right -->
          <div class="flex md:contents">
            <div class="col-start-5 col-end-6 mr-10 md:mx-auto relative">
              <div class="h-full w-6 flex items-center justify-center">
                <div class="h-full w-1 bg-gray-300 pointer-events-none"></div>
              </div>
              <div
                  class="w-6 h-6 absolute top-1/2 -mt-3 rounded-full bg-gray-300 shadow"
              ></div>
            </div>
            <div
                class="bg-gray-300 col-start-6 col-end-10 p-4 rounded-xl my-4 mr-auto shadow-md"
            >
              <a href="https://simplerecruit.de">
                <h3 class="font-semibold text-lg mb-1 underline">SimpleRecruit</h3>
              </a>
              <p class="leading-tight text-justify">
                Entwicklung einer provisionsbasierten IT-Recruitmentplattform
              </p>
              <p class="leading-tight text-center pt-2">
                ab März 2022
              </p>
            </div>
          </div>


          <!-- left -->
          <div class="flex flex-row-reverse md:contents">
            <div
                class="bg-gray-300 col-start-1 col-end-5 p-4 rounded-xl my-4 ml-auto shadow-md"
            >
              <a href="https://www.scayle.com/">
                <h3 class="font-semibold text-lg mb-1 underline">AboutYou SCAYLE</h3>
              </a>
              <p class="leading-tight text-justify">
                Entwicklung von Backend Middelwares für SCAYLE Kunden
              </p>
              <p class="leading-tight text-center pt-2">
                ab 2021 Dezember - März 2022
              </p>
            </div>
            <div class="col-start-5 col-end-6 md:mx-auto relative mr-10">
              <div class="h-full w-6 flex items-center justify-center">
                <div class="h-full w-1 bg-gray-300 pointer-events-none"></div>
              </div>
              <div
                  class="w-6 h-6 absolute top-1/2 -mt-3 rounded-full bg-gray-300 shadow"
              ></div>
            </div>
          </div>

          <!-- left -->
          <div class="flex flex-row-reverse md:contents">
            <div
                class="bg-gray-300 col-start-1 col-end-5 p-4 rounded-xl my-4 ml-auto shadow-md"
            >
              <a href="https://www.aboutyou.de/">
                <h3 class="font-semibold text-lg mb-1 underline">AboutYou Retail</h3>
              </a>
              <p class="leading-tight text-justify">
                Entwicklung einer neuen Logistikapplikation und Carrier-Middelware.
              </p>
              <p class="leading-tight text-center pt-2">
                ab 2020 März - 2021 Dezember
              </p>
            </div>
            <div class="col-start-5 col-end-6 md:mx-auto relative mr-10">
              <div class="h-full w-6 flex items-center justify-center">
                <div class="h-full w-1 bg-gray-300 pointer-events-none"></div>
              </div>
              <div
                  class="w-6 h-6 absolute top-1/2 -mt-3 rounded-full bg-gray-300 shadow"
              ></div>
            </div>
          </div>
          <!-- right -->
          <div class="flex md:contents">
            <div class="col-start-5 col-end-6 mr-10 md:mx-auto relative">
              <div class="h-full w-6 flex items-center justify-center">
                <div class="h-full w-1 bg-gray-300 pointer-events-none"></div>
              </div>
              <div
                  class="w-6 h-6 absolute top-1/2 -mt-3 rounded-full bg-gray-300 shadow"
              ></div>
            </div>
            <div
                class="bg-gray-300 col-start-6 col-end-10 p-4 rounded-xl my-4 mr-auto shadow-md"
            >
              <a href="https://www.upaxis.com/">
                <h3 class="font-semibold text-lg mb-1 underline">Hq Software Solutions UG</h3>
              </a>
              <p class="leading-tight text-justify">
                Entwicklung einer cloudbasierten Performancemarketingplattform
              </p>
              <p class="leading-tight text-center pt-2">
                ab 2018 Januar - 2020 März
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MyProjects"
}
</script>