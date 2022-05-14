import UIKit

class ViewController: UIViewController,MySegueProtocol {

    func getContainer(identifier:String) -> UIView {
        return containerView;
    }
    @IBOutlet weak var containerView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "studentsListSegue", sender: self)
    }
}

protocol MySegueProtocol {
    func getContainer(identifier:String) ->UIView
}
class MySegue: UIStoryboardSegue {
    
    override func perform() {
        let svc = self.source
        let dvc = self.destination
        
        svc.addChild(dvc)
        if let svcp = svc as? MySegueProtocol{
            let container = svcp.getContainer(identifier: self.identifier!)
            dvc.view.frame = container.frame
            dvc.view.frame.origin.x = 0
            dvc.view.frame.origin.y = 0
            container.addSubview(dvc.view)
        }
    }
}
