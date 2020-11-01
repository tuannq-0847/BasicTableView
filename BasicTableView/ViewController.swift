//
//  ViewController.swift
//  BasicTableView
//
//  Created by tuannguyen on 10/28/20.
//  Copyright © 2020 tuannguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTable: UITableView!
    let images = [UIImage(named: "car1"),UIImage(named: "car2"),UIImage(named: "car3"),UIImage(named: "car4"),UIImage(named: "car5"),UIImage(named: "car6")]
    let labelCars = ["Android","iOs","Everything","always","yo","me"]
    
    let url = "http://dummy.restapiexample.com/api/v1/employees"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad.....")
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
                return
            }
            guard let dataResponse = data else {
                print(error.debugDescription)
                return
            }
            if let result = NSString(data: dataResponse, encoding: String.Encoding.utf8.rawValue) as String?{
                print(result)
            }
            guard let data = data, error == nil else{
                print("something went wrong....")
                return
            }
            }).resume()
        // Do any additional setup after loading the view.
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section: " + String(section)
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 167
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let detail = sb.instantiateViewController(identifier: "DETAIL") as! DetailViewController
        detail.image = images[indexPath.row]!
        self.navigationController?.pushViewController(detail, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! RowTableViewCell
        cell.imageCar.image = images[indexPath.row]
        cell.labelCar.text = labelCars[indexPath.row]
        return cell
    }
}

