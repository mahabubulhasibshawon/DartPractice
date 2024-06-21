void main(){
  Book book1 = Book('Harry Potter', 'J. K. Rowling', '1338878921', true);
  Book book2 = Book('Sherlock Holmes', 'Arthur Conan Doyle', '1338878922', true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);


  Member member = Member('Hasib', 'M0001');

  library.loansBook(book1, member);
  library.listLoansBook();
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

  void loansBook(Book book, Member member){
    if(book.isAvailable){
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now()));
    }
    else{
      print('${book.title} is not available');
    }
  }

  void addBook(Book book){
    books.add(book);
  }

  void listLoansBook(){
    print('----List All books Library----');
    for(var loan in loans){
      print('Title: ${loan.book.title}, Author: ${loan.book.author}, ISBN: ${loan.book.isbn}, Available: ${loan.book.isAvailable}');
    }
  }
}

class Loan{
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, [this.returnDate]);

  void returnBook(){
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}

class Member{
  String name;
  String numberId;

  Member(this.name , this.numberId);
}
