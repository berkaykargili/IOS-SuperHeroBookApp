//
//  detailsViewController.swift
//  superHeroBook
//
//  Created by Berkay Kargılı on 23.02.2023.
//

import UIKit

class detailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var heroNameSelected = ""
    var heroImageNameSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imageView.image = UIImage(named: heroImageNameSelected)
        label.text = heroNameSelected
        // Do any additional setup after loading the view.
    }
    


}
