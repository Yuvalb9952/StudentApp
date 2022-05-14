import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    var id = "" {
        didSet{
            if(idLabel != nil){
                idLabel.text = id
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        idLabel.text = id
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
