import 'dart:async';

enum Priority { Low, Medium, High }

class Task {
  String name;
  Priority priority;
  bool isCompleted = false;

  Task(this.name, this.priority);

  @override
  String toString() {
    return "$name - ${priority.name} - ${isCompleted ? "Done" : "Pending"}";
  }
}

class TaskScheduler {
  List<Task> _tasks = [];

  void addTask(Task task) {
    _tasks.add(task);
    print("Task Added: ${task.name}");
  }

  Future<void> executeTasks() async {
    print("\nExecuting Tasks...\n");

    // Sort by priority (High → Low)
    _tasks.sort((a, b) => b.priority.index.compareTo(a.priority.index));

    for (var task in _tasks) {
      print("Working on: ${task.name}");
      await Future.delayed(Duration(seconds: 1));
      task.isCompleted = true;
      print("Completed: ${task.name}\n");
    }
  }

  void showTasks() {
    print("\n📋 Task List:");
    for (var task in _tasks) {
      print(task);
    }
  }
}

void main() async {
  TaskScheduler scheduler = TaskScheduler();

  scheduler.addTask(Task("Fix Bugs", Priority.High));
  scheduler.addTask(Task("Write Documentation", Priority.Medium));
  scheduler.addTask(Task("Code Review", Priority.Low));

  scheduler.showTasks();
  await scheduler.executeTasks();
  scheduler.showTasks();
}
