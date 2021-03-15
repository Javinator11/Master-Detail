//
//  ViewController.swift
//  BookStore
//
//  Created by user190386 on 3/5/21.
//

import UIKit

class DetailViewController: UIViewController {
    // MARK: Properties
    

    
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func configureView() {
                // Update the user interface for the detail item.
                if let myBook = detailItem {
                    titleLabel.text = myBook.title
                    authorLabel.text = myBook.author
                    descriptionTextView.text = myBook.description
                    imageView.image = UIImage(named: myBook.image)
                    
                }
            }

        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            configureView()
        }
        
        var detailItem : Book? {
            didSet {
                // Update the view.
            }
        }

    @IBAction func cancel(sender: AnyObject){
        dismiss(animated: false, completion:nil)
    }
    
    }



