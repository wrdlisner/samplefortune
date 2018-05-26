//
//  resultViewController.swift
//  samplefortune
//
//  Created by 袖川航平 on 2018/05/26.
//  Copyright © 2018 袖川航平. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    let results = [UIImage(named: "1.jpg"),UIImage(named: "2.jpg"),UIImage(named: "3.jpg"),UIImage(named: "4.jpg"),UIImage(named: "5.jpg")]
    let words = ["『あなたの事が好きです』","『君と一緒にいる時だけ、素の自分で居られる』","『こんな気持ちになるなんて自分でも思わなかった』"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    override func resultViewController() {
//        super .viewWillAppear(==)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var resultView: UIImageView!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
