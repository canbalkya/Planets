import UIKit

class FirstMainVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    @IBOutlet weak var tableView: UITableView!
    var searchController: UISearchController!
    
    var searchPlanets = [String]()
    var planetsName = [String]()
    var myPlanets = [Planets]()
    var chosenPlanets = Planets()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        
        searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = searchController
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Find a planet"
        searchController.searchBar.backgroundImage = UIImage()
        searchController.searchBar.keyboardAppearance = .dark
        
        if let filepath = Bundle.main.path(forResource: "Mercury", ofType: "text") { mercuryInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Venus", ofType: "text") { venusInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "World", ofType: "text") { worldInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Mars", ofType: "text") { marsInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Jupiter", ofType: "text") { jupiterInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Saturn", ofType: "text") { saturnInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Uranus", ofType: "text") { uranusInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Neptune", ofType: "text") { neptuneInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Kepler16b", ofType: "text") { kepler16BInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Kepler186f", ofType: "text") { kepler186FInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Kepler296e", ofType: "text") { kepler296EInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Kepler440b", ofType: "text") { kepler440BInfo = try! String(contentsOfFile: filepath) }
        
        let mercury = Planets()
        mercury.name = "Mercury"
        planetsName.append(mercury.name)
        mercury.information = mercuryInfo
        mercury.image = UIImage(named: "Mercury.jpg")!
        
        let venus = Planets()
        venus.name = "Venus"
        planetsName.append(venus.name)
        venus.information = venusInfo
        venus.image = UIImage(named: "Venus.jpg")!

        let world = Planets()
        world.name = "World"
        planetsName.append(world.name)
        world.information = worldInfo
        world.image = UIImage(named: "World.jpg")!
        
        let mars = Planets()
        mars.name = "Mars"
        planetsName.append(mars.name)
        mars.information = marsInfo
        mars.image = UIImage(named: "Mars.jpg")!
        
        let jupiter = Planets()
        jupiter.name = "Jupiter"
        planetsName.append(jupiter.name)
        jupiter.information = jupiterInfo
        jupiter.image = UIImage(named: "Jupiter.jpg")!
        
        let saturn = Planets()
        saturn.name = "Saturn"
        planetsName.append(saturn.name)
        saturn.information = saturnInfo
        saturn.image = UIImage(named: "Saturn.jpg")!
        
        let uranus = Planets()
        uranus.name = "Uranus"
        planetsName.append(uranus.name)
        uranus.information = uranusInfo
        uranus.image = UIImage(named: "Uranus.jpg")!
        
        let neptune = Planets()
        neptune.name = "Neptune"
        planetsName.append(neptune.name)
        neptune.information = neptuneInfo
        neptune.image = UIImage(named: "Neptune.jpg")!
        
        let kepler16B = Planets()
        kepler16B.name = "Kepler-16b"
        planetsName.append(kepler16B.name)
        kepler16B.information = kepler16BInfo
        kepler16B.image = UIImage(named: "Kepler16b.jpg")!
        
        let kepler186F = Planets()
        kepler186F.name = "Kepler-186f"
        planetsName.append(kepler186F.name)
        kepler186F.information = kepler186FInfo
        kepler186F.image = UIImage(named: "Kepler186f.jpg")!
        
        let kepler296E = Planets()
        kepler296E.name = "Kepler-296e"
        planetsName.append(kepler296E.name)
        kepler296E.information = kepler296EInfo
        kepler296E.image = UIImage(named: "Kepler296e.jpg")!
        
        let kepler440B = Planets()
        kepler440B.name = "Kepler-440b"
        planetsName.append(kepler440B.name)
        kepler440B.information = kepler440BInfo
        kepler440B.image = UIImage(named: "Kepler440b.jpg")!
    
        myPlanets.append(mercury)
        myPlanets.append(venus)
        myPlanets.append(world)
        myPlanets.append(mars)
        myPlanets.append(jupiter)
        myPlanets.append(saturn)
        myPlanets.append(uranus)
        myPlanets.append(neptune)
        myPlanets.append(kepler16B)
        myPlanets.append(kepler186F)
        myPlanets.append(kepler296E)
        myPlanets.append(kepler440B)
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        if planets.count > 0 {
//            tableView.backgroundView?.isHidden = true
//            tableView.separatorStyle = .singleLine
//        } else {
//            tableView.backgroundView?.isHidden = false
//            tableView.separatorStyle = .none
//        }
//
//        return 1
//    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchPlanets.count
        } else {
            return myPlanets.count
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if searchController.isActive {
            return false
        } else {
            return true
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! IntroductionCell
        
        if searching {
            cell.planetIntroductionLabel?.text = searchPlanets[indexPath.row]
            cell.planetIntraductionImageView?.image = myPlanets[indexPath.row].image
        } else {
            cell.planetIntroductionLabel?.text = planetsName[indexPath.row]
            cell.planetIntraductionImageView?.image = myPlanets[indexPath.row].image
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenPlanets = myPlanets[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchPlanets = planetsName.filter({ $0.lowercased().prefix(searchText.count) == searchText.lowercased() })
        searching = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchController.searchBar.text = ""
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let informationVC = segue.destination as! InformationVC
            informationVC.selectedPlanet = self.chosenPlanets
        }
    }
}
