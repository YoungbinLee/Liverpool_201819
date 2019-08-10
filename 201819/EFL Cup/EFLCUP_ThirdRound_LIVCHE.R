setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Chelsea'

CairoPDF(file = paste("EFL Cup/EFL Cup Third round",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 EFL Cup ", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c(
        "Mignolet",
        "Clyne","Matip","Lovren","Moreno",
        "Milner\n(Henderson 60')","Fabinho\n(Salah 87')","Keita",
        "Mané\n(Firmino 71')","Sturridge","Shaqiri"
    )
    ,
   
    Away = "4-2-3-1",
    AwayColour = "blue", Away2Colour = "blue",
    AwayGKColour = c("#00FF00"), 
    AwayLineup = c(
        "Caballero",
        "Emerson","Christensen\n(David Luiz 73')","Cahill","Azpilicueta",
        "Fabregas","Kovacic\n(Kanté 64')",
        "Willian\n(Hazard 56')","Barkley","Moses",
        "Morata"
    )
    ,
    Homescorer = c(10),
    Awayscorer = c(8, 2)
)

dev.off()


