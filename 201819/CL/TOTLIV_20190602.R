source("C:/Users/YoungbinLee/Documents/Liverpool_201819/FootballResult.R", encoding = "UTF-8")

Hometeam = 'Tottenham Hotspur'
Awayteam = 'Liverpool'

cairo_pdf(file = paste("Champions League Final ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2018/19 Champions League", "Final", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-2-3-1",
    HomeColour = "#FFFFFF", Home2Colour = "#092c63", 
    HomeGKColour = "#000000",
    HomeLineup = c(
        "Lloris",
        "Trippier", "Alderweireld", "Vertonghen", "Rose",
        "Sissoko", "Winks",
        "Alli", "Eriksen", "Son Heung-Min",
        "Kane"
    ),
    HomeSub = c("Dier 74'", 62, "Lucas Moura 66'", 72, "Llorente 82'", 82),
    
    Away = "4-3-3",
    AwayColour = "#FF0000", Away2Colour = "#FF0000",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Wijnaldum", "Fabinho", "Henderson",
        "Mané", "Firmino", "Salah"
    ),
    AwaySub = c("Milner 62'", 62, "Origi 58'", 102, "Gomez 90'", 92),
    Awayscorer = c(11, 102)
)

dev.off()


