import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { // , UISearchResultsUpdating
    
    @IBOutlet weak var searchBar: UISearchController?
    
    var searchController = UISearchController()
    var resultsController = UITableViewController()
    var filteredArray = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    var myPlanets = [Planets]()
    var chosenPlanets = Planets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController = UISearchController(searchResultsController: resultsController)
        tableView.tableHeaderView = searchController.searchBar
//        searchController.searchResultsUpdater = self
        resultsController.tableView.delegate = self
        resultsController.tableView.dataSource = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Planet Class
        
        let world = Planets()
        world.name = "World"
        world.information = ""
        world.image = UIImage(named: "World")!
        
        let mars = Planets()
        mars.name = "Mars"
        mars.information = ""
        mars.image = UIImage(named: "Mars.jpg")!
        
        //Planets Array
    
        myPlanets.append(world)
        myPlanets.append(mars)
        setupNavBar()
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
        return myPlanets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myPlanets[indexPath.row].name
        cell.imageView?.image = myPlanets[indexPath.row].image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenPlanets = myPlanets[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! IntroductionVC
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let informationVC = segue.destination as! informationVC
            informationVC.selectedPlanet = self.chosenPlanets
        }
    }
}
