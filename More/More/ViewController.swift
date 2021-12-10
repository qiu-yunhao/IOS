//
//  ViewController.swift
//  More
//
//  Created by hello on 2021/11/18.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let store = CardStore.init(num: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(ItemCell.self, forCellReuseIdentifier: "ItemCell")
        tableView.dataSource = self
        //tableView.rowHeight = 70
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        let item = store.cards[indexPath.row]
        cell.name?.text = item.words!
        cell.num?.text = "\(item.num)"
        cell.img?.image = item.image
        return cell
    }
    
    

}

