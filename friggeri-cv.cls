\ProvidesClass{friggeri-cv}[2012/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{violet}{HTML}{668CFF}
\definecolor{teal}{HTML}{008080}

%----------------- Custom color definitions --------------
% http://latexcolor.com/

\definecolor{arsenic}{rgb}{0.23, 0.27, 0.29}
\definecolor{armygreen}{rgb}{0.29, 0.33, 0.13}
\definecolor{englishgreen}{rgb}{0.0, 0.5, 0.0}
\definecolor{amaranth}{rgb}{0.9, 0.17, 0.31}
\definecolor{asparagus}{rgb}{0.53, 0.66, 0.42}
\definecolor{azure}{rgb}{0.0, 0.5, 1.0}
\definecolor{britishracinggreen}{rgb}{0.0, 0.26, 0.15}
\definecolor{cadet}{rgb}{0.33, 0.41, 0.47}
\definecolor{camouflagegreen}{rgb}{0.47, 0.53, 0.42}
\definecolor{carolinablue}{rgb}{0.6, 0.73, 0.89}
\definecolor{charcoal}{rgb}{0.21, 0.27, 0.31}
\definecolor{cobalt}{rgb}{0.0, 0.28, 0.67}
\definecolor{coolblack}{rgb}{0.0, 0.18, 0.39}
\definecolor{darkcerulean}{rgb}{0.03, 0.27, 0.49}
\definecolor{darkmidnightblue}{rgb}{0.0, 0.2, 0.4}
\definecolor{denim}{rgb}{0.08, 0.38, 0.74}
\definecolor{dollarbill}{rgb}{0.52, 0.73, 0.4}
\definecolor{ferngreen}{rgb}{0.31, 0.47, 0.26}
\definecolor{feldgrau}{rgb}{0.3, 0.36, 0.33}
\definecolor{glaucous}{rgb}{0.38, 0.51, 0.71}
\definecolor{huntergreen}{rgb}{0.21, 0.37, 0.23}
\definecolor{lapislazuli}{rgb}{0.15, 0.38, 0.61}
\definecolor{olive}{rgb}{0.5, 0.5, 0.0}
\definecolor{ceil}{rgb}{0.57, 0.63, 0.81}
\definecolor{carminered}{rgb}{1.0, 0.0, 0.22}
\definecolor{cadetblue}{rgb}{0.37, 0.62, 0.63}
\definecolor{calpolypomonagreen}{rgb}{0.12, 0.3, 0.17}
\definecolor{darkcyan}{rgb}{0.0, 0.55, 0.55}
\definecolor{darkcoral}{rgb}{0.8, 0.36, 0.27}
\definecolor{darkgoldenrod}{rgb}{0.72, 0.53, 0.04}

\ifdefined\@cv@print
  \colorlet{englishgreen}{gray}
  \colorlet{denim}{gray}
  \colorlet{darkcyan}{gray}
  \colorlet{darkcoral}{gray}
  \colorlet{blue}{gray}
  \colorlet{violet}{gray}
  \colorlet{teal}{gray}
  \colorlet{amaranth}{gray}
  \colorlet{darkgoldenrod}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}

%%%%%%%%%
% Fonts %
%%%%%%%%%

% \RequirePackage[quiet]{fontspec}
% \RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
% 
% \newfontfamily\bodyfont[]{Helvetica Neue}
% \newfontfamily\thinfont[]{Helvetica Neue UltraLight}
% \newfontfamily\headingfont[]{Helvetica Neue Condensed Bold}
% 
% \defaultfontfeatures{Mapping=tex-text}
% \setmainfont[Mapping=tex-text, Color=textcolor]{Helvetica Neue Light}
% 
% \setmathfont{XITS Math}

%%% modified by Karol Kozioł for ShareLaTex use
\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX]{unicode-math}

