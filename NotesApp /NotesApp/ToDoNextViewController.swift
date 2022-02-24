//
//  ToDoNextViewController.swift
//  NotesApp
//
//  Created by Trainee on 14/02/22.
//

import UIKit

protocol taskProtocol {
    func addNotes (name: String)
    func addTask (task:TaskModel)
    func updateTask(task:TaskModel)
}
class ToDoNextViewController: UIViewController {
    var delegate: taskProtocol?
    var editData: TaskModel?
    

        @IBOutlet weak var ToDoText: UITextField!
        @IBOutlet weak var imgBtn: UIButton!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            ToDoText.text = editData?.name
            if editData?.isFav == true {
                let image = UIImage(named: "favourite_ON")
                imgBtn.setImage(image, for: .normal)
                imgBtn.tag = 1
            }else {
                let image = UIImage(named: "favourite_OFF")
                imgBtn.setImage(image, for: .normal)
                imgBtn.tag = 0
            }
            
        }
    
    @IBAction func buttonStart(_ sender: UIButton) {
        if imgBtn.tag == 0 {
            let image = UIImage(named: "favourite_ON")
            sender.setImage(image, for: .normal)
            sender.tag = 1
        }else {
            let image = UIImage(named: "favourite_OFF")
            sender.setImage(image, for: .normal)
            sender.tag = 0
        }
        
    }
        @IBAction func SaveBtn(_ sender: Any) {
            if editData == nil {
                if let text = ToDoText.text{
                let isFav = imgBtn.tag == 0 ? false : true
                let model = TaskModel(name: text, isFav: isFav)
                delegate?.addTask(task: model)
                    navigationController?.popViewController(animated: true)
                }
            }
            else if let txt = ToDoText.text, txt.count > 0 {
//                delegate?.addNotes(name: txt)
                let isFav = imgBtn.tag == 0 ? false : true
                let model = TaskModel(name: txt, isFav: isFav)
                delegate?.updateTask(task: model)
//                dismiss(animated: true, completion: nil)
                navigationController?.popViewController(animated: true)
            }
            }
    }
