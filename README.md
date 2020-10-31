# cnt-learning-insights
A repository for collecting and distributing LaTeX learning point insights to be used in publications.

## How to
Install the NuGet package in the repository and include each single `.tex` file inside your latex files using command `\input`.

You can control the rendering of sections for each file by using these macros:

- `\CntLIHeading`: Every section title will be rendered for each snippet.
- `\CntLIHeading<SnippetName>V<Version>`: The specific section title for that snippet will be rendered.

You can also control what type of section title will be rendered:

- `\CntLIHeadingSection`: Render each title using `\section`.
- `\CntLIHeadingSubSection`: Render each title using `\subsection`.
- If not specified, `\section` will be used as default.
