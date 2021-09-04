---
# Change the title etc. according to your needs:
title: "Report that I wrote"
subtitle: "It took a long time"
date: '03 September 2021'
author: 
- name: 'Some Person'
- affiliation: 
  - Sort of a company
- name: 'Someone Else'
- affiliation:
  - This Place
  - That Place

thanks: "**Current version**: September 03, 2021; **Corresponding author**: someone@example.org"
#course: 'Seminar: The this of that'
#field: Fruits and nuts

output:
  pdf_document: 
    citation_package: biblatex
    highlight: tango
    keep_md: yes
    keep_tex: yes
    latex_engine: lualatex   # use xelatex or lualatex for best results
    template: formal-report-template.tex
    extra_dependencies: 
      flafter: null
      parskip: ["parfill"]

geometry: margin=2.54cm, headheight=15pt
papersize: letter
linestretch: 1.1    # how much is spacing between lines extended 

lang: en-US
fontsize: 11pt

logo: 'Branch-logo.png'  # insert path to your logo
logowidth: "3cm"

# dir:             # in theory, could support bidirectional text using bidi

header-includes: 
  \renewcommand\textfraction{0.15}


########################################################
# Select an NFSS font family (if desired) and optionally 
# override with individual fonts (starting with mainfont);
# the latter use fontspec (only for XeLaTeX or LuaLaTeX). 

# To use NFSS fonts, un-comment the line for the desired font and the 
# fontdefault specification
# fontfamily: mathpazo
# fontfamily: tgschola
# fontfamily: palatino
# fontfamily: helvet
# fontdefault: rm   # rm, sf, tt

# If using an NFSS font, following lines can be commented. 
mainfont: texgyrepagella-regular.otf
mainfontoptions: "BoldFont=texgyrepagella-bold.otf,
 ItalicFont=texgyrepagella-italic.otf,
 BoldItalicFont=texgyrepagella-bolditalic.otf"
mathfont: texgyrepagella-math.otf
sansfont: zhv.otf                 # Helvetica
monofont: inconsolata.otf
# authorfont: zhv-Bol.otf           # Helvetica-Bold
# pagefont: texgyrepagella-regular.otf
# bibliofont: texgyrepagella-regular.otf
urlfont: zhv.otf

# titlefont: texgyrepagella-regular.otf
# titlefont: texgyreheros-bold.otf     # block sans serif font for document title
# titlefont: InriaSans-Bold.otf
# titlefont: FiraSans-Bold.otf
# titlefont: LibertinusSans-Bold.otf
# titlefont: zhv-Bol.otf                 # Helvetica-like?
# titlefont: FreeSansBold.otf
# titlefont: IBMPlexSans-Bold.otf
# titlefont: SourceSansPro-Bold.otf
# titlefont: UniversalisADFStd-Bold.otf
titlefont: AlegreyaSans-Bold.otf

########################################################

colorlinks: 
  linkcolor: Maroon
  citecolor: PineGreen
  urlcolor: RoyalPurple

bibliography: "generic.bib"
biblio-style: alphabetic  # choices include ieee, acm, apa, mls, alphabetic, authoryear, etc.
biblatexoptions: hyperref=true,backref=true
bibliosize: small

quotesize: small

pagebackref: yes        # hyperref parameter
graphics: yes           # ????? (was null?!?!)
# classoption:
lof: yes          # list of figures
lot: yes          # list of tables
toc: yes          # table of contents
numbersections: yes
tables: yes       # longtable, booktabs
UP_title: yes     # title all-caps
UP_subtitle: yes  # subtitle likewise
appendices:
  ownnumbering: yes     # give appendices their own pagination: A-1, B-1 etc. 
referencepagenumbers:
  prefix: 'ref--'           # prefix applied to roman page numbers in references section
figtabcounterwithin: yes    # Do figure and table numbers get section number prefixes?

marking: DRAFT
markingcolor: ForestGreen

# Customize bullets, because we can
labelitemi: triangleright
labelitemii: guillemotright
labelitemiii: textbullet
labelitemiv: textopenbullet

