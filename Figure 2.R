library(ggplot2)
library(dplyr)

dat %>%
  ggplot(aes(y = reorder(rec, prop, sum), x = prop, fill = age.cat)) +
  geom_col() +
  geom_errorbar(
    data = dat.3,
    aes(y = reorder(rec, prop, sum), xmin = l.ci, xmax = u.ci),
    size = 0.3,
    width = 0.2,
    position = position_dodge(0.8)
  ) +
  scale_x_continuous(labels = scales::percent_format(), expand = expansion(mult = c(0, 0.02))) +
  scale_y_discrete(expand = c(0, 0)) +
  scale_fill_manual(values = c('#99d4d0', '#2e5f7c')) +
  labs(x = "Proportion of deaths", y = "Cause of death", title = "Recommendations for preventing deaths") +
  theme_minimal(base_size = 8.5) +
  theme(
    strip.background = element_rect(fill = 'grey45', color = "black"),
    strip.text = element_text(face = "bold", color = "white"),
    axis.title.y = element_blank(),
    legend.title = element_blank(),
    legend.key.size = unit(0.525, "cm")
  ) 