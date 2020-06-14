//
//  subjectsCollectionViewCell.swift
//  Moallem_task
//
//  Created by Moustafa on 6/14/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit


class subjectsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var nameLP: UILabel!
    
  
    
    func Update(name:String,image:String)
        {
            //print(item.name!,"  ", item.image!)

    //        if let x=item.name, let y=item.image{
    //            self.name.text=x
    //            self.image.image=UIImage(named: y)
    //            print("Contains a value!")
    //        } else {
    //            print("Doesn’t contain a value.")
    //        }
            //guard let x=item.name,let y = item.image else{return}
          
                print("---",name, image)
                nameLP.text=name
                imageV.image=UIImage(named: "Moallem.png")
            
            
        }
    
}
