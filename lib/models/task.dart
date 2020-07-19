class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false}); //default

  void toggleDone() {
    isDone = !isDone;
  }
}
