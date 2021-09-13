//
//  ViewController.swift
//  LargeNavigationSettings
//
//  Created by Lyvennitha on 18/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        navigationController?.navigationBar.sizeToFit()
        self.tableView.contentInsetAdjustmentBehavior = .never
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == tableView{
            if tableView.contentOffset.y > 10.0{
                    self.navigationController?.navigationBar.prefersLargeTitles = false
            }
            if tableView.contentOffset.y == 0.0{
                    self.navigationController?.navigationBar.prefersLargeTitles = true
                    self.navigationItem.largeTitleDisplayMode = .automatic
                    self.navigationController?.navigationBar.sizeToFit()
            }
        }
    }
    
   
}
