//
//  ViewController.swift
//  Countdown
//
//  Created by Lakshay Saini on 13/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var countdowns: [countdown] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navItem()
    }
    
    func navItem() {
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sort", style: .plain, target: self, action: #selector(sortTapped))
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        let edit = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editTapped))

        navigationItem.rightBarButtonItems = [edit, add]
        
    }
    
    @objc
    func addTapped(sender: UIButton) {
        print(sender.tag)
    }
    
    @objc
    func sortTapped(sender: UIButton) {
        print(sender.tag)
    }
    
    @objc
    func editTapped(sender: UIButton) {
        print(sender.tag)
    }

}

