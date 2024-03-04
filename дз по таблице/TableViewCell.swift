
import UIKit

class TableViewCell: UIViewController, UITableViewDelegate,UITableViewDataSource {
 
    let characters: [HarryPotterCharacter] = [
        HarryPotterCharacter(name: "Harry", surname: "Potter", house: "Gryffindor", wand: "Holly, 11', phoenix feather core"),
        HarryPotterCharacter(name: "Hermione", surname: "Granger", house: "Gryffindor", wand: "Vine, 10 ¾', dragon heartstring core"),
        HarryPotterCharacter(name: "Ron", surname: "Weasley", house: "Gryffindor", wand: "Willow, 14', unicorn hair core"),
        HarryPotterCharacter(name: "Albus", surname: "Dumbledore", house: "Gryffindor", wand: "Elder, 15', thestral tail hair core"),
        HarryPotterCharacter(name: "Severus", surname: "Snape", house: "Slytherin", wand: "Yew, 13 ½', phoenix feather core"),
        HarryPotterCharacter(name: "Minerva", surname: "McGonagall", house: "Gryffindor", wand: "Fir, 9 ½', dragon heartstring core"),
        HarryPotterCharacter(name: "Draco", surname: "Malfoy", house: "Slytherin", wand: "Hawthorn, 10', unicorn hair core"),
        HarryPotterCharacter(name: "Luna", surname: "Lovegood", house: "Ravenclaw", wand: "Cherry, 14', unicorn hair core"),
        HarryPotterCharacter(name: "Neville", surname: "Longbottom", house: "Gryffindor", wand: "Cherry, 13', unicorn hair core"),
        HarryPotterCharacter(name: "Ginny", surname: "Weasley", house: "Gryffindor", wand: "Yew, 9', phoenix feather core"),
        HarryPotterCharacter(name: "Sirius", surname: "Black", house: "Gryffindor", wand: "Mahogany, 16', unknown core"),
        HarryPotterCharacter(name: "Remus", surname: "Lupin", house: "Gryffindor", wand: "Cypress, 10 ¼', unicorn hair core"),
        HarryPotterCharacter(name: "Bellatrix", surname: "Lestrange", house: "Slytherin", wand: "Walnut, 12 ¾', dragon heartstring core"),
        HarryPotterCharacter(name: "Lucius", surname: "Malfoy", house: "Slytherin", wand: "Elm, 18', dragon heartstring core"),
        HarryPotterCharacter(name: "Rubeus", surname: "Hagrid", house: "Gryffindor", wand: "Oak, 16', unknown core")
    ]
    
    lazy var table: UITableView = {
        let table = UITableView()
        table.dataSource = self
        table.delegate = self
        table.backgroundColor = .white
        table.register(ViewController.self, forCellReuseIdentifier: "ViewController")
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       setUp()
    }
    func setUp() {
        
        view.addSubview(table)
        
        table.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ViewController", for: indexPath) as? ViewController else { return UITableViewCell() }
        
        cell.name.text = characters[indexPath.row].name
        cell.surName.text = characters[indexPath.row].surname
        cell.wand.text = characters[indexPath.row].wand
        cell.house.text = characters[indexPath.row].house
        
        
        if characters[indexPath.row].house == "Gryffindor" {
            cell.backgroundColor = .red
        }
        
        else   if characters[indexPath.row].house == "Slytherin" {
            cell.backgroundColor = .green
        }
        
        else   if characters[indexPath.row].house == "Ravenclaw" {
            cell.backgroundColor = .blue
        }
        
        else   if characters[indexPath.row].house == "pufendui" {
            cell.backgroundColor = .yellow
        }
        
        return cell
    }


}

