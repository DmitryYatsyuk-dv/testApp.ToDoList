//
//  NewTaskTableViewController.swift
//  TodoEmojiList
//
//  Created by Lucky on 04/04/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

class NewTaskTableViewController: UITableViewController {
    
    //MARK: Variables
    var emoji = EmojiModel(emoji: "", name: "", description: "", isFavourite: false)
    
    //MARK: IBOutlets
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        updateSaveButtonState()
    }
    
    private func updateSaveButtonState() {
        
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTF.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    // func Interface Update
    private func updateUI() {
        emojiTextField.text = emoji.emoji
        nameTextField.text = emoji.name
        descriptionTF.text = emoji.description
    }
    
    //MARK: IBActions
    @IBAction func textChanged(_ sender: UITextField) {
        
        updateSaveButtonState()
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTF.text ?? ""
        
        self.emoji = EmojiModel(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite)
    }
}
