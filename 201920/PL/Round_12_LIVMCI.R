setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'Manchester city'
No_round = '12'

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
        "Alisson",
        "Alexander-Arnold", "Lovren", "van Dijk", "Robertson", 
        "Henderson", "Fabinho", "Wijnaldum",
        "Salah", "Firmino", "Mane"
    ),
    HomeSub = c("Milner 61'", 62, "Gomez 87'", 92, "Oxlade-\nChamberlain 79'", 102),
    Homescorer = c(7, 9, 11),
    
    Away = "4-3-3",
    AwayColour = "#87CEFA", Away2Colour = "#FFFFFF",
    AwayGKColour = "#FFD700",
    AwayLineup = c(
        "Bravo",
        "Angelino", "Fernandinho", "Stones", "Walker",
        "Gundogan", "Rodri", "De Bruyne",
        "Sterling", "Aguero", "Bernado Silva"
    ),
    AwaySub = c("Gabriel\nJesus 71'", 102),
    Awayscorer = c(11)
)

dev.off()
