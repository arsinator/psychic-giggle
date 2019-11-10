//
//  myNewClass.swift
//  swift_lesson1_2
//
//  Created by Арсений Ермилов   on 16/10/2019.
//  Copyright © 2019 16817252. All rights reserved.
//

import UIKit

class myNewClass: NSObject, UINavigationControllerDelegate {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool){
        print(viewController)
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool){
        print(2)
    }
    

}
