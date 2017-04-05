//
//  ViewController.swift
//  adventure
//
//  Created by manatee on 4/5/17.
//  Copyright © 2017 diligentagility. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

  let baseArray = ["Hello?", "I said, Hello?!", "Is anyone there?", "I can hear breathing but can not see anything."]
  var pushedArray:[String] = []
  
  var counter = 0
 

  
  @IBAction func addLabelButton(_ sender: UIButton) {
    print(counter)
    if pushedArray.count != baseArray.count {
      let pulledString = baseArray[counter]
      print(counter)
      print("\(pushedArray.count) - \(baseArray.count)")
      pushedArray.append(pulledString)
      counter += 1
      print(pushedArray.count)
    } else {
      print("no more items in base array")
    }
    collectionTable.reloadData()
  }
  
  @IBOutlet weak var collectionTable: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    
    print("collection view loaded")
    // Do any additional setup after loading the view, typically from a nib.
  }


  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return pushedArray.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    let baseTextfield = cell.contentView.viewWithTag(1) as! UITextField
    baseTextfield.text = pushedArray[indexPath.row]
    
    
    cell.backgroundColor = UIColor.gray
    return cell
  }

}

