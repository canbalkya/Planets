import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    @IBOutlet weak var tableView: UITableView!
//    var searchController = UISearchController()
    
    var myPlanets = [Planets]()
    var planetNames = [String]()
    var chosenPlanets = Planets()
    
    var searchTexts = [String]()
    var searching = false
    let search = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()

        search.searchResultsUpdater = self as? UISearchResultsUpdating
        search.searchBar.delegate = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Find a planet"
        search.searchBar.keyboardAppearance = .dark
        search.searchResultsUpdater = self as? UISearchResultsUpdating
        navigationItem.searchController = search
        
        if let filepath = Bundle.main.path(forResource: "Mercury", ofType: "text") { mercuryInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Venus", ofType: "text") { venusInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "World", ofType: "text") { worldInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Mars", ofType: "text") { marsInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Jupiter", ofType: "text") { jupiterInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Saturn", ofType: "text") { saturnInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Uranus", ofType: "text") { uranusInfo = try! String(contentsOfFile: filepath) }
        if let filepath = Bundle.main.path(forResource: "Neptune", ofType: "text") { neptuneInfo = try! String(contentsOfFile: filepath) }
        
//        tableView.tableHeaderView = searchController.searchBar
//        searchController.searchResultsUpdater = self
        
        let mercury = Planets()
        mercury.name = "Mercury"
        mercury.information = mercuryInfo
        mercury.image = UIImage(named: "Mercury.jpg")!
        
        let venus = Planets()
        venus.name = "Venus"
        venus.information = venusInfo
        venus.image = UIImage(named: "Venus.jpg")!

        let world = Planets()
        world.name = "World"
        world.information = worldInfo
        world.image = UIImage(named: "World.jpg")!
        
        let mars = Planets()
        mars.name = "Mars"
        mars.information = marsInfo
        mars.image = UIImage(named: "Mars.jpg")!
        
        let jupiter = Planets()
        jupiter.name = "Jupiter"
        jupiter.information = jupiterInfo
        jupiter.image = UIImage(named: "Jupiter.jpg")!
        
        let saturn = Planets()
        saturn.name = "Saturn"
        saturn.information = saturnInfo
        saturn.image = UIImage(named: "Saturn.jpg")!
        
        let uranus = Planets()
        uranus.name = "Uranus"
        uranus.information = uranusInfo
        uranus.image = UIImage(named: "Uranus.jpg")!
        
        let neptune = Planets()
        neptune.name = "Neptune"
        neptune.information = neptuneInfo
        neptune.image = UIImage(named: "Neptune.jpg")!
    
        myPlanets.append(mercury)
        myPlanets.append(venus)
        myPlanets.append(world)
        myPlanets.append(mars)
        myPlanets.append(jupiter)
        myPlanets.append(saturn)
        myPlanets.append(uranus)
        myPlanets.append(neptune)
    }
    
//    func updateSearchResults(for searchController: UISearchController) {
//        <#code#>
//    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchTexts.count
        } else {
            return myPlanets.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! IntroductionCell
        
        if searching {
            cell.planetIntroductionLabel?.text = searchTexts[indexPath.row]
            cell.planetIntraductionImageView?.image = myPlanets[indexPath.row].image
        } else {
            cell.planetIntroductionLabel?.text = myPlanets[indexPath.item].name
            cell.planetIntraductionImageView?.image = myPlanets[indexPath.row].image
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenPlanets = myPlanets[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchTexts = planetNames.filter({ $0.lowercased().prefix(searchText.count) == searchText.lowercased() })
        searching = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        search.searchBar.text = ""
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let informationVC = segue.destination as! InformationVC
            informationVC.selectedPlanet = self.chosenPlanets
        }
    }
}
