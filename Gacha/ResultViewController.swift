//
//  ResultViewController.swift
//  Gacha
//
//  Created by Tomoya Tanaka on 2021/06/19.
//  Modified by Yuki Kuwashima on 2022/08/03.
//

import UIKit

class ResultViewController: UIViewController {
    
	// <#ここにコメント#>
	var number: Int!
	
    // <#ここにコメント#>
	@IBOutlet var backgroundImageView: UIImageView!
    
    // <#ここにコメント#>
	@IBOutlet var monsterImageView: UIImageView!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // <#ここにコメント#>
		number = Int.random(in: 0...9)
        
        // <#ここにコメント#>
		if number == 9 {
            
            // <#ここにコメント#>
			monsterImageView.image = UIImage(named: "monster010")
			backgroundImageView.image = UIImage(named: "bg_gold")
            
        // <#ここにコメント#>
		} else if number > 7 {
            
            // <#ここにコメント#>
			monsterImageView.image = UIImage(named: "monster006")
			backgroundImageView.image = UIImage(named: "bg_red")
            
        // <#ここにコメント#>
		} else {
            
            // <#ここにコメント#>
			monsterImageView.image = UIImage(named: "monster003")
			backgroundImageView.image = UIImage(named: "bg_blue")
            
		}
    }
	
    // <#ここにコメント#>
	@IBAction func back() {
        
        // <#ここにコメント#>
		self.dismiss(animated: true, completion: nil)
	}
    
}
