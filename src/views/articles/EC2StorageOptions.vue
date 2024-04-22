<script setup>

</script>

<template>
  <div class="AWSLambdaBerechtigungen">
    <div class="bg-black">
      <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
        <ArticleHeader
            :date="articleHeaderDate"
            :title="articleHeaderTitel"
            :text="articleHeaderText"></ArticleHeader>
        <h3 class="text-2xl font-bold text-white mt-4">Speicherplatz für die root Applikation</h3>
        <p>
          Die root Applikation für eine Instanz enthält das Image der Applikation um die Instanz zu booten.
          Man kann eine Applikation entweder von einer instance store-backed AMI oder von einer Amazon EBS-backed AMI
          starten.
        </p>
        <h5 class="text-xl font-bold text-white mt-4">Instance Store-Backed AMI</h5>
        <p>
          Kurz gesagt ist instance store ein temporärer Speicher, der sich auf der physischen Hardware der Instanz
          befindet.
          Eine instance store-backed AMI enthält das Image der Applikation, die root volume und die block device mapping
          information.
          Die root volume ist das Volume, das die Instanz bootet. Die block device mapping information gibt an, welche
          instance store volumes an die Instanz angehängt werden.
        </p>
        <!-- Vorteile Instance Store Backed AMI -->
        <h5 class="text-xl font-bold text-white mt-4">Vorteile von Instance Store-Backed AMIs</h5>
        <p>
          <b>schnelle Einrichtung:</b>Die Erstellung eines Instance Store-Backed AMIs ist schneller als die Erstellung
          eines EBS-Backed AMIs, da die Daten nicht über das Netzwerk übertragen werden müssen.
        </p>
        <p>
          <b>günstig:</b> Instance Store-Backed AMIs sind in der Regel günstiger als EBS-Backed AMIs, da sie keine
          EBS-Volumes verwenden.
        </p>
        <p>
          <b>einfache Verwaltung:</b> Da die Daten auf dem lokalen Speicher der Instanz gespeichert sind, ist die
          Verwaltung von Instance Store-Backed AMIs einfacher als die Verwaltung von EBS-Backed AMIs.
        </p>

        <!-- Nachteile Instance Store Backed AMI -->
        <h5 class="text-xl font-bold text-white mt-4">Nachteile von Instance Store-Backed AMIs</h5>
        <p>
          <b>Volatilität:</b> Instance Store-Volumes sind volatil, was bedeutet, dass die Daten beim Stoppen oder
          Beenden der Instanz verloren gehen.
        </p>
        <p>
          <b>Skalierbarkeit:</b> Instance Store-Volumes sind nicht skalierbar, was bedeutet, dass sie nicht vergrößert
          oder verkleinert werden können.
        </p>
        <p>
          <b>Snapshot:</b> Instance Store-Volumes können nicht gesichert werden, was bedeutet, dass sie nicht als
          Snapshot gespeichert werden können.
        </p>


        <!-- Wann sollte ich eine instance store-volumes verwenden -->
        <h5 class="text-xl font-bold text-white mt-4">Wann sollte ich instance store-volumes verwenden?</h5>
        <p>
          <b>Entwicklung und Tests:</b> Instance Store-Backed AMIs eigenen sich perfekt um schnell neue Instanzen für
          Entwickelungs- und Testzwecke zu erstellen.
        </p>
        <p>
          <b>Temporäre Instanzen:</b> Sie können Instance Store-Backed AMIs verwenden, wenn Sie temporäre Instanzen
          erstellen möchten, die nach der Verwendung nicht mehr benötigt werden.
        </p>
        <p>
          <b>kleine Instanzen:</b> Instance Store-Backed AMIs sind ideal für kleine Instanzen, die nicht viele Daten
        </p>
        verarbeiten.

        <!-- EBS-backed Instance -->
        <h5 class="text-2xl font-bold text-white mt-4">Amazon EBS-Backed AMI</h5>
        <p>
          Eine Amazon EBS-Backed AMI enthält das Image der Applikation, die root volume und die block device mapping
          information. Das root volume ist ein EBS-Volume, das die Instanz bootet. Die block device mapping information
          gibt an, welche EBS-Volumes an die Instanz angehängt werden.
        </p>

        <!-- Vorteile EBS-backed AMI -->
        <h5 class="text-xl font-bold text-white mt-4">Vorteile von Amazon EBS-Backed AMIs</h5>


        <!-- Legende -->
        <h5 class="text-xl font-bold text-white mt-4">Legende</h5>
        <p>
          <b>AWS AMI:</b> Ein AMI (Amazon Machine Image) ist ein Abbild des Betriebssystems, der Anwendungen und der
          Konfiguration einer EC2-Instanz. Mit einem Instance Store-Backed AMI wird dieses Abbild auf dem lokalen
          Speicher (Instance Store) der Instanz gespeichert.
        </p>
        <p>
          <b>Instance Store:</b> Speicherplatz befindet sich auf der physischen Hardware der Instanz.
        </p>

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
      articleHeaderDate: '2024-04-22',
      articleHeaderTitel: 'AWS EC2 Speicheroptionen',
      articleHeaderText: 'Amazon Elastic Compute Cloud (EC2) bietet verschiedene Speicheroptionen, die es Benutzern ermöglichen, die Leistung, Kapazität und Kosten ihrer EC2-Instanzen zu optimieren. Zu den Speicheroptionen gehören Amazon Elastic Block Store (EBS), Instance Store und Amazon S3. Jede Option bietet unterschiedliche Vorteile und Einsatzszenarien, die es Benutzern ermöglichen, die richtige Speicherlösung für ihre Anforderungen auszuwählen. In diesem Artikel werden die verschiedenen EC2-Speicheroptionen erläutert und Empfehlungen für ihre Verwendung gegeben.',
    }
  }
};
</script>

<style scoped>

</style>