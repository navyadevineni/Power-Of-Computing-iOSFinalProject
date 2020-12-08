//
//  QuestionBank.swift
//  power_of_computing
//
//  Created by student on 11/21/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import Foundation

class QuestionBank {
    
    /*
      Question initiated in question bank
     */
    var list = [Question]()
    
    
    /*
     adding questions to the Question Bank
     */
    init() {
        
        list.append(Question(images: "Aarthi Prabhakar",
                                   question: "scientist noted for her research in programming languages and compilers?",
                                   choice_A: "Aarthi Prabhakar",
                                   choice_B: "Fran Bilas",
                                   choice_C: "Duy Loan Le",
                                   choice_D: "Betty Synder",
                                   answerSelected: 1))
              
              
              list.append(Question(images: "Augusta Ada Lovelace King",
                                   question: "English mathematician and writer, chiefly known for her work on Charles Babbage's proposed mechanical general-purpose computer, the Analytical Engine?",
                                   choice_A: "Jennifer Chayes",
                                   choice_B: "Augusta Ada Lovelace King",
                                   choice_C: "Genevievee Bell",
                                   choice_D: "Lerne Greif",
                                   answerSelected: 2))
              
              
              list.append(Question(images: "Barbara Liskov",
                                   question: "American computer scientist who is an Institute Professor at the Massachusetts Institute of Technology?",
                                   choice_A: "Genevievee Bell",
                                   choice_B: "Fran Bilas",
                                   choice_C: "Lerne Greif",
                                   choice_D: "Barbara Liskov",
                                   answerSelected: 4))
              
              list.append(Question(images: "Betsy Ancker Johnson",
                                   question: "She is known for her research into instabilities that can occur in plasmas in solids?",
                                   choice_A: "Helen Greiner",
                                   choice_B: "Cristina Amon",
                                   choice_C: "Betsy Ancker Johnson",
                                   choice_D: "Jennifer Chayes",
                                   answerSelected: 3))
              
              list.append(Question(images: "Betty Synder",
                                   question: "one of the six original programmers of the first general-purpose electronic digital computer?",
                                  choice_A: "Betty Synder",
                                  choice_B: "Grete Hermann",
                                  choice_C: "Grace Hopper",
                                  choice_D: "Jean Sammet",
                                  answerSelected: 1))
              
              list.append(Question(images: "Cristina Amon",
                                          question: "mechanical engineer, academic administrator and was the 13th dean of the University of Toronto Faculty of Applied Science and Engineering?",
                                         choice_A: "Cristina Amon",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Grace Hopper",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 1))
              
              list.append(Question(images: "Deborah Estrin",
                                          question: "Professor of Computer Science at Cornell Tech?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Deborah Estrin",
                                         choice_C: "Grace Hopper",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 2))
              
              list.append(Question(images: "Denice Denton",
                                          question: "ninth chancellor of the University of California, Santa Cruz?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Grace Hopper",
                                         choice_D: "Denice Denton",
                                         answerSelected: 4))
        
              
              list.append(Question(images: "Ellen Ochoa",
                                         question: "Guess the name of the person in the image?American engineer, former astronaut and former director of the Johnson Space Center?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Ellen Ochoa",
                                         choice_C: "Grace Hopper",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 2))
              
              list.append(Question(images: "Fran Bilas",
                                          question: "one of the original programmers for the ENIAC?",
                                         choice_A: "Fran Bilas",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Mitchell Baker",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 1))
              
              list.append(Question(images: "Frances Alen",
                                          question: "the first female IBM Fellow and in 2006 became the first woman to win the Turing Award?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Padmasree Warrior",
                                         choice_D: "Frances Alen",
                                         answerSelected: 4))
              
              list.append(Question(images: "Genevievee Bell",
                                          question: "Australian anthropologist best known for her work at the intersection of cultural practice?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Genevievee Bell",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 3))
              
              list.append(Question(images: "Grace Hopper",
                                          question: "American computer scientist and United States Navy rear admiral?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Grace Hopper",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 3))
              
              list.append(Question(images: "Grete Hermann",
                                          question: "German mathematician and philosopher noted for her work in mathematics, physics, philosophy and education?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Jennifer Widom",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 2))
              
              list.append(Question(images: "Helen Greiner",
                                          question: "co-founder of iRobot and former CTO of Aria Insights, Inc.,? ",
                                         choice_A: "Betty Synder",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Helen Greiner",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 3))
              
              list.append(Question(images: "Hessa Sultan Al Jaber",
                                          question: "the first-ever Minister of Information and Communications Technology in Qatar?",
                                         choice_A: "Hessa Sultan Al Jaber",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Mary Jane Irwin",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 1))
              
              list.append(Question(images: "Lerne Greif",
                                          question: "Guess the name of the person in the image?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Grace Hopper",
                                         choice_D: "Lerne Greif",
                                         answerSelected: 4))
              
              list.append(Question(images: "Jean Bartik",
                                          question: "one of the original programmers for the ENIAC computer?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Jean Bartik",
                                         choice_C: "Grace Hopper",
                                         choice_D: "Jean Sammet",
                                         answerSelected: 2))
              
              list.append(Question(images: "Jean Sammet",
                                          question: "American computer scientist who developed the FORMAC programming language in 1962?",
                                         choice_A: "Jean Bartik",
                                         choice_B: "Helen Greiner",
                                         choice_C: "Jean Sammet",
                                         choice_D: "Betty Synder",
                                         answerSelected: 3))
              
              list.append(Question(images: "Jennifer Chayes",
                                          question: "he University of California, Berkeley Associate Provost for the Division of Data Science?",
                                         choice_A: "Betty Synder",
                                         choice_B: "Grete Hermann",
                                         choice_C: "Jennifer Chayes",
                                         choice_D: "Grace Hopper",
                                         answerSelected: 3))
    }
    
}

 

