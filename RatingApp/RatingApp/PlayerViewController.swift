//
//  PlayerViewController.swift
//  RatingApp
//
//  Created by Amit on 03/11/17.
//  Copyright © 2017 Amit. All rights reserved.
//

import UIKit

class PlayerViewController: UITableViewController {

 var players = SampleData.generatePlayersData()

}

extension PlayerViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell",
                                                 for: indexPath) as! PlayerCell
        
        let player = players[indexPath.row]
        cell.player = player
        return cell
    }
}
