//
//  ViewController.swift
//  StormViewer
//
//  Created by Alejandro Barranco on 10/12/19.
//  Copyright © 2019 alexbar10. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    // MARK: - Properties
    var pictures = [String]()
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        pictures = getPictures()
        print("Pictures: \(pictures)")
    }
 
    
    // MARK: - Utility
    private func getPictures() -> [String] {
        let prefixPictures = "nssl"
        var pictures = [String]()
        
        // Lets us work with filesystem
        let fileManager = FileManager.default
        
        // Set the resource path of our app's bundle
        let path = Bundle.main.resourcePath!
        
        // Set to the contents of the directory at a path (returned as [filenames])
        let items = try! fileManager.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.contains(prefixPictures) {
                pictures.append(item)
            }
        }
                
        return pictures
    }

}


// MARK: - Extensions
extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
}
