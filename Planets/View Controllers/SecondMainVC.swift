//
//  EducationVC.swift
//  Planets
//
//  Created by Can Balkaya on 4/29/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class SecondMainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let educations = cases
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CCell", for: indexPath) as? EducationTVCell
        cell?.educationTitle.text = titles[indexPath.row]
        cell?.educationTextView.text = infos[indexPath.row]
        cell?.educationImageView.image = images[indexPath.row]
        return cell!
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 375
    }
}
