<script>
import {defineComponent} from 'vue'

export default defineComponent({
    name: "LebenszyklusLambdaFunktionen"
})
</script>

<template>
    <div class="LebensZyklusVonLambdaFunktionen">
        <div class="bg-black">
            <div class="text-white text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
                <ArticleHeader
                        :date="articleHeaderDate"
                        :title="articleHeaderTitel"
                        :text="articleHeaderText"></ArticleHeader>
                <div class="p-4 bg-black text-left">
                    <h2 class="text-2xl font-bold text-white mb-4">Der Lebenszyklus von Lambda-Funktionen</h2>
                    <p class="text-white mb-4">Lambda-Funktionen durchlaufen drei wesentliche Phasen während ihres
                        Lebenszyklus in einer Serverless-Umgebung.</p>
                    <div class="mb-4">
                        <h3 class="text-xl font-semibold text-white mb-2">1. Initialisierung</h3>
                        <p class="text-white mb-2">In dieser Phase wird die Funktion initialisiert, wobei Ressourcen wie
                            Speicher und CPU allokiert werden. Auch externe Abhängigkeiten werden geladen.</p>
                    </div>
                    <div class="mb-4">
                        <h3 class="text-xl font-semibold text-white mb-2">2. Ausführung</h3>
                        <p class="text-white mb-2">Die Hauptphase, in der die Funktion aktiviert wird, um Anfragen zu
                            verarbeiten. Sie führt den zugewiesenen Code aus und reagiert auf Ereignisse.</p>
                    </div>
                    <div>
                        <h3 class="text-xl font-semibold text-white mb-2">3. Beendigung</h3>
                        <p class="text-white mb-2">Nach Abschluss der Aufgabe oder bei Inaktivität wird die Funktion
                            beendet. Hier erfolgt die Freigabe von Ressourcen und die Speicherung von Ergebnissen.</p>
                    </div>
                </div>
                <div class="my-4">
                    <h2 class="text-2xl font-bold text-white mb-4">AWS Lambda Cold und Warm Starts</h2>
                    <p>
                        Cold und Warm Starts sind Begriffe, die den Unterschied im Verhalten von AWS Lambda-Funktionen
                        beschreiben, wenn sie aktiviert werden.

                    </p>
                    <h3 class="text-xl font-bold underline">Cold Start:</h3>
                    <p>
                        Ein Cold Start tritt auf, wenn eine Lambda-Funktion zum ersten Mal aktiviert wird
                        oder nach einer längeren Inaktivitätsperiode. Dabei muss die Plattform die Ressourcen
                        bereitstellen und die Funktion initialisieren, was zu einer längeren Aktivierungszeit führt.
                        Cold Starts können die Leistung beeinträchtigen, insbesondere bei zeitkritischen Anwendungen.
                    </p>
                    <h3 class="text-xl font-bold underline">Warm Start:</h3>
                    <p>
                        Ein Warm Start tritt auf, wenn eine Lambda-Funktion bereits aktiviert wurde und
                        wiederholt aufgerufen wird, während sie noch in einem aktiven Zustand ist. In diesem Fall sind
                        die Ressourcen bereits zugewiesen und die Funktion ist initialisiert, was zu einer schnelleren
                        Aktivierung führt. Warm Starts sind in der Regel schneller und effizienter als Cold Starts und
                        werden daher bevorzugt, um die Antwortzeiten zu optimieren.

                        Die Unterscheidung zwischen Cold und Warm Starts ist wichtig für die Leistungsoptimierung von
                        Lambda-Funktionen, insbesondere bei Anwendungen mit variabler Arbeitslast und kurzen
                        Antwortzeiten. Entwickler können verschiedene Techniken verwenden, um Cold Starts zu minimieren,
                        z. B. durch die Verwendung von VPC-Netzwerken, die Optimierung der Funktionen für eine
                        schnellere Ausführung und die Vermeidung von übermäßigen Abhängigkeiten.
                    </p>
                    <h3 class="text-xl font-bold underline py-2">Beste Praxis: Minimieren Sie die Kaltstartzeiten</h3>
                    <p class="py-2">
                        Beim Aufruf einer Lambda-Funktion wird die Anforderung an eine Ausführungsumgebung
                        weitergeleitet, um sie zu verarbeiten. Wenn die Umgebung nicht bereits initialisiert ist, erhöht
                        sich die Startzeit der Umgebung und damit die Latenz. Neue Umgebungen werden erstellt, wenn eine
                        Funktion für einige Zeit nicht verwendet wurde, wenn mehr gleichzeitige Aufrufe erforderlich
                        sind oder wenn eine Funktion aktualisiert wird. Die Erstellung dieser Umgebungen kann zu Latenz
                        bei den Aufrufen führen, die an eine neue Umgebung weitergeleitet werden. Diese Latenz wird als
                        Kaltstart bezeichnet. Für die meisten Anwendungen ist diese zusätzliche Latenz kein Problem.
                        Allerdings kann sie bei einigen synchronen Modellen die optimale Leistung beeinträchtigen. Es
                        ist entscheidend, die Latenzanforderungen zu verstehen und Ihre Funktion für optimale Leistung
                        zu optimieren.
                    </p>
                    <p class="py-2">
                        Nach der Optimierung Ihrer Funktion ist eine weitere Möglichkeit, Kaltstarts zu minimieren, die
                        Verwendung von vorher festgelegter Konkurrenz. Vorher festgelegte Konkurrenz ist eine Funktion
                        von Lambda, die gleichzeitige Ausführungsumgebungen vor den Aufrufen vorbereitet.
                    </p>
                    <p class="py-2">
                        Wenn Sie für Ihre Workload vorhersehbare Funktionsstartzeiten benötigen, gewährleistet vorher
                        festgelegte Konkurrenz die geringstmögliche Latenz. Diese Funktion hält Ihre Funktionen
                        initialisiert und warm und bereit, um in zweistelligen Millisekunden bei der von Ihnen
                        festgelegten Skalierung zu reagieren. Im Gegensatz zu Lambda auf Abruf bedeutet dies, dass alle
                        Einrichtungsaktivitäten vor dem Aufruf erfolgen, einschließlich der Ausführung des
                        Initialisierungscodes.

                        Weitere Informationen finden Sie im AWS Lambda-Entwicklerhandbuch unter Skalierung und
                        Konkurrenz.
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
            articleHeaderTitel: 'Lebenszyklus von AWS Lambda Funktionen',
            articleHeaderText: 'Der Lebenszyklus von Lambda-Funktionen umfasst die verschiedenen Phasen, die eine Serverless-Funktion durchläuft, von ihrer Erstellung bis zur Ausführung und schließlich zur Beendigung. Diese Zyklusphasen, wie Initialisierung, Ausführung und Aufräumarbeiten, sind entscheidend für das Verständnis und die Optimierung von Lambda-Funktionen in Cloud-basierten Anwendungen. Ein gründliches Verständnis dieses Zyklus ermöglicht Entwicklern, ihre Funktionen effizient zu gestalten und die Leistung sowie die Kosten in der Cloud-Umgebung zu optimieren.'
        }
    }
};
</script>