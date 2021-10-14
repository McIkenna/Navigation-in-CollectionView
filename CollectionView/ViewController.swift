//
//  ViewController.swift
//  CollectionView
//
//  Created by New Account on 10/13/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        100
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath)
        as UICollectionViewCell
    
        cell.backgroundColor = self.randomColor()
        return cell
    }
    
    func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue : blue, alpha: 1.0)
    }

    @IBOutlet weak var collectionView : UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Register collection view
        self.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "firstCell")
        collectionView.dataSource = self
    }


    @IBOutlet weak var nextViewButton : UIButton!
    
    @IBAction func tapOnButton(_ sender : UIButton){
        //print("this button was clicked")
        let secondVC = SecondViewController()
        //present(secondVC, animated: true, completion: nil)
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

