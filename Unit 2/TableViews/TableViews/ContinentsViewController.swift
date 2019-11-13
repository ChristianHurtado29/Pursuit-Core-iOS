//
//  ContinentsViewController.swift
//  TableViews
//
//  Created by Christian Hurtado on 11/13/19.
//  Copyright © 2019 Christian Hurtado. All rights reserved.
//

import UIKit

class ContinentsViewController: UIViewController {

    
    @IBOutlet weak var continentsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continentsTableView.dataSource = self
    }
    
}
    
extension ContinentsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = continentsTableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        cell.textLabel?.text = "Row: \(indexPath.row + 1)"
        return cell
    }
}
