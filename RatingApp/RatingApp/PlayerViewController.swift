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
extension PlayerViewController {
    
    @IBAction func cancelToPlayersViewController(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {
        guard let playersDetailsViewController = segue.source as? PlayersDetailsViewController,
            let player = playersDetailsViewController.player else {
                return
        }
        
        // add the new player to the players array
        players.append(player)
        print("palyer added \(String(describing: player.name))")
        // update the tableView
        let indexPath = IndexPath(row: players.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
}
