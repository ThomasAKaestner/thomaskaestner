<script setup>

</script>

<template>
  <div class="AufrufVonAWSModelle">
    <div class="bg-black">
      <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
        <ArticleHeader
            :date="articleHeaderDate"
            :title="articleHeaderTitel"
            :text="articleHeaderText"></ArticleHeader>
        <div class="my-4">
          <h2 class="text-3xl font-bold">Was sind Aufrufmodelle? </h2>
        </div>
        <p class="my-2">
          Ereignisquellen können eine Lambda-Funktion in drei allgemeinen Mustern aufrufen. Diese Muster werden
          Aufrufmodelle genannt. Jedes Aufrufmodell ist einzigartig und deckt unterschiedliche Anwendungs- und
          Entwickleranforderungen ab. Das Aufrufmodell, das Sie für Ihre Lambda-Funktion verwenden, hängt häufig von der
          Ereignisquelle ab, die Sie verwenden. Es ist wichtig zu verstehen, wie jedes Aufrufmodell Funktionen
          initialisiert und Fehler sowie Wiederholungen behandelt.
        </p>
        <div class="my-4">
          <h2 class="text-3xl font-bold">Die drei Aufrufmodelle:</h2>
        </div>
        <div class="my-4">
          <h3 class="text-2xl font-bold">1. Synchroner Aufruf</h3>
          <p>
            Synchroner Aufruf ist ein Aufrufmodell, bei dem die Lambda-Funktion auf das Ergebnis des Aufrufs wartet,
            bevor sie mit der Ausführung beginnt. Synchroner Aufruf ist nützlich, wenn Sie eine Lambda-Funktion
            ausführen möchten, die auf das Ergebnis des Aufrufs wartet, bevor sie mit der Ausführung beginnt.
            Beispielsweise
            können Sie eine Lambda-Funktion synchron ausführen, um eine Datei in Amazon S3 zu speichern und dann das
            Ergebnis an Amazon SNS zu senden.
          </p>
          <p> Folgende Services unterstützen den Aufruf von AWS Lambda Synchron:</p>
          <ul class="list-disc mx-8">
            <li>Amazon Api Gateway</li>
            <li>Amazon Cognito</li>
            <li>AWS Cloudformation</li>
            <li>Amazon Alexa</li>
            <li>Amazon Lex</li>
            <li>Amazon Cloudfront</li>
          </ul>
        </div>
        <div class="my-4">
          <h3 class="text-2xl font-bold">2. Asynchroner Aufruf</h3>
          <p>
            Asynchrone Aufrufe sind asynchron, was bedeutet, dass die Lambda-Funktion nicht auf das Ergebnis des
            Aufrufs wartet. Die Lambda-Funktion wird asynchron ausgeführt und kann das Ergebnis des Aufrufs an eine
            andere Anwendung oder einen anderen Dienst senden. Asynchrone Aufrufe sind nützlich, wenn Sie eine
            Lambda-Funktion ausführen möchten, ohne auf das Ergebnis zu warten. Beispielsweise können Sie eine
            Lambda-Funktion asynchron ausführen, um eine Datei in Amazon S3 zu speichern und dann das Ergebnis an
            Amazon SNS zu senden.
          </p>
        </div>
        <div class="my-4">
          <h3 class="text-2xl font-bold">3. Polling Aufruf</h3>
          <p>
            Polling-Aufrufe sind eine spezielle Art von asynchronen Aufrufen, bei denen die Lambda-Funktion
            periodisch ausgeführt wird, um nach neuen Daten zu suchen. Polling-Aufrufe sind nützlich, wenn Sie
            periodisch nach neuen Daten suchen und dann eine Aktion ausführen möchten. Beispielsweise können Sie
            eine Lambda-Funktion periodisch ausführen, um nach neuen Daten in einer Datenbank zu suchen und dann
            das Ergebnis an eine andere Anwendung oder einen anderen Dienst senden.
          </p>
        </div>

        <div class="my-4">
          <h2 class="text-3xl font-bold">Wann soll welches Modell verwendet werden? </h2>
          <p>
            Die Auswahl des richtigen Aufrufmodells hängt von der Art der Anwendung und den Anforderungen des
            Entwicklers ab. Synchroner Aufruf ist nützlich, wenn Sie auf das Ergebnis des Aufrufs warten müssen,
            bevor Sie mit der Ausführung beginnen. Asynchrone Aufrufe sind nützlich, wenn Sie eine Lambda-Funktion
            ausführen möchten, ohne auf das Ergebnis zu warten. Polling-Aufrufe sind nützlich, wenn Sie periodisch
            nach neuen Daten suchen und dann eine Aktion ausführen möchten.
          </p>
        </div>
        <div class="my-4">
          <h2 class="text-3xl font-bold">Aufrufmodelle einrichten</h2>
        </div>
        <div class="my-2">
          <p>
            Sie können die Aufrufmodelle für Ihre Lambda-Funktionen in der AWS Management Console, der AWS CLI oder
            der AWS SDK einrichten. In der AWS Management Console können Sie die Aufrufmodelle für Ihre Lambda-Funktion
            in der Konfigurationseinstellung "Aufrufmodell" einrichten. In der AWS CLI können Sie die Aufrufmodelle
            für Ihre Lambda-Funktion mit dem Befehl "aws lambda update-function-configuration" einrichten. In der AWS
            SDK können Sie die Aufrufmodelle für Ihre Lambda-Funktion mit der Methode "updateFunctionConfiguration"
            einrichten.
          </p>

        </div>

      </div>
    </div>
  </div>
</template>

<script>
import ArticleHeader from "../../components/articleHeader/ArticleHeader.vue";

export default {
  components: {
    ArticleHeader
  },
  data() {
    return {
      articleHeaderDate: '2023-10-08',
      articleHeaderTitel: 'Aufrufmodelle von AWS Lambda Funktionen',
      articleHeaderText: 'Die Aufrufmodelle für AWS Lambda-Funktionen bieten verschiedene Muster für die Interaktion mit Lambda. Diese Modelle, synchron und asynchron, erfüllen spezifische Anwendungs- und Entwickleranforderungen. Die Auswahl des richtigen Modells ist entscheidend für die Effizienz und Leistung der Serverless-Anwendungen.'
    }
  }
};
</script>