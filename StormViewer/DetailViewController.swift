//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Alejandro Barranco on 11/12/19.
//  Copyright © 2019 alexbar10. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - Properties
    var selectedImage: String?
    
    
    // MARK: - Oulets
    @IBOutlet weak var imageView: UIImageView!
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
