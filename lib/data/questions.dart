import 'package:flutter_quiz/model/question.dart';

const List<Question> questions = [
  Question('What are the main building blocks of Flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ], 0),
  Question('How are Flutter UIs built?', [
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By combining widgets in code',
    'By using Xcode for iOS and Android Studio for Android',
  ], 2),
  Question('What is the purpose of a StatefulWidget?', [
    'Update data as UI changes',
    'Update UI as data changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ], 1),
  Question('What happens if you change data in a StatelessWidget?', [
    'The UI is updated',
    'The cloests StatefulWidget is updated',
    'All nested StatefulWidgets are updated',
    'The UI is not updated',
  ], 3),
  Question('How should you update data inside of StatefulWidgets?', [
    'By calling updateData()',
    'By calling setState()',
    'By calling updateUI()',
    'By calling updateState()',
  ], 1),
];
