//
//  ViewController.swift
//  StudentApp
//
//  Created by Kely Sotsky on 06/04/2022.
//

import UIKit

class ViewController: UIViewController,MySegueProtocol {
//                        UITableViewDataSource, UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 0
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
////         Configure the cell...
//
//        return cell
//
//    }
    func getContainer(identifier:String) -> UIView {
        return containerView;
    }
    @IBOutlet weak var containerView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        performSegue(withIdentifier: "studentsListSegue", sender: self)
        performSegue(withIdentifier: "newStudentSegue", sender: self)
        performSegue(withIdentifier: "aboutSegue", sender: self)
        
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
