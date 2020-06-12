//
//  ViewController.swift
//  YouTube-OneDayBuild
//
//  Created by Admin on 10/06/20.
//  Copyright © 2020 Ashok@apponward. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, modelDeligate{
    
    
    var model = Model()
    var videos = [Video]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideo()
        
        tableView.delegate = self
        tableView.dataSource = self
        model.deligate = self
        
        
    }
    
    func fatchedVideo(_ videos: [Video]) {
        self.videos = videos
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEO_CELL, for: indexPath)
        
        // congigure the data in table view cell
        
        // get the tittle for the video in question
        
        let title = self.videos[indexPath.row].title
        cell.textLabel?.text = title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

