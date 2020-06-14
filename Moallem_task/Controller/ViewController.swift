//
//  ViewController.swift
//  Moallem_task
//
//  Created by Moustafa on 6/14/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    
   var playerviewcontroller = AVPlayerViewController()
     var playerview = AVPlayer ()
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.delegate=self
        CollectionView.dataSource=self
        collectionView2.delegate=self
        collectionView2.dataSource=self
        CollectionView.accessibilityIdentifier="CollectionViewACell"
        collectionView2.accessibilityIdentifier="CollectionViewBCell"

    }

}


extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.accessibilityIdentifier=="CollectionViewACell"
        {
            return DataService.instatnce.SubjectCount()
        }
        else
        {
            return 3
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView.accessibilityIdentifier=="CollectionViewACell"
        {
            if let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)as? subjectsCollectionViewCell
            {
                let item = DataService.instatnce.SubArray()[indexPath.row]
                print(indexPath.row,"  ",item.name!,"  ", item.image!)
                //guard let x=item.name,let y = item.image else{return MoallemCollectionViewCell()}
                //image.image=UIImage(named: item.image!)
                cell.Update(name: item.name!, image: item.image!)
                
                return cell
            }
            else
            {
                return subjectsCollectionViewCell()
            }
        }
        else
        {
                    if let cell2=collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)as? VideoCollectionViewCell
                    {
                        //cell2.delegate = self
//                        cell2.btn?.tag = indexPath.row
//                        cell2.btn.addTarget(self, action: #selector(VideoAction), for: .touchUpInside)
           // self.tabBarController?.tabBar.isHidden = true
            let tabGester=UITapGestureRecognizer(target: self, action: #selector(self.VideoAction))
                        cell2.photo.addGestureRecognizer(tabGester)
                        cell2.photo.isUserInteractionEnabled=true
                        return cell2
                    }
                    else
                    {
                        return VideoCollectionViewCell()
                    }
        }
    }
    
    @objc func VideoAction()
    {
        

        let fileURL = NSURL(fileURLWithPath:"/Users/moustafa/Desktop/Moallem_task/Moallem_task/1. Introduction.mp4")
                playerview = AVPlayer(url: fileURL as URL)
                //playerviewcontroller.videoGravity = .resizeAspectFill
                //playerview.volume=30.0
                //playerview.actionAtItemEnd = .none
        
                playerviewcontroller.player = playerview
        
                self.present(playerviewcontroller, animated: true){
        
                    self.playerviewcontroller.player?.play()
    }


    
}
    
    
    
}



extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView.accessibilityIdentifier=="CollectionViewBCell"
        {
            return CGSize(width: 300, height: 150)
        }
        else
        {
            return CGSize(width: 155, height: 170)
        }
    }
}
