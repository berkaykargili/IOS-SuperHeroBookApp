//
//  ViewController.swift
//  superHeroBook
//
//  Created by Berkay Kargılı on 23.02.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    var superHeroNames = [String]()
    var superHeroImages = [String]()
    var selectedName = ""
    var selectedImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
       
        superHeroNames.append("Batman")
        superHeroNames.append("Superman")
        superHeroNames.append("Ironman")
        superHeroNames.append("Spiderman")
        superHeroNames.append("Captain America")
        
        
        superHeroImages.append("batman")
        superHeroImages.append("superman")
        superHeroImages.append("ironman")
        superHeroImages.append("spiderman")
        superHeroImages.append("captainamerica")
    
    }
    // numbersOfRowsInSection -> Kaç tane row olacak ?
    // cellForRow atIndexPath -> Hücrenin içinde neler gösterilecek ?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superHeroNames.remove(at: indexPath.row)
            superHeroImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = superHeroNames[indexPath.row]
        selectedImage = superHeroImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsViewController
            destinationVC.heroNameSelected = selectedName
            destinationVC.heroImageNameSelected = selectedImage
        }
    }
}
    


