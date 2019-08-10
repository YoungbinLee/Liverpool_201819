source("C:/Users/Youngbin/Documents/Liverpool_201819/FootballResult.R")

Hometeam = 'Barcelona'
Awayteam = 'Liverpool'

cairo_pdf(file = paste("Champions League Semi Finals 1st leg ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2018/19 Champions League", "Semi Finals 1st leg", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#0000FF", Home2Colour = "#FF2255", 
    HomeGKColour = "#77FF77",
    HomeLineup = c(
        "ter Stegen",
        "Roberto", "Piqué", "Lenglet", "Alba",
        "Rakitic", "Busquets", "Vidal",
        "Messi", "Suárez", "Coutinho"
    ),
    HomeSub = c("Aleñá 93'", 22, "Nélson Semedo 60'", 112, "Dembélé 93'", 102),
    Homescorer = c(10, 9, 9),
    
    Away = "4-3-3",
    AwayColour = "#CDCDCD", Away2Colour = "#888888",
    AwayGKColour = "#FF00CC",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Gomez",
        "Keita", "Fabinho", "Milner",
        "Wijnaldum", "Mané", "Salah"
    ),
    AwaySub = c("Firmino 79'", 92, "Henderson 24'", 62, "Origi 85'", 82)
)

dev.off()


