//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Jimmy Brown on 4/8/20.
//  Copyright © 2020 Jimmy Brown. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
  
  var vocabWords: [VocabularyWord] = [
    VocabularyWord(word: "Variable", definition: "Provides us with named storage that our programs can manipulate."),
    VocabularyWord(word: "Constant", definition: "Fixed values that a program may not alter during its execution."),
    VocabularyWord(word: "Function", definition: "A set of statements organized together to perform a specific task.")
  ]
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return vocabWords.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
    
    let vocabWord = vocabWords[indexPath.row]
    cell.textLabel?.text = vocabWord.word
    return cell
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowDefinitionSegue" {
      if let definitionVC = segue.destination as? DefinitionViewController,
        let indexPath = self.tableView.indexPathForSelectedRow {
        let word = vocabWords[indexPath.row]
        definitionVC.vocabWord = word
        
      }
    }
  }
}


