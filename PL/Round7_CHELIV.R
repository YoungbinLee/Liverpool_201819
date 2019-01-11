setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
    )

Hometeam = 'Chelsea'
Awayteam = 'Liverpool'
No_round = 7

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "blue", Home2Colour = "blue", 
    HomeGKColour = "#7FFF00",
    HomeLineup = c(
        "Arrizabalaga",
        "Azpilicueta","Rüdiger","David Luiz","Alonso",
        "Kanté","Jorginho","Kovacic\n(Barkley 81')",
        "Wilian\n(Moses 73')","Giroud\n(Morata 65')","E Hazard"
    )
    ,

    Away = "4-3-3",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#FF6EB4"), 
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Gomez", "Alexander-Arnold",
        "Milner\n(Sturridge 86')","Henderson\n(Keita 78')", "Wijnaldum",
        "Mané", "Roberto Firmino", "Salah\n(Shaqiri 66')")
    ,
    
    Homescorer = 11,
    Awayscorer = 6
)

dev.off()


