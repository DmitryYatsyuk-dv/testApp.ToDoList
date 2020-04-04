//
//  NewTaskTableViewController.swift
//  TodoEmojiList
//
//  Created by Lucky on 04/04/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

class NewTaskTableViewController: UITableViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    //MARK: IBActions
    @IBAction func textChanged(_ sender: UITextField) {
    }
}
