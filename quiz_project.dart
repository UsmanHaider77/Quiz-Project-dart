
 
import 'dart:io';

void main(){
           
         print("Enter Your Name");
     String? name = stdin.readLineSync();
         print("Enter Your ID");
     String? id = stdin.readLineSync();
     bool isLogin = true;
     while (isLogin==true) {
       if (name=="Usman" && id=="12345") {
           print("                  ");       
    print("Welcome To Quaiz Project");
    print("*************************");
    print("Please Select The Subject");
    print("1. English");
    print("2. Physics");
    print("3. General Knowledge");

    String userInput = stdin.readLineSync() as String;
      if (userInput == "1") {
         english();
      } else if(userInput == "2") {
         physics();
      }else if(userInput == "3"){
         generalKnowledge();
      }else {
        print("Wrong Selection");
      }

      print("Hope You Enjoy It.");
      print("Thank You.");
           isLogin=false;
       } else {
         print("Login Failed");
         print("Try Again");
         print("====================");
         print("Enter Your Name");
         name = stdin.readLineSync()!;
         print("Enter Your ID");
         id = stdin.readLineSync()!;
       }
     }
     
  }

                  //............Englis MCQs Start............

  english(){
      List<Map<String , dynamic>> questionEnglish = [
      {
        "Question" : "Frequently, Taylor ________ his breakfast in the bed.",
        "Options" : ["eat","eats","has eaten","is eating"],
        "Answer" : "eats"
      },
      {
        "Question" : "He eats very little and yet he is very healthy.little is?",
        "Options" : ["adjective","adverb","complement","object"],
        "Answer" : "adverb"
      },
      {
        "Question" : "Katherine is getting ________ the train.",
        "Options" : ["of","off","out of","out off"],
        "Answer" : "out of"
      },
      {
        "Question" : "I must get to the market before it ________.",
        "Options" : ["close","closes","closed","has closed"],
        "Answer" : "closes"
      },
      {
        "Question" : "One day people ________ to Moon.",
        "Options" : ["travel","traveled","will travel","will be traveling"],
        "Answer" : "will travel"
      },
      {
        "Question" : "Ali ________ gym this evening.",
        "Options" : ["will go","will goes","is going","is going to"],
        "Answer" : "is going to"
      },
      {
        "Question" : "They will not come here, ________?",
        "Options" : [" won’t they","won’t them","will they","will them"],
        "Answer" : "will them"
      },
      {
        "Question" : "The newly installed application sounds very ________.",
        "Options" : [" interest","interested","interestingly","interesting"],
        "Answer" : "interesting"
      }
    ];
      int score = 0;
      for (var i = 0; i < questionEnglish.length; i++) {
        Map<String,dynamic> question = questionEnglish[i];
        print("Question ${i +1} : ${question["Question"]}");

        for (var j = 0; j < question["Options"].length; j++) {
        print("${j+1}. ${question["Options"][j]}");
        }
        
        print("Enter Your Answer In Number (1-4)");
        int answer = int.parse(stdin.readLineSync()!);

        if (question["Options"][answer - 1]== question["Answer"]) {
          print("Your Answer Is Correct");
          print("----------------------");
        score++;
        } else {
           print("Your Answer Is Incorrect");
           print("------------------------");
        }
      }
      print("**********************");
      print("Your Score Is : $score/${questionEnglish.length}");
      print("**********************");
  }

                 //............Physics MCQs Start............
    
     physics(){
        List<Map<String , dynamic>> questionphysics = [
      {
        "Question" : "What is the value of Triple point of water?",
        "Options" : ["273.16 K", "273.16° C", "0° C", "-273.16 K"],
        "Answer" : "273.16 K"
      },
      {
        "Question" : "Which of the following is NOT correct about units of work:",
        "Options" : ["1 kg-m = 1 joule", "1 joule = 107 ergs", "1 kg-m = 9.8 joule", "1 joule = 1 Nm"],
        "Answer" : "1 kg-m = 1 joule"
      },
      {
        "Question" : "Which of these represent the Angular momentum of a satellite?",
        "Options" : ["mvr", "ma", "mr","mvh"],
        "Answer" : "mvr"
      },
      {
        "Question" : "Which of the following factors affect the Surface Tension?",
        "Options" : ["Nature of liquid", "Area of Surface", "Both a and b", "None"],
        "Answer" : "Nature of liquid"
      },
      {
        "Question" : "“Svedberg Unit” is a unit of _________?",
        "Options" : ["Time", "Concentration", "Size", "Density"],
        "Answer" : "Time"
      },
      {
        "Question" : "What is the fourth state of matter called?",
        "Options" : ["Plasma", "Gas", "Liquid", "Solid"],
        "Answer" : "Plasma"
      },
      {
        "Question" : "What happens to a body when its density is equal to the density of the fluid?",
        "Options" : ["it remains suspended", "it sinks", " it floats", "None"],
        "Answer" : "it remains suspended"
      },
      {
        "Question" : "What do we call the centre of gravity of the liquid displaced by a body?",
        "Options" : ["centre of buoyancy", "meta-centre", "fluidic centre", "None"],
        "Answer" : "centre of buoyancy"
      }
    ];
           int score = 0;
           for(var i = 0; i<questionphysics.length;i++){
            Map<String,dynamic> question = questionphysics[i];
            print("Question ${i + 1} : ${question["Question"]}");

            for (var j = 0; j < question["Options"].length; j++) {
              print("${j + 1}. ${question["Options"][j]}");
            }

             print("Your Answer In Number (1-4)");
             int answer = int.parse(stdin.readLineSync()!);
             if (question["Options"][answer - 1] == question["Answer"]) {
               print("Your Answer Is Correct");
               print("----------------------");
               score++;
             } else {
               print("Your Answer Is Incorrect");
               print("------------------------");
             }
           }  

             print("**********************");
             print("Your Score Is : $score/${questionphysics.length}");
             print("**********************");  

     }

                 //............General Knowledge............

      generalKnowledge(){
        List<Map<String , dynamic>> questionGeneralKnowledge = [
      {
        "Question" : "National code of Pakistan is?",
        "Options" : ["PK", "PAK", "PAK 1", "None"],
        "Answer" : "PK"
      },
      {
        "Question" : "Who inaugurated the State Bank of Pakistan?",
        "Options" : ["Quaid-e-Azam", "Ghulam Muhammad", "Liaquat Ali Khan", "Allama Muhammad Iqbal"],
        "Answer" : "Quaid-e-Azam"
      },
      {
        "Question" : "Where is Warsak Dam of Pakistan situated?",
        "Options" : ["Khyber Pakhtunkhwa", "Punjab", "Sindh","Balochistan"],
        "Answer" : "Khyber Pakhtunkhwa"
      },
      {
        "Question" : "Shakarparrian is situated in?",
        "Options" : ["Islamabad", "Rawalpindi", "Murree", "Peshawar"],
        "Answer" : "Islamabad"
      },
      {
        "Question" : "Identify the largest cantonment of Pakistan?",
        "Options" : ["Kharian Cantt", "Quetta Cantt", "Okara Cantt", "Karachi Cantt"],
        "Answer" : "Kharian Cantt"
      },
      {
        "Question" : "Which city of Pakistan held the OIC Conference in 1997?",
        "Options" : ["Islamabad", "Karachi", "Lahore", "Peshawar"],
        "Answer" : "Islamabad"
      },
      {
        "Question" : "In which year was OIC founded?",
        "Options" : ["1969", "1980", "1975", "1970"],
        "Answer" : "1969"
      },
      {
        "Question" : "The Kargil incident happened in?",
        "Options" : ["1999", "1998", "2001", "1996"],
        "Answer" : "1999"
      }
    ];
       int score = 0;
     for (var i = 0; i < questionGeneralKnowledge.length; i++) {
      Map<String , dynamic> question = questionGeneralKnowledge[i];
      print("Question${i + 1} . ${question["Question"]}");

      for (var j = 0; j < question["Options"].length; j++) {
      print("${j + 1}.${question["Options"][j]}");
      }

      print("Your Answer In Numbers (1-4)");
      int answer = int.parse(stdin.readLineSync()!);
      if (question["Options"][answer - 1] == question["Answer"]) {
        print("Your Answer Is Correct");
        print("----------------------");
        score++;
      } else {
        print("Your Answer Is Incorrect");
        print("------------------------");
      }
    
     }

       print("**********************");
       print("Your Score Is : $score/${questionGeneralKnowledge.length}");
       print("**********************");
     
      }
