//
//  DataService.swift
//  Moallem_task
//
//  Created by Moustafa on 6/14/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import Foundation

class DataService
{
    static let instatnce=DataService()
    let subjectArray=[Subjects(image: "Moallem.png", name: "Physics"),Subjects(image: "Moallem.png", name: "Biology"),Subjects(image: "Moallem.png", name: "History"),Subjects(image: "Moallem.png", name: "Algapra")]
    
    func SubjectCount() -> Int {
        return subjectArray.count
    }
    func SubArray()->[Subjects]
    {
        return subjectArray
    }
    
    
    
}