abstractname: Abstract
abstract: "This is an R markdown template for a formal report with a title page with space for an optional logo. It began as a heavily modified version of Sebastian Sauer's yart template at [https://github.com/sebastiansauer/yart](https://github.com/sebastiansauer/yart). Also includes elements of Steven Miller's article template at [https://github.com/svmiller/svm-r-markdown-templates](https://github.com/svmiller/svm-r-markdown-templates). It is free for anyone's use under the terms of GPL-3; see LICENSE.md."
---





\blfootnote{\textbf{Current version:} September 03, 2021; \textbf{commit:} 4e65165c 2021-09-04}



# Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.[@nyserdaNewYorkState2019][@epaInventoryGreenhouseGas2017] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 

> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.^[Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.]\footnote{another, non-Latin, footnote.} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

\textit{This should be italicized.}
\texttt{This should be monotype.}

\clearpage

# Tools and methods

\begin{framed}
\begin{LARGE}LARGE\end{LARGE}

\begin{Large}Large\end{Large}

\begin{large}large\end{large}

\begin{normalsize}normalsize\end{normalsize}

\begin{small}small\end{small}

\begin{footnotesize}footnotesize\end{footnotesize}

\begin{scriptsize}scriptsize\end{scriptsize}

\begin{tiny}tiny\end{tiny}
\end{framed}


\begin{tcolorbox}[colback=red!5!white,colframe=red!75!black,title=My nice heading]
This is another \textbf{tcolorbox}.
\tcblower
Here, you see the lower part of the box.
\end{tcolorbox}

- We have bullets
  - Yes we do
    - We have bullets
      - How 'bout you?


## Some particular stuff

\begin{equation}
\displaystyle\int_{0}^{\infty}x^{-2.5}\,dx
\end{equation}

### Now, a figure

\begin{figure}
\includegraphics{formal-report_files/figure-latex/figure-example-1} \caption{Figure example}\label{fig:figure-example}
\end{figure}

Figure \ref{fig:figure-example} is an example figure. 

\FloatBarrier

# Data sources

\begin{table}

\caption{\label{tab:xtable-example}Data structure for analysis}
\centering
\begin{tabular}[t]{l|r|r|r|r|r|r|r|r|r|r|r}
\hline
  & mpg & cyl & disp & hp & drat & wt & qsec & vs & am & gear & carb\\
