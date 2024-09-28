class Book{
  String title;
  String author;
  int publicationYear;
  int pagesRead = 0;
  static int totalBooks = 0;
  int? age;
  Book({required this.title,required this.author,required this.publicationYear}){
      totalBooks++;
  }
  read(int pages){
    this.pagesRead = pagesRead + pages;
  }
  getPagesRead(){
    return pagesRead;
  }
  getTitle(){
    return title;
  }
  getAuthor(){
    return author;
  }
  getPublicationYear(){
    return publicationYear;
  }
  getBookAge(){
    this.age = 2024 - publicationYear;
    return age;
  }
}
void main(){
  Book book1 = Book(title: 'gitanjoli', author: 'robi pagla', publicationYear: 1912);
  Book book2 = Book(title: 'ekattorer din guli', author: 'jahanara imaam', publicationYear: 1986);
  Book book3 = Book(title: 'meghnad bod', author: 'michel modhusudon dotto', publicationYear: 1885);
  book1.read(80);
  book2.read(55);
  book3.read(60);

  // for book1
  print(book1.title);
  print(book1.author);
  print(book1.publicationYear);
  print(book1.pagesRead);
  print(book1.age);

  // for book2
  print(book2.title);
  print(book2.author);
  print(book2.publicationYear);
  print(book2.pagesRead);
  print(book2.age);

  // for book3
  print(book3.title);
  print(book3.author);
  print(book3.publicationYear);
  print(book3.pagesRead);
  print(book3.age);
}