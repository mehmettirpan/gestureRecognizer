//
//  ViewController.swift
//  JestAlgılayıcılar
//
//  Created by Mehmet TIRPAN on 29.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var text: UILabel!
    
    var image1 = false
    var image2 = false
    var image3 = false
    var image4 = false
    /*
     ziyaret ettiğini anlamak için true-false değerleri atadık ve fonksiyonun dışında tanımladık ki her tuşa tıklamada değerleri kedni kafasına başa dönderip sıfırlamasın diye
     */

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true  //imageview de bir aksiyon bir işlev olduğunu belirtir ve bu yüzden true değer dönderir
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        /*
         UItapgesturerecognizer dediği bir basma fonksiyonu olduğu anlamında gelmektedir mesela tab yerinde swift olsaydı kaydırma fonksiyonu olduğu anlamına gelirdi gibi
         */
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    
    @objc func gorselDegistir(){
        
        
        if (image1 == false)&&(image2 == false)&&(image3 == false)&&(image4 == false){
            
            imageView.image = UIImage(named: "image2")
            text.text = "image2"
            image1 = true
            //print ("ilk if çalıştı")
        }
        else if (image1 == true)&&(image2 == false)&&(image3 == false)&&(image4 == false){
            imageView.image = UIImage(named: "image3")
            text.text = "image3"
            image2 = true
            //print("ilk else if çalıştı")
        }
        else if (image1 == true)&&(image2 == true)&&(image3 == false)&&(image4 == false){
            imageView.image = UIImage(named: "image4")
            text.text = "image4"
            image3 = true
            //print("2. else if çalıştı")
        }
        else if (image1 == true)&&(image2 == true)&&(image3 == true)&&(image4 == false){
            imageView.image = UIImage(named: "image1")
            text.text = "image1"
            //print ("3. else if çalıştı")
            image4 = true
        }
        else{
            image1 = false
            image2 = false
            image3 = false
            image4 = false
            //print("else çalıştı ve başa döndü")
        }
        
        
    }

}

