//
//  ViewController.swift
//  CPSC5330-7
//
//  Created by user260677 on 7/8/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        

    var books = [
    
        BookAuthor("The Great Gatsby", "F. Scott Fitzgerald"),
        BookAuthor("The Aeneid", "Virgil"),
        BookAuthor("Animal Farm", "George Orwell"),
        BookAuthor("Macbeth", "William Shakespeare"),
        BookAuthor("Candide", "Voltaire"),
        BookAuthor("The Color Purple", "Alice Walker"),
        BookAuthor("The Diary of a Young Girl", "Anne Frank"),
        BookAuthor("The Art of War", "Sun Tzu")
    
    ]
    
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
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

