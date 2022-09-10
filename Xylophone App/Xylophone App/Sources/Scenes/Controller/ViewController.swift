//
//  ViewController.swift
//  Xylophone App
//
//  Created by Georgiy on 09.09.2022.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        let nameSound = sender.titleLabel?.text ?? "nil"
        playSound(for: nameSound)
    }
    
    func playSound(for music: String) {

        let url = Bundle.main.url(forResource: music, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
