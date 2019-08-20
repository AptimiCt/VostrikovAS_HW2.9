//
//  ModelAnimation.swift
//  VostrikovAS_HW2.9
//
//  Created by Александр Востриков on 20/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import Spring

struct AnimationData {
    
    let animation = ["shake",
                     "pop",
                     "morph",
                     "squeeze",
                     "wobble",
                     "swing",
                     "flipX",
                     "flipY",
                     "fall",
                     "squeezeLeft",
                     "squeezeRight",
                     "squeezeDown",
                     "squeezeUp",
                     "slideLeft",
                     "slideRight",
                     "slideDown",
                     "slideUp",
                     "fadeIn",
                     "fadeOut",
                     "fadeInLeft",
                     "fadeInRight",
                     "fadeInDown",
                     "fadeInUp",
                     "zoomIn",
                     "zoomOut",
                     "flash"]
    let curve = ["spring",
                  "linear",
                  "easeIn",
                  "easeOut",
                  "easeInOut"
                ]

    func nextAnimationType(animationCount: Int) ->
        (nextTextButton: String,
        animationType: String,
        curve: String,
        clearCount: Bool) {
            if animationCount < animation.count - 1 {
                return (animation[animationCount + 1],
                        animation[animationCount],
                        curve[Int.random(in: 0...3)],
                        true)
            } else {
                return (animation[1], animation[0], curve[0], false)
            }
    }
}
