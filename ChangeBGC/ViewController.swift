//
//  ViewController.swift
//  ChangeBGC
//
//  Created by Kyrie Miyajima on 2015/02/16.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //変数の定義
    var red:CGFloat = 0.5;
    var green:CGFloat = 0.5;
    var blue:CGFloat = 0.5;
    var alpha:CGFloat = 1.0;
    
    let redLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 30, 30));
    let greenLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 30, 30));
    let blueLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 30, 30));
    let alphaLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 30, 30));

    override func viewDidLoad() {
        super.viewDidLoad();
        
        let displayWidth:CGFloat = self.view.frame.width;
        let displayHeight:CGFloat = self.view.frame.height;
        
        //赤スライダー
        let redSlider:UISlider = UISlider(frame: CGRectMake(0, 0, 200, 30));
        redSlider.layer.position = CGPoint(x: displayWidth/2, y: 300);
        redSlider.minimumValue = 0;
        redSlider.maximumValue = 1;
        redSlider.value = 0.5;
        redSlider.maximumTrackTintColor = UIColor.grayColor();
        redSlider.minimumTrackTintColor = UIColor.redColor();
        redSlider.addTarget(self, action: "changeColor:", forControlEvents: UIControlEvents.ValueChanged);
        redSlider.tag = 0;
        self.view.addSubview(redSlider);
       
        //緑スライダー
        let greenSlider:UISlider = UISlider(frame: CGRectMake(0, 0, 200, 30));
        greenSlider.layer.position = CGPoint(x: displayWidth/2, y: 350);
        greenSlider.minimumValue = 0;
        greenSlider.maximumValue = 1;
        greenSlider.value = 0.5;
        greenSlider.maximumTrackTintColor = UIColor.grayColor();
        greenSlider.minimumTrackTintColor = UIColor.greenColor();
        greenSlider.addTarget(self, action: "changeColor:", forControlEvents: UIControlEvents.ValueChanged);
        greenSlider.tag = 1;
        self.view.addSubview(greenSlider);
        
        //青スライダー
        let blueSlider:UISlider = UISlider(frame: CGRectMake(0, 0, 200, 30));
        blueSlider.layer.position = CGPoint(x: displayWidth/2, y: 400);
        blueSlider.minimumValue = 0;
        blueSlider.maximumValue = 1;
        blueSlider.value = 0.5;
        blueSlider.maximumTrackTintColor = UIColor.grayColor();
        blueSlider.minimumTrackTintColor = UIColor.blueColor();
        blueSlider.addTarget(self, action: "changeColor:", forControlEvents: UIControlEvents.ValueChanged);
        blueSlider.tag = 2;
        self.view.addSubview(blueSlider);
        
        //α値スライダー
        let alphaSlider:UISlider = UISlider(frame: CGRectMake(0, 0, 200, 30));
        alphaSlider.layer.position = CGPoint(x: displayWidth/2, y: 450);
        alphaSlider.minimumValue = 0;
        alphaSlider.maximumValue = 1;
        alphaSlider.value = 1.0;
        alphaSlider.maximumTrackTintColor = UIColor.grayColor();
        alphaSlider.minimumTrackTintColor = UIColor.yellowColor();
        alphaSlider.addTarget(self, action: "changeColor:", forControlEvents: UIControlEvents.ValueChanged);
        alphaSlider.tag = 3;
        self.view.addSubview(alphaSlider);
        
/* ラベルいろいろ*/
        //赤ラベル
        redLabel.text = "R";
        redLabel.layer.position = CGPoint(x: 50, y: 300);
        redLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(redLabel);
        
        //緑ラベル
        greenLabel.text = "G";
        greenLabel.layer.position = CGPoint(x: 50, y: 350);
        greenLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(greenLabel);
        
        //青ラベル
        blueLabel.text = "B";
        blueLabel.layer.position = CGPoint(x: 50, y: 400);
        blueLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(blueLabel);
        
        //α値ラベル
        alphaLabel.text = "α";
        alphaLabel.layer.position = CGPoint(x: 50, y: 450);
        alphaLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(alphaLabel);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func labelColorWhite(){
        redLabel.textColor = UIColor.whiteColor();
        greenLabel.textColor = UIColor.whiteColor();
        blueLabel.textColor = UIColor.whiteColor();
        alphaLabel.textColor = UIColor.whiteColor();
    }
    
    func labelColorBlack(){
        redLabel.textColor = UIColor.blackColor();
        greenLabel.textColor = UIColor.blackColor();
        blueLabel.textColor = UIColor.blackColor();
        alphaLabel.textColor = UIColor.blackColor();
    }
    
    func changeColor(sender:UISlider){
        
        switch sender.tag{
        case 0:
            red = CGFloat(sender.value);
        case 1:
            green = CGFloat(sender.value);
        case 2:
            blue = CGFloat(sender.value);
        case 3:
            alpha = CGFloat(sender.value);
        default:
            println("Error");
            break;
        }
        
        self.view.backgroundColor = UIColor(red: red, green: green, blue:blue, alpha: alpha);
        
        if red <= 0.5 && blue <= 0.5 && green <= 0.5{
            labelColorWhite();
        }else{
            labelColorBlack();
        }
        
        if red >= 0.5 && blue >= 0.5 && green >= 0.5 && alpha <= 0.5{
            labelColorWhite();
        }
        
    /*
        if alpha <= 0.5{
            labelColorWhite();
        }else{
            labelColorBlack();
        }
     */
        println(red);
        println(blue);
        println(green);
        
    }
    
}

