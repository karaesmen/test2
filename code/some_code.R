library(tidyverse)

head(iris)
write_tsv(iris, "data/my_iris.txt")
iris <- read_tsv("data/my_iris.txt")

iris %>%
  ggplot(aes(Sepal.Length, Sepal.Width, color=Species)) +
  geom_point() +
  geom_smooth()

ggsave("figures/my_iris.pdf")
