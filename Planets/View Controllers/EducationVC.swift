//
//  EducationVC.swift
//  Planets
//
//  Created by Can Balkaya on 4/29/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class EducationVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CCell", for: indexPath) as? EducationCVCell
        return cell!
    }
}
