import '../models/question_model.dart';

/// Local question bank used when AI service is unavailable
/// Provides 20 questions per category and difficulty level
class FallbackQuestions {
  static List<QuestionModel> getQuestions(String category, String difficulty) {
    switch (category.toUpperCase()) {
      case 'SQL':
        return difficulty == 'Easy' ? _sqlEasy : _sqlHard;
      case 'FLUTTER':
        return difficulty == 'Easy' ? _flutterEasy : _flutterHard;
      case 'DART':
        return difficulty == 'Easy' ? _dartEasy : _dartHard;
      case 'GENERAL PROGRAMMING':
        return difficulty == 'Easy' ? _generalEasy : _generalHard;
      default:
        return _generalEasy;
    }
  }

  // SQL Easy Questions
  static final List<QuestionModel> _sqlEasy = [
    QuestionModel(
      question: 'What does SQL stand for?',
      options: [
        'Structured Query Language',
        'Simple Question Language',
        'Structured Question List',
        'System Query Language',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which SQL statement is used to extract data from a database?',
      options: ['SELECT', 'GET', 'EXTRACT', 'OPEN'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which SQL statement is used to update data in a database?',
      options: ['MODIFY', 'UPDATE', 'SAVE', 'CHANGE'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL statement is used to delete data from a database?',
      options: ['REMOVE', 'DELETE', 'COLLAPSE', 'DROP'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL statement is used to insert new data in a database?',
      options: ['ADD NEW', 'INSERT INTO', 'ADD RECORD', 'INSERT NEW'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'With SQL, how do you select a column named "FirstName" from a table named "Persons"?',
      options: [
        'SELECT Persons.FirstName',
        'SELECT FirstName FROM Persons',
        'EXTRACT FirstName FROM Persons',
        'GET FirstName FROM Persons',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'With SQL, how do you select all the columns from a table named "Persons"?',
      options: [
        'SELECT *.Persons',
        'SELECT Persons',
        'SELECT * FROM Persons',
        'SELECT ALL FROM Persons',
      ],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question:
          'With SQL, how can you return the number of records in the "Persons" table?',
      options: [
        'SELECT COUNT(*) FROM Persons',
        'SELECT NUMBER(*) FROM Persons',
        'SELECT LEN(*) FROM Persons',
        'SELECT RECORDS FROM Persons',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which SQL keyword is used to sort the result-set?',
      options: ['SORT', 'ORDER BY', 'SORT BY', 'ORDER'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL statement is used to create a new table?',
      options: ['CREATE TABLE', 'NEW TABLE', 'MAKE TABLE', 'BUILD TABLE'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the correct SQL syntax for inserting a new record?',
      options: [
        'INSERT VALUES INTO table_name',
        'INSERT INTO table_name VALUES',
        'ADD INTO table_name VALUES',
        'INSERT table_name VALUES',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL clause is used to filter records?',
      options: ['FILTER', 'WHERE', 'HAVING', 'IF'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the SQL DISTINCT keyword do?',
      options: [
        'Sorts records',
        'Returns only unique values',
        'Deletes duplicate records',
        'Counts records',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which SQL JOIN returns all records when there is a match in either table?',
      options: ['INNER JOIN', 'LEFT JOIN', 'FULL OUTER JOIN', 'RIGHT JOIN'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is the purpose of the SQL GROUP BY statement?',
      options: [
        'To sort data',
        'To group rows that have the same values',
        'To filter data',
        'To join tables',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL function returns the total sum of a numeric column?',
      options: ['TOTAL()', 'SUM()', 'ADD()', 'COUNT()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the SQL AVG() function do?',
      options: [
        'Calculates average value',
        'Adds values',
        'Counts values',
        'Finds maximum value',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which SQL keyword is used to retrieve a maximum value?',
      options: ['TOP', 'MAX', 'MAXIMUM', 'UPPER'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does NULL represent in SQL?',
      options: ['Zero', 'Empty string', 'Unknown or missing value', 'False'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'Which SQL statement is used to add a new column to a table?',
      options: [
        'ADD COLUMN',
        'ALTER TABLE ADD',
        'MODIFY TABLE',
        'INSERT COLUMN',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // SQL Hard Questions
  static final List<QuestionModel> _sqlHard = [
    QuestionModel(
      question: 'What is the difference between INNER JOIN and OUTER JOIN?',
      options: [
        'No difference, they are aliases',
        'INNER JOIN returns only matching rows, OUTER JOIN returns all rows from one or both tables',
        'OUTER JOIN is faster',
        'INNER JOIN can join more than 2 tables',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which normal form eliminates transitive dependencies?',
      options: ['1NF', '2NF', '3NF', 'BCNF'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is a database index primarily used for?',
      options: [
        'Data backup',
        'Improve query performance',
        'Data encryption',
        'Table relationships',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of a SQL view?',
      options: [
        'Store data permanently',
        'Virtual table based on result-set of an SQL statement',
        'Backup mechanism',
        'Transaction log',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does ACID stand for in database transactions?',
      options: [
        'Atomicity, Consistency, Isolation, Durability',
        'Access, Control, Identity, Data',
        'Authentication, Correctness, Integrity, Distribution',
        'Aggregate, Constraint, Index, Database',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is a stored procedure?',
      options: [
        'A temporary table',
        'A prepared SQL statement that can be saved and reused',
        'A database backup',
        'A type of index',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between DELETE and TRUNCATE?',
      options: [
        'No difference',
        'DELETE can be rolled back, TRUNCATE cannot; TRUNCATE is faster',
        'TRUNCATE is slower',
        'DELETE removes table structure',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a foreign key constraint?',
      options: [
        'Uniqueness constraint',
        'Reference to primary key in another table',
        'Index type',
        'Data type',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the HAVING clause?',
      options: [
        'Filter rows before grouping',
        'Filter groups after aggregation',
        'Sort results',
        'Join tables',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a subquery?',
      options: [
        'A query within another query',
        'A type of JOIN',
        'A table alias',
        'An index optimization',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is a correlated subquery?',
      options: [
        'A subquery that executes once',
        'A subquery that references outer query',
        'A subquery in WHERE clause',
        'A subquery with GROUP BY',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is database normalization?',
      options: [
        'Data backup process',
        'Process of organizing data to reduce redundancy',
        'Performance optimization',
        'Security measure',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a composite key?',
      options: [
        'A single primary key',
        'Combination of two or more columns to uniquely identify rows',
        'A foreign key',
        'An index type',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the COALESCE function do?',
      options: [
        'Joins tables',
        'Returns the first non-null value in a list',
        'Counts rows',
        'Sorts data',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a clustered index?',
      options: [
        'Index on multiple columns',
        'Index that determines physical order of data',
        'Temporary index',
        'Foreign key index',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between UNION and UNION ALL?',
      options: [
        'No difference',
        'UNION removes duplicates, UNION ALL includes all rows',
        'UNION ALL is slower',
        'UNION joins tables',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a trigger in SQL?',
      options: [
        'A type of query',
        'Automatically executed procedure in response to events',
        'An index',
        'A constraint',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is deadlock in database systems?',
      options: [
        'Server crash',
        'Situation where two transactions wait for each other',
        'Slow query',
        'Connection timeout',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the EXISTS operator?',
      options: [
        'Check if table exists',
        'Check if subquery returns any rows',
        'Verify data type',
        'Test for NULL values',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a materialized view?',
      options: [
        'Regular view',
        'View that stores query results physically',
        'Temporary table',
        'Index type',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // Flutter Easy Questions
  static final List<QuestionModel> _flutterEasy = [
    QuestionModel(
      question: 'What is Flutter?',
      options: [
        'A backend framework',
        'An open-source UI toolkit by Google',
        'A database',
        'A programming language',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which programming language is used in Flutter?',
      options: ['Java', 'Kotlin', 'Dart', 'Swift'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is a Widget in Flutter?',
      options: [
        'A function',
        'A building block of UI',
        'A database table',
        'A state manager',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget is used for scrollable list in Flutter?',
      options: ['Container', 'ListView', 'Column', 'Stack'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does StatelessWidget mean?',
      options: [
        'Widget with mutable state',
        'Widget that cannot change',
        'Widget without UI',
        'Widget for navigation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does StatefulWidget mean?',
      options: [
        'Widget that never changes',
        'Widget with mutable state',
        'Widget for backend',
        'Widget for routing',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which method is called to update the UI in StatefulWidget?',
      options: ['update()', 'setState()', 'rebuild()', 'refresh()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the Scaffold widget?',
      options: [
        'Database connection',
        'Provides basic material design structure',
        'State management',
        'Animation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget is used to display text in Flutter?',
      options: ['Label', 'Text', 'TextView', 'TextWidget'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the main.dart file?',
      options: [
        'Configuration file',
        'Entry point of Flutter app',
        'Test file',
        'Asset file',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget is used for buttons in Flutter?',
      options: ['Button', 'ElevatedButton', 'ClickButton', 'PressButton'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is Hot Reload in Flutter?',
      options: [
        'App restart',
        'Quickly see code changes without losing state',
        'Database refresh',
        'UI reset',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which widget is used for layout with multiple children in a row?',
      options: ['Column', 'Row', 'Stack', 'ListView'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which widget is used for layout with multiple children in a column?',
      options: ['Row', 'Column', 'Stack', 'GridView'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is pubspec.yaml used for?',
      options: [
        'Code configuration',
        'Package dependencies and project metadata',
        'UI design',
        'Testing',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget is used to add padding in Flutter?',
      options: ['Margin', 'Padding', 'Space', 'Gap'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is MaterialApp widget used for?',
      options: [
        'Display text',
        'Root widget for material design apps',
        'Navigation only',
        'State management',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget is used for text input in Flutter?',
      options: ['InputText', 'TextField', 'TextInput', 'EditText'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the Container widget?',
      options: [
        'List display',
        'Versatile box model widget',
        'Text display',
        'Navigation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which command is used to create a new Flutter project?',
      options: [
        'flutter new',
        'flutter create',
        'flutter init',
        'flutter start',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // Flutter Hard Questions
  static final List<QuestionModel> _flutterHard = [
    QuestionModel(
      question:
          'What is the difference between StatelessWidget and StatefulWidget?',
      options: [
        'No difference',
        'StatelessWidget is immutable, StatefulWidget can rebuild with new state',
        'StatefulWidget is faster',
        'StatelessWidget handles events better',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the widget tree in Flutter?',
      options: [
        'File structure',
        'Hierarchical structure of widgets',
        'Database schema',
        'Build configuration',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of BuildContext?',
      options: [
        'Database connection',
        'Location of widget in widget tree',
        'Animation controller',
        'Network client',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is InheritedWidget used for?',
      options: [
        'UI layout',
        'Efficiently propagate data down the widget tree',
        'Navigation',
        'Animation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between hot reload and hot restart?',
      options: [
        'No difference',
        'Hot reload preserves state, hot restart resets app',
        'Hot restart is faster',
        'Hot reload resets state',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a Future in Dart/Flutter?',
      options: [
        'A widget',
        'Represents potential value or error available in the future',
        'A layout tool',
        'A state manager',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a Stream in Dart/Flutter?',
      options: [
        'Video player',
        'Sequence of asynchronous events',
        'Navigation flow',
        'Animation sequence',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of Keys in Flutter?',
      options: [
        'Database keys',
        'Preserve state when widgets move in tree',
        'API keys',
        'Navigation identifiers',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the const keyword used for in Flutter?',
      options: [
        'Variable declaration',
        'Create compile-time constant widgets for performance',
        'Type declaration',
        'Import statement',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is Provider package used for?',
      options: [
        'Database access',
        'State management and dependency injection',
        'UI layout',
        'Animation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of GlobalKey?',
      options: [
        'Access widgets across the widget tree',
        'API authentication',
        'Database indexing',
        'File path',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is FutureBuilder used for?',
      options: [
        'Navigation',
        'Build widget based on Future snapshot',
        'Animation',
        'Layout',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is StreamBuilder used for?',
      options: [
        'Video streaming',
        'Build widget based on Stream snapshot',
        'File streaming',
        'Network monitoring',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of dispose() method?',
      options: [
        'Delete widget',
        'Clean up resources when State object is removed',
        'Refresh UI',
        'Initialize state',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is an AnimationController?',
      options: [
        'Video controller',
        'Controls animation progress',
        'Game controller',
        'Layout controller',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'What is the difference between mainAxisAlignment and crossAxisAlignment?',
      options: [
        'No difference',
        'mainAxis is primary direction, crossAxis is perpendicular',
        'mainAxis is horizontal only',
        'crossAxis is vertical only',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a Listenable in Flutter?',
      options: [
        'Audio player',
        'Object that notifies listeners when it changes',
        'Event handler',
        'Database observer',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of LayoutBuilder?',
      options: [
        'Create layouts',
        'Build widget tree based on parent constraints',
        'Design tool',
        'Code generator',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is RepaintBoundary used for?',
      options: [
        'UI refresh',
        'Create separate layer for performance optimization',
        'Border widget',
        'Layout boundary',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of didUpdateWidget lifecycle method?',
      options: [
        'Initialize widget',
        'Called when widget configuration changes',
        'Dispose resources',
        'Build UI',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // Dart Easy Questions
  static final List<QuestionModel> _dartEasy = [
    QuestionModel(
      question: 'What is Dart?',
      options: [
        'A database',
        'A programming language',
        'A framework',
        'An IDE',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Who developed Dart?',
      options: ['Microsoft', 'Google', 'Apple', 'Facebook'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used to declare a variable in Dart?',
      options: ['let', 'var', 'variable', 'declare'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the entry point of a Dart program?',
      options: ['start()', 'main()', 'run()', 'execute()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used to define a constant in Dart?',
      options: ['const', 'constant', 'final', 'static'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'How do you print something in Dart?',
      options: ['console.log()', 'print()', 'echo()', 'display()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used to create a class in Dart?',
      options: ['class', 'object', 'struct', 'type'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the correct way to create a list in Dart?',
      options: [
        'List list = []',
        'var list = []',
        'Both are correct',
        'Neither is correct',
      ],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'Which keyword is used for inheritance in Dart?',
      options: ['implements', 'extends', 'inherits', 'derives'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the null-aware operator in Dart?',
      options: ['?.', '!.', '.?', '..'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which data type is used for whole numbers in Dart?',
      options: ['number', 'int', 'integer', 'num'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which data type is used for decimal numbers in Dart?',
      options: ['float', 'decimal', 'double', 'real'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is the correct way to define a function in Dart?',
      options: [
        'function name() {}',
        'void name() {}',
        'def name() {}',
        'fun name() {}',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used for asynchronous operations in Dart?',
      options: ['async', 'asynchronous', 'await', 'future'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the correct way to create a Map in Dart?',
      options: [
        'Map map = {}',
        'var map = {}',
        'Both are correct',
        'Neither is correct',
      ],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'Which operator is used for type checking in Dart?',
      options: ['typeof', 'is', 'instanceof', 'type'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the final keyword mean in Dart?',
      options: [
        'Last variable',
        'Cannot be reassigned',
        'Private variable',
        'Static variable',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which loop is used to iterate over collections in Dart?',
      options: ['forEach', 'for-in', 'Both are correct', 'loop'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is the default access modifier in Dart?',
      options: ['private', 'public', 'protected', 'default'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'How do you make a variable private in Dart?',
      options: [
        'Use private keyword',
        'Start with underscore _',
        'Use # symbol',
        'Use - symbol',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // Dart Hard Questions
  static final List<QuestionModel> _dartHard = [
    QuestionModel(
      question: 'What is the difference between const and final in Dart?',
      options: [
        'No difference',
        'const is compile-time constant, final is runtime constant',
        'final is faster',
        'const can be reassigned',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a mixin in Dart?',
      options: [
        'A type of class',
        'Way to reuse code in multiple class hierarchies',
        'A function',
        'An interface',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the cascade operator (..) in Dart?',
      options: [
        'Math operator',
        'Allows sequence of operations on same object',
        'Null check',
        'Type cast',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between async and async* in Dart?',
      options: [
        'No difference',
        'async returns Future, async* returns Stream',
        'async* is faster',
        'async is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is an extension method in Dart?',
      options: [
        'Method in base class',
        'Add functionality to existing types without modifying them',
        'Override method',
        'Static method',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the factory constructor?',
      options: [
        'Create objects',
        'Return instance from cache or create new one',
        'Initialize variables',
        'Call parent constructor',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is covariance in Dart generics?',
      options: [
        'Type safety',
        'Generic type parameter can be replaced with subtype',
        'Variable declaration',
        'Class inheritance',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between ?? and ??= operators?',
      options: [
        'No difference',
        '?? returns left if not null, ??= assigns if null',
        '??= is faster',
        '?? is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a callable class in Dart?',
      options: [
        'Abstract class',
        'Class that can be called like a function',
        'Static class',
        'Final class',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the yield keyword?',
      options: [
        'Return value',
        'Emit values from generator function',
        'Pause execution',
        'Break loop',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is isolate in Dart?',
      options: [
        'Class type',
        'Independent worker with own memory',
        'Function type',
        'Variable scope',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between implements and extends?',
      options: [
        'No difference',
        'extends inherits implementation, implements only interface',
        'implements is faster',
        'extends is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a typedef in Dart?',
      options: [
        'Type definition',
        'Function type alias',
        'Class alias',
        'Import alias',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the late keyword?',
      options: [
        'Delay initialization',
        'Late initialization of non-nullable variable',
        'Async operation',
        'Last value',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a Completer in Dart?',
      options: [
        'Function',
        'Manually complete a Future',
        'Class type',
        'Loop construct',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between runtimeType and Type?',
      options: [
        'No difference',
        'runtimeType gets actual type at runtime, Type is type annotation',
        'Type is faster',
        'runtimeType is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a sealed class concept (in newer Dart)?',
      options: [
        'Private class',
        'Class that can only be extended in same library',
        'Final class',
        'Abstract class',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the covariant keyword?',
      options: [
        'Type checking',
        'Override method with more specific parameter type',
        'Generic constraint',
        'Inheritance modifier',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is Zone in Dart?',
      options: [
        'Memory area',
        'Execution context for error handling and async operations',
        'Class scope',
        'Module system',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'What is the difference between Future.wait and Future.wait all?',
      options: [
        'wait waits for all, waitAll is not a method',
        'No difference, same method',
        'waitAll is faster',
        'wait is deprecated',
      ],
      correctAnswerIndex: 0,
    ),
  ];

  // General Programming Easy Questions
  static final List<QuestionModel> _generalEasy = [
    QuestionModel(
      question: 'What does CPU stand for?',
      options: [
        'Central Process Unit',
        'Central Processing Unit',
        'Computer Personal Unit',
        'Central Processor Unit',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is an algorithm?',
      options: [
        'A programming language',
        'Step-by-step procedure to solve a problem',
        'A database',
        'A compiler',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a variable in programming?',
      options: [
        'A function',
        'A container for storing data',
        'A loop',
        'A class',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a loop in programming?',
      options: [
        'A function',
        'A structure that repeats code',
        'A variable',
        'A condition',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is debugging?',
      options: [
        'Writing code',
        'Finding and fixing errors in code',
        'Compiling code',
        'Running code',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is an array?',
      options: [
        'A function',
        'A collection of elements of same type',
        'A loop',
        'A condition',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a function?',
      options: ['A variable', 'A reusable block of code', 'A loop', 'An array'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a compiler?',
      options: [
        'A debugger',
        'Translates source code to machine code',
        'A text editor',
        'A database',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is syntax in programming?',
      options: [
        'Logic of code',
        'Rules for writing code',
        'Variable names',
        'Function names',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is an IDE?',
      options: [
        'A programming language',
        'Integrated Development Environment',
        'A database',
        'A framework',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a comment in code?',
      options: [
        'Executable code',
        'Non-executable text for documentation',
        'Error message',
        'Function name',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a condition in programming?',
      options: [
        'A loop',
        'A statement that evaluates to true or false',
        'A function',
        'A variable',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does API stand for?',
      options: [
        'Application Programming Interface',
        'Advanced Programming Interface',
        'Application Process Interface',
        'Advanced Process Interface',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is a string in programming?',
      options: [
        'A number',
        'A sequence of characters',
        'A boolean',
        'A function',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a boolean value?',
      options: ['A number', 'True or False', 'A string', 'An array'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is an object in programming?',
      options: ['A function', 'An instance of a class', 'A loop', 'A variable'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is inheritance in OOP?',
      options: [
        'Creating variables',
        'Acquiring properties from parent class',
        'Deleting objects',
        'Running functions',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a class in programming?',
      options: [
        'A function',
        'A blueprint for creating objects',
        'A variable',
        'A loop',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does RAM stand for?',
      options: [
        'Read Access Memory',
        'Random Access Memory',
        'Run Access Memory',
        'Rapid Access Memory',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a database?',
      options: [
        'A programming language',
        'An organized collection of data',
        'A function',
        'A compiler',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // General Programming Hard Questions
  static final List<QuestionModel> _generalHard = [
    QuestionModel(
      question: 'What is time complexity in algorithms?',
      options: [
        'Execution time',
        'Measure of how running time grows with input size',
        'Code length',
        'Memory usage',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is Big O notation?',
      options: [
        'Circle operator',
        'Describes algorithm performance and complexity',
        'Loop notation',
        'Function syntax',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a stack data structure?',
      options: [
        'Random access structure',
        'LIFO (Last In First Out) structure',
        'FIFO structure',
        'Tree structure',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a queue data structure?',
      options: [
        'LIFO structure',
        'FIFO (First In First Out) structure',
        'Random access',
        'Hash table',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is recursion?',
      options: [
        'A loop',
        'Function that calls itself',
        'Variable declaration',
        'Class inheritance',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is polymorphism in OOP?',
      options: [
        'Many classes',
        'Objects of different types can be accessed through same interface',
        'Multiple inheritance',
        'Code duplication',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is encapsulation in OOP?',
      options: [
        'Inheritance',
        'Bundling data and methods that work on data',
        'Polymorphism',
        'Abstraction',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a hash table?',
      options: [
        'Array',
        'Data structure that maps keys to values',
        'Tree',
        'Stack',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a binary tree?',
      options: [
        'Array with 2 elements',
        'Tree where each node has at most 2 children',
        'Two trees',
        'Binary number system',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is dynamic programming?',
      options: [
        'Dynamic typing',
        'Optimization technique by storing subproblem results',
        'Runtime programming',
        'Variable programming',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between deep copy and shallow copy?',
      options: [
        'No difference',
        'Deep copy copies nested objects, shallow copy copies references',
        'Shallow copy is faster always',
        'Deep copy is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a linked list?',
      options: [
        'Array',
        'Linear data structure where elements are linked using pointers',
        'Tree',
        'Hash table',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is abstraction in OOP?',
      options: [
        'Inheritance',
        'Hiding complex implementation details',
        'Code duplication',
        'Variable declaration',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a design pattern?',
      options: [
        'UI design',
        'Reusable solution to common software design problem',
        'Code style',
        'Database schema',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a race condition?',
      options: [
        'Fast algorithm',
        'Bug where output depends on timing of events',
        'Competition',
        'Loop condition',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is deadlock?',
      options: [
        'Infinite loop',
        'Two processes waiting for each other',
        'Memory leak',
        'Syntax error',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is garbage collection?',
      options: [
        'Code cleanup',
        'Automatic memory management',
        'Bug fixing',
        'Code optimization',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a mutex?',
      options: [
        'Data type',
        'Mutual exclusion object for thread synchronization',
        'Function',
        'Variable',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the singleton pattern?',
      options: [
        'One variable',
        'Design pattern ensuring class has only one instance',
        'One function',
        'Single inheritance',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between process and thread?',
      options: [
        'No difference',
        'Process has own memory, thread shares memory',
        'Thread is faster always',
        'Process is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
  ];
}
