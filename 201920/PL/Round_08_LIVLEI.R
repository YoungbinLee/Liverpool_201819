setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'Leicester City'
No_round = '08'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000",
    HomeGKColour = "#000000",
    HomeLineup = c(
        "Adrian",
        "Alexander-Arnold", "Lovren", "van Dijk", "Robertson", 
        "Milner", "Fabinho", "Wijnaldum",
        "Salah", "Firmino", "Mane"
    ),
    HomeSub = c("Origi 78'", 112, "Henderson 78'", 82, "Lallana 92'", 92),
    Homescorer = c(6, 11),
    
    Away = "4-3-3",
    AwayColour = "#0000FF", Away2Colour = "#FFFFFF",
    AwayGKColour = c("#F0FFFF"),
    AwayLineup = c(
        "Schmeichel",
        "Chilwell", "Söyüncü", "Evans", "Ricardo Pereira",
        "Tielemans", "Ndidi", "Praet",
        "Barnes", "Vardy", "Maddison"
    ),
    AwaySub = c("Albrighton 45'", 92, "Perez 73'", 82, "Choudhury 86'", 112),
    Awayscorer = c(11)
)

dev.off()
