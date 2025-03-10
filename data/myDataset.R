nicePalettes = list(spanishOrange = c("#ffc99d", "#ff9248", "#ff8100", "#ff580f", "#df5a00"),
                    beautifulBlues = c("#b3cde0", "#6497b1", "#005b96", "#03396c", "#011f4b"),
                    RGB = c("red", "green", "blue"),
                    darkRGB = c("firebrick", "forestgreen", "navyblue"),
                    Teals = c("#b2d8d8", "#66b2b2", "#008080", "#006666", "#004c4c"),
                    emma = c("#41679d",colorspace::lighten("#41679d", 0.8),
                             "#674092",colorspace::lighten("#674092", 0.8),
                             "#bf3134",colorspace::lighten("#bf3134", 0.8),
                             "#f07e18",colorspace::lighten("#f07e18", 0.8),
                             "#378a66",colorspace::lighten("#378a66", 0.8),
                             "#4e4d4d",colorspace::lighten("#4e4d4d", 0.8)),
                    emmaLight = c(colorspace::lighten("#41679d", 0.8),
                                  colorspace::lighten("#674092", 0.8),
                                  colorspace::lighten("#bf3134", 0.8),
                                  colorspace::lighten("#f07e18", 0.8),
                                  colorspace::lighten("#378a66", 0.8),
                                  colorspace::lighten("#4e4d4d", 0.8)),
                    emmaDark = c("#41679d", "#674092", "#bf3134", "#f07e18", "#378a66", "#4e4d4d"),
                    nils = c("#03675e", "#35978f", "#80cdc1", "#c8e8e3", "white", "#f5e7c3", "#dfc17c", "#e5ac23", "#bf812b"))



################################################################################
# Generate data files
usethis::use_data(nicePalettes,
                  overwrite = T)
