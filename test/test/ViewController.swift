//
//  ViewController.swift
//  test
//
//  Created by Huy Vu on 11/8/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Table_View: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Table_View.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "sdfsdfsdf")
        
        Table_View.reloadData()
    }


}

extension ViewController:   UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sdfsdfsdf", for: indexPath) as! TableViewCell
        
        cell.title.text = "Huy"
        cell.des.text = "Vu"
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TableViewCell.heigh_cell
    }
}
