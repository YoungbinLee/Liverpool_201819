setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
    )

Hometeam = 'Arsenal'
Awayteam = 'Liverpool'
No_round = 11

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-2-3-1",
    HomeColour = c("#EE2C2C"), Home2Colour = "white", 
    HomeGKColour = c("#00EE00"),
    HomeLineup = c(
        "Leno",
        "Bellerín","Mustafi","Holding","Kolasinac\n(Welbeck 81')",
        "Torreira","Xhaka",
        "Mkhitaryan\n(Iwobi 68')","Özil","Aubameyang\n(Ramsey 73')",
        "Lacazette"
    )
    ,

    Away = "4-3-3",
    AwayColour = c("#8A2BE2"), Away2Colour = c("#FF34B3"),
    AwayGKColour = c("#FFFF00"), 
    AwayLineup = c(
        "Alisson",
        "Robertson","van Dijk","Gomez","Alexander-Arnold",
        "Wijnaldum","Fabinho","Milner",
        "Mané","Roberto Firmino\n(Shaqiri 80')","Salah\n(Matip 94')"
    )
    ,
    
    Homescorer = 11,
    Awayscorer = 8
)

dev.off()


