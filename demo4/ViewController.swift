//
//  ViewController.swift
//  demo4
//
//  Created by 林俊緯 on 2021/7/20.
//

import UIKit

let nameOfFriend = ["Winnie", "Piglet", "Eeyore", "Tigger"]
let portraitsOfFriend = ["Winnie.png", "Piglet.png", "Eeyore.png", "Tigger.png"]
var arrayIndex: Int = 0

class ViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var portraitOfFriend: UIImageView!
    @IBOutlet var pageDot: UIPageControl!
    @IBOutlet var segment: UISegmentedControl!
    
    func sync() {
        portraitOfFriend.image = UIImage(named: portraitsOfFriend[arrayIndex])
        pageDot.currentPage = arrayIndex
        name.text = nameOfFriend[arrayIndex]
        segment.selectedSegmentIndex = arrayIndex
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sync()
    }

    @IBAction func pageControlChange(_ sender: Any) {
        if pageDot.currentPage == 0 {
            arrayIndex = 0
            sync()
        }
        else if pageDot.currentPage == 1 {
            arrayIndex = 1
            sync()
            
        }
        else if pageDot.currentPage == 2 {
            arrayIndex = 2
            sync()
        }
        else if pageDot.currentPage == 3 {
            arrayIndex = 3
            sync()
        }
    }
    
    @IBAction func nextButtonChange(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 1 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 2 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 3 {
            arrayIndex = 0
            sync()
        }
    }
    
    @IBAction func previousButtonChange(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = 3
            sync()
        }
        else if arrayIndex == 1 {
            arrayIndex = arrayIndex - 1
            sync()
        }
        else if arrayIndex == 2 {
            arrayIndex = arrayIndex - 1
            sync()
        }
        else if arrayIndex == 3 {
            arrayIndex = arrayIndex - 1
            sync()
        }
    }
    @IBAction func swipeToNextPic(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 1 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 2 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 3 {
            arrayIndex = 0
            sync()
        }
    }
        
    @IBAction func swipePreviousPic(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = 3
            sync()
        }
        else if arrayIndex == 1 {
            arrayIndex = arrayIndex - 1
            sync()
        }
        else if arrayIndex == 2 {
            arrayIndex = arrayIndex - 1
            sync()
        }
        else if arrayIndex == 3 {
            arrayIndex = arrayIndex - 1
            sync()
        }
    }
    @IBAction func segmentedControlChange(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            arrayIndex = 0
            sync()
        }
        else if segment.selectedSegmentIndex == 1 {
            arrayIndex = 1
            sync()
        }
        else if segment.selectedSegmentIndex == 2 {
            arrayIndex = 2
            sync()
        }
        else if segment.selectedSegmentIndex == 3 {
            arrayIndex = 3
            sync()
        }
    }
    
}
