setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Paris Saint Germain'
Awayteam = 'Liverpool'

CairoPDF(file = paste("CL/Champions League ", "Group C game 5 ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 CHAMPIONS LEAGUE", "Group C game 5", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "white", Home2Colour = "white", 
    HomeGKColour = c("#00FF00"), 
    HomeLineup = c(
        "Buffon",
        "Kehrer","Thiago Silva","Kimpembe","Bernat",
        "Veratti","Marquihhos",
        "Mbappé","Neymar","Di María",
        "Cavani"
    )
    ,
    HomeSub = c("Alves da Silva 65'", 102, "Choupo-Moting 65'", 112,
                "Rabiot 85'", 82),
    
    Away = "4-3-3",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#FFFF00"), 
    AwayLineup = c(
        "Alisson",
        "Robertson","Van Dijk","Lovren","Gomez",
        "Wijnaldum","Henderson","Milner",
        "Mané","Roberto Firmino","Salah"
    )
    ,
    AwaySub = c("Keita 66'", 62, "Shaqiri 77'", 82, "Sturridge 71'", 102),
    
    Homescorer = c(5, 9),
    Awayscorer = 8
)

dev.off()


