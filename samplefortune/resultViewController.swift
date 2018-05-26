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
    
    let words = ["『あなたの事が好きです』","『君と一緒にいる時だけ、素の自分で居られる』","『こんな気持ちになるなんて自分でも思わなかった』","『俺と付き合わなかったら後悔するよ』","『俺はおまえの為に生きる』"]
    
    var index = 0
    var index2 = 0
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        //　1 アラートのベースを作る
        let alertController = UIAlertController(title: "好きな人を思い浮かべてください", message: nil, preferredStyle: .alert)
        
        //2 ボタンを追加　追加したいボタンの数だけaddAction
        alertController.addAction(UIAlertAction(title: "準備OK", style: .default, handler: { action in
            self.pairs()
        }))
        
        // 3 アラートを表示
        present(alertController,
                animated: true,
                completion:{ () -> Void in print("hello")})
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView?.image = nil
        resultWords?.text = nil
    }
    
    
    func pairs() {
        index = Int(arc4random_uniform(5))
        index2 = Int(arc4random_uniform(5))
        resultWords.text = words[index]
        resultView?.image = results[index2]
    }

//    override func resultViewController() {
//        super .viewWillAppear(==)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rePlay(_ sender: UIButton) {
        resultView?.image = nil
        resultWords?.text = nil
        
        //　1 アラートのベースを作る
        let alertController = UIAlertController(title: "好きな人を思い浮かべてください", message: nil, preferredStyle: .alert)
        
        //2 ボタンを追加　追加したいボタンの数だけaddAction
        alertController.addAction(UIAlertAction(title: "準備OK", style: .default, handler: { action in
            self.pairs()
        }))
        
        // 3 アラートを表示
        present(alertController,
                animated: true,
                completion:{ () -> Void in print("hello")})
    }
    
    
    @IBOutlet weak var resultWords: UITextView!
    
    @IBOutlet weak var resultView: UIImageView?
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
