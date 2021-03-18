//
//  ScoreViewController.swift
//  MemoryGame
//
//  Created by mjm on 07/01/2021.
//  Copyright © 2021 antoine. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

extension ScoreViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return games.count
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreCell", for: indexPath)
//        let game = games[indexPath.row]
//        cell.textLabel?.text = "Score: \(game.score) coups"
//        cell.detailTextLabel?.text = game.formatedDate
        return cell
    }
}


