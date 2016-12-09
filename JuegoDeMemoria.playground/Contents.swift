//: Playground - noun: a place where people can play

import UIKit

var str = "Juego de Memoria"

for i in 0 ... 100 {
    if i % 5 == 0 && i > 0 {
        print("\n\(i) Bingo !!!")
    }
    if i % 2 == 0 && i > 0 {
        print("\n\(i) Par !!!")
    }
    else if i % 2 != 0 {
       print("\n\(i) Impar !!!")
    }
    
    if i >= 30 && i <= 40 {
        print("\n\(i) Viva Swift !!!")
    }
}
