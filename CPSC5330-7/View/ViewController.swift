//
//  ViewController.swift
//  CPSC5330-7
//
//  Created by user260677 on 7/8/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        

    var books = [
    
        BookAuthor("The Great Gatsby", "F. Scott Fitzgerald", "Three Stars"),
        BookAuthor("The Aeneid", "Virgil", "Four Stars"),
        BookAuthor("Animal Farm", "George Orwell", "Four Stars"),
        BookAuthor("Macbeth", "William Shakespeare", "Five Stars"),
        BookAuthor("Candide", "Voltaire", "Three Stars"),
        BookAuthor("The Color Purple", "Alice Walker", "Five Stars"),
        BookAuthor("The Diary of a Young Girl", "Anne Frank", "Four Stars"),
        BookAuthor("The Art of War", "Sun Tzu", "Three Stars")
    
    ]
    var selectedBook = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = books[indexPath.row].book
        content.secondaryText = books[indexPath.row].author
        cell.contentConfiguration = content
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedBook = books[indexPath.row].review
        
        self.performSegue(withIdentifier: "toNavigation", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toNavigation" {
            let navigation = segue.destination as! SecondViewController
            navigation.reviewText = selectedBook
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

