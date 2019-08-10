setwd("C:/Users/YoungbinLee/Documents/Liverpool_201819/")
source("C:/Users/YoungbinLee/Documents/Liverpool_201819/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'Wolverhampton Wanderers'
No_round = 38

cairo_pdf(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000",
    HomeGKColour = "#FF1493",
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Matip", "van Dijk", "Robertson",
        "Wijnaldum", "Fabinho", "Henderson",
        "Salah", "Origi", "Mané"
    ),
    HomeSub = c("Gomez 84'", 52, "Oxlade-Chamberlain 88'", 62, "Milner 84'", 102),
    Homescorer = c(11, 11),
    
    Away = "3-5-2",
    AwayColour = "#FFB90F", Away2Colour = "#000000",
    AwayGKColour = "#20B2AA",
    AwayLineup = c(
        "Rui Patrício",
        "Boly", "Coady", "Bennett",
        "Jonny", "Moutinho", "Neves", "Dendonker", "Doherty",
        "Jota", "Jiménez"
    ),
    AwaySub = c("Traoréat 80'", 92, "Gibbs-Whiteat 84'", 52, "Vinagre 84'", 42)
)

dev.off()
