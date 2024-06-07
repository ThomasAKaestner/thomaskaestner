<script setup>

</script>

<template>
  <div class="bg-black text-white">
    <div class="text-left max-w-3xl mx-auto py-12 md:py-24 px-4 sm:px-6 xl:max-w-5xl xl:px-0">
      <ArticleHeader
          :date="articleHeaderDate"
          :title="articleHeaderTitel"
          :text="articleHeaderText"></ArticleHeader>
      <div>
        Die SOLID Prinzipien sind fünf Designprinzipien, die helfen sollen, Software zu entwickeln, die einfach zu
        warten und zu erweitern ist.
      </div>
      <!-- Single Responsibility Principle -->
      <div class="mb-4">
        <h3 class="text-xl font-bold my-4">1. Single Responsibility Principle (SRP)</h3>
        <div>
          Eine Klasse soll nur einen Grund haben zu existieren. Das bedeutet, dass eine Klasse nur eine Verantwortung
          haben sollte.
        </div>
        <Terminal :code="SRPfileCode"></Terminal>
        <div>
          <h3>Wieso sollte eine Klasse nur einen Grund haben zu existieren?</h3>
          <p>
            Wenn eine Klasse mehrere Verantwortungen hat, wird der Code schwerer zu warten und zu erweitern. Wenn eine
            Klasse mehrere Verantwortungen hat, wird der Code schwerer zu warten und zu erweitern.
          </p>
        </div>
      </div>
      <!-- Open/Closed Principle -->
      <div class="mb-4">
        <h3 class="text-xl font-bold my-4">Open/Closed Principle</h3>
        <div>
          Eine Klasse sollte offen für Erweiterungen sein, aber geschlossen für Modifikationen. Das bedeutet, dass eine
          Klasse erweitert werden kann, ohne den bestehenden Code zu ändern.
        </div>
        <Terminal :code="OCPFileCode"></Terminal>

      </div>

      <!-- Liskov Substitution Principle -->
      <div class="mb-4">
        <h3 class="text-xl font-bold my-4">Liskov Substitution Prinzp</h3>
        <div>
          Eine Klasse sollte durch ihre Subklassen ersetzbar sein, ohne dass sich das Verhalten des Programms ändert.
          Dies bedeuted, dass eine Subklasse alle Methoden der Basisklasse implementieren sollte.
        </div>
        <Terminal :code="LSPFileCode"></Terminal>

      </div>

      <!-- Integration Segregation Principle -->
      <div class="mb-4">
        <h3 class="text-xl font-bold my-4">Integration Segregation Prinzip</h3>
        <div>
          Eine Klasse sollte nicht gezwungen sein, Methoden zu implementieren, die sie nicht benötigt. Das bedeutet,
          dass
          eine Klasse nur die Methoden implementieren sollte, die sie benötigt.
        </div>
        <Terminal :code="ISPFileCode"></Terminal>
      </div>

      <!-- Dependency Inversion Principle -->
      <div class="mb-4">
        <h3 class="text-xl font-bold my-4">Dependency Inversion Prinzip</h3>
        <div>
          Das letzte D der SOLID-Prinzipien steht für Dependency Inversion Principle (DIP), auf Deutsch Prinzip der
          Abhängigkeitsumkehrung.

          Es besagt, dass Module von Abstraktionen und nicht von Konkretionen abhängen sollen.

          Einfach ausgedrückt: Module sollten nicht direkt von anderen Modulen abhängig sein, sondern von
          Schnittstellen, die diese definieren.

          Dies ermöglicht eine flexiblere und wartbarere Codebasis, da Änderungen an konkreten Implementierungen die
          abhängigen Module nicht beeinträchtigen.
        </div>
        <Terminal :code="DIFileCode"></Terminal>
      </div>
    </div>
  </div>
</template>

<script>
import ArticleHeader from "../../components/articleHeader/ArticleHeader.vue";
import Terminal from "@/components/Terminal.vue";

export default {
  components: {
    ArticleHeader,
    Terminal
  },
  data() {
    return {
      articleHeaderDate: '2020-01-05',
      articleHeaderTitel: 'SOLID Prinzipien in PHP',
      articleHeaderText: 'Die SOLID-Prinzipien sind grundlegende Designprinzipien, die Entwicklern helfen, sauberen und wartbaren Code zu schreiben. In diesem Artikel werden die fünf SOLID-Prinzipien erläutert und anhand von Beispielen in PHP demonstriert.',
      SRPfileCode: `// Single Responsibility Principle

// Shouldn't do
class Report {
    public function generate() {
        // generating report
    }

    public function saveToFile($filename) {
        // save report to file
    }
}

// Should do
class Report {
    public function generate() {
        // generating report
    }
}

class ReportSaver {
    public function saveToFile(Report $report, $filename) {
        // save report to file
    }
}`,
      OCPFileCode: `// Open Close Principle

// Shouldn't do
class Rectangle {
    public $width;
    public $height;
}

function area($rectangle) {
    return $rectangle->width * $rectangle->height;
}

// Should do
interface Shape {
    public function area();
}

class Rectangle implements Shape {
    public $width;
    public $height;

    public function area() {
        // w * h
    }
}

class Circle implements Shape {
    public $radius;

    public function area() {
        // πr2
    }
}`,
      LSPFileCode: `// Liskov Substitution Principle

// Shouldn't do
class Animal {
    public function jump() {
        // code for jumping
    }
}

class Snail extends Animal {
    public function jump() {
        // Sanil can't jump
    }
}

// Good example
abstract class Animal {
    abstract public function eat();
}

class Snail extends Bird {
    public function eat() {
        // every animal can eat
    }
}

class Tiger extends Bird {
    public function eat() {
        // every animal can eat
    }
}`, ISPFileCode: `// Interface Segregation Principle

// Shouldn't do
interface Human {
    public function walk();
    public function swim(); // not everyone can swim
}

// Should do
interface Walkable {
    public function walk();
}

interface Swimmable {
    public function swim();
}

class People implements Walkable, Swimmable {
    public function walk() {
        // walking
    }

    public function swim() {
        // swimming
    }
}`, DIFileCode: `
// Dependency Inversion Principle

// Shouldn't do
class Book {
    public function getContent() {
        // return contents
    }
}

class Printer {
    public function printBook(Book $book) {
        $content = $book->getContent();
        // print the content
    }
}
// Dependency Inversion Principle

// Should do
interface Printable {
    public function getContent();
}

class Book implements Printable {
    public function getContent() {
        return "This is the book content";
    }
}

class Article implements Printable {
    public function getContent() {
        return "This is the article content";
    }
}

class Printer {
    public function printContent(Printable $printable) {
        $content = $printable->getContent();
        echo "Printing content: " . $content;
    }
}`
    }
  }
};
</script>