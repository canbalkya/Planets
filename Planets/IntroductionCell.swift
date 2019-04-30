import UIKit

class IntroductionCell: UITableViewCell {
    @IBOutlet weak var planetIntraductionImageView: UIImageView!
    @IBOutlet weak var planetIntroductionLabel: UILabel!
    
    var secondSelectedPlanet = Planets()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .black
        selectionStyle = .none
        
        planetIntroductionLabel.text = secondSelectedPlanet.name
        planetIntraductionImageView.image = secondSelectedPlanet.image
    }
}
