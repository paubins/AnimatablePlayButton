//
//  ViewController.swift
//  AnimatablePlayButtonExample
//
//  Created by 鈴木 啓司 on 2015/12/14.
//  Copyright © 2015年 suzuki_keishi. All rights reserved.
//

import UIKit
import AnimatablePlayButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        let button = AnimatablePlayButton(lengthOfSize: 120)
        button.center = CGPoint(x: (view.frame).midX, y: (view.frame).midY)
        button.bgColor = .black
        button.color = .white
        button.addTarget(self, action: #selector(ViewController.tapped(_:)), for: UIControlEvents.touchUpInside)
        
        view.addSubview(button)
    }
    
    func tapped(_ sender: AnimatablePlayButton) {
        if sender.isSelected {
            sender.deselect()
        } else {
            sender.select()
        }
    }
}

