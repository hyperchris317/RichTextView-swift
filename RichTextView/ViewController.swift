//
//  ViewController.swift
//  RichTextView
//
//  Created by kevinzhow on 15/7/8.
//  Copyright (c) 2015年 kevinzhow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textStorage = RichTextStorage()
    
    var layoutManager = NSLayoutManager()
    
    var textContainer = NSTextContainer()
    
    var richTextView: RichTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textStorage.addLayoutManager(layoutManager)
        
        layoutManager.addTextContainer(textContainer)
        
        richTextView = RichTextView(frame: CGRectZero, textContainer: textContainer)
        
        richTextView.text = "We are here so happy to make it #rock# with @kevinzhow and his blog is http://zhowkev.in and My email is kevinchou.c@gmail.com"
        
        richTextView.editable = false
        
        richTextView.selectable = true
        
        richTextView.currentDetactedData = { (string, dataType) in
            println("Current \(dataType.description) with \(string)")
        }
        
        richTextView.clickedOnData = { (string, dataType) in
            println("Clicked On \(dataType.description) with \(string)")
        }

        
        view.addSubview(richTextView)

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        richTextView.frame = CGRect(x: 0, y: 20, width: view.bounds.width, height: view.bounds.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

