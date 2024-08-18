library(ggplot2)
library(dplyr)

dat %>%
  ggplot(aes(y = m, ymin = l, ymax = u, x = site.n, color = type)) +
  geom_pointrange(position = position_dodge(width = 0.3)) +
  scale_y_continuous(labels = scales::percent_format(), limits = c(0, 50)) +
  scale_color_manual(values = rev(c('#a8dbd9', '#4f90a6', '#2a5674'))) +
  labs(x = "Site", y = "CSMF, % (95% CI)") +
  theme_minimal(base_size = 9) +
  theme(
    panel.border = element_blank(),
    strip.background = element_rect(fill = 'grey45', color = "black"),
    legend.position = "bottom",
    legend.title = element_blank()
  ) +
  guides(fill = guide_legend(reverse = TRUE))