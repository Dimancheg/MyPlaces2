//
//  MainViewController.swift
//  MyPlaces2
//
//  Created by Dmitry Kalnitsky on 22/01/2023.
//

import UIKit

class MainViewController: UITableViewController {
    
    
    let parkName = ["Парк Бэ-Иврит", "Парк А-Манхигим", "Парк Ган-аир", "Парк Ха-музыка"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return parkName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = parkName[indexPath.row]
        cell.imageView?.image = UIImage(named: parkName[indexPath.row])

        return cell
    }
   



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
