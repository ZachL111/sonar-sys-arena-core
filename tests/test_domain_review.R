source("R/domain_review.R")

item <- list(signal=71, slack=22, drag=26, confidence=67)
stopifnot(domain_review_score(item) == 153)
stopifnot(domain_review_lane(item) == "ship")
