//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by thanhbh on 5/3/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var btnMens: UIButton!
    @IBOutlet weak var btnWomens: UIButton!
    @IBOutlet weak var btnCoed: UIButton!
    @IBOutlet weak var btnNext: BorderButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player("co-ed",nil)
        if let desiredLeague = player.desiredLeague {
            switch desiredLeague.lowercased() {
            case btnMens.titleLabel?.text?.lowercased():
                btnMens.addBoder()
                btnNext.isEnabled = true
            case btnWomens.titleLabel?.text?.lowercased():
                btnWomens.addBoder()
                btnNext.isEnabled = true
            case btnCoed.titleLabel?.text?.lowercased():
                btnCoed.addBoder()
                btnNext.isEnabled = true
            default:
                btnMens.resetBoder()
                btnWomens.resetBoder()
                btnCoed.resetBoder()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonTapped(_ sender: BorderButton) {
        btnMens.resetBoder()
        btnWomens.resetBoder()
        btnCoed.resetBoder()
        sender.addBoder()
        player.desiredLeague = sender.title(for: .selected)?.lowercased()
        btnNext.isEnabled = true
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSegue", sender: self)
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = self.player
        }
    }
}
