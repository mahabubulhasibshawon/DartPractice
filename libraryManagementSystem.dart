void main(){
  Book book1 = Book('Harry Potter', 'J. K. Rowling', '1338878921', true);
  Book book2 = Book('Sherlock Holmes', 'Arthur Conan Doyle', '1338878922', true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.listBook();
}
