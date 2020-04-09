//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Jimmy Brown on 4/8/20.
//  Copyright © 2020 Jimmy Brown. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
  
  @IBOutlet var vocabLabel: UILabel!
  @IBOutlet var vocabDefinitionText: UITextView!
  
  

  var vocabWord: VocabularyWord?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateViews()
  }
  
  func updateViews() {
    if vocabWord != nil {
      vocabLabel.text = vocabWord?.word
      vocabDefinitionText.text = vocabWord?.definition
    }
  }

}
