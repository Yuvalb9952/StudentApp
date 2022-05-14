import UIKit

class StudentDetailsViewController: UIViewController {

    var student:Student?{
        didSet{
            if(idLabel != nil){
                idLabel.text = student?.id
                nameLabel.text = student?.name
                phoneLabel.text = student?.phone
                addressLabel.text = student?.address
            }
        }
    }
    
    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let student = student {
            idLabel.text = student.id
            nameLabel.text = student.name
            phoneLabel.text = student.phone
            addressLabel.text = student.address
        }
    }
}
