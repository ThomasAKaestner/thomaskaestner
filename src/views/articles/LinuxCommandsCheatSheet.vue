<script setup>

</script>

<template>
  <div class="LinuxCommandsCheatSheet">
    <div class="bg-black text-white">
      <div class="text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
        <ArticleHeader
            :date="articleHeaderDate"
            :title="articleHeaderTitel"
            :text="articleHeaderText"></ArticleHeader>
        <!-- Einführung -->
        <div>
          <p>
            Linux ist ein <b>freies und quelloffenes Betriebssystem</b>, welches im Gegensatz zu Windows oder macOS
            keine
            Lizenzgebühren kostet. Es basiert auf dem <b>Linux-Kernel</b>, einer zentralen Software, die die
            Kommunikation
            zwischen Hardware und Programmen ermöglicht.
            Verwendet wird Linux auf <b>Servern, Supercomputern, Routern, NAS-Systemen </b> und <b>Smartphones</b>. Auch
            viele
            Desktop-Nutzer schätzen die <b>Flexibilität, Sicherheit und den Gratis-Charakter</b> von Linux.
          </p>
        </div>
        <!-- Wichtige Linux Distros -->
        <div>
          <h2 class="font-bold text-3xl pt-2">Wichtige Linux Distros:</h2>
          <div class="pl-4">
            <div>
              <h3 class="font-bold text-2xl pt-2">Ubuntu</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Debian</li>
                <li><b>Zielgruppe:</b> Anfänger, Desktop-Nutzer, Entwickler</li>
                <li><b>Eigenschaften:</b> Benutzerfreundlich, große Community, regelmäßige Updates. Ubuntu ist eine der
                  beliebtesten Distributionen und bietet eine einfache Installation sowie Support für eine Vielzahl von
                  Hardware.
                </li>
                <li><b>Desktop-Umgebungen:</b> GNOME (Standard), aber auch KDE, Xfce (Xubuntu), LXQt (Lubuntu) und
                  andere.
                </li>
                <li><b>Dateinamenerweiterung:</b> Debian-Paket (deb)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">Debian</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Eigenständig</li>
                <li><b>Zielgruppe:</b> Stabilitätsliebende Nutzer, Server-Admins</li>
                <li><b>Eigenschaften:</b> Sehr stabil, aber nicht die neueste Softwareversion. Debian ist bekannt für
                  seine Stabilität und Freiheit von proprietärer Software.
                </li>
                <li><b>Desktop-Umgebungen:</b> GNOME, KDE, Xfce, LXDE und andere.</li>
                <li><b>Dateinamenerweiterung:</b> Debian-Paket (deb)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">Fedora</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Red Hat</li>
                <li><b>Zielgruppe:</b> Entwickler, Technologie-Enthusiasten</li>
                <li><b>Eigenschaften:</b> Bleeding Edge, bietet neueste Technologien und Features. Fedora wird oft als
                  Testfeld für Red Hat Enterprise Linux verwendet.
                </li>
                <li><b>Desktop-Umgebungen:</b> GNOME (Standard), aber auch KDE, Xfce, LXDE.</li>
                <li><b>Dateinamenerweiterung:</b> RPM-Paket (rpm)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">CentOS (Rocky Linux/AlmaLinux)</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Red Hat Enterprise Linux (RHEL)</li>
                <li><b>Zielgruppe:</b> Server-Admins, Unternehmen</li>
                <li><b>Eigenschaften:</b> Stabilität auf Unternehmensebene, wird oft für Server verwendet. Rocky Linux
                  und AlmaLinux entstanden als Nachfolger von CentOS.
                </li>
                <li><b>Desktop-Umgebungen:</b> GNOME, KDE.</li>
                <li><b>Dateinamenerweiterung:</b> RPM-Paket (rpm)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">Arch Linux</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Eigenständig</li>
                <li><b>Zielgruppe:</b> Fortgeschrittene Nutzer, die ihr System vollständig anpassen wollen</li>
                <li><b>Eigenschaften:</b> Rolling Release, minimalistisch, hohe Anpassbarkeit. Arch Linux erfordert eine
                  manuelle Installation und Konfiguration.
                </li>
                <li><b>Desktop-Umgebungen:</b> Benutzerdefiniert (der Nutzer wählt seine bevorzugte Desktop-Umgebung
                  selbst).
                </li>
                <li><b>Dateinamenerweiterung:</b> Pacman-Paket (pkg.tar.zst)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">Manjaro</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Arch Linux</li>
                <li><b>Zielgruppe:</b> Anfänger bis Fortgeschrittene, die ein Arch-basiertes System wollen</li>
                <li><b>Eigenschaften:</b> Benutzerfreundlich, mit grafischem Installer und regelmäßigen Updates. Manjaro
                  bringt die Vorteile von Arch ohne die komplizierte Installation.
                </li>
                <li><b>Desktop-Umgebungen:</b> XFCE (Standard), KDE, GNOME und andere.</li>
                <li><b>Dateinamenerweiterung:</b> Pacman-Paket (pkg.tar.zst)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">openSUSE</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Eigenständig</li>
                <li><b>Zielgruppe:</b> Entwickler, Unternehmen, fortgeschrittene Desktop-Nutzer</li>
                <li><b>Eigenschaften:</b> Sehr stabil, bietet sowohl ein Fixed-Release-Modell (Leap) als auch ein
                  Rolling-Release-Modell (Tumbleweed).
                </li>
                <li><b>Desktop-Umgebungen:</b> KDE (Standard), GNOME und andere.</li>
                <li><b>Dateinamenerweiterung:</b> RPM-Paket (rpm)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">Linux Mint</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Ubuntu</li>
                <li><b>Zielgruppe:</b> Anfänger, die eine traditionelle Desktop-Erfahrung wollen</li>
                <li><b>Eigenschaften:</b> Benutzerfreundlich, kommt mit Multimedia-Codecs und einer vertrauten
                  Benutzeroberfläche. Mint bietet eine „Out-of-the-Box“-Erfahrung.
                </li>
                <li><b>Desktop-Umgebungen:</b> Cinnamon (Standard), MATE, Xfce.</li>
                <li><b>Dateinamenerweiterung:</b> Debian-Paket (deb)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">Pop!_OS</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Ubuntu</li>
                <li><b>Zielgruppe:</b> Entwickler, Gamer</li>
                <li><b>Eigenschaften:</b> Optimiert für Entwickler und kreative Anwendungen, mit einer
                  benutzerfreundlichen GNOME-basierten Oberfläche. Native Unterstützung für NVIDIA-Grafikkarten.
                </li>
                <li><b>Desktop-Umgebung:</b> GNOME (modifiziert).</li>
                <li><b>Dateinamenerweiterung:</b> Debian-Paket (deb)</li>
              </ul>
            </div>

            <div>
              <h3 class="font-bold text-2xl pt-2">Kali Linux</h3>
              <ul class="list-disc">
                <li><b>Basis:</b> Debian</li>
                <li><b>Zielgruppe:</b> Sicherheitsexperten, Penetrationstester</li>
                <li><b>Eigenschaften:</b> Speziell für Sicherheitsüberprüfungen und Penetrationstests entwickelt, mit
                  einer Vielzahl von Werkzeugen für Sicherheitsanalysen.
                </li>
                <li><b>Desktop-Umgebung:</b> Xfce (Standard), GNOME, KDE.</li>
                <li><b>Dateinamenerweiterung:</b> Debian-Paket (deb)</li>
              </ul>
            </div>
          </div>
        </div>
        <!-- Linux Directory -->
        <div>

        </div>
        <!-- Wichtige Linux Befehle -->
        <div>
          <h2 class="font-bold text-3xl pt-2">Liste wichtiger Linux Befehle:</h2>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              1: <code class="bg-gray-700 p-1">ls</code>
            </h3>
            <p class="pl-4">
              Der Befehl <code class="bg-gray-700 p-1">ls</code> listet den Inhalt eines Verzeichnisses auf. Mit <code
                class="bg-gray-700 p-1">ls -l</code> wird der
              Inhalt
              in
              einer Liste angezeigt.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              2: <code class="bg-gray-700 p-1">cd</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">cd</code> wechseln Sie in ein anderes Verzeichnis. <code
                class="bg-gray-700 p-1">cd ..</code> bringt Sie ein Verzeichnis
              nach
              oben.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              3: <code class="bg-gray-700 p-1">alias</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">alias</code> können Sie Befehle umbenennen. <code
                class="bg-gray-700 p-1">alias
              ll='ls -l'</code> erstellt ein Alias für
              den
              Befehl <code class="bg-gray-700 p-1">ls -l</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              4: <code class="bg-gray-700 p-1">unalias</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">unalias</code> löschen Sie ein Alias. <code class="bg-gray-700 p-1">unalias
              ll</code> löscht das Alias für den Befehl
              <code class="bg-gray-700 p-1">ls
                -l</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              5: <code class="bg-gray-700 p-1">pwd</code>
            </h3>
            <p class="pl-4">
              Der Befehl <code class="bg-gray-700 p-1">pwd</code> zeigt Ihnen den Pfad des aktuellen Verzeichnisses an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              6: <code class="bg-gray-700 p-1">cp</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">cp</code> kopieren Sie Dateien. <code class="bg-gray-700 p-1">cp datei1
              datei2</code> kopiert <code class="bg-gray-700 p-1">datei1</code> nach
              <code class="bg-gray-700 p-1">datei2</code>.
              Du kannst auch ganze Verzeichnisse kopieren: <code class="bg-gray-700 p-1">cp -r verzeichnis1
              verzeichnis2</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              7: <code class="bg-gray-700 p-1">rm</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">rm</code> löschen Sie Dateien. <code class="bg-gray-700 p-1">rm
              datei</code> löscht die Datei <code>datei</code>.
              Vorsicht: Gelöschte Dateien können nicht wiederhergestellt werden!
              Um Verzeichnisse zu löschen, verwenden Sie <code class="bg-gray-700 p-1">rm -r verzeichnis</code>.
              Wenn du hingegen ein Verzeichnis mit Inhalt löschen möchtest, verwende <code class="bg-gray-700 p-1">rm
              -rf
              verzeichnis</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              8: <code class="bg-gray-700 p-1">mv</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">mv</code> verschieben Sie Dateien. <code class="bg-gray-700 p-1">mv
              datei1
              datei2</code> verschiebt <code class="bg-gray-700 p-1">datei1</code> nach
              <code class="bg-gray-700 p-1">datei2</code>.
              Um Dateien in ein anderes Verzeichnis zu verschieben, geben Sie den Zielordner an: <code
                class="bg-gray-700 p-1">mv datei
              verzeichnis</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              9: <code class="bg-gray-700 p-1">mkdir</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">mkdir</code> erstellen Sie Verzeichnisse. <code class="bg-gray-700 p-1">mkdir
              verzeichnis</code> erstellt ein
              Verzeichnis
              namens <code class="bg-gray-700 p-1">verzeichnis</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              10: <code class="bg-gray-700 p-1">man</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">man</code> rufen Sie die Bedienungsanleitung eines Befehls auf. Um die
              Handbuchseite des Befehls <code class="bg-gray-700 p-1">ls</code> anzuzeigen, geben Sie <code
                class="bg-gray-700 p-1">
              man ls</code> ein.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              11: <code class="bg-gray-700 p-1">touch</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">touch</code> erstellen Sie leere Dateien. <code class="bg-gray-700 p-1">touch
              datei</code> erstellt eine
              Datei
              namens <code class="bg-gray-700 p-1">datei</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              12: <code class="bg-gray-700 p-1">chmod</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">chmod</code> ändern Sie die Zugriffsrechte von Dateien und
              Verzeichnissen.
              Die grundlegenden Rechte, die eine Datei haben kann sind: <code class="bg-gray-700 p-1">r</code> (read),
              <code class="bg-gray-700 p-1">w</code> (write) und <code class="bg-gray-700 p-1">x</code> (execute).
              Einer der häufigsten Anwendungsfälle für <code class="bg-gray-700 p-1">chmod</code> ist es, eine Datei für
              den Benutzer ausführbar zu machen.
              Dafür verwenden Sie <code class="bg-gray-700 p-1">chmod u+x datei</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              13: <code class="bg-gray-700 p-1">exit</code>
            </h3>
            <p class="pl-4">
              Mit <code class="bg-gray-700 p-1">exit</code> beenden Sie die aktuelle Shell-Sitzung.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              14: <code class="bg-gray-700 p-1">sudo</code>
            </h3>
            <p>
              Dieser Befehl steht für "Superuser do".
              Mit <code class="bg-gray-700 p-1">sudo</code> führen Sie Befehle als Superuser aus. <code
                class="bg-gray-700 p-1">sudo
              befehl</code> führt den Befehl
              <code class="bg-gray-700 p-1">befehl</code> als Superuser aus.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              15: <code class="bg-gray-700 p-1">htop</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">htop</code> rufen Sie den interaktiven Prozessmonitor auf. Dieser zeigt
              Ihnen
              alle laufenden Prozesse auf Ihrem System an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              16: <code class="bg-gray-700 p-1">unzip</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">unzip</code> entpacken Sie ZIP-Archive. <code class="bg-gray-700 p-1">unzip
              datei.zip</code> entpackt die Datei
              <code class="bg-gray-700 p-1">datei.zip</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              17: <code class="bg-gray-700 p-1">apt, pacman, yum</code>
            </h3>
            <p>
              Diese Befehle sind Paketmanager für Debian-basierte Systeme (apt), Arch Linux (pacman) und Red
              Hat-basierte
              Systeme (yum).
              Mit <code class="bg-gray-700 p-1">apt install paket</code> installieren Sie ein Paket auf einem
              Debian-basierten
              System.
              Mit <code class="bg-gray-700 p-1">pacman -S paket</code> installieren Sie ein Paket auf einem Arch Linux
              System.
              Mit <code class="bg-gray-700 p-1">yum install paket</code> installieren Sie ein Paket auf einem Red
              Hat-basierten
              System.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              18: <code class="bg-gray-700 p-1">cat</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">cat</code> können Sie den Inhalt von Dateien anzeigen. <code
                class="bg-gray-700 p-1">cat datei</code> zeigt den Inhalt der Datei
              <code class="bg-gray-700 p-1">datei</code> an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              19: <code class="bg-gray-700 p-1">ps</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">ps</code> listen Sie alle laufenden Prozesse auf. <code
                class="bg-gray-700 p-1">ps aux</code> zeigt alle Prozesse
              detailliert an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              20: <code class="bg-gray-700 p-1">kill</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">kill</code> beenden Sie Prozesse. <code class="bg-gray-700 p-1">kill
              pid</code> beendet den Prozess mit der
              Prozess-ID <code class="bg-gray-700 p-1">pid</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              21: <code class="bg-gray-700 p-1">vim</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">vim</code> öffnen Sie den Vim-Editor. Vim ist ein leistungsstarker
              Texteditor für die
              Kommandozeile.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              22: <code class="bg-gray-700 p-1">history</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">history</code> rufen Sie die Liste der zuletzt ausgeführten Befehle auf.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              23: <code class="bg-gray-700 p-1">passwd</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">passwd</code> ändern Sie das Passwort eines Benutzers. <code
                class="bg-gray-700 p-1">passwd
              benutzer</code> ändert das Passwort
              des Benutzers <code class="bg-gray-700 p-1">benutzer</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              24: <code class="bg-gray-700 p-1">which</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">which</code> zeigt Ihnen den Pfad einer ausführbaren Datei an. <code
                class="bg-gray-700 p-1">which
              befehl</code> zeigt den Pfad
              des Befehls <code class="bg-gray-700 p-1">befehl</code> an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              25: <code class="bg-gray-700 p-1">shred</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">shred</code> löschen Sie Dateien sicher. <code class="bg-gray-700 p-1">shred
              datei</code> überschreibt die
              Datei
              <code class="bg-gray-700 p-1">datei</code> mehrmals, um sicherzustellen, dass sie nicht wiederhergestellt
              werden
              kann.
              Wenn du die Datei sofort löschen möchtest, verwende <code class="bg-gray-700 p-1">shred -u datei</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              26: <code class="bg-gray-700 p-1">less</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">less</code> können Sie Dateien seitenweise anzeigen. <code
                class="bg-gray-700 p-1">less datei</code> zeigt den Inhalt der
              Datei <code class="bg-gray-700 p-1">datei</code> an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              27: <code class="bg-gray-700 p-1">tail</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">tail</code> zeigen Sie die letzten Zeilen einer Datei an. <code
                class="bg-gray-700 p-1">tail datei</code> zeigt die letzten
              Zeilen der Datei <code class="bg-gray-700 p-1">datei</code> an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              28: <code class="bg-gray-700 p-1">head</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">head</code> zeigen Sie die ersten Zeilen einer Datei an. <code
                class="bg-gray-700 p-1">head datei</code> zeigt die ersten
              Zeilen der Datei <code class="bg-gray-700 p-1">datei</code> an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              29: <code class="bg-gray-700 p-1">grep</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">grep</code> suchen Sie nach einem Muster in Dateien. <code
                class="bg-gray-700 p-1">grep muster datei</code> sucht nach dem Muster <code class="bg-gray-700 p-1">muster</code>
              in der Datei <code class="bg-gray-700 p-1">datei</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              30: <code class="bg-gray-700 p-1">whoami</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">whoami</code> erfahren Sie, welcher Benutzer Sie sind.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              31: <code class="bg-gray-700 p-1">whatis</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">whatis</code> rufen Sie eine kurze Beschreibung eines Befehls auf. <code
                class="bg-gray-700 p-1">whatis befehl</code> zeigt eine kurze Beschreibung des Befehls <code
                class="bg-gray-700 p-1">befehl</code> an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              32: <code class="bg-gray-700 p-1">wc</code>
            </h3>
            <div>
              <p>
                Mit <code class="bg-gray-700 p-1">wc</code> zählen Sie Wörter, Zeilen und Zeichen in einer Datei. <code
                  class="bg-gray-700 p-1">wc datei</code> zählt die Wörter, Zeilen und Zeichen in der Datei <code
                  class="bg-gray-700 p-1">datei</code>.
              </p>
            </div>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              33: <code class="bg-gray-700 p-1">uname</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">uname</code> zeigen Sie Informationen über das Betriebssystem an. <code
                class="bg-gray-700 p-1">uname -a</code> zeigt alle Informationen an.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              34: <code class="bg-gray-700 p-1">find</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">find</code> suchen Sie nach Dateien und Verzeichnissen. <code
                class="bg-gray-700 p-1">find</code> sucht im aktuellen Verzeichnis nach Dateien und Verzeichnissen.
              Um es zu verwenden, befolge die folgende Syntax:
              <br>
              <code class="bg-gray-700 p-1">find [flags] [path] -name [expression]</code>
              Um nach einer Datei namens log.txt im aktuellen Verzeichnis zu suchen, gibst du Folgendes ein:
              <br>
              <code class="bg-gray-700 p-1">find ./ -name log.txt</code>
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              35: <code class="bg-gray-700 p-1">wget</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">wget</code> laden Sie Dateien aus dem Internet herunter. <code
                class="bg-gray-700 p-1">wget url</code> lädt die Datei von der URL <code
                class="bg-gray-700 p-1">url</code> herunter.
              So lädst du eine Python-Datei von einem GitHub-Repo herunter:
              <code class="bg-gray-700 p-1">wget https://raw.githubusercontent.com/user/repo/master/file.py</code>
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              36: <code class="bg-gray-700 p-1">tar</code>
            </h3>
            <p>
              Mit <code class="bg-gray-700 p-1">tar</code> erstellen und entpacken Sie Tar-Archive. Um ein Tar-Archiv zu
              erstellen, verwenden Sie <code class="bg-gray-700 p-1">tar -cvf archiv.tar datei1 datei2</code>.
              Um ein Tar-Archiv zu entpacken, verwenden Sie <code class="bg-gray-700 p-1">tar -xvf archiv.tar</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              37: <code class="bg-gray-700 p-1">read</code>
            </h3>
            <div>
              <p>
                Mit <code class="bg-gray-700 p-1">read</code> lesen Sie Benutzereingaben. <code class="bg-gray-700 p-1">read
                variable</code> liest die Benutzereingabe in die Variable <code class="bg-gray-700 p-1">variable</code>.
              </p>
              <div>
                Beispiel:
                <code class="bg-gray-700 p-1">echo "Wie ist dein Name?"</code>
                <code class="bg-gray-700 p-1">read name</code>
                <code class="bg-gray-700 p-1">echo "Hallo, $name!"</code>
              </div>
            </div>
          </div>
        </div>
        <!-- Wichtige Linux Operatoren -->
        <div>
          <h2 class="font-bold text-3xl pt-2">Wichtige Linux Befehlszeilen Operatoren:</h2>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              1: <code class="bg-gray-700 p-1">&lt;&lt;</code> Multi line input Redirection Operator
            </h3>
            <div>
              Der redirection operator <code class="bg-gray-700 p-1">&lt;&lt;</code> wird verwendet, um die Eingabe von
              der Shell oder einer Datei in ein anderes Programm oder eine Datei umzuleiten.
            </div>
            <div>
              <b>Beispiel:</b>
              <div>
                <code class="bg-gray-700 p-1">cat &lt;&lt; EOF > datei.txt</code>
                <p>
                  Dieser Befehl liest die Eingabe von der Shell und schreibt sie in die Datei <code
                    class="bg-gray-700 p-1">datei.txt</code>.
                  Der Befehl wird mit <code class="bg-gray-700 p-1">EOF</code> beendet.
                </p>
              </div>
            </div>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              2: <code class="bg-gray-700 p-1">&gt;</code> Ouput Redirect Command
            </h3>
            <div>
              Der ouput redirect command <code class="bg-gray-700 p-1">&gt;</code> wird verwendet, um die Ausgabe eines
              Befehls in eine Datei umzuleiten. Der Inhalt der Datei wird überschrieben.
            </div>
            <div>
              <b>Beispiel:</b>
              <div>
                <code class="bg-gray-700 p-1">ls > datei.txt</code>
                <p>
                  Dieser Befehl listet den Inhalt des aktuellen Verzeichnisses auf und speichert die Ausgabe in der
                  Datei
                  <code class="bg-gray-700 p-1">datei.txt</code>.
                </p>
              </div>
              <div>
                <code class="bg-gray-700 p-1">echo "Hello, World!" > datei.txt</code>
                <p>
                  Dieser Befehl schreibt den Text "Hello, World!" in die Datei <code
                    class="bg-gray-700 p-1">datei.txt</code>.
                </p>
              </div>
            </div>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              3: <code class="bg-gray-700 p-1">&gt;&gt;</code> Append Input Redirect Command
            </h3>
            <div>
              Der append redirect command <code class="bg-gray-700 p-1">&gt;&gt;</code> wird verwendet, um die Ausgabe
              eines Befehls an das Ende einer Datei anzuhängen.
            </div>
            <div>
              <b>Beispiel:</b>
              <div>
                <code class="bg-gray-700 p-1">ls >> datei.txt</code>
                <p>
                  Dieser Befehl listet den Inhalt des aktuellen Verzeichnisses auf und fügt die Ausgabe am Ende der
                  Datei
                  <code class="bg-gray-700 p-1">datei.txt</code> an.
                </p>
              </div>
            </div>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              4: <code class="bg-gray-700 p-1">1&gt;</code> Standard Output Redirection
            </h3>
            <p>
              Der standard output redirection command <code class="bg-gray-700 p-1">1&gt;</code> wird verwendet, um die
              Standardausgabe eines Befehls in eine Datei umzuleiten. Eigenlich ist <code
                class="bg-gray-700 p-1">&gt;</code>
              eine Abkürzung für <code class="bg-gray-700 p-1">1&gt;</code>.
            </p>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              5: <code class="bg-gray-700 p-1">2&gt;</code> Standard Error Redirection
            </h3>
            <p>
              Der standard error redirection command <code class="bg-gray-700 p-1">2&gt;</code> wird verwendet, um die
              Standardfehlerausgabe eines Befehls in eine Datei umzuleiten.
            </p>
            <div>
              Beispiel: <code class="bg-gray-700 p-1">ls nonexistentfile 2&gt; error.txt</code>
              <p>
                Dieser Befehl listet den Inhalt des aktuellen Verzeichnisses auf und leitet die Fehlerausgabe in die
                Datei
                <code class="bg-gray-700 p-1">error.txt</code>.
              </p>
            </div>
          </div>
          <div>
            <h3 class="font-bold text-2xl pt-3">
              6: <code class="bg-gray-700 p-1">3&gt;</code> Benutzerdefinierte Fehlerausgabe
            </h3>
            <p>
              Der benutzerdefinierte Fehlerausgabe-Redirektionsbefehl <code class="bg-gray-700 p-1">3&gt;</code> wird
              verwendet, um die benutzerdefinierte Fehlerausgabe eines Befehls in eine Datei umzuleiten.
            </p>
            <div>
              Beispiel: <code class="bg-gray-700 p-1">ls nonexistentfile 3&gt; customerror.txt</code>
              <p>
                Dieser Befehl listet den Inhalt des aktuellen Verzeichnisses auf und leitet die benutzerdefinierte
                Fehlerausgabe in die Datei <code class="bg-gray-700 p-1">customerror.txt</code>.
              </p>
            </div>
          </div>
          <!-- Linux Berechtigungen -->
          <div>
            <h2 class="font-bold text-3xl pt-2">Linux Berechtigungen:</h2>
            <h3 class="font-bold text-xl pt-2"></h3>
            <h3 class="font-bold text-xl pt-2">User Accounts and Groups</h3>
            <h3 class="font-bold text-xl pt-2">Managen von Dateibesitzt und Berechtigungen</h3>
          </div>
          <!-- Netzwerk Grundlagen -->
          <div>
            <h2 class="font-bold text-3xl pt-2">Netzwerk Grundlagen:</h2>
          </div>
          <!-- Bash Scripte -->
          <div>
            <h2 class="font-bold text-3xl pt-2">Bash scripte:</h2>
          </div>
          <!-- Weitere Ressourcen -->
          <div>
            Other good resources:
            <a href="https://www.netacad.com/courses/os-it/ndg-linux-essentials">https://www.netacad.com/courses/os-it/ndg-linux-essentials</a>
          </div>
          <!-- Practice Exams -->
          <div>
            <h2 class="font-bold text-3xl pt-2">Practice Exams:</h2>
            <div>
              <a href="https://www.itexams.com/exam/010-150">https://www.itexams.com/exam/010-150</a>
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
  components: {
    ArticleHeader
  },
  data() {
    return {
      articleHeaderDate: '2024-05-12',
      articleHeaderTitel: 'Linux Essentials (010-160) Cheatsheet',
      articleHeaderText: 'Kurze Übersicht über die wichtigsten Linux Befehle für die LPI 010-160 Prüfung.'
    }
  }
};
</script>