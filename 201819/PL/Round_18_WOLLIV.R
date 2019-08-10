setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Wolverhampton Wanderers'
Awayteam = 'Liverpool'
No_round = 18

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "3-4-2-1",
    HomeColour = "yellow", Home2Colour = "black",
    HomeGKColour = "#00CED1",
    HomeLineup = c(
        "Rui Patrício",
        "Bennett","Coady","Boly",
        "Doherty","Saïss","Neves","Castro Otto",
        "Juão Moutinho","Traoré",
        "Jiménez"
    )
    ,
    HomeSub = c("Vinagre 81'",82, "Cavaleiro 63'", 102),
   
    Away = "4-2-3-1",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#00FF00"), 
    AwayLineup = c(
        "Alisson",
        "Robertson","van Dijk","Lovren","Milner",
        "Fabinho","Henderson",
        "Mané","Firmino","Keita",
        "Salah"
    ),
    AwaySub = c("Clyne 87'",82, "Wijnaldum 76'",92, "Lallana 58'", 102),
    
    Awayscorer = c(11, 3)
)

dev.off()


