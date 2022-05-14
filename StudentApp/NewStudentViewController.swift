import UIKit

class NewStudentViewController: UIViewController {


    @IBOutlet weak var phoneTv: UITextField!
    @IBOutlet weak var nameTv: UITextField!
    @IBOutlet weak var idTv: UITextField!
    @IBOutlet weak var avatarImgv: UIImageView!
    @IBOutlet weak var addressTv: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func save(_ sender: Any) {
        let student = Student()
        student.id = idTv.text
        student.name = nameTv.text
        student.phone = phoneTv.text
        student.address = addressTv.text
        Model.instance.add(student: student)
        self.navigationController?.popViewController(animated: true)
    }
}
