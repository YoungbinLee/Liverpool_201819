setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Manchester City'
Awayteam = 'Liverpool'
No_round = 21

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour =  "#98F5FF", Home2Colour = "white",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Ederson",
        "Danilo","Stones","Kompany","Laporte",
        "Bernardo Silva","Fernandinho","Silva",
        "Sané","Agüero","Sterling"
    )
    ,
    HomeSub = c("Otamendi 88'",32,"Walker 86'",52, "Gündogan 65'",82),
   
    Away = "4-3-3",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#00FF00"), 
    AwayLineup = c(
        "Alisson",
        "Robertson","van Dijk","Lovren","Alexander-Arnold",
        "Milner","Henderson","Wijnaldum",
        "Mané","Roberto Firmino","Salah"
    ),
    AwaySub = c("Sturridge 86'",82, "Fabinho 57'",62, "Shaqiri 77'",92),
    
    Homescorer = c(10, 9),
    Awayscorer = c(10)
)

dev.off()


