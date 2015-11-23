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
    //Variables
    var currentTaps = 0;
    var maxTaps = 0;
    
    //buttons
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var blockBtn: UIButton!
    @IBOutlet weak var numTapsLbl: UILabel!
    
    
    @IBAction func playBtnPressed(sender: AnyObject)
    {
        if (howManyTapsTxt.text != nil && howManyTapsTxt.text != "")
        {
            logo.hidden = true;
            playBtn.hidden = true;
            howManyTapsTxt.hidden = true;
            blockBtn.hidden = false;
            numTapsLbl.hidden = false;
            
            currentTaps = 0;
            maxTaps = Int(howManyTapsTxt.text!)!;
            
            updateTaps();
            
        }
    }
    
    @IBAction func blockBtnPressed(sender: UIButton)
    {
        currentTaps++
        updateTaps();
        
        if isMaxTapsReached()
        {
            restartGame();
        
        }
        
    }
    
    func restartGame()
    {
        logo.hidden = false
        playBtn.hidden = false;
        howManyTapsTxt.hidden = false;
        blockBtn.hidden = true;
        numTapsLbl.hidden = true;
        maxTaps = 0;
        howManyTapsTxt.text = "";
        
    }

    func updateTaps()
    {
        numTapsLbl.text = "\(currentTaps)/\(maxTaps) Taps"
    }
    
    func isMaxTapsReached () -> Bool
    {
        if currentTaps >= maxTaps
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}

