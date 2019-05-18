//
//  ViewController.swift
//  NC Bird
//
//  Created by Jasmine Hanifa Mounir on 18/05/19.
//  Copyright © 2019 Jasmine Hanifa Mounir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birdA: UIImageView!
    @IBOutlet weak var birdB: UIImageView!
    @IBOutlet weak var birdC: UIImageView!
   
    var birdAImage: [UIImage] = []
    var birdBImage: [UIImage] = []
    var birdCImage: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birdAImage = createImageArray(total: 4, imagePrefix: "birdA")
        birdBImage = createImageArray(total: 4, imagePrefix: "birdB")
        birdCImage = createImageArray(total: 4, imagePrefix: "birdC")
    }

    func createImageArray(total: Int, imagePrefix: String) -> [UIImage]{
        
        var imageArray:[UIImage] = []
        
        for imageCount in 0..<total{
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        
        return imageArray
    }

}

