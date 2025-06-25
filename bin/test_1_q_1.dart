void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> studentAverages = {};

  for (var student in students) {
    String name = student["name"];
    List<int> scores = student["scores"];

    int sum = 0;
    for (int score in scores) {
      sum += score;
    }

    double average = sum / scores.length;
    double roundedAverage = double.parse(average.toStringAsFixed(2));

    studentAverages[name] = roundedAverage;
  }

  var sortedEntries = studentAverages.entries.toList();

  sortedEntries.sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedAverages = {};
  for (var entry in sortedEntries) {
    sortedAverages[entry.key] = entry.value;
  }

  print(sortedAverages);
}
