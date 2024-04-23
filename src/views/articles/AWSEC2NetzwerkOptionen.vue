<script setup>

</script>

<template>
  <div class="AWSEC2NetzwerkOptionen">
    <div class="bg-black">
      <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
        <ArticleHeader
            :date="articleHeaderDate"
            :title="articleHeaderTitel"
            :text="articleHeaderText"></ArticleHeader>

        <p>
          Eine Elastische Netzwerkschnittstelle ist eine logische Netzwerkkomponente, die eine virtuelle Netzwerkkarte
          für eine EC2-Instanz darstellt. Wie für alle Netzwerkkarten gilt, können Sie eine Verbindung zu einem oder
          mehreren Netzwerken herstellen, Daten senden und empfangen und Sicherheitsgruppen und
          Netzwerkzugriffssteuerungslisten (ACLs) anwenden. Sie ermöglicht es Ihnen, Ihre EC2-Instanzen sicher mit einem
          VPC (Virtual Private Cloud) zu verbinden.
          Es gibt zwei Arten von ENIs: primäre und sekundäre.
        </p>
        <p>
          <b>Primäre ENIs</b> sind standardmäßig kreiert, wenn Sie eine Instanz starten. Es kann nicht gelöscht werden.
        </p>
        <p>
          <b>Sekundäre ENIs</b> können Sie erstellen und an Ihre Instanz anhängen. Sie können eine sekundäre ENI an eine
          andere Instanz anhängen, wenn Sie sie nicht mehr benötigen.
        </p>

        <h3 class="text-xl font-bold text-white my-4">Häufige Anwendungsfälle für eine ENI</h3>
        <p>
          Häufige Anwendungsfälle für ENIs:
        </p>

        <ul>
          <li>Bereitstellung von mehreren Netzwerkschnittstellen für eine EC2-Instanz: Dies kann nützlich sein, wenn Sie
            die
            Instanz für verschiedene Zwecke verwenden möchten, z. B. für den Webverkehr und den Datenverkehr mit der
            Datenbank.
          </li>
          <li>Migration von On-Premises-Anwendungen in die AWS-Cloud: Sie können ENIs verwenden, um die
            Netzwerkverbindungen
            Ihrer On-Premises-Anwendungen mit Ihrem VPC in der AWS-Cloud zu replizieren.
          </li>
          <li>Erstellung von skalierbaren und hochverfügbaren Anwendungen: Sie können ENIs verwenden, um Ihre
            Anwendungen
            auf mehrere EC2-Instanzen zu verteilen, um die Leistung und Verfügbarkeit zu verbessern.
          </li>
        </ul>

        <h3 class="text-xl font-bold text-white my-4">Attribute einer Elastic Network Interface</h3>
        <p>
          <b>Primäre private IPv4-Adresse:</b>Eine eindeutige private IPv4-Adresse aus dem Adressbereich Ihres VPC.
        </p>
        <p>
          <b>Sekundäre private IPv4-Adressen (optional):</b> Eine oder mehrere zusätzliche private IPv4-Adressen aus dem
          Adressbereich Ihres VPC.
        </p>
        <p>
          <b>Elastic IP-Adresse (optional):</b> Je privater IPv4-Adresse kann optional eine öffentliche IPv4-Adresse
          (Elastic IP) zugewiesen werden.
        </p>
        <p>
          <b>Öffentliche IPv4-Adresse (optional):</b> Kann der ENI direkt zugewiesen werden (ersetzt seltener
          verwendetes
          Konzept).
        </p>
        <p>
          <b>IPv6-Adressen (optional):</b> Eine oder mehrere IPv6-Adressen können der ENI zugewiesen werden.
        </p>
        <p>
          <b>MAC-Adresse:</b> Eine eindeutige Hardware-Adresse der Netzwerkschnittstelle.
        </p>
        <p>
          <b>Sicherheitsgruppe:</b>Eine ENI kann mindestens einer Sicherheitsgruppe zugeordnet werden, um den
          Netzwerkverkehr zu filtern.
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
      articleHeaderDate: '2024-04-23',
      articleHeaderTitel: 'AWS EC2 Netzwerkoptionen',
      articleHeaderText: 'Amazon EC2 bietet verschiedene Netzwerkoptionen, um die Anforderungen Ihrer Anwendung zu erfüllen. In diesem Artikel werden die verschiedenen Netzwerkoptionen von Amazon EC2 erläutert und wie Sie die richtige Option für Ihre Anwendung auswählen können.'
    }
  }
};
</script>
<style scoped>

</style>