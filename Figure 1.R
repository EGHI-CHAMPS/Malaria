library(ggplot2)
library(waffle)

ggplot(tmp, aes(fill = var.label, values = n)) +
  geom_waffle(color = "white", size = 0.25, n_rows = 8, flip = TRUE) +
  facet_wrap(~site.label, nrow = 1, strip.position = 'bottom') +
  scale_y_continuous(labels = function(x) x * 8, expand = expansion(mult = c(0, 0.12))) +
  scale_fill_manual(values = rev(c('#99d4d0', '#2e5f7c'))) +
  coord_equal() +
  theme_minimal() +
  theme(
    axis.text = element_text(size = 11),
    strip.text = element_text(size = 11, color = 'gray30'),
    panel.grid = element_blank(),
    legend.position = "bottom",
    legend.key.size = unit(0.4, "cm"),
    axis.ticks.x = element_line()
  )