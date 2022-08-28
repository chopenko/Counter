//
//  ViewController.swift
//  Counter
//
//  Created by Eugene Chopenko on 01.08.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var counter: Int = 0
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var counterNumber: UILabel!
    
    @IBAction func clearCounter(_ sender: Any) {
        counter = 0
        counterNumber.text = "\(counter)"
    }
    
    @IBAction func plusOne(_ sender: UIButton) {
        let pathToSound = Bundle.main.path(forResource: "cashreg", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Error on playing wav file")
        }
        
        print("button +1 pressed")
        counter += 1
        print("\(counter)")
        counterNumber.text = "\(counter)"
        
        
    }
    
}

