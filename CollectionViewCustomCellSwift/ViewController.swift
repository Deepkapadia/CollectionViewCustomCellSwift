//
//  ViewController.swift
//  CollectionViewCustomCellSwift
//
//  Created by MAC OS on 6/1/17.
//  Copyright © 2017 MAC OS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var arr:[String]? = nil;
    var img:[String]? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arr = ["iPhone","Asp.Net","Android","Java","PHP"];
        img = ["image-1.jpg","image-1.jpg","image-1.jpg","image-1.jpg","image-1.jpg"];
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (arr?.count)!;
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let c1=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! firstcell;
        
        c1.imgv.image=UIImage(named: (img?[indexPath.row])!);
        c1.lbl.text=arr?[indexPath.row];
        
        return c1;
    }

}

