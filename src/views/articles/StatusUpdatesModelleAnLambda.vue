<template>
  <div class="AufrufVonAWSModelle">
    <div class="bg-black">
      <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
        <ArticleHeader
            :date="articleHeaderDate"
            :title="articleHeaderTitel"
            :text="articleHeaderText"></ArticleHeader>
        <div class="text-white">
          <div class="text-left max-w-3xl">
            <div>
              Es gibt drei verschiedene Wege um Status Updates an AWS Lambda Funktionen zu kommunizieren.
            </div>
          </div>
          <div>
            <div class="my-4">
              <h2 class="text-3xl font-bold">1. Client Polling</h2>
              <div class="my-2">
                <h5 class="text-2xl font-bold">Was ist Client Polling?</h5>
                <p>
                  Der Client fragt in regelmäßigen Abständen den Status der Lambda Funktion ab. Dieser Weg ist
                  einfach zu implementieren, aber ineffizient, da der Client in regelmäßigen Abständen den Status
                  abfragen muss.
                </p>
                <h5 class="text-2xl font-bold">Wie wird client polling in AWS umgesetzt?</h5>
                <div>
                  <p>
                    Der Client kann den Status der Lambda Funktion abfragen, indem er die Methode
                    <code>getFunction</code> der AWS SDK verwendet.
                  </p>
                </div>
              </div>
            </div>
            <div class="my-4">
              <h2 class="text-3xl font-bold">2. Webhook Pattern mit AWS SNS</h2>
              <div>
                <h5 class="text-2xl font-bold">Was ist das Webhook Pattern?</h5>
                <p>
                  Das Webhook Pattern ist ein Weg um Status Updates von AWS Lambda Funktionen zu empfangen. Die
                  Lambda Funktion sendet ein Status Update an einen Webhook, der in der Regel eine URL ist.
                </p>
                <h5 class="text-2xl font-bold">Wie wird das Webhook Pattern in AWS umgesetzt?</h5>
                <div class="my-2">
                  <p>
                    Das Webhook Pattern kann in AWS mit AWS SNS umgesetzt werden. Die Lambda Funktion sendet ein
                    Status Update an einen SNS Topic. Der Client kann sich an den SNS Topic abonnieren und erhält
                    so Status Updates.
                  </p>
                </div>
              </div>
              <div>
                <div class="my-4">
                  <h2 class="text-3xl font-bold">3. Websocked Pattern mit AWS App Sync</h2>
                  <div>
                    <h5 class="text-2xl font-bold">Was ist das Websocket Pattern?</h5>
                    <p>
                      Das Websocket Pattern ist ein Weg um Status Updates von AWS Lambda Funktionen zu empfangen. Die
                      Lambda Funktion sendet ein Status Update an einen Websocket, der in der Regel eine URL ist.
                    </p>
                    <h5 class="text-2xl font-bold">Wie wird das Websocket Pattern in AWS umgesetzt?</h5>
                    <div>
                      <p>
                        Das Websocket Pattern kann in AWS mit AWS App Sync umgesetzt werden. Die Lambda Funktion
                        sendet ein Status Update an einen Websocket. Der Client kann sich an den Websocket
                        abonnieren und erhält so Status Updates.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import ArticleHeader from "../../components/articleHeader/ArticleHeader.vue";

export default {
  name: "AufrufVonAWSModelle",
  components: {
    ArticleHeader,
  },
  data() {
    return {
      articleHeaderDate: "2023-10-08",
      articleHeaderTitel: "Status Updates Modelle an Lambda senden",
      articleHeaderText: "In diesem Artikel erfahren Sie, wie sie status updates an AWS Lambda funktionen senden.",
    };
  },
};

</script>
<style scoped>

</style>