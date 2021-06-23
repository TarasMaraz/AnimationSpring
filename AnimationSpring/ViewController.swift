//
//  ViewController.swift
//  AnimationSpring
//
//  Created by Тарас Панин on 23.06.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationifoLable: UILabel!
    
    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var getAnimationButton: SpringButton!
    
    private let animationSet = Animation.getAnimationSettings()
    private var randomAnimation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomAnimation = animationSet.preset.randomElement() ?? ""
    
    }

    @IBAction func tappedAnimationButton(_ sender: UIButton) {
        animatedView.animation = randomAnimation
        
        animatedView.curve = animationSet.curve.randomElement() ?? ""
        animatedView.force = CGFloat(Double.random(in: animationSet.force))
        animatedView.duration = CGFloat(Double.random(in: animationSet.duration))
        animatedView.delay = CGFloat(Double.random(in: animationSet.delay))
        
        animatedView.animate()
        
        randomAnimation = animationSet.preset.randomElement() ?? ""
        getAnimationButton.setTitle("Run \(randomAnimation)", for: .normal)
        
        animationifoLable.text = animatedView.animation
    }
    
}

