setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'FC Red Bull Salzburg'

cairo_pdf(file = paste("CL/Champions League Group E Game 2 ",
                       Hometeam, " vs ", Awayteam, 
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 Champions League Group E Game 2"),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000", 
    HomeGKColour = "#00FF00",
    HomeLineup = c(
        "Adrian",
        "Alexander-Arnold", "Gomez", "van Dijk", "Robertson",
        "Henderson", "Fabinho", "Wijnaldum",
        "Salah", "Firmino", "Mané"
    ),
    HomeSub = c("Milner 62'", 62, "Origi 64'", 82, "Keita 91'", 92),
    Homescorer = c(5, 9, 9, 11),
    
    
    Away = "4-4-2",
    AwayColour = "#000000", Away2Colour = "#000000",
    AwayGKColour = "#FFFF00",
    AwayLineup = c(
        "Stankovic",
        "Ulmer", "Wober", "Onguéné", "Kristensen",
        "Szoboszlai", "Junuzovic", "Mwepu", "Minamino",
        "Hwang Hee-Chan", "Daka"
    ),
    AwaySub = c("Ashimeru 78'", 72, "Haaland 56'", 112, "Okugawa 71'", 62),
    Awayscorer = c(112, 10, 9)
)

dev.off()
