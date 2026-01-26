import '../models/question_model.dart';

/// Local question bank used when AI service is unavailable
/// Provides 30 questions per category and difficulty level
class FallbackQuestions {
  static List<QuestionModel> getQuestions(String category, String difficulty) {
    // Shuffle questions to ensure randomness for each exam session
    List<QuestionModel> questions;
    switch (category.toUpperCase()) {
      case 'SQL':
        questions = difficulty == 'Easy'
            ? List.from(_sqlEasy)
            : List.from(_sqlHard);
        break;
      case 'FLUTTER':
        questions = difficulty == 'Easy'
            ? List.from(_flutterEasy)
            : List.from(_flutterHard);
        break;
      case 'DART':
        questions = difficulty == 'Easy'
            ? List.from(_dartEasy)
            : List.from(_dartHard);
        break;
      case 'PYTHON':
        questions = difficulty == 'Easy'
            ? List.from(_pythonEasy)
            : List.from(_pythonHard);
        break;
      default:
        questions = List.from(_pythonEasy);
    }
    questions.shuffle();
    return questions;
  }

  // SQL Easy Questions (30 questions)
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
      question: 'Which SQL keyword is used to sort the result-set?',
      options: ['SORT', 'ORDER BY', 'SORT BY', 'ORDER'],
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
      question: 'Which SQL statement is used to create a new table?',
      options: ['CREATE TABLE', 'NEW TABLE', 'MAKE TABLE', 'BUILD TABLE'],
      correctAnswerIndex: 0,
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
    QuestionModel(
      question: 'Which SQL keyword returns the number of rows in a table?',
      options: ['COUNT()', 'NUMBER()', 'ROWS()', 'SIZE()'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which SQL operator is used to search for a pattern?',
      options: ['SEARCH', 'LIKE', 'FIND', 'MATCH'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which SQL keyword is used to specify multiple values in WHERE?',
      options: ['BETWEEN', 'IN', 'RANGE', 'VALUES'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL command is used to remove a table?',
      options: ['REMOVE TABLE', 'DELETE TABLE', 'DROP TABLE', 'CLEAR TABLE'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is the default sorting order of ORDER BY?',
      options: ['Random', 'Ascending', 'Descending', 'None'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL clause is used with aggregate functions?',
      options: ['WHERE', 'IF', 'HAVING', 'FILTER'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'Which SQL keyword is used to join tables?',
      options: ['MERGE', 'JOIN', 'CONNECT', 'LINK'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which wildcard character represents any sequence of characters?',
      options: ['*', '%', '_', '?'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL function returns the smallest value?',
      options: ['SMALL()', 'MIN()', 'LEAST()', 'LOWER()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL statement is used to change existing data?',
      options: ['CHANGE', 'UPDATE', 'MODIFY', 'ALTER'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a primary key?',
      options: [
        'First column',
        'Unique identifier for a record',
        'Foreign key reference',
        'Index column',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL clause groups rows with same values?',
      options: ['CLUSTER BY', 'GROUP BY', 'COLLECT BY', 'MERGE BY'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL keyword is used to limit the number of rows?',
      options: ['MAX', 'LIMIT', 'TOP', 'FIRST'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which SQL operator checks if a value is NULL?',
      options: ['= NULL', 'IS NULL', '== NULL', 'NULL()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which SQL keyword combines results from multiple SELECT statements?',
      options: ['COMBINE', 'MERGE', 'UNION', 'JOIN'],
      correctAnswerIndex: 2,
    ),
  ];

  // SQL Hard Questions (30 questions with advanced logic)
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
      question: 'What is database normalization primarily used for?',
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
    QuestionModel(
      question:
          'If table A has 5 rows and table B has 3 rows, how many rows will CROSS JOIN produce?',
      options: ['5', '3', '15', '8'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is the result of: SELECT NULL = NULL?',
      options: ['TRUE', 'FALSE', 'NULL', 'Error'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question:
          'Which isolation level prevents dirty reads but allows non-repeatable reads?',
      options: [
        'READ UNCOMMITTED',
        'READ COMMITTED',
        'REPEATABLE READ',
        'SERIALIZABLE',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'What happens when you use GROUP BY without aggregate functions?',
      options: [
        'Error occurs',
        'Returns distinct values',
        'Returns all rows',
        'Returns NULL',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'In a self-join, what must be different?',
      options: ['Table names', 'Table aliases', 'Column names', 'Data types'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the maximum number of clustered indexes per table?',
      options: ['0', '1', '2', 'Unlimited'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which JOIN type returns all rows from both tables?',
      options: ['INNER JOIN', 'LEFT JOIN', 'FULL OUTER JOIN', 'CROSS JOIN'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is the purpose of SAVEPOINT in transactions?',
      options: [
        'Save database',
        'Set a point to rollback to within a transaction',
        'Create backup',
        'Lock tables',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the RANK() window function do with ties?',
      options: [
        'Skips ranks after ties',
        'Assigns same rank without skipping',
        'Assigns different ranks',
        'Returns error',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question:
          'Which constraint ensures all values in a column are different?',
      options: ['PRIMARY KEY', 'UNIQUE', 'CHECK', 'NOT NULL'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a covering index?',
      options: [
        'Index on all columns',
        'Index that contains all columns needed for a query',
        'Primary key index',
        'Composite index',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does PIVOT operation do?',
      options: [
        'Rotates table',
        'Transforms rows into columns',
        'Sorts data',
        'Joins tables',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which statement is correct about views?',
      options: [
        'Views store actual data',
        'Views are virtual tables based on SQL query',
        'Views cannot be updated',
        'Views require more storage',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between WHERE and HAVING with COUNT?',
      options: [
        'No difference',
        'WHERE filters before grouping, HAVING filters after',
        'HAVING is faster',
        'WHERE cannot use COUNT',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is an execution plan in SQL?',
      options: [
        'Code template',
        'Database optimizer\'s strategy to execute query',
        'Transaction log',
        'Backup schedule',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // Flutter Easy Questions - Widget Logic Focus (30 questions)
  static final List<QuestionModel> _flutterEasy = [
    QuestionModel(
      question: 'What is a Widget in Flutter?',
      options: [
        'A function',
        'The basic building block of Flutter UI',
        'A database table',
        'A state manager',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which widget should you use for a button that responds to taps?',
      options: [
        'GestureDetector',
        'ElevatedButton',
        'Both are correct',
        'Container',
      ],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question:
          'Which widget is best for displaying a scrollable list of items?',
      options: ['Column', 'ListView', 'Stack', 'Row'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does StatelessWidget mean?',
      options: [
        'Widget with mutable state',
        'Widget whose properties cannot change over time',
        'Widget without UI',
        'Widget for navigation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does StatefulWidget mean?',
      options: [
        'Widget that never changes',
        'Widget that can change its state during runtime',
        'Widget for backend',
        'Widget for routing',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget arranges children horizontally?',
      options: ['Column', 'Row', 'Stack', 'ListView'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget arranges children vertically?',
      options: ['Row', 'Column', 'Stack', 'GridView'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget allows children to overlap each other?',
      options: ['Row', 'Column', 'Stack', 'Container'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'Which widget is used to add space around another widget?',
      options: ['Margin', 'Padding', 'SizedBox', 'Container'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget is used to display text?',
      options: ['Label', 'Text', 'TextView', 'TextWidget'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget accepts text input from users?',
      options: ['InputText', 'TextField', 'TextInput', 'EditText'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget is used to display images?',
      options: ['Picture', 'Image', 'ImageView', 'Photo'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the Container widget primarily used for?',
      options: [
        'Display lists',
        'A versatile widget for layout, decoration, and constraints',
        'Text display',
        'Navigation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget makes its child scrollable?',
      options: [
        'Scroll',
        'SingleChildScrollView',
        'Scrollable',
        'ScrollWidget',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which widget is used for responsive layout based on constraints?',
      options: ['Container', 'LayoutBuilder', 'ResponsiveWidget', 'MediaQuery'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget adds space between widgets?',
      options: ['Space', 'SizedBox', 'Gap', 'Spacer'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget provides Material Design app structure?',
      options: ['AppBar', 'Scaffold', 'MaterialDesign', 'AppStructure'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget displays a circular progress indicator?',
      options: [
        'Loader',
        'CircularProgressIndicator',
        'ProgressBar',
        'Loading',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget centers its child within itself?',
      options: ['Align', 'Center', 'Centered', 'Middle'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget detects user gestures like tap, drag, swipe?',
      options: [
        'TouchDetector',
        'GestureDetector',
        'InputHandler',
        'EventListener',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget creates a grid layout?',
      options: ['GridLayout', 'GridView', 'Grid', 'TableView'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget makes a child widget clickable?',
      options: ['Clickable', 'InkWell', 'Tappable', 'Button'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget displays an icon?',
      options: ['IconWidget', 'Icon', 'IconView', 'Image'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget allows widgets to expand in Row or Column?',
      options: ['Flex', 'Expanded', 'Stretch', 'Fill'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget controls the visibility of its child?',
      options: ['Show', 'Visibility', 'Display', 'Offstage'],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question: 'Which widget adds a border around its child?',
      options: ['Border', 'Container with BoxDecoration', 'Frame', 'Outline'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget creates flexible space in Row or Column?',
      options: ['Space', 'Spacer', 'Gap', 'Flexible'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which widget wraps children that overflow into multiple lines?',
      options: ['WrapWidget', 'Wrap', 'Flow', 'MultiLine'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which widget aligns its child within itself with custom positioning?',
      options: ['Position', 'Align', 'Place', 'Locate'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which widget applies opacity to its child?',
      options: ['Transparent', 'Opacity', 'Alpha', 'Fade'],
      correctAnswerIndex: 1,
    ),
  ];

  // Flutter Hard Questions - Advanced Widget Logic (30 questions)
  static final List<QuestionModel> _flutterHard = [
    QuestionModel(
      question: 'What is the widget tree in Flutter?',
      options: [
        'File structure',
        'Hierarchical structure of widget instances',
        'Database schema',
        'Build configuration',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'When should you use const constructor for widgets?',
      options: [
        'Never',
        'When widget and its properties are immutable at compile time',
        'Always',
        'Only for StatefulWidgets',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'What happens if you don\'t return a widget from build() method?',
      options: [
        'Returns empty widget',
        'Compilation error',
        'Runtime error',
        'Returns null',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Why is InheritedWidget important?',
      options: [
        'For UI layout',
        'Efficiently propagate data down the widget tree without rebuilding',
        'For navigation',
        'For animation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of Keys in Flutter widgets?',
      options: [
        'Database keys',
        'Preserve widget state when widgets move in tree',
        'API keys',
        'Navigation identifiers',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'When should you use GlobalKey?',
      options: [
        'Always',
        'When you need to access widget state or context from outside',
        'Never',
        'Only in StatelessWidgets',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'What is the difference between mainAxisSize.min and max in Row/Column?',
      options: [
        'No difference',
        'min takes only needed space, max takes all available space',
        'max is faster',
        'min is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'In a Stack widget, which positioned widget renders on top?',
      options: [
        'First child',
        'Last child in the list',
        'Largest widget',
        'Random',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What happens when you use Expanded inside Expanded?',
      options: [
        'Works fine',
        'Error - cannot nest Expanded widgets',
        'Doubles the expansion',
        'Only outer Expanded works',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between Flexible and Expanded widgets?',
      options: [
        'No difference',
        'Expanded forces child to fill space, Flexible allows child to be smaller',
        'Flexible is faster',
        'Expanded is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of LayoutBuilder widget?',
      options: [
        'Create layouts',
        'Build widget tree based on parent constraints',
        'Design tool',
        'Code generator',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Why would you use RepaintBoundary?',
      options: [
        'For styling',
        'Create separate layer for performance optimization',
        'For borders',
        'For layout',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What happens if you call setState() in a StatelessWidget?',
      options: [
        'Works normally',
        'Compilation error - setState is not available',
        'Runtime error',
        'Does nothing',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'What is the difference between ListView and SingleChildScrollView with Column?',
      options: [
        'No difference',
        'ListView lazily builds children, SingleChildScrollView builds all at once',
        'SingleChildScrollView is faster',
        'ListView is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'When does the dispose() method get called in StatefulWidget?',
      options: [
        'When app closes',
        'When State object is permanently removed from tree',
        'On hot reload',
        'Every build',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the didUpdateWidget lifecycle method?',
      options: [
        'Initialize widget',
        'Called when widget configuration changes',
        'Dispose resources',
        'Build UI',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What happens if you use setState() after dispose()?',
      options: [
        'Works normally',
        'Throws error - setState called after dispose',
        'Does nothing',
        'Rebuilds widget',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between FittedBox and AspectRatio?',
      options: [
        'No difference',
        'FittedBox scales child to fit, AspectRatio maintains aspect ratio',
        'FittedBox is faster',
        'AspectRatio is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Why would you use CustomPaint widget?',
      options: [
        'Change colors',
        'Draw custom graphics using Canvas',
        'Add padding',
        'Create layouts',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of NotificationListener widget?',
      options: [
        'Display notifications',
        'Listen to notifications bubbling up the tree',
        'Push notifications',
        'Error handling',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'In ListView.builder, when is itemBuilder called?',
      options: [
        'Once for all items',
        'Lazily when item is about to be visible',
        'On app start',
        'Never',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'What happens if you return different widget types based on conditions in build()?',
      options: [
        'Error',
        'Works fine - Flutter handles widget tree changes',
        'Only first widget renders',
        'State is lost',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of AnimatedBuilder widget?',
      options: [
        'Create animations automatically',
        'Rebuild widget when animation value changes',
        'Animate colors only',
        'Deprecated widget',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Why would you use ValueKey over ObjectKey?',
      options: [
        'No difference',
        'ValueKey compares by value, ObjectKey by identity',
        'ValueKey is faster',
        'ObjectKey is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between WillPopScope and PopScope?',
      options: [
        'No difference',
        'PopScope is newer API replacing WillPopScope',
        'WillPopScope is faster',
        'Both are deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'When should you use SliverList over ListView?',
      options: [
        'Always',
        'When building custom scrollable layouts with other slivers',
        'Never',
        'Only for small lists',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What happens if you use context after widget is unmounted?',
      options: [
        'Works normally',
        'Throws error or unexpected behavior',
        'Does nothing',
        'Returns null',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Why would you use Builder widget?',
      options: [
        'Build faster',
        'Obtain new BuildContext within the same build method',
        'Add decorations',
        'Create layouts',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of ConstrainedBox widget?',
      options: [
        'Add constraints',
        'Impose additional constraints on its child',
        'Remove constraints',
        'Check constraints',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'How does ListView.separated differ from ListView.builder?',
      options: [
        'No difference',
        'ListView.separated adds separator between items',
        'ListView.separated is faster',
        'ListView.builder is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // Dart Easy Questions (30 questions)
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
      question: 'Which keyword is used for asynchronous operations in Dart?',
      options: ['async', 'asynchronous', 'await', 'future'],
      correctAnswerIndex: 0,
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
      question: 'How do you make a variable private in Dart?',
      options: [
        'Use private keyword',
        'Start with underscore _',
        'Use # symbol',
        'Use - symbol',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the correct way to create a List in Dart?',
      options: [
        'List list = []',
        'var list = []',
        'Both are correct',
        'Neither is correct',
      ],
      correctAnswerIndex: 2,
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
      question: 'Which data type represents true or false in Dart?',
      options: ['boolean', 'bool', 'bit', 'binary'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the default access modifier in Dart?',
      options: ['private', 'public', 'protected', 'default'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which loop is best for iterating over collections in Dart?',
      options: ['while', 'for-in', 'do-while', 'loop'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the String type represent in Dart?',
      options: [
        'A number',
        'A sequence of characters',
        'A boolean',
        'A collection',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which operator is used for string concatenation?',
      options: ['&', '+', '.', ','],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the return keyword?',
      options: [
        'Exit loop',
        'Return value from function',
        'Return to previous line',
        'Restart function',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used to handle exceptions?',
      options: ['catch', 'error', 'exception', 'handle'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the purpose of the break statement?',
      options: [
        'Break code',
        'Exit loop or switch statement',
        'Pause execution',
        'Return value',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the continue statement?',
      options: [
        'Continue program',
        'Skip current iteration and continue loop',
        'Exit loop',
        'Return value',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which operator is used for equality comparison?',
      options: ['=', '==', '===', 'equals'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a constructor in Dart?',
      options: [
        'A function',
        'Special method to create objects',
        'A variable',
        'A loop',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which operator is used for logical AND?',
      options: ['&', '&&', 'and', 'AND'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which operator is used for logical OR?',
      options: ['|', '||', 'or', 'OR'],
      correctAnswerIndex: 1,
    ),
  ];

  // Dart Hard Questions (30 questions with advanced logic)
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
        'Return instance from cache or create new one with custom logic',
        'Initialize variables',
        'Call parent constructor',
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
        'Class that can be called like a function using call() method',
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
      question: 'What is an isolate in Dart?',
      options: [
        'Class type',
        'Independent worker with own memory for concurrency',
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
        'Function type alias for better readability',
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
        'Manually complete a Future with value or error',
        'Class type',
        'Loop construct',
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
      question: 'What will print: var x = 5; print(x++ + ++x);?',
      options: ['10', '11', '12', '13'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is the result of: null ?? null ?? "default"?',
      options: ['null', '"default"', 'Error', 'undefined'],
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
      question:
          'What happens when you call super() in a constructor without parameters but parent has required params?',
      options: [
        'Works fine',
        'Compilation error',
        'Runtime error',
        'Uses default values',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'What is the result of: print(identical("hello", "hel" + "lo"));?',
      options: ['true', 'false', 'Error', 'null'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a sealed class in newer Dart versions?',
      options: [
        'Private class',
        'Class that can only be extended in same library',
        'Final class',
        'Abstract class',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between sync* and async* generators?',
      options: [
        'No difference',
        'sync* returns Iterable synchronously, async* returns Stream asynchronously',
        'sync* is faster',
        'async* is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What happens if you await a non-Future value?',
      options: [
        'Error',
        'Returns the value immediately wrapped in completed Future',
        'Waits indefinitely',
        'Returns null',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the show and hide keywords in imports?',
      options: [
        'Display control',
        'Import only specific members or exclude specific members',
        'Visibility control',
        'Privacy control',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What will happen: List<int> list = []; list.add("text");?',
      options: [
        'Works fine',
        'Compilation error - type mismatch',
        'Runtime error',
        'Converts to int',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between Future.wait and Future.any?',
      options: [
        'No difference',
        'wait waits for all, any completes when first Future completes',
        'any is deprecated',
        'wait is faster',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of the @override annotation?',
      options: [
        'Required for overriding',
        'Documents intent and helps catch errors if not actually overriding',
        'Increases performance',
        'Makes method private',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a record type in Dart 3.0+?',
      options: [
        'Database record',
        'Anonymous immutable aggregate type',
        'Audio recording',
        'Log entry',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What will happen: int? x; print(x! + 5);?',
      options: [
        'Prints 5',
        'Runtime error - null check operator on null',
        'Compilation error',
        'Prints null',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // Python Easy Questions (30 questions)
  static final List<QuestionModel> _pythonEasy = [
    QuestionModel(
      question: 'What is Python?',
      options: [
        'A snake',
        'A high-level programming language',
        'A database',
        'An operating system',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Who created Python?',
      options: [
        'Guido van Rossum',
        'James Gosling',
        'Dennis Ritchie',
        'Bjarne Stroustrup',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which function is used to display output in Python?',
      options: ['echo()', 'print()', 'display()', 'show()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'How do you create a variable in Python?',
      options: ['var x = 5', 'int x = 5', 'x = 5', 'declare x = 5'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'What is the correct file extension for Python files?',
      options: ['.pt', '.py', '.python', '.pyt'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used to create a function in Python?',
      options: ['function', 'def', 'func', 'define'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'How do you create a comment in Python?',
      options: ['// comment', '/* comment */', '# comment', '-- comment'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'Which data type is used for whole numbers in Python?',
      options: ['integer', 'int', 'number', 'whole'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which data type is used for decimal numbers in Python?',
      options: ['decimal', 'float', 'double', 'real'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the correct way to create a list in Python?',
      options: ['list = ()', 'list = []', 'list = {}', 'list = <>'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the correct way to create a dictionary in Python?',
      options: ['dict = []', 'dict = ()', 'dict = {}', 'dict = <>'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'Which keyword is used for conditional statements in Python?',
      options: ['if', 'when', 'condition', 'check'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which loop is used to iterate over a sequence in Python?',
      options: ['foreach', 'for', 'iterate', 'loop'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'How do you get user input in Python?',
      options: ['scan()', 'input()', 'read()', 'get()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which operator is used for exponentiation in Python?',
      options: ['^', '**', 'pow', 'exp'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the result of: 10 // 3 in Python?',
      options: ['3.33', '3', '4', '3.0'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which method is used to add an item to a list?',
      options: ['add()', 'append()', 'insert()', 'push()'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which method is used to remove an item from a list?',
      options: ['delete()', 'remove()', 'pop()', 'Both B and C'],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question: 'What is the correct way to create a string in Python?',
      options: [
        'text = string()',
        'text = "hello"',
        'text = String()',
        'text = str',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used to import a module?',
      options: ['include', 'import', 'require', 'using'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the result of: len("Python")?',
      options: ['5', '6', '7', 'Error'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which operator is used for string concatenation?',
      options: ['&', '+', '.', ','],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used to define a class in Python?',
      options: ['class', 'Class', 'object', 'struct'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the result of: type(5)?',
      options: ['int', '<class "int">', 'integer', 'number'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which function converts a string to an integer?',
      options: ['int()', 'toInt()', 'integer()', 'convert()'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the result of: bool(0)?',
      options: ['True', 'False', '0', 'Error'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'Which keyword is used to handle exceptions?',
      options: ['catch', 'except', 'error', 'handle'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the correct way to create a tuple?',
      options: ['tuple = []', 'tuple = {}', 'tuple = ()', 'tuple = <>'],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: 'Which operator checks if value is in a list?',
      options: ['contains', 'in', 'exists', 'has'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the range(5) function generate?',
      options: [
        '[1, 2, 3, 4, 5]',
        '[0, 1, 2, 3, 4]',
        '[0, 1, 2, 3, 4, 5]',
        '[1, 2, 3, 4]',
      ],
      correctAnswerIndex: 1,
    ),
  ];

  // Python Hard Questions (30 questions with advanced logic)
  static final List<QuestionModel> _pythonHard = [
    QuestionModel(
      question: 'What is the difference between list and tuple in Python?',
      options: [
        'No difference',
        'Lists are mutable, tuples are immutable',
        'Tuples are faster',
        'Lists cannot store mixed types',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a decorator in Python?',
      options: [
        'A design pattern',
        'A function that modifies another function',
        'A class modifier',
        'A variable type',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the GIL in Python?',
      options: [
        'Graphics Interface Library',
        'Global Interpreter Lock',
        'General Input Library',
        'Global Interface Layer',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between deepcopy and copy?',
      options: [
        'No difference',
        'deepcopy copies nested objects, copy creates shallow copy',
        'copy is faster always',
        'deepcopy is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a generator in Python?',
      options: [
        'Power generator',
        'Function that returns an iterator using yield',
        'Code generator',
        'Random number generator',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between __str__ and __repr__?',
      options: [
        'No difference',
        '__str__ for readable string, __repr__ for unambiguous representation',
        '__repr__ is deprecated',
        '__str__ is faster',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is list comprehension in Python?',
      options: [
        'List understanding',
        'Concise way to create lists using expression',
        'List compression',
        'List documentation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the result of: [x**2 for x in range(5)]?',
      options: [
        '[0, 1, 4, 9, 16]',
        '[1, 4, 9, 16, 25]',
        '[0, 1, 2, 3, 4]',
        'Error',
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the purpose of *args in function definition?',
      options: [
        'Multiply arguments',
        'Accept variable number of positional arguments',
        'Required arguments',
        'Array arguments',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of **kwargs in function definition?',
      options: [
        'Power operation',
        'Accept variable number of keyword arguments',
        'Required keywords',
        'Key arguments',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a lambda function?',
      options: [
        'Greek letter function',
        'Anonymous single-expression function',
        'Lambda calculus',
        'Loop function',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between is and == in Python?',
      options: [
        'No difference',
        'is checks identity, == checks equality',
        '== is faster',
        'is is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the @staticmethod decorator do?',
      options: [
        'Makes variable static',
        'Creates method that doesn\'t access instance or class',
        'Static import',
        'Static typing',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the @classmethod decorator do?',
      options: [
        'Creates class',
        'Method that receives class as first argument',
        'Class documentation',
        'Class validation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of __init__ method?',
      options: [
        'Initialize program',
        'Constructor method to initialize object',
        'Import initialization',
        'Interface method',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is monkey patching in Python?',
      options: [
        'Bug fixing',
        'Dynamic modification of class or module at runtime',
        'Code optimization',
        'Unit testing',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the result of: [] or [1] or [2]?',
      options: ['[]', '[1]', '[2]', 'Error'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a context manager in Python?',
      options: [
        'Context menu',
        'Object that manages resources using with statement',
        'Content manager',
        'Configuration manager',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of __enter__ and __exit__ methods?',
      options: [
        'Entry and exit points',
        'Define context manager protocol',
        'Login and logout',
        'Import and export',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is metaclass in Python?',
      options: [
        'Meta programming',
        'Class of a class that defines class behavior',
        'Multiple classes',
        'Meta data',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between append() and extend()?',
      options: [
        'No difference',
        'append adds element, extend adds iterable elements',
        'extend is faster',
        'append is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the result of: {x: x**2 for x in range(3)}?',
      options: ['{0:0, 1:1, 2:4}', '[0, 1, 4]', '(0, 1, 4)', 'Error'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the difference between remove() and pop()?',
      options: [
        'No difference',
        'remove() by value, pop() by index and returns value',
        'pop() is faster',
        'remove() is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is slicing in Python?',
      options: [
        'Cutting strings',
        'Extract portion of sequence using [start:end:step]',
        'Dividing numbers',
        'Array splitting',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the result of: "hello"[::-1]?',
      options: ['"hello"', '"olleh"', '"hlo"', 'Error'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is a closure in Python?',
      options: [
        'Closing file',
        'Function that captures variables from enclosing scope',
        'Loop closure',
        'Class closing',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What happens when you modify a list during iteration?',
      options: [
        'Works fine',
        'Can cause unexpected behavior or skip elements',
        'Automatic copy',
        'Error always',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the purpose of __name__ == "__main__"?',
      options: [
        'Name check',
        'Check if script is run directly vs imported',
        'Main function',
        'Name validation',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the difference between sort() and sorted()?',
      options: [
        'No difference',
        'sort() modifies in-place, sorted() returns new sorted list',
        'sorted() is faster',
        'sort() is deprecated',
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the result of: [1, 2] * 2?',
      options: ['[2, 4]', '[1, 2, 1, 2]', '[1, 2, 2]', 'Error'],
      correctAnswerIndex: 1,
    ),
  ];
}
