# Import Libs
library(tidyverse)

# Create dataframe
df <- data.frame(lam1 = rpois(10000, 2),
                 lam2 = rpois(10000, 4))
# Tidy data
df <- pivot_longer(df, colnames(df), names_to="model", values_to="obs")

# Plot
ggplot(df) + 
  geom_histogram(aes(x=obs, fill=model)) + 
  facet_grid(.~model) + 
  ggtitle("Plot of Data") + 
  ggsave("./plots/plot1.png")
