//
//  AddCollectionViewController.swift
//  Collections
//
//  Created by Alan Clark on 7/18/17.
//  Copyright © 2017 Matthew Clark. All rights reserved.
//

import UIKit

class AddCollectionViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addCollection(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        let collection = Collection(context: context)
        collection.name = nameField.text
        
        delegate.saveContext()
        navigationController!.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
