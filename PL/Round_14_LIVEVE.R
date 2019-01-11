setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Everton'
No_round = 14

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold","Gomez","van Dijk","Robertson",
        "Wijnaldum","Fabinho",
        "Shaqiri","Roberto Firmino","Mané",
        "Salah"
    )
    ,
    HomeSub = c("Keita 71'", 82, "Origi 84'", 92, "Sturridge 75'", 112),
   
    Away = "4-2-3-1",
    AwayColour = 'blue', Away2Colour = 'white',
    AwayGKColour = "#00FF00" , 
    AwayLineup = c(
        "Pickford",
        "Digne","Mina","Keane","Coleman",
        "Gueye","André Gomes",
        "Bernard","G Sigurdsson","Walcott",
        "Richarlison"
    ),
    AwaySub = c("Lookman 63'", 102, "Calvert-Lewin 89'", 82, "Zouma 91'", 92),
    
    Homescorer = c(92)
)

dev.off()


