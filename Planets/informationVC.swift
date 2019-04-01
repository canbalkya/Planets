import UIKit

class informationVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView! 
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var informationText: UITextView!
    
    var selectedPlanet = Planets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        nameLabel.text = selectedPlanet.name
        informationText.text = selectedPlanet.information
        imageView.image = selectedPlanet.image
        
        navigationItem.largeTitleDisplayMode = .always
    }
}