\hline
Mazda RX4 & 21.0 & 6 & 160.0 & 110 & 3.90 & 2.620 & 16.46 & 0 & 1 & 4 & 4\\
\hline
Mazda RX4 Wag & 21.0 & 6 & 160.0 & 110 & 3.90 & 2.875 & 17.02 & 0 & 1 & 4 & 4\\
\hline
Datsun 710 & 22.8 & 4 & 108.0 & 93 & 3.85 & 2.320 & 18.61 & 1 & 1 & 4 & 1\\
\hline
Hornet 4 Drive & 21.4 & 6 & 258.0 & 110 & 3.08 & 3.215 & 19.44 & 1 & 0 & 3 & 1\\
\hline
Hornet Sportabout & 18.7 & 8 & 360.0 & 175 & 3.15 & 3.440 & 17.02 & 0 & 0 & 3 & 2\\
\hline
Valiant & 18.1 & 6 & 225.0 & 105 & 2.76 & 3.460 & 20.22 & 1 & 0 & 3 & 1\\
\hline
Duster 360 & 14.3 & 8 & 360.0 & 245 & 3.21 & 3.570 & 15.84 & 0 & 0 & 3 & 4\\
\hline
Merc 240D & 24.4 & 4 & 146.7 & 62 & 3.69 & 3.190 & 20.00 & 1 & 0 & 4 & 2\\
\hline
Merc 230 & 22.8 & 4 & 140.8 & 95 & 3.92 & 3.150 & 22.90 & 1 & 0 & 4 & 2\\
\hline
Merc 280 & 19.2 & 6 & 167.6 & 123 & 3.92 & 3.440 & 18.30 & 1 & 0 & 4 & 4\\
\hline
Merc 280C & 17.8 & 6 & 167.6 & 123 & 3.92 & 3.440 & 18.90 & 1 & 0 & 4 & 4\\
\hline
Merc 450SE & 16.4 & 8 & 275.8 & 180 & 3.07 & 4.070 & 17.40 & 0 & 0 & 3 & 3\\
\hline
Merc 450SL & 17.3 & 8 & 275.8 & 180 & 3.07 & 3.730 & 17.60 & 0 & 0 & 3 & 3\\
\hline
Merc 450SLC & 15.2 & 8 & 275.8 & 180 & 3.07 & 3.780 & 18.00 & 0 & 0 & 3 & 3\\
\hline
Cadillac Fleetwood & 10.4 & 8 & 472.0 & 205 & 2.93 & 5.250 & 17.98 & 0 & 0 & 3 & 4\\
\hline
Lincoln Continental & 10.4 & 8 & 460.0 & 215 & 3.00 & 5.424 & 17.82 & 0 & 0 & 3 & 4\\
\hline
Chrysler Imperial & 14.7 & 8 & 440.0 & 230 & 3.23 & 5.345 & 17.42 & 0 & 0 & 3 & 4\\
\hline
Fiat 128 & 32.4 & 4 & 78.7 & 66 & 4.08 & 2.200 & 19.47 & 1 & 1 & 4 & 1\\
\hline
Honda Civic & 30.4 & 4 & 75.7 & 52 & 4.93 & 1.615 & 18.52 & 1 & 1 & 4 & 2\\
\hline
Toyota Corolla & 33.9 & 4 & 71.1 & 65 & 4.22 & 1.835 & 19.90 & 1 & 1 & 4 & 1\\
\hline
Toyota Corona & 21.5 & 4 & 120.1 & 97 & 3.70 & 2.465 & 20.01 & 1 & 0 & 3 & 1\\
\hline
Dodge Challenger & 15.5 & 8 & 318.0 & 150 & 2.76 & 3.520 & 16.87 & 0 & 0 & 3 & 2\\
\hline
AMC Javelin & 15.2 & 8 & 304.0 & 150 & 3.15 & 3.435 & 17.30 & 0 & 0 & 3 & 2\\
\hline
Camaro Z28 & 13.3 & 8 & 350.0 & 245 & 3.73 & 3.840 & 15.41 & 0 & 0 & 3 & 4\\
\hline
Pontiac Firebird & 19.2 & 8 & 400.0 & 175 & 3.08 & 3.845 & 17.05 & 0 & 0 & 3 & 2\\
\hline
Fiat X1-9 & 27.3 & 4 & 79.0 & 66 & 4.08 & 1.935 & 18.90 & 1 & 1 & 4 & 1\\
\hline
Porsche 914-2 & 26.0 & 4 & 120.3 & 91 & 4.43 & 2.140 & 16.70 & 0 & 1 & 5 & 2\\
\hline
Lotus Europa & 30.4 & 4 & 95.1 & 113 & 3.77 & 1.513 & 16.90 & 1 & 1 & 5 & 2\\
\hline
Ford Pantera L & 15.8 & 8 & 351.0 & 264 & 4.22 & 3.170 & 14.50 & 0 & 1 & 5 & 4\\
\hline
Ferrari Dino & 19.7 & 6 & 145.0 & 175 & 3.62 & 2.770 & 15.50 & 0 & 1 & 5 & 6\\
\hline
Maserati Bora & 15.0 & 8 & 301.0 & 335 & 3.54 & 3.570 & 14.60 & 0 & 1 & 5 & 8\\
\hline
Volvo 142E & 21.4 & 4 & 121.0 & 109 & 4.11 & 2.780 & 18.60 & 1 & 1 & 4 & 2\\
\hline
\end{tabular}
\end{table}

\startofappendices

\anappendix{Title of first appendix}


 Right      Left     Center    Default
-------    ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1
      
Table: Table caption

\anappendix{Title of second appendix}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.^[Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.]\footnote{another, non-Latin, footnote.} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

\begin{table}

\caption{\label{tab:tableInAppendix}\label{tab:formal-report}Caption text}
\centering
\begin{tabular}[t]{lrr}
\toprule
Scenario & Revenue & Cost\\
\midrule
A & 20000 & 17000\\
B & 30000 & 21000\\
\bottomrule
\end{tabular}
\end{table}

\appendicesendhere


\startofreferences

<!-- These lines ensure references are set with hanging indents in PDF documents -->
\newlength{\cslhangindent}
\setlength{\cslhangindent}{1.5em}
\newenvironment{cslreferences}%
  {\setlength{\parindent}{0em}%
  \everypar{\setlength{\hangindent}{\cslhangindent}}\ignorespaces}%
  {\par}

# References




