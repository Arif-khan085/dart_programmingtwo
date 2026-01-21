import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n📋 TO-DO LIST MENU");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Delete Task");
    print("4. Exit");

    stdout.write("Choose an option: ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        stdout.write("Enter task: ");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print("✅ Task added.");
        break;

      case '2':
        if (tasks.isEmpty) {
          print("⚠ No tasks yet.");
        } else {
          print("📝 Your Tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case '3':
        stdout.write("Enter task number to delete: ");
        int index = int.parse(stdin.readLineSync()!);
        if (index > 0 && index <= tasks.length) {
          tasks.removeAt(index - 1);
          print("🗑 Task deleted.");
        } else {
          print("❌ Invalid task number.");
        }
        break;

      case '4':
        print("👋 Goodbye!");
        return;

      default:
        print("❌ Invalid option.");
    }
  }
}
