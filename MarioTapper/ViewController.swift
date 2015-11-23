//
//  ViewController.swift
//  MarioTapper
//
//  Created by Vu Dang on 11/20/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var blockBtn: UIButton!
    @IBOutlet weak var numTapsLbl: UILabel!
    
    @IBAction func playBtnPressed(sender: AnyObject)
    {
        logo.hidden = true;
        playBtn.hidden = true;
        howManyTapsTxt.hidden = true;
        blockBtn.hidden = false;
        numTapsLbl.hidden = false;
        
        
    }


}

