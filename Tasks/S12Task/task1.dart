class Card {
  String title;
  String details;
  Icon icon;
  List<String>? links;

  Card(
      {required this.title,
      required this.details,
      required this.icon,
      this.links});
}

enum Icons { services, question, feed }

class Icon {
  Icons icon;

  Icon({required this.icon});
}

void main(List<String> args) {
  var card1 = Card(
      title: 'Services',
      details: 'Fake text for services describe this section.',
      icon: Icon(icon: Icons.services),
      links: ['https1', 'https2', 'https3']);

  var card2 = Card(
      title: 'Question',
      details: 'Fake text for questions describe this section.',
      icon: Icon(icon: Icons.question),
      links: ['https1', 'https2', 'https3']);

  var card3 = Card(
      title: 'Feeds',
      details: 'Fake text for feeds describe this section.',
      icon: Icon(icon: Icons.feed),
      links: ['https1', 'https2', 'https3']);

  
}