\newfontfamily\bodyfont
[BoldFont=texgyreheros-bold.otf,
ItalicFont=texgyreheros-italic.otf,
BoldItalicFont=texgyreheros-bolditalic.otf]
{texgyreheros-regular.otf}
\newfontfamily\thinfont[]{Lato-Light.ttf}
\newfontfamily\headingfont[]{texgyreheros-bold.otf}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont
[Mapping=tex-text, Color=textcolor,
BoldFont=texgyreheros-bold.otf,
ItalicFont=texgyreheros-italic.otf,
BoldItalicFont=texgyreheros-bolditalic.otf
]
{texgyreheros-regular.otf}

\setmathfont{texgyreheros-regular.otf}
%%%

%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{14pt}{24pt}\selectfont%
  \thinfont%
  \color{white}%
}

\newcommand{\header}[3]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=lapislazuli, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box) {%
      \fontsize{40pt}{72pt}\color{header}%
      {\thinfont #1}{\bodyfont  #2}
    };
    \node [anchor=north] at (name.south) {%
      \fontsize{14pt}{24pt}\color{header}%
      \thinfont #3%
    };
  \end{tikzpicture}
  \vspace{2.5cm}
  \vspace{-2\parskip}
}


%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%
\RequirePackage{parskip}

\newcounter{colorCounter}
\def\@sectioncolor#1#2#3{%
  {%
    \color{%
      \ifcase\value{colorCounter}%
        englishgreen\or%
        denim\or%
        darkcyan\or%
        darkcoral\or%
        violet\or%
        amaranth\or%
        darkgoldenrod\or%
        purple\else%
        headercolor\fi%
    } #1#2#3%
  }%
  \stepcounter{colorCounter}%
}

\renewcommand{\section}[1]{
  \par\vspace{\parskip}
  {%
    \LARGE\headingfont\color{headercolor}%
    \@sectioncolor #1%
  }
  \par\vspace{\parskip}
}

\renewcommand{\subsection}[1]{
  \par\vspace{.5\parskip}%
  {%
  \large\headingfont\color{headercolor} #1%
  }
  \par\vspace{.25\parskip}%
}

\pagestyle{empty}


%%%%%%%%%%%%%%%%%%%%
% List environment %
%%%%%%%%%%%%%%%%%%%%

\setlength{\tabcolsep}{0pt}
\newenvironment{entrylist}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}
\renewcommand{\bfseries}{\headingfont\color{headercolor}}
\newcommand{\entry}[4]{%
  #1&\parbox[t]{11.8cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=lightgray} #3}\\%
    #4\vspace{\parsep}%
  }\\}


%%%%%%%%%%%%%%
% Side block %
%%%%%%%%%%%%%%

\RequirePackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}
\newenvironment{aside}{%
  \let\oldsection\section
  \renewcommand{\section}[1]{
    \par\vspace{\baselineskip}{\Large\headingfont\color{headercolor} ##1}
  }
  \begin{textblock}{5}(0.5, 3.75)
  \begin{flushleft}
  \obeycr
}{%
  \restorecr
  \end{flushright}
  \end{textblock}
  \let\section\oldsection
}

%%%%%%%%%%%%%%%%
% Bibliography %
%%%%%%%%%%%%%%%%

%\RequirePackage[natbib,backend=biber,annotation,style=numeric]{biblatex-chicago}
\RequirePackage[backend=biber,style=numeric,sorting=ydnt,maxbibnames=99]{biblatex}
%\RequirePackage[style=verbose, maxnames=99, sorting=ydnt]{biblatex}

\setlength{\bibitemsep}{.35\baselineskip plus .05\baselineskip minus .05\baselineskip}
\newlength{\bibparskip}\setlength{\bibparskip}{0pt}
\let\oldthebibliography\thebibliography
\renewcommand\thebibliography[1]{%
  \oldthebibliography{#1}%
  \setlength{\parskip}{\bibitemsep}%
  \setlength{\itemsep}{\bibparskip}%
}

\renewcommand*{\mkbibnamegiven}[1]{%
\ifitemannotation{highlight}
    {\textbf{#1}}
{#1}}

\renewcommand*{\mkbibnamefamily}[1]{%
\ifitemannotation{highlight}
    {\textbf{#1}}
{#1}}


%\DeclareFieldFormat[article]{title}{#1\par}
%\DeclareFieldFormat[inproceedings]{title}{#1\par}
%\DeclareFieldFormat[misc]{title}{#1\par}
%\DeclareFieldFormat[report]{title}{#1\par}

%\DeclareBibliographyDriver{article}{%
%  \printfield{title}%
%  \newblock%
%  \printnames{author}%
%  \par%
%  \newblock%
%  {%
%    \footnotesize\addfontfeature{Color=lightgray}\itshape%
%    \usebibmacro{journal+issuetitle}%
%    \setunit{\space}%
%    \printfield{pages}%
%    \newunit%
%    \printlist{publisher}%
%    \setunit*{\addcomma\space}%
%    \printfield{year}%
%    \newunit%
%  }
%  \par\vspace{0.3\baselineskip}
%}

%\DeclareBibliographyDriver{inproceedings}{%
%  \printfield{title}%
%  \newblock%
%  \printnames{author}%
%  \par%
%  \newblock%
%  {%
%    \footnotesize\addfontfeature{Color=lightgray}%
%    \printfield{booktitle}%
%    \setunit{\addcomma\space}%
%    \printfield{year}%
%    \setunit{\addcomma\space}%
%    \printlist{location}%
%    \newunit%
%  }
%  \par\vspace{0.3\baselineskip}
%}

%\DeclareBibliographyDriver{misc}{%
%  \printfield{title}%
%  \newblock%
%  \printnames{author}%
%  \par%
%  \newblock%
%  {%
%    \footnotesize\addfontfeature{Color=lightgray}\itshape%
%    \printfield{booktitle}%
%    \setunit*{\addcomma\space}%
%    \printfield{note}%
%    \setunit*{\addcomma\space}%
%    \printfield{year}%
%    \setunit{\addcomma\space}%
%    \printlist{location}%
%    \newunit%
%  }
%  \par\vspace{0.3\baselineskip}
%}

%\DeclareBibliographyDriver{report}{%
%  \printfield{title}%
%  \newblock%
%  \printnames{author}%
%  \par%
%  \newblock%
%  {%
%    \footnotesize\addfontfeature{Color=lightgray}\itshape%
%    \printfield{type}%
%    \setunit{\space}%
%    \printfield{number}%
%    \setunit{\addcomma\space}%
%    \printfield{year}%
%    \newunit%
%  }
%  \par\vspace{0.3\baselineskip}
%}

%\DeclareNameFormat{author}{%
%  \small\addfontfeature{Color=lightgray}%
%  \ifblank{##3}{}{##3\space}#1%
%  \ifthenelse{\value{listcount}<\value{liststop}}
%    {\addcomma\space}
%    {}%
%}

%\newcommand{\printbibsection}[2]{
%  \begin{refsection}
%    \nocite{*}
%    \printbibliography[sorting=chronological, type={#1}, title={#2}, heading=subbibliography]
%  \end{refsection}
%}

%\DeclareSortingScheme{chronological}{
%  \sort[direction=descending]{\field{year}}
%  \sort[direction=descending]{\field{month}}
%}


% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}


% Location command
\newcommand{\location}[1]{\color{primary}\raggedright\fontspec[Path = fonts/]{Niveau-Reg}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont}

%%%%%%%%%%%%%%%%
% Other tweaks %
%%%%%%%%%%%%%%%%

\RequirePackage[left=6.1cm,top=2cm,right=1.5cm,bottom=2.5cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
\RequirePackage{fontspec}

\RequirePackage{fontawesome}
\newfontfamily{\FA}{FontAwesome}

\def\mail{{\FA \faEnvelope}}
\def\twitter{{\FA \faTwitter}}
\def\linkedin{{\FA \faLinkedin}}
\def\github{{\FA \faGithub}}
