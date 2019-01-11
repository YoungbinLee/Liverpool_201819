source("C:/Users/YB/Documents/R/FootballResult_base.R")

CairoPDF(file = "PREMIER LEAGUE 4ROUND LIVERPOOL vs LEICESTER CITY.pdf", 
         width = 10, height = 8)

draw.pitch(matchtype = "2016/17 PREMIER LEAGUE 4ROUND",
           Hometeam = "LIVERPOOL", Homescore = 4,
           Awayteam = "LEICESTER CITY",Awayscore = 1)

draw.formation(Home = "4-3-3",
               HomeColour = "red", Home2Colour = "red", 
               HomeGKColour = c("#7FFF00"), 
               HomeLineup = c("Mignolet",
                              "Clyne","Matip","Lucas","Milner",
                              "Wijnaldum\n(Stewart 76')","Henderson","Lallana",
                              "Mane\n(Moreno 93')",
                              "Sturridge\n(Coutinho 76')","Firmino")
               ,
               
               Away = "4-4-2",
               AwayColour = "blue", Away2Colour = "blue",
               AwayGKColour = c("#F0FFFF"), 
               AwayLineup = c("Schmeichel",
                              "Fuchs","Huth","Morgan", "Simpson\n(Hernandez 34')",
                              "Albrighton\n(Ulloa 65')","Drinkwater","Amartey",
                              "Mahrez","Vardy","Okazaki\n(Musa 45')")
               ,
               
               Homescorer = c(8,9,11,11),
               Awayscorer = 10
)

dev.off()


