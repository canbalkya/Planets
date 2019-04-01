import UIKit

class planetIntroductionVC: UITableViewCell {

    @IBOutlet weak var planetIntraductionImageView: UIImageView!
    
    @IBOutlet weak var planetIntroductionLabel: UILabel!
    
    var secondSelectedPlanet = Planets()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        planetIntroductionLabel.text = secondSelectedPlanet.name
        planetIntraductionImageView.image = secondSelectedPlanet.image
    }
}
