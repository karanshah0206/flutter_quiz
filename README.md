# Flutter Quiz

Flutter Quiz is a simple quiz app built with Flutter. It has the following features:
- Welcome page (because why not)
- MCQ-style quiz page that sequentially moves through each question; the user must select a single correct option.
- Results page which shows the number of correctly solved questions, the total number of questions, and delineates all questions, the user's answer to each question, the correct answer to each question, and whether the user solved the question correctly.

I've created it on my journey to learning Flutter, but users looking for an MCQ-style quiz app that is easy to use, maintain, and update can clone this project and modify the questions to their own preference to get a useful product for themselves.

## Setup

First off, if you haven't already, get the [Flutter SDK](https://docs.flutter.dev/get-started/install).

Next, use the following commands to clone this repo, install dependencies, and run it:
```
git clone https://github.com/karanshah0206/flutter_quiz.git
cd flutter_quiz
flutter pub get
flutter run
```

Please note that I have previously built this for Android and iOS. If you're looking to build for any of these platforms as well, you should strongly consider updating the package/bundle identifiers and other properties in the "android" and "ios" directories to suit your own requirements and debug environments.

## Modifying Quiz Questions

All quiz questions, available answer options, and correct answer indicator are stored inside `lib/data/questions.dart`. Inspect this file for yourself; it leverages the `Question` type that has been specified in `lib/model/question.dart`.

A `Question` takes as arguments:
- a `String` that represents the question text
- a `List<String>` where each item is an answer option
- an `int` that indicates index of the correct answer option

You can hard-code an arbitrary number of questions and there isn't any limitation on the number of answer choices either. Count of answer choices can also freely vary for each question.

Happy quizzing.
