void main () {
  /* 
  1. we have a list of users, every user has (id, username, age, courses)
  2. every course has (id, title, hours, tests, average-points)
  3. every test has (id, date, score)
  4. average-points = (sum of tests score) / count tests
  */


  List users = [
    {
      'id': 1,
      'username': 'mohamed',
      'courses': [
        {
          'tests': [
            {},
            {}
          ], 
          'average-points': (40 + 30) / 2
        },
        {}
      ]
    },
    {
      'id': 1,
      'username': 'mohamed'
    }
  ];

}