import './quizquestions.dart';

// creating a list that contains question and respective answers
//QuizQuestion is imported from another class, carefully look into classes and other files imported
// two arguments of QuizQuestion text and answers

const questions = [
  // arguments that are needed to pass are simple text and a list,
  // so text here is question and list here is list of answers
  QuizQuestion(' 1. Which among the following is the capital city of India ?',
      ['Delhi', 'Mumbai', 'Bengaluru', 'Pune', 'Kolkata']),

  QuizQuestion(' 2. Which among the following is the currency of India ?',
      ['INR', 'Dollars', 'Dinar', 'Yen', 'Euro']),

  QuizQuestion(' 3. Who is the father of constitution of India ?', [
    'BR Ambedkar',
    'Mahatma Gandhi',
    'Mahatma Phule',
    'Gopal Krishna Gokhale',
    'Vinayak Damodar Savarkar'
  ]),

  QuizQuestion(
      ' 4. Which among the following cities is the first planned city in India ?',
      ['Jaipur', 'Mumbai', 'Delhi', 'Bengaluru', 'Chennai']),

  QuizQuestion(' 5. Who is the father of the nation ?', [
    'Mahatma Gandhi',
    'Khan Abdul Gaffar Khan',
    'Vinayak Damodar Savarkar',
    'Bal Gangadhar Tilak',
    'Mahatma Phule'
  ]),

  QuizQuestion(
      ' 6. Which among the following place one of the seven wonders of the world is located in India ?',
      ['Agra', 'Mathura', 'Mirzapur', 'Jaipur', 'Golconda']),

  QuizQuestion(' 7. Which is the richest currency in the world ?', [
    'Kuwaiti Dinar',
    'Bahraini Dinar',
    'United Stated Dollars',
    'Euro',
    'London Pounds'
  ]),

  QuizQuestion(' 8. Flutter was developed by ?',
      ['Google', 'Red Hat', 'IBM', 'AT & T Bell Labs', 'Microsoft']),

  QuizQuestion(' 9. Who developed C ?', [
    'Dennis M Ritchie',
    'Ros Ihaka',
    'James Gosling',
    'Bjarne Stroustrup',
    'Robert Gentlemen',
  ]),

  QuizQuestion(' 10. Which one of the following was the founder of Google ?', [
    'Sergey Brin',
    'Sundar Pichai',
    'Satya Nadella',
    'Steve Jobs',
    'William Henry Gates'
  ]),
];
