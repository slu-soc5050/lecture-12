# Create Plots for Part 2 of Lecture

# Dependencies, Tidyverse
library(ggplot2)
library(dplyr)

# Dependencies, Other
library(ggthemes)
library(here)
library(prener)

# 01 - Basic Plot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = as.factor(cyl)), position = "jitter") +
  geom_smooth(method = "lm")

cp_plotSave(here("extras", "figures", "01-plotBase.png"), preset = "med", dpi = 500)

# 02 - Increase Geom Size
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = as.factor(cyl)), size = 4, position = "jitter") +
  geom_smooth(method = "lm", size = 2) 

cp_plotSave(here("extras", "figures", "02-geomSize.png"), preset = "med", dpi = 500)

# 03 - Add Stroke Around Points
base <- ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(fill = as.factor(cyl)), pch = 21, size = 4, position = "jitter") +
  geom_smooth(method = "lm", size = 2) 

base

cp_plotSave(here("extras", "figures", "03-pointStroke.png"), plot, preset = "med", dpi = 500)

# 04 - Change Font Size
base +
  theme_grey(base_size = 28) 

cp_plotSave(here("extras", "figures", "04-plotFont.png"), preset = "med", dpi = 500)

# 05 - Change Theme
base +
  theme_hc(base_size = 28)

cp_plotSave(here("extras", "figures", "05-plotTheme.png"), preset = "med", dpi = 500)

base +
  theme_wsj(base_size = 28)

cp_plotSave(here("extras", "figures", "05-plotThemeWSJ.png"), preset = "med", dpi = 500)

base +
  theme_solarized(base_size = 28)

cp_plotSave(here("extras", "figures", "05-plotThemeSol.png"), preset = "med", dpi = 500)

base +
  theme_fivethirtyeight(base_size = 28)

cp_plotSave(here("extras", "figures", "05-plotTheme538.png"), preset = "med", dpi = 500)

base +
  theme_economist(base_size = 28)

cp_plotSave(here("extras", "figures", "05-plotThemeEcon.png"), preset = "med", dpi = 500)

# 06 - Adjust Labels
base +
  theme_hc(base_size = 28) +
  labs(
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)"
  )

cp_plotSave(here("extras", "figures", "06-plotLabels.png"), preset = "med", dpi = 500)

# 07 - Add Title
base +
  theme_hc(base_size = 28) +
  labs(
    title = "Fuel Efficiency and Engine Size",
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)"
  )

cp_plotSave(here("extras", "figures", "07-plotTitle.png"), preset = "med", dpi = 500)

# 08 - Add Subtitle
base +
  theme_hc(base_size = 28) +
  labs(
    title = "Fuel Efficiency and Engine Size",
    subtitle = "Select Vehicles Sold in the United States",
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)"
  )

cp_plotSave(here("extras", "figures", "08-plotSubtitle.png"), preset = "med", dpi = 500)

# 09 - Add Caption
base +
  theme_hc(base_size = 28) +
  labs(
    title = "Fuel Efficiency and Engine Size",
    subtitle = "Select Vehicles Sold in the United States",
    caption = "Data via ggplot2 package for R",
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)"
  )

cp_plotSave(here("extras", "figures", "09-plotCaption.png"), preset = "med", dpi = 500)

# 10 - Change Legend Title
base +
  theme_hc(base_size = 28) +
  labs(
    title = "Fuel Efficiency and Engine Size",
    subtitle = "Select Vehicles Sold in the United States",
    caption = "Data via ggplot2 package for R",
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)",
    fill = "Cylinders"
  ) 

cp_plotSave(here("extras", "figures", "10-plotLegendTitle.png"), preset = "med", dpi = 500)

# 11 - Change Legend Size
base +
  theme_hc(base_size = 28) +
  labs(
    title = "Fuel Efficiency and Engine Size",
    subtitle = "Select Vehicles Sold in the United States",
    caption = "Data via ggplot2 package for R",
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)",
    fill = "Cylinders"
  ) +
  theme(legend.key.size = unit(1, units="cm"))

cp_plotSave(here("extras", "figures", "11-plotLegendSize.png"), preset = "med", dpi = 500)

# 12 - Change Legend Labels
base +
  theme_hc(base_size = 28) +
  labs(
    title = "Fuel Efficiency and Engine Size",
    subtitle = "Select Vehicles Sold in the United States",
    caption = "Data via ggplot2 package for R",
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)"
  ) +
  theme(legend.key.size = unit(1, units="cm")) +
  scale_fill_discrete(labels=c("Four", "Five", "Six", "Eight"), name = "Cylinders")

cp_plotSave(here("extras", "figures", "12-plotLegendLabels.png"), preset = "med", dpi = 500)

# 12 - Change Legend Labels
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(fill = as.factor(cyl)), pch = 21, size = 4, position = "jitter") +
  geom_smooth(method = "lm", color = palette[5], size = 2) +
  theme_hc(base_size = 28) +
  labs(
    title = "Fuel Efficiency and Engine Size",
    subtitle = "Select Vehicles Sold in the United States",
    caption = "Data via ggplot2 package for R",
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)"
  ) +
  theme(legend.key.size = unit(1, units="cm")) +
  scale_fill_brewer(palette = "Set1", labels=c("Four", "Five", "Six", "Eight"), name = "Cylinders")

cp_plotSave(here("extras", "figures", "13-brewer.png"), preset = "med", dpi = 500)

# 14 - Remove Legend
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(fill = as.factor(cyl)), pch = 21, size = 4, position = "jitter") +
  geom_smooth(method = "lm", color = palette[5], size = 2) +
  theme_hc(base_size = 28) +
  labs(
    title = "Fuel Efficiency and Engine Size",
    subtitle = "Select Vehicles Sold in the United States",
    caption = "Data via ggplot2 package for R",
    x = "Engine Displacement (litres)",
    y = "Highway Fuel Efficiency (mpg)"
  ) +
  theme(legend.position = "none") +
  scale_fill_brewer(palette = "Set1")

cp_plotSave(here("extras", "figures", "14-plotLegendNone.png"), preset = "med", dpi = 500)
