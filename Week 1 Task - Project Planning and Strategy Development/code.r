# importing the dataset
library(readxl)
library(dplyr)
library(magrittr)


facebook <- read_excel(file.choose())

# Lets check if the dataset is correct or not
summary(data)

# Find the post with the maximum number of likes.
max_likes_post <- facebook[which.max(data$like), ]
print(max_likes_post)

# Calculate the average number of shares per post.
average_shares <- mean(facebook$share, na.rm = TRUE)
print(average_shares)

# Create a new column Engagement = Likes + Comments + Shares.
facebook$Engagement <- facebook$like + facebook$comment + facebook$share
head(facebook[, c("like", "comment", "share", "Engagement")])

# From Facebook dataset, group posts by Type (e.g., Photo, Link, Status) and compute average likes.
average_likes_by_type <- facebook %>%
  group_by(Type) %>%
  summarise(Average_Likes = mean(like, na.rm = TRUE))

print(average_likes_by_type)


# Scatter plot of Likes vs Comments
plot(facebook$like, facebook$comment,
     main = "Scatter Plot of Likes vs Comments",
     xlab = "Likes",
     ylab = "Comments",
     pch = 19,
     col = "blue")

# Histogram of Shares
hist(facebook$share,
     main = "Histogram of Shares",
     xlab = "Shares",
     col = "lightgreen",
     border = "black")

# Boxplot of Likes
boxplot(facebook$like,
        main = "Boxplot of Likes",
        ylab = "Likes",
        col = "skyblue")

# Identify outliers (extreme posts)
outliers_likes <- boxplot.stats(facebook$like)$out
cat("Extreme posts based on Likes:\n")
print(outliers_likes)

# Combined boxplot
boxplot(facebook$like, facebook$share, facebook$comment,
        names = c("Likes", "Shares", "Comments"),
        main = "Comparison of Likes, Shares, and Comments",
        ylab = "Count",
        col = c("lightblue", "lightgreen", "lightcoral"))

# Calculate IQR for each metric
iqr_likes <- IQR(facebook$like, na.rm = TRUE)
iqr_shares <- IQR(facebook$share, na.rm = TRUE)
iqr_comments <- IQR(facebook$comment, na.rm = TRUE)

cat("IQR of Likes:", iqr_likes, "\n")
cat("IQR of Shares:", iqr_shares, "\n")
cat("IQR of Comments:", iqr_comments, "\n")
