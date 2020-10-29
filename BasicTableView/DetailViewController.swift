//
//  DetailViewController.swift
//  BasicTableView
//
//  Created by tuannguyen on 10/30/20.
//  Copyright © 2020 tuannguyen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var detailImage: UIImageView!
    var image:UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        detailImage.image = image
        // Do any additional setup after loading the view.
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
