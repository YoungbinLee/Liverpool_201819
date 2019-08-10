setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Arsenal'
No_round = 20

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "red", Home2Colour = "red",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold","Lovren","van Dijk","Robertson",
        "Wijnaldum","Fabinho",
        "Shaqiri","Firmino","Mané",
        "Salah"
    )
    ,
    HomeSub = c("Clyne 83'",52, "Lallana 78'",62, "Henderson 62'",102),
   
    Away = "4-3-3",
    AwayColour = "#00CED1", Away2Colour = "#00CED1",
    AwayGKColour = c("black"), 
    AwayLineup = c(
        "Leno",
        "Kolasinac","Mustafi","Papatathopoulos","Lichtsteiner",
        "Xhaka","Ramsey","Torreira",
        "Iwobi","Aubameyang","Maitland-Niles"
    ),
    AwaySub = c("Koscielny 45'",32, "Guendouzi 80'",22, "Lacazette 71'",102),
    
    Homescorer = c(10,11,9,9,9),
    Awayscorer = 11
)

dev.off()


