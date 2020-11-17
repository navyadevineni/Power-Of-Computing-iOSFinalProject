//
//  Resource.swift
//  power_of_computing
//
//  Created by student on 11/16/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import Foundation

class Resource {
    var name:String
    var details:[String]
    init(name:String,  details:[String]){
        self.name = name
        self.details = details
    }
}

class Resources {
    private static var _shared:Resources!
    
    static var shared:Resources {
        if _shared == nil {
            _shared = Resources()
        }
        return _shared
    }
    
    private var resources:[Resource] = [
        Resource(name:"Antina Borg", details: ["Antina Borg","Laurie Hendren FRSC (December 13, 1958 – May 27, 2019)[6] was a Canadian computer scientist noted for her research in programming languages and compilers."]),
       Resource(name:"Anuradha Annaswamy", details: ["Anuradha Annaswamy","Anuradha Annaswamy is a computer scientist noted for her research on adaptive control theory and smart grids."]),
        Resource(name:"Aarthi Prabhakar",details: ["AAarthi Prabhakar","Arati Prabhakar is an American engineer and the former head of DARPA, the United States Defense Advanced Research Projects Agency, a position she held from July 30, 2012 to January 20, 2017. She headed National Institute of Standards and Technology from 1993 to 1997, and was the first woman to head NIST"]),
        Resource(name:"Augusta Ada Lovelace King",details: ["Augusta Ada Lovelace King","Augusta Ada King, Countess of Lovelace was an English mathematician and writer, chiefly known for her work on Charles Babbage's proposed mechanical general-purpose computer, the Analytical Engine"]),
        Resource(name:"Barbara Liskov",details: ["Barbara Liskov","Barbara Liskov is an American computer scientist who is an Institute Professor at the Massachusetts Institute of Technology and Ford Professor of Engineering in its School of Engineering's electrical engineering and computer science department"]),
        Resource(name:"Betsy Ancker Johnson",details: ["Betsy Ancker Johnson","Betsy Ancker-Johnson is an American plasma physicist. She is known for her research into instabilities that can occur in plasmas in solids, and for her invention of a gigacycle range signal generator using semiconductor materials in magnetic and electric fields"]),
        Resource(name:"Betty Synder",details: ["Betty Synder","Frances Elizabeth Holberton was one of the six original programmers of the first general-purpose electronic digital computer, ENIAC. Holberton invented breakpoints in computer debugging."]),
        Resource(name:"Chieko Asakawa",details: ["Chieko Asakawa","Chieko Asakawa is a blind Japanese computer scientist, known for her work at IBM Research – Tokyo in accessibility. A Netscape browser plug-in she developed, the IBM Home Page Reader, became the most widely used web-to-speech system available."]),
        Resource(name:"Clarisse Sieckenius De Souza",details: ["Clarisse Sieckenius De Souza","Clarisse Sieckenius de Souza is a Full Professor at the Informatics Department of Pontifical Catholic University of Rio de Janeiro, where she does research in the area of Human–Computer Interaction and has developed the theory of Semiotic Engineering."]),
        Resource(name:"Cristina Amon",details: ["Cristina Amon","Cristina H. Amon is a mechanical engineer, academic administrator and was the 13th dean of the University of Toronto Faculty of Applied Science and Engineering. She was the Faculty's first female dean."]),
        Resource(name:"Deborah Estrin",details: ["Deborah Estrin","Deborah Estrin is a Professor of Computer Science at Cornell Tech. She is co-founder of the non-profit Open mHealth and gave a TEDMED talk on small data in 2013. Estrin is known for her work on sensor networks, mobile health, and small data."]),
    ]
    
    private init(){
        
    }
    
    func getResource(at index:Int)->Resource? {
        if index >= 0 && index < resources.count {
            return resources[index]
        } else {
            return nil
        }
    }
    
    func numResources() -> Int {
        return resources.count
    }
    subscript(index:Int) -> Resource? {
        return index >= 0 && index < resources.count ? resources[index] : nil
    }
    
}

