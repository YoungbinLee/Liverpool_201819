source("C:/Users/Youngbin/Documents/Liverpool_201819/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'Barcelona'

cairo_pdf(file = paste("Champions League Semi Finals 2nd leg ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2018/19 Champions League", "Semi Finals 2nd leg", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000", 
    HomeGKColour = "#999999",
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Matip", "van Dijk", "Robertson",
        "Henderson", "Fabinho", "Milner",
        "Shaqiri", "Origi", "Mané"
    ),
    HomeSub = c("Wijnaldum 45'", 52, "Sturridge 90'", 92, "Gomez 85'", 102),
    Homescorer = c(10, 10, 52, 52),
    
    Away = "4-3-3",
    AwayColour = "#bbFF22", Away2Colour = "#bbFF22",
    AwayGKColour = "#111111",
    AwayLineup = c(
        "ter Stegen",
        "Alba", "Lenglet", "Piqué", "Roberto",
        "Rakitic", "Busquets", "Vidal",
        "Suárez", "Coutinho", "Messi"
    ),
    AwaySub = c("Nélson Semedo 60'", 102, "Arthur 75'", 82, "Malcom 80'", 62)
)

dev.off()


