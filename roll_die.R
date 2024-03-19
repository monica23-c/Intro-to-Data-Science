roll_die<-function (die, times = 1) 
{
  if (!die %in% c("A", "B")) {
    stop("Please set the die argument to be either 'A' or 'B'")
  }
  if (times > 2000) {
    stop("Number of rolls should be less than or equal to 2000")
  }
  if (die == "A") {
    rolls <- sample(1:6, size = times, replace = TRUE)
  }
  if (die == "B") {
    s_unfair <- 0.22
    s_fair <- (1 - s_unfair)/5
    probs <- rep(s_fair, 6)
    probs[3] <- s_unfair
    rolls <- sample(1:6, size = times, prob = probs, replace = TRUE)
  }
  cat("Your roll(s):\n")
  rolls
}