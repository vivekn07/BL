// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Define a contract named structdemo
contract structdemo {
    // Define a struct named Book with four properties
    struct Book {
        string name;        // Name of the book
        string author;      // Author of the book
        uint256 id;         // Unique identifier for the book
        bool availability;  // Availability status of the book
    }

    // Declare a variable book2 of type Book
    Book book2;

    // Initialize a variable book1 of type Book with specific values
    Book book1 = Book("A Little Life", "Hanya Yanagihara", 2, false);

    // Define a function to set the details of book2
    function set_details() public {
        book2 = Book("Almond", "Sohn won-pyung", 1, true);
    }

    // Define a function to get the details of book1
    function book_info() public view returns (
        string memory,
        string memory,
        uint256,
        bool
    ) {
        return (book1.name, book1.author, book1.id, book1.availability);
    }

    // Define a function to get the details of book2
    function get_details() public view returns (
        string memory, string memory, uint256, bool
    ) {
        return (book2.name, book2.author, book2.id, book2.availability);
    }
}
