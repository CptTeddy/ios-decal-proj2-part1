//
//  FeedController.swift
//  snapChatProject
//
//  Created by ZhangJianglai on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class FeedController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var allFeeds: UITableView!
    var readLst: [UIImage] = []
    var toView: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allFeeds.delegate = self
        allFeeds.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return threads.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return threadNames[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let name = threadNames[section]
        return (threads[name]?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = allFeeds.dequeueReusableCell(withIdentifier: "FeedViewCell", for: indexPath) as! FeedViewCell
        let name = threadNames[indexPath.item]
        let snaps: [UIImage] = threads[name]!
        let snap: UIImage = snaps[indexPath.item]
//        cell.readOrNot.currentImage = #imageLiteral(resourceName: "read")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let name = threadNames[indexPath.item]
//        let snaps: [UIImage] = threads[name]!
//        let snap: UIImage = snaps[indexPath.item]
        performSegue(withIdentifier: "feedToView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "feedToView" {
                if let dest = segue.destination as? ViewImageController {
                    dest.toView = self.toView
                }
            }
        }
    }
    
}
