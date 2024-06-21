void main(){
  Book book1 = Book('Harry Potter', 'J. K. Rowling', '1338878921', true);
  Book book2 = Book('Sherlock Holmes', 'Arthur Conan Doyle', '1338878922', true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.listBook();
}
class Book{
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}
class Library{
  List<Book> books =[];
  List<Loan> loans =[];
  void addBook(Book book){
    books.add(book);
  }
  void listBook(){
    print('----List All books in Library----');
    for(var book in books){
      print('Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}, Available: ${book.isAvailable}');
    }
  }
}
