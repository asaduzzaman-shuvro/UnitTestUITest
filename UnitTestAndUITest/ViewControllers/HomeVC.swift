//
//  ViewController.swift
//  UnitTestAndUITest
//
//  Created by SHUVRO on 2/18/18.
//  Copyright © 2018 SHUVRO. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    var movies = MovieHelper.getMovies()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 44
        tableView.tableFooterView = UIView()
        self.view.addSubview(tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellIdentifier")
            cell?.textLabel?.text = movies[indexPath.row].title
            cell?.detailTextLabel?.text = movies[indexPath.row].genre.rawValue
        }
        return cell!
    }
    
}
