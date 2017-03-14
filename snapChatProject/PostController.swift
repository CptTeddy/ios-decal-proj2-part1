//
//  PostController.swift
//  snapChatProject
//
//  Created by ZhangJianglai on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class PostController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var selectedImage: UIImage?
    var selectedFeed: String?
    
    @IBOutlet var feedToPost: UITableView!
    
    @IBOutlet weak var feedConfirm: UILabel!
    
    @IBAction func post(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedToPost.delegate = self
        feedToPost.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threadNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = feedToPost.dequeueReusableCell(withIdentifier: "FeedPostCell", for: indexPath) as! FeedPostCell
        cell.feedName.text = threadNames[indexPath.item]
        selectedFeed = threadNames[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        feedConfirm.text = threadNames[indexPath.item]
    }
    
}
