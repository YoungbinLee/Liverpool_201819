setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Bayern Munich'

CairoPDF(file = paste("CL/Champions League Round of 16 1st leg ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 CHAMPIONS LEAGUE", "Round of 16 1st leg", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold","Matip","Fabinho","Robertson",
        "Wijnaldum","Henderson","Keita",
        "Salah","Roberto Firmino","Mané"
    )
    ,
    HomeSub = c("Milner 76'", 82, "Origi 76'", 102),
   
    Away = "4-3-3",
    AwayColour = c("#E0EEEE"), Away2Colour = c("#E0EEEE"),
    AwayGKColour = c("#FF8C00"),
    AwayLineup = c(
        "Neuer",
        "Alaba", "Hummels", "Süle", "Kimmich",
        "Rodríguez", "Javi Martínez", "Thiago Alcántara",
        "Coman", "Lewandowski", "Gnabry"
    )
    ,
    AwaySub = c("Ferreira de Soza 91'", 112, "Renato Sanches 88'", 62, "Ribéry 81'", 92)
)

dev.off()


