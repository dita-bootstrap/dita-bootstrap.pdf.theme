# DITA Bootstrap PDF Themes

A plug-in for [DITA Open Toolkit][1] that provides a collection of Bootswatch-inspired themes for the [DITA Bootstrap PDF plug-in][2].

- [Installing](#installing)
- [Using](#using)
- [Available Themes](#available-themes)
- [Customizing](#customizing)
- [License](#license)

## Installing

Use the `dita` command to add this plug-in and its requirements to your DITA Open Toolkit installation:

```console
dita install dita-bootstrap.specialization
dita install org.dita-bootstrap.dita-bootstrap.pdf
dita install org.dita-bootstrap/dita-bootstrap.pdf.theme
```

## Using

Specify the `pdf-bootstrap` format and the `bootstrap.theme` parameter when building output with the `dita` command:

```console
dita --input=path/to/your.ditamap \
     --format=pdf-bootstrap \
     --bootstrap.theme=pulse
```

If the `bootstrap.theme` parameter is not specified, the `default` theme will be applied.

## Available Themes

This plug-in includes a wide range of themes, each of which overrides the default Bootstrap branding with unique color palettes
and typography:

- **Brite**, **Cerulean**, **Cosmo**, **Cyborg**, **Darkly**, **Default**, **Flatly**, **Journal**, **Litera**, **Lumen**,
  **Lux**, **Materia**, **Minty**, **Morph**, **Pulse**, **Quartz**, **Sandstone**, **Simplex**, **Sketchy**, **Slate**, **Solar**,
  **Spacelab**, **Superhero**, **United**, **Vapor**, **Yeti**, **Zephyr**.

Each theme is designed to match the equivalent [Bootswatch theme](https://bootswatch.com/), providing a consistent visual identity
across both web and print outputs.

## Customizing

### Component Reflection

Each theme includes a reflection map override that ensures component-specific styling (such as cards, alerts, and badges)
uses the theme's core brand colors and accent variations.

### Manual Overrides

To further customize a theme, you can create your own plugin and copy and modify the `cfg/fo/attrs/custom.xsl` file within
the specific theme folder (e.g., `plugins/dita-bootstrap.pdf.theme/pulse/cfg/fo/attrs/custom.xsl`). These files allow you
to override specific XSL-FO attributes for the selected theme.

## License

[Apache 2.0](LICENSE) © 2026 Jason Fox

The generated PDFs created by this software include the following additional fonts which are obtained under license:

- Inter – https://github.com/rsms/inter – **SIL Open Font License**
- Lato – http://www.latofonts.com/ – **SIL Open Font License**
- Liberation Fonts – https://github.com/liberationfonts/liberation-fonts – **SIL Open Font License**
- Neucha – https://github.com/google/fonts/tree/main/ofl/neucha – **SIL Open Font License**
- Noto Sans – https://github.com/googlefonts/noto-fonts – **SIL Open Font License**
- Nunito – https://github.com/googlefonts/nunito – **SIL Open Font License**
- Open Sans – https://github.com/googlefonts/open-sans – **SIL Open Font License**
- Roboto – https://github.com/googlefonts/roboto – **Apache License 2.0**
- Source Sans Pro – https://github.com/adobe-fonts/source-sans-pro – **SIL Open Font License**
- Ubuntu – https://design.ubuntu.com/font/ – **Ubuntu Font License**

[1]: http://www.dita-ot.org
[2]: https://github.com/dita-bootstrap/dita-bootstrap.pdf
