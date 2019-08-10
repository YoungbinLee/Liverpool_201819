setwd("/Users/youngbin/Desktop/Blog/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Southampton'
No_round = 6

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#00FF00"), 
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold","Matip","Van Dijk\n(Gomez 55')","Robertson",
        "Wijnaldum\n(Keita 70')", "Henderson",
        "Firmino", "Shaqiri\n(Milner 45')", "Mané",
        "Salah"
    )
    ,
   
    Away = "4-1-4-1",
    AwayColour = "yellow", Away2Colour = "blue",
    AwayGKColour = c("#1C86EE"), 
    AwayLineup = c(
        "McCarthy",
        "Bertrand","Hoedt","Vestergaard","Cédric Soares",
        "Romeu\n(Bednarek 55')",
        "Targett\n(Armstrong 55')","Højbjerg","Lemina","Redmond",
        "Long\n(Austin 79')"
    )
    ,
    Homescorer = c(3, 11),
    Awayscorer = c(-3)
)

dev.off()


