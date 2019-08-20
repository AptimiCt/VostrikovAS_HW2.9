//
//  ViewController.swift
//  VostrikovAS_HW2.9
//
//  Created by Александр Востриков on 20/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var startAndNextAnimationOutlet: SpringButton!
    @IBOutlet var animationLabel: SpringLabel!
    
    let modelAnimation = AnimationData()
    static var animationCount = 0
    
    @IBAction func startAnimationButtonPrecced(_ sender: SpringButton) {
        let titleText = animationWithSpring()
        startAndNextAnimationOutlet.setTitle(titleText, for: .normal)
    }
    
    private func animationWithSpring() -> String {
        
        let tuple = modelAnimation.nextAnimationType(animationCount: ViewController.animationCount)
        
        if tuple.clearCount {
            ViewController.animationCount += 1
        } else {
            ViewController.animationCount = 1
        }
        
        //Анимация view
        animationLabel.text = tuple.animationType
        animationView.animation = tuple.animationType
        animationView.curve = tuple.curve
        animationView.duration = CGFloat(Float.random(in: 0...1))
        animationView.delay = CGFloat(Float.random(in: 0..<1))
        animationView.animate()
        
        //Анимация кнопки
        switch tuple.nextTextButton {
        case "fall":
            break
        case "fadeOut":
            break
        case "zoomOut":
            break
        default:
            startAndNextAnimationOutlet.animation = tuple.nextTextButton
            startAndNextAnimationOutlet.curve = tuple.curve
            startAndNextAnimationOutlet.animate()
        }
        return tuple.nextTextButton
    }
}

