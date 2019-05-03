if(!"plotrix" %in% installed.packages()){install.packages("plotrix")}
if(!"shinyjs" %in% installed.packages()){install.packages("shinyjs")}
if(!"V8" %in% installed.packages()){install.packages("V8")}
if(!"Cairo" %in% installed.packages()){install.packages("Cairo")}
if(!"extrafont" %in% installed.packages()){install.packages("extrafont")}
if(!"png" %in% installed.packages()){install.packages("png")}
library(plotrix)
library(shinyjs)
library(V8)
library(Cairo)
library(extrafont)
library(png)

Football_result <- function(matchtype=NULL, 
                            Hometeam=NULL, 
                            Awayteam=NULL,
                            
                            Home, 
                            HomeColour="black", Home2Colour= "gray20",
                            HomeGKColour="white",
                            HomeLineup,
                            Homescorer = NULL, 
                            HomeSub = NULL,
                            
                            Away, 
                            AwayColour="white", Away2Colour= "gray20",
                            AwayGKColour="black",
                            AwayLineup,
                            Awayscorer = NULL,
                            AwaySub = NULL){
    
    ## Formal size of Football pitch 
    ## pitch X and Y = 105m, 68m
    ## center circle's radius = 10yd = 9.144m
    ## goal area's x and y = 20yd, 6yd = 18.288m, 5.4864m
    ## penalty area's x and y = 44yd, 18yd = 40.2336m, 16.4592m
    ## penalty arc's radius = 10yd = 9.144m
    ## penalty mark's x = 12yd = 10.9728m
    plot(c(0,105), c(0,85), type = "n", xlab = "", ylab = "", axes=FALSE)
    # for(i in seq(1,17,2)){
    #     rect(-1.5 + (i-1)*6, -1, -1.5 + i*6, 69, col = "#228B22", border = NA)
    # }
    # for(i in seq(2,18,2)){
    #     rect(-1.5 + (i-1)*6, -1, -1.5 + i*6, 69, col = "#008B45", border = NA)
    # }
    rect(-1, -1, 106, 69, col="#228B22", border = NA)
    rect(0, 0, 52.5, 68, border = "white", lwd = 1.5)
    rect(52.5, 0, 105, 68, border = "white", lwd = 1.5)
    draw.circle(x=52.5, y=34, radius=9.144, n=500, border="white", lwd = 1.5)
    draw.circle(x=10.9728, y=34, radius=9.144, n=500,border="white", lwd = 1.5)
    draw.circle(x=94.0272, y=34, radius=9.144, n=500,border="white", lwd = 1.5)
    rect(0, 13.8832, 16.4592, 54.1168, col="#228B22",border="white", lwd = 1.5)
    rect(88.5408, 13.8832, 105, 54.1168,col="#228B22",border="white", lwd = 1.5)
    rect(0, 24.856, 5.4864, 43.144, border = "white", lwd = 1.5)
    rect(99.5136, 24.856, 105, 43.144, border = "white", lwd = 1.5)

    # Draw formation
    if(Home == "4-2-3-1"){
        Home.x <- c(8,20,20,20,20,29,29,38,36,38,47)
        Home.y <- c(34,10,26,42,58,22,46,14,34,54,34)
    }else if(Home == "4-3-3"){
        Home.x <- c(8,20,20,20,20,33,33,33,46,46,46)
        Home.y <- c(34,10,26,42,58,18,34,50,18,34,50)
    }else if(Home == "4-4-2"){
        Home.x <- c(8,20,20,20,20,33,33,33,33,46,46)
        Home.y <- c(34,10,26,42,58,10,26,42,58,26,42)
    }else if(Home == "4-4-1-1"){
        Home.x <- c(8,20,20,20,20,33,33,33,33,42,46)
        Home.y <- c(34,10,26,42,58,10,26,42,58,42,26)
    }else if(Home == "4-1-4-1"){
        Home.x <- c(8,20,20,20,20,29,38,38,38,38,47)
        Home.y <- c(34,10,26,42,58,34,10,26,42,58,34)
    }else if(Home == "3-4-1-2"){
        Home.x <- c(8,20,20,20,29,29,29,29,38,47,47)
        Home.y <- c(34,18,34,50,10,26,42,58,34,22,46)
    }else if(Home == "3-4-2-1"){
        Home.x <- c(8,20,20,20,29,29,29,29,38,38,47)
        Home.y <- c(34,18,34,50,10,26,42,58,22,46,34)
    }else if(Home == "3-4-3"){
        Home.x <- c(8,20,20,20,33,33,33,33,46,46,46)
        Home.y <- c(34,18,34,50,10,26,42,58,18,34,50)
    }else if(Home == "3-5-2"){
        Home.x <- c(8,20,20,20,33,33,33,33,33,46,46)
        Home.y <- c(34,14,34,54,6,18,34,50,62,22,46)
    }else if(Home == "5-3-2"){
        Home.x <- c(8,20,20,20,20,20,33,33,33,46,46)
        Home.y <- c(34,6,18,34,50,62,14,34,54,22,46)
    }else if(Home == "4-5-1"){
        Home.x <- c(8,20,20,20,20,33,33,33,33,33,46)
        Home.y <- c(34,10,26,42,58,6,18,34,50,62,34)
    }else if(Home == "4-1-2-1-2"){
        Home.x <- c(8,20,20,20,20,26,33,33,39,47,47)
        Home.y <- c(34,10,26,42,58,34,10,58,34,22,46)
    }
    
    points(x = Home.x[1], y = Home.y[1], 
           pch = 21, bg = HomeGKColour, col = "gray20", cex = 3.7, lwd = 2)
    points(x = Home.x[-1], y = Home.y[-1], 
           pch = 21, bg = HomeColour, col = Home2Colour, cex = 3.7, lwd = 2)
    
    if(Away == "4-2-3-1"){
        Away.x <- c(97,85,85,85,85,76,76,67,69,67,58)
        Away.y <- c(34,10,26,42,58,22,46,14,34,54,34)
    }else if(Away == "4-3-3"){
        Away.x <- c(97,85,85,85,85,72,72,72,59,59,59)
        Away.y <- c(34,10,26,42,58,18,34,50,18,34,50)
    }else if(Away == "4-4-2"){
        Away.x <- c(97,85,85,85,85,72,72,72,72,59,59)
        Away.y <- c(34,10,26,42,58,10,26,42,58,26,42)
    }else if(Away == "4-4-1-1"){
        Away.x <- c(97,85,85,85,85,72,72,72,72,63,59)
        Away.y <- c(34,10,26,42,58,10,26,42,58,26,42)
    }else if(Away == "4-1-4-1"){
        Away.x <- c(97,85,85,85,85,76,67,67,67,67,58)
        Away.y <- c(34,10,26,42,58,34,10,26,42,58,34)
    }else if(Away == "3-4-1-2"){
        Away.x <- c(97,85,85,85,76,76,76,76,67,58,58)
        Away.y <- c(34,18,34,50,10,26,42,58,34,22,46)
    }else if(Away == "3-4-2-1"){
        Away.x <- c(97,85,85,85,76,76,76,76,67,67,58)
        Away.y <- c(34,18,34,50,10,26,42,58,22,46,34)
    }else if(Away == "3-4-3"){
        Away.x <- c(97,85,85,85,72,72,72,72,59,59,59)
        Away.y <- c(34,18,34,50,10,26,42,58,18,34,50)
    }else if(Away == "3-5-2"){
        Away.x <- c(97,85,85,85,72,72,72,72,72,59,59)
        Away.y <- c(34,14,34,54,6,18,34,50,62,22,46)
    }else if(Away == "5-3-2"){
        Away.x <- c(97,85,85,85,85,85,72,72,72,59,59)
        Away.y <- c(34,6,18,34,50,62,14,34,54,22,46)
    }else if(Away == "4-5-1"){
        Away.x <- c(97,85,85,85,85,72,72,72,72,72,59)
        Away.y <- c(34,10,26,42,58,6,18,34,50,62,34)
    }else if(Away == "4-1-2-1-2"){
        Away.x <- c(97,85,85,85,85,79,72,72,66,59,59)
        Away.y <- c(34,10,26,42,58,34,10,58,34,22,46)
    }
    ## plot points
    points(x = Away.x[1], y = Away.y[1], 
           pch = 21, bg = AwayGKColour, col = "gray20", cex = 3.7, lwd = 2)
    points(x = Away.x[-1], y = Away.y[-1], 
           pch = 21, bg = AwayColour, col = Away2Colour, cex = 3.7, lwd = 2)
    
    ## players' name
    text(HomeLineup, x= Home.x, y= Home.y - 5, 
         cex = 0.8)
    text(AwayLineup, x= Away.x, y= Away.y - 5, 
         cex = 0.8)
    
    ## player names of substitution
    if(!is.null(HomeSub)){
        if(length(HomeSub) %% 2 != 0){
            stop("Substitution Information for HomeTeam is not correct")
        }
        HomeSub.name <- HomeSub[seq(1,length(HomeSub), 2)]
        HomeSub.loc <- HomeSub[seq(2, length(HomeSub), 2)]
        HomeSub.loc <- as.numeric(HomeSub.loc)
        HomeSub.y <- NA
        for(i in 1:length(HomeSub.loc)){
            if(HomeSub.loc[i] >= 100 & substr(HomeSub.loc[i],
                                              nchar(HomeSub.loc[i])-1,
                                              nchar(HomeSub.loc[i])) == '22'){
                HomeSub.loc[i] <- (HomeSub.loc[i]-22)/100
                HomeSub.y[i] <- Home.y[HomeSub.loc[i]] - 3
            }else{
                HomeSub.loc[i] <- (HomeSub.loc[i]-2)/10
                HomeSub.y[i] <- Home.y[HomeSub.loc[i]]
            }
        }
        HomeSub.x <- Home.x[HomeSub.loc]
        ### paste names
        text(paste("(", HomeSub.name, ")", sep=""), 
             x = HomeSub.x, y = HomeSub.y - 8, cex = 0.8)
    }
    if(!is.null(AwaySub)){
        if(length(AwaySub) %% 2 != 0){
            stop("Substitution Information for Awayteam is not correct")
        }
        AwaySub.name <- AwaySub[seq(1,length(AwaySub), 2)]
        AwaySub.loc <- AwaySub[seq(2, length(AwaySub), 2)]
        AwaySub.loc <- as.numeric(AwaySub.loc)
        AwaySub.y <- NA
        for(i in 1:length(AwaySub.loc)){
            if(AwaySub.loc[i] >= 100 & substr(AwaySub.loc[i],
                                              nchar(AwaySub.loc[i])-1,
                                              nchar(AwaySub.loc[i])) == '22'){
                AwaySub.loc[i] <- (AwaySub.loc[i]-22)/100
                AwaySub.y[i] <- Away.y[AwaySub.loc[i]] - 3
            }else{
                AwaySub.loc[i] <- (AwaySub.loc[i]-2)/10
                AwaySub.y[i] <- Away.y[AwaySub.loc[i]]
            }
        }
        AwaySub.x <- Away.x[AwaySub.loc]
        ## paste names
        text(paste("(", AwaySub.name, ")", sep=""), 
             x = AwaySub.x, y = AwaySub.y - 8, cex = 0.8)
    }
    
    
    ## Indicate Scorer
    blackBall <- readPNG("C:/Users/Youngbin/Documents/Liverpool_201819/ball-icon-png-4636.png")
    redBall <- readPNG("C:/Users/Youngbin/Documents/Liverpool_201819/owngoal.png")
    
    ## Home Scorer indexing
    if(!is.null(Homescorer)){
        Homescorer1 = unique(Homescorer[Homescorer > 0])
        H1 <- data.frame(table(Homescorer[Homescorer %in% Homescorer1]))
        Homescorer2 = unique(Homescorer[Homescorer < 0])
        H2 <- data.frame(table(Homescorer[Homescorer %in% Homescorer2])) 
        H2$Var1 <- as.character(abs(as.numeric(as.character(H2$Var1))))
        if(nrow(H1)==0){
            H1 <- data.frame(matrix(ncol=2,nrow=0), stringsAsFactors = FALSE)
            colnames(H1) <- c("Var1","Goal")
        }
        if(nrow(H2)==0){
            H2 <- data.frame(matrix(ncol=2,nrow=0), stringsAsFactors = FALSE)
            colnames(H2) <- c("Var1","OG")
        }
        HG <- merge(H1, H2, by = "Var1", all = TRUE)
        HG$Var1 <- as.character(HG$Var1)
        names(HG) <- c("Var1","Goal","OG")
        HG[is.na(HG)] <- 0
    }else{
        HG <- data.frame()
    }
    
    ## Away scorer indexing
    if(!is.null(Awayscorer)){
        Awayscorer1 = unique(Awayscorer[Awayscorer > 0])
        A1 <- data.frame(table(Awayscorer[Awayscorer %in% Awayscorer1]))
        Awayscorer2 = unique(Awayscorer[Awayscorer < 0])
        A2 <- data.frame(table(Awayscorer[Awayscorer %in% Awayscorer2])) 
        A2$Var1 <- as.character(abs(as.numeric(as.character(A2$Var1))))
        if(nrow(A1)==0){
            A1 <- data.frame(matrix(ncol=2,nrow=0), stringsAsFactors = FALSE)
            colnames(A1) <- c("Var1","Goal")
        }
        if(nrow(A2)==0){
            A2 <- data.frame(matrix(ncol=2,nrow=0), stringsAsFactors = FALSE)
            colnames(A2) <- c("Var1","OG")
        }
        AG <- merge(A1, A2, by = "Var1", all=TRUE)
        AG$Var1 <- as.character(AG$Var1)
        names(AG) <- c("Var1","Goal","OG")
        AG[is.na(AG)] <- 0
    }else{
        AG <- data.frame()
    }
    ## Create scorer table
    scorertable <- list(HG, AG)
    ## input Goal image to the Home scorers
    if(nrow(scorertable[[1]]) > 0){
        for(i in 1:nrow(scorertable[[1]])){
            # get scorer's location
            idx <- as.numeric(as.character(scorertable[[1]]$Var1))[i]
            
            if(idx < 12){ # First eleven's goal
                if(scorertable[[1]][i,]$Goal > 0){
                    for(j in 1:scorertable[[1]][i,]$Goal){
                        Ball <- blackBall
                        scorer.name <- HomeLineup[idx]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Home.x[idx] + ball.position + 1*(j-1), 
                                    Home.y[idx] - 6,
                                    Home.x[idx] + ball.position + 2 + 1*(j-1),
                                    Home.y[idx] - 4)
                    }
                    if(scorertable[[1]][i,]$OG >0){
                        for(k in 1:scorertable[[1]][i,]$OG){
                            Ball <- redBall
                            scorer.name <- HomeLineup[idx]
                            ball.position <- nchar(scorer.name)*0.4 + 1
                            rasterImage(Ball, 
                                        Home.x[idx] + ball.position + 1*(j+k-1), 
                                        Home.y[idx] - 6,
                                        Home.x[idx] + ball.position + 2 + 1*(j+k-1),
                                        Home.y[idx] - 4)
                        }
                    }
                }else{
                    for(k in 1:scorertable[[1]][i,]$OG){
                        Ball <- redBall
                        scorer.name <- HomeLineup[idx]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Home.x[idx] + ball.position + 1*(k-1), 
                                    Home.y[idx] - 6,
                                    Home.x[idx] + ball.position + 2 + 1*(k-1),
                                    Home.y[idx] - 4)
                    }
                }
            }else if(idx < 120){ # substitution's goal
                if(scorertable[[1]][i,]$Goal > 0){
                    for(j in 1:scorertable[[1]][i,]$Goal){
                        Ball <- blackBall
                        scorer.name <- HomeSub[which(HomeSub == idx)-1]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Home.x[(idx-2)/10] + ball.position + 1*(j-1), 
                                    Home.y[(idx-2)/10] - 9,
                                    Home.x[(idx-2)/10] + ball.position + 2 + 1*(j-1),
                                    Home.y[(idx-2)/10] - 7)
                    }
                    if(scorertable[[1]][i,]$OG >0){
                        for(k in 1:scorertable[[1]][i,]$OG){
                            Ball <- redball
                            scorer.name <- HomeSub[which(HomeSub == idx)-1]
                            ball.position <- nchar(scorer.name)*0.4 + 1
                            rasterImage(Ball, 
                                        Home.x[(idx-2)/10] + ball.position + 1*(j+k-1), 
                                        Home.y[(idx-2)/10] - 9,
                                        Home.x[(idx-2)/10] + ball.position + 2 + 1*(j+k-1),
                                        Home.y[(idx-2)/10] - 7)
                        }
                    }
                }else{
                    for(k in 1:scorertable[[1]][i,]$OG){
                        Ball <- redBall
                        scorer.name <- HomeSub[which(HomeSub == idx)-1]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Home.x[(idx-2)/10] + ball.position + 1*(k-1), 
                                    Home.y[(idx-2)/10] - 9,
                                    Home.x[(idx-2)/10] + ball.position + 2 + 1*(k-1),
                                    Home.y[(idx-2)/10] - 7)
                    }
                }
            }else{
                if(scorertable[[1]][i,]$Goal > 0){
                    for(j in 1:scorertable[[1]][i,]$Goal){
                        Ball <- blackBall
                        scorer.name <- HomeSub[which(HomeSub == idx)-1]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Home.x[round((idx-2)/100,0)] + ball.position + 1*(j-1), 
                                    Home.y[round((idx-2)/100,0)] - 12,
                                    Home.x[round((idx-2)/100,0)] + ball.position + 2 + 1*(j-1),
                                    Home.y[round((idx-2)/100,0)] - 10)
                    }
                    if(scorertable[[1]][i,]$OG >0){
                        for(k in 1:scorertable[[1]][i,]$OG){
                            Ball <- redball
                            scorer.name <- HomeSub[which(HomeSub == idx)-1]
                            ball.position <- nchar(scorer.name)*0.4 + 1
                            rasterImage(Ball, 
                                        Home.x[round((idx-2)/100,0)] + ball.position + 1*(j+k-1), 
                                        Home.y[round((idx-2)/100,0)] - 12,
                                        Home.x[round((idx-2)/100,0)] + ball.position + 2 + 1*(j+k-1),
                                        Home.y[round((idx-2)/100,0)] - 10)
                        }
                    }
                }else{
                    for(k in 1:scorertable[[1]][i,]$OG){
                        Ball <- redBall
                        scorer.name <- HomeSub[which(HomeSub == idx)-1]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Home.x[round((idx-2)/100,0)] + ball.position + 1*(k-1), 
                                    Home.y[round((idx-2)/100,0)] - 12,
                                    Home.x[round((idx-2)/100,0)] + ball.position + 2 + 1*(k-1),
                                    Home.y[round((idx-2)/100,0)] - 10)
                    }
                }
            }
        }
    }
    ## input Goal image to the Away scorers
    if(nrow(scorertable[[2]]) > 0){
        for(i in 1:nrow(scorertable[[2]])){
            # get scorer's location
            idx <- as.numeric(as.character(scorertable[[2]]$Var1))[i]
            
            if(idx < 12){ # First eleven's goal
                if(scorertable[[2]][i,]$Goal > 0){
                    for(j in 1:scorertable[[2]][i,]$Goal){
                        Ball <- blackBall
                        scorer.name <- AwayLineup[idx]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Away.x[idx] + ball.position + 1*(j-1), 
                                    Away.y[idx] - 6,
                                    Away.x[idx] + ball.position + 2 + 1*(j-1),
                                    Away.y[idx] - 4)
                    }
                    if(scorertable[[2]][i,]$OG >0){
                        for(k in 1:scorertable[[2]][i,]$OG){
                            Ball <- redBall
                            scorer.name <- AwayLineup[idx]
                            ball.position <- nchar(scorer.name)*0.4 + 1
                            rasterImage(Ball, 
                                        Away.x[idx] + ball.position + 1*(j+k-1), 
                                        Away.y[idx] - 6,
                                        Away.x[idx] + ball.position + 2 + 1*(j+k-1),
                                        Away.y[idx] - 4)
                        }
                    }
                }else{
                    for(k in 1:scorertable[[2]][i,]$OG){
                        Ball <- redBall
                        scorer.name <- AwayLineup[idx]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Away.x[idx] + ball.position + 1*(k-1), 
                                    Away.y[idx] - 6,
                                    Away.x[idx] + ball.position + 2 + 1*(k-1),
                                    Away.y[idx] - 4)
                    }
                }
            }else if(idx < 120){ # substitution's goal
                if(scorertable[[2]][i,]$Goal > 0){
                    for(j in 1:scorertable[[2]][i,]$Goal){
                        Ball <- blackBall
                        scorer.name <- AwaySub[which(AwaySub == idx)-1]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Away.x[(idx-2)/10] + ball.position + 1*(j-1), 
                                    Away.y[(idx-2)/10] - 9,
                                    Away.x[(idx-2)/10] + ball.position + 2 + 1*(j-1),
                                    Away.y[(idx-2)/10] - 7)
                    }
                    if(scorertable[[2]][i,]$OG >0){
                        for(k in 1:scorertable[[2]][i,]$OG){
                            Ball <- redBall
                            scorer.name <- AwaySub[which(AwaySub == idx)-1]
                            ball.position <- nchar(scorer.name)*0.4 + 1
                            rasterImage(Ball, 
                                        Away.x[(idx-2)/10] + ball.position + 1*(j+k-1), 
                                        Away.y[(idx-2)/10] - 9,
                                        Away.x[(idx-2)/10] + ball.position + 2 + 1*(j+k-1),
                                        Away.y[(idx-2)/10] - 7)
                        }
                    }
                }else{
                    for(k in 1:scorertable[[2]][i,]$OG){
                        Ball <- redBall
                        scorer.name <- AwaySub[which(AwaySub == idx)-1]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Away.x[(idx-2)/10] + ball.position + 1*(k-1), 
                                    Away.y[(idx-2)/10] - 9,
                                    Away.x[(idx-2)/10] + ball.position + 2 + 1*(k-1),
                                    Away.y[(idx-2)/10] - 7)
                    }
                }
            }else{
                if(scorertable[[2]][i,]$Goal > 0){
                    for(j in 1:scorertable[[2]][i,]$Goal){
                        Ball <- blackBall
                        scorer.name <- AwaySub[which(AwaySub == idx)-1]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Away.x[round((idx-2)/100,0)] + ball.position + 1*(j-1), 
                                    Away.y[round((idx-2)/100,0)] - 12,
                                    Away.x[round((idx-2)/100,0)] + ball.position + 2 + 1*(j-1),
                                    Away.y[round((idx-2)/100,0)] - 10)
                    }
                    if(scorertable[[2]][i,]$OG >0){
                        for(k in 1:scorertable[[2]][i,]$OG){
                            Ball <- redBall
                            scorer.name <- AwaySub[which(AwaySub == idx)-1]
                            ball.position <- nchar(scorer.name)*0.4 + 1
                            rasterImage(Ball, 
                                        Away.x[round((idx-2)/100,0)] + ball.position + 1*(j+k-1), 
                                        Away.y[round((idx-2)/100,0)] - 12,
                                        Away.x[round((idx-2)/100,0)] + ball.position + 2 + 1*(j+k-1),
                                        Away.y[round((idx-2)/100,0)] - 10)
                        }
                    }
                }else{
                    for(k in 1:scorertable[[2]][i,]$OG){
                        Ball <- redBall
                        scorer.name <- AwaySub[which(AwaySub == idx)-1]
                        ball.position <- nchar(scorer.name)*0.4 + 1
                        rasterImage(Ball, 
                                    Away.x[round((idx-2)/100,0)] + ball.position + 1*(k-1), 
                                    Away.y[round((idx-2)/100,0)] - 12,
                                    Away.x[round((idx-2)/100,0)] + ball.position + 2 + 1*(k-1),
                                    Away.y[round((idx-2)/100,0)] - 10)
                    }
                }
            }
        }
    }

    ## Add the game result
    Homescore = length(Homescorer[Homescorer >0]) + length(Awayscorer[Awayscorer <0])
    Awayscore = length(Awayscorer[Awayscorer >0]) + length(Homescorer[Homescorer <0])

    text(x = 52.5, y= 75,
         labels = paste("<",matchtype,">\n", Hometeam, Homescore,"-", 
                        Awayscore, Awayteam, "\n", sep = " "),
         cex = 2)
}
