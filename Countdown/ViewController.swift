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
        countdowns = createCountdown()
        
    }
    
    func createCountdown() -> [countdown] {
        
        var tmp: [countdown] = []
        
        let countdown1 = countdown(image: UIImage(named: "calendar")!, countdownName: "first Countdown", date: "Wed, 15 Dec 2021", timer: "1 hours left", bgcolor: UIColor.blue)
        let countdown2 = countdown(image: UIImage(named: "calendar")!, countdownName: "Second Countdown", date: "Wed, 15 Dec 2021", timer: "1 hours left", bgcolor: UIColor.purple)
        let countdown3 = countdown(image: UIImage(named: "calendar")!, countdownName: "Third Countdown", date: "Wed, 15 Dec 2021", timer: "1 hours left", bgcolor: UIColor.green)
        
        tmp.append(countdown1)
        tmp.append(countdown2)
        tmp.append(countdown3)
        
        return tmp
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

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countdowns.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let countdown = countdowns[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.setCountdown(remaindar: countdown)
        
        cell.backgroundColor = countdown.bgcolor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            countdowns.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return cellSpacingHeight
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = UIColor.clear
//        return headerView
//    }
//
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return countdowns.count
//    }
}

