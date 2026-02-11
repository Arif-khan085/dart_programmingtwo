import 'dart:async';
import 'dart:math';

/// Base class
abstract class LibraryItem {
  String title;
  int year;

  LibraryItem(this.title, this.year);

  String getDescription();
}

/// Book class extending LibraryItem
class Book extends LibraryItem {
  String author;
  bool isBorrowed = false;

  Book(String title, int year, this.author) : super(title, year);

  @override
  String getDescription() {
    return "$title by $author ($year) - ${isBorrowed ? "Borrowed" : "Available"}";
  }
}

/// Library Manager
class SmartLibrary {
  List<Book> _books = [];

  void addBook(Book book) {
    _books.add(book);
    print("Added: ${book.title}");
  }

  Future<void> borrowBook(String title) async {
    print("\nSearching for '$title'...");
    await Future.delayed(Duration(seconds: 1));

    var book = _books.firstWhere(
      (b) => b.title.toLowerCase() == title.toLowerCase(),
      orElse: () => Book("", 0, ""),
    );

    if (book.title.isEmpty) {
      print("Book not found!");
    } else if (book.isBorrowed) {
      print("Book already borrowed!");
    } else {
      book.isBorrowed = true;
      print("You borrowed '${book.title}' 📖");
    }
  }

  void showAllBooks() {
    print("\n📚 Library Collection:");
    _books.sort((a, b) => a.year.compareTo(b.year));

    for (var book in _books) {
      print(book.getDescription());
    }
  }

  void generateReport() {
    int borrowedCount = _books.where((b) => b.isBorrowed).length;
    int availableCount = _books.length - borrowedCount;

    print("\n📊 Library Report:");
    print("Total Books: ${_books.length}");
    print("Borrowed: $borrowedCount");
    print("Available: $availableCount");
  }
}

void main() async {
  SmartLibrary library = SmartLibrary();

  library.addBook(Book("The Flutter Journey", 2021, "Alice Johnson"));
  library.addBook(Book("Dart Deep Dive", 2019, "Mark Smith"));
  library.addBook(Book("Async Adventures", 2023, "Emma Brown"));

  library.showAllBooks();

  await library.borrowBook("Dart Deep Dive");

  library.showAllBooks();
  library.generateReport();
}
