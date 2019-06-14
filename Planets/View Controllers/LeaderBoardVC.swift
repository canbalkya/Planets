//
//  LeaderBoardVC.swift
//  Planets
//
//  Created by Can Balkaya on 6/12/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class LeaderBoardVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeaderBoardCell", for: indexPath)
        return cell
    }
}
