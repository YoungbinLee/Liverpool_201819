setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Cardiff City'
No_round = 10

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
        "Alexander-Arnold","Lovren","van Dijk","Moreno",
        "Fabinho","Wijnaldum",
        "Lallana\n(Shaqiri 61')", "Roberto Firmino\n(Milner 71')", "Mané",
        "Salah"
    )
    ,
   
    Away = "4-4-1-1",
    AwayColour = 'blue', Away2Colour = 'blue',
    AwayGKColour = c("#FF7F00"), 
    AwayLineup = c(
        "Etheridge",
        "Bennett","Bamba","Morrison","Ecuele Manga",
        "Murphy\n(K Harris 74')","Gunnarsson\n(Damour 73')","Camarasa","Hoilett",
        "Reid\n(Zohore 83')", "Paterson"
    ),
    Homescorer = c(11, 10, 10, 8),
    Awayscorer = 11
)

dev.off()


