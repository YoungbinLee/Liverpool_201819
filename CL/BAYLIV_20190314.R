setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Bayern Munich'
Awayteam = 'Liverpool'

CairoPDF(file = paste("CL/Champions League Round of 16 2nd leg ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 CHAMPIONS LEAGUE", "Round of 16 2nd leg", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#078DA8"),
    HomeLineup = c(
        "Neuer",
        "Alaba", "Hummels", "Süle", "Rafina",
        "Javi Martínez", "Thiago Alcántara",
        "Gnabry", "Rodríguez", "Ribéry",
        "Lewandowski"
    )
    ,
    HomeSub = c("Goretzka 72'", 62, "Renato Sanches 79'", 92),
   
    Away = "4-3-3",
    AwayColour = "#D9D9D9", Away2Colour = "#999999",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Alisson",
        "Robertson", "Matip", "van Dijk", "Alexander-Arnold",
        "Wijnaldum","Henderson","Milner",
        "Mané","Firmino","Salah"
    )
    ,
    AwaySub = c("Fabinho 13'", 72, "Lallana 87'", 82, "Origi 83'", 102),
    Awayscorer = c(4, 9, 9, -3)
)

dev.off()


