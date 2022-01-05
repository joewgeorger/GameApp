//
//  ViewController.swift
//  GameApp
//
//  Created by Joe Georger on 12/31/21.
//

import UIKit

class SelectViewController: UIViewController, UITableViewDataSource {

    

    @IBOutlet weak var table: UITableView!
    
    let games = ["Darts: Countdown", "Darts: Knockout" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "gameCell")
        cell.textLabel!.text = games[indexPath.section]
        return cell
    }

}

