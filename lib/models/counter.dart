class FuscaCounter {
  final String name;
  int count;

  FuscaCounter({required this.name, this.count = 0});

  void increment() {
    count++;
  }

  void decrement() {
    if (count > 0) {
      count--;
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'count': count,
    };
  }

  factory FuscaCounter.fromMap(Map<String, dynamic> map) {
    return FuscaCounter(
      name: map['name'],
      count: map['count'],
    );
  }
}