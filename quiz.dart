import 'dart:io';

void main() {
  final List<Question> questions = [
    Question("Dart'ı geliştiren şirketin adı nedir?", "Google"),
    Question("Dart dilinin kullanıldığı bir web framework hangisidir?", "Flutter"),
    Question("Dart dilinde bir değişkeni tanımlamak için kullanılan anahtar kelime nedir?", "var"),
    Question("Dart dilinde bir değişkenin geç başlatılmasını veya değer atanmasını geciktirmek için kullanılan anahtar kelime nedir?", "late"),
    Question("Dart dilinde bir fonksiyonun herhangi bir değer döndürmediğini belirtmek için kullanılan anahtar kelime nedir?", "void"),
    Question("Dart dilinde bir değişkenin değerini değiştirmeyi engellemek için hangi anahtar kelime kullanılır?", "final"),
    Question("Dart dilinde listeler için kullanılan veri yapısı nedir?", "List"),
    Question("Dart dilinde bir döngüde sonraki adıma atlamak için kullanılan anahtar kelime nedir?", "continue"),
    Question("Dart dilinde veri türlerini dönüştürmek için kullanılan ifade nedir?", "as"),
    Question("Dart dilinde koşullu ifadeleri kontrol etmek için kullanılan anahtar kelime nedir?", "if"),
    Question("Dart dilinde private bir değişken tanımlamak için kullanılan simge nedir?", "_"),
    Question("Dart dilinde bir sınıfın kurucu metodunu ifade etmek için kullanılan terim nedir?", "constructor"),
    Question("Dart dilinde bir dosyadan veri okumak için kullanılan sınıf nedir?", "File"),
    Question("Dart'ta bir dizeden bir alt dize çıkarmak için kullanılan yöntem adı nedir?", "substring"),
    Question("Dart dilinde asenkron programlama yapmak için kullanılan anahtar kelime nedir?", "async"),
    Question("Dart dilinde bir işlemi belirli bir süre geciktirmek için kullanılan fonksiyon nedir?", "Future.delayed"),
    Question("Dart'ta bir dizeden (String) başka bir veri türüne dönüştürmek için kullanılan metod nedir?", "parse"),
    Question("Dart dilinde bir değerin sabit olduğunu ifade etmek için kullanılan anahtar kelime nedir?", "final"),
    Question("Dart dilinde bir fonksiyonu bir değişkene atamak için kullanılan ifade nedir?", "Function"),
    Question("Dart dilinde bir sınıfın üyesine başka bir sınıftan erişmek için kullanılan anahtar kelime nedir?", "super"),
  ];

  final Quiz quiz = Quiz(questions);
  quiz.start();
}

class Question {
  final String text;
  final String answer;

  Question(this.text, this.answer);
}

class Quiz {
  final List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (int i = 0; i < questions.length; i++) {
      final question = questions[i];
      print("Soru ${i + 1}: ${question.text}");
      String userAnswer = userInput();
      if (userAnswer.toLowerCase() == question.answer.toLowerCase()) {
        score++;
        print("Doğru!");
      } else {
        print("Yanlış. Doğru Cevap: ${question.answer}");
      }
    }

    print("Quiz tamamlandı. Score: $score/${questions.length}");
  }

  String userInput() {
    print("Cevap:");
    return stdin.readLineSync() ?? "";
  }
}
