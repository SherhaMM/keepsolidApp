//
//  ViewController.swift
//  keppSApp
//
//  Created by Makcim Mikhailov on 02.07.19.
//  Copyright © 2019 Makcim Mikhailov. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var data : [String] = ["No depending be convinced ","Had denoting properly "," Exeter longer wisdom "]
    var longData : [String] = ["Whole wound wrote at whose to style in.","Introduced imprudence see say unpleasing devonshire acceptance son Exeter longer wisdom gay nor design age. Am weather to entered norland no in showing service","Am weather to entered norland no in showing service. Nor repeated speaking shy appetite. Excited it hastily an pasture it observe. Snug hand how dare here too."]
   
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let  cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomCell
        let data = self.data[indexPath.row]
        let longData = self.longData[indexPath.row]
        cell?.setTopCenterText(text: data, centerText: longData)
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        request("http://jsonplaceholder.typicode.com/posts").validate().responseJSON {
            responseJSON in
            switch responseJSON.result {
            case .success(let value):
                print(value)
            case .failure(let error):
                print(error)
            }
        }
        print("request is ready")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

