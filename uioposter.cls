%% Implemented by Martin Helsø (martibhe@math.uio.no)
%% Version: 23-09-2019


\NeedsTeXFormat{LaTeX2e}


\ProvidesClass{uioposter}


\DeclareOption{english}{\def\uioposter@lang{english}}
\DeclareOption{norsk}
{
    \def\uioposter@lang{norsk}
    \pretolerance = 2000
    \tolerance    = 6000
    \hbadness     = 6000
}


\DeclareOption{portrait}
{
    \PassOptionsToPackage{orientation = portrait}{beamerposter}
    \def\uioposter@orientation{}
}
\DeclareOption{landscape}
{
    \PassOptionsToPackage{orientation = landscape}{beamerposter}
    \def\uioposter@orientation{landscape}
}


\DeclareOption{a0paper}{\def\uioposter@size{a0paper}}
\DeclareOption{a1paper}{\def\uioposter@size{a1paper}}
\DeclareOption{a2paper}{\def\uioposter@size{a2paper}}
\DeclareOption{a3paper}{\def\uioposter@size{a3paper}}
\DeclareOption{a4paper}{\def\uioposter@size{a4paper}}
\DeclareOption{a5paper}{\def\uioposter@size{a5paper}}
\DeclareOption{a6paper}{\def\uioposter@size{a6paper}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}


\ExecuteOptions{a0paper}
\ExecuteOptions{english}
\ExecuteOptions{portrait}
\ProcessOptions
\relax


\LoadClass[t]{beamer}


\RequirePackage[size = a0, scale = 1.5]{beamerposter}
\RequirePackage{etoolbox}
\RequirePackage{pgfpages}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{calc}
\RequirePackage[final]{microtype}
\RequirePackage{lmodern}
\RequirePackage[scaled]{beramono}


\hypersetup{colorlinks,
            urlcolor  = uiolink,
            linkcolor =,
            citecolor =,
            filecolor =}
\renewcommand{\sfdefault}{phv}
\DeclareFontShape{OMX}{cmex}{m}{n}
{
    <-7.5>    cmex7
    <7.5-8.5> cmex8
    <8.5-9.5> cmex9
    <9.5->    cmex10
}{}
\SetSymbolFont{largesymbols}{normal}{OMX}{cmex}{m}{n}
\SetSymbolFont{largesymbols}{bold}  {OMX}{cmex}{m}{n}
\setlength{\marginparwidth}{2cm}
\setlength{\emergencystretch}{1em}
\frenchspacing

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usefonttheme{serif}
\useinnertheme{rectangles}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{caption label separator}{: }
\setbeamertemplate{qed symbol}{\(\blacksquare\)}
\setbeamertemplate{itemize items}{\color{itemize item.fg}\(\blacksquare\)}


\setlength{\labelsep}{3ex}
\setlength{\leftmargini}{18ex}
\setbeamersize{text margin left = 3cm, text margin right = 3cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{ugyellow}{cmyk}{0, 0.17, 0.6, 0} % UG-yellow
\definecolor{uiowhite}{cmyk}{0, 0, 0, 0}
\definecolor{ugblue}{cmyk}{0.92, 0.44, 0, 0.45} % UG-blue
\definecolor{uioheader}{cmyk}{0.32, 0.31, 0.67, 0.02} % UG-gold
% \definecolor{uioheader}{cmyk}{0, 0, 0, 0.6}
\definecolor{uiobackground}{cmyk}{0, 0, 0, 0.3}
\definecolor{uiolink}{HTML}{0B5A9D}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamercolor{structure}{fg = uioheader}
\setbeamercolor{alerted text}{fg = ugyellow}
\setbeamercolor{background canvas}{fg = ugblue, bg = uiobackground}
\setbeamercolor{headline}{fg = uiowhite, bg = ugblue}
\setbeamercolor{title in headline}{fg = ugyellow}
\setbeamercolor{author in headline}{fg = uiowhite}
\setbeamercolor{footline}{fg = uiowhite, bg = ugblue}


\setbeamercolor{block title}{fg = uiowhite, bg = structure}
\setbeamercolor{block title example}{fg = uiowhite, bg = ugblue}
\setbeamercolor{block title alerted}{fg = uiowhite, bg = ugyellow}


\setbeamercolor{block body} {fg = ugblue, bg = uiowhite}
\setbeamercolor{block body example} {fg = ugblue, bg = uiowhite}
\setbeamercolor{block body alerted} {fg = ugblue, bg = uiowhite}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamerfont{title in headline}{family = \sffamily,
                                  series = \bfseries,
                                  size   = \huge}
\setbeamerfont{author in headline}{family = \sffamily,
                                   series = \bfseries,
                                   size   = \large}
\setbeamerfont{institute}{family = \sffamily,
                          series = \mdseries,
                          size   = \small}


\setbeamerfont{block title}{family = \sffamily,
                            series = \bfseries,
                            size   = \large}
\setbeamerfont{block title alerted}{family = \sffamily,
                                    series = \bfseries,
                                    size   = \large}
\setbeamerfont{block title example}{family = \sffamily,
                                    series = \bfseries,
                                    size   = \large}


\setbeamerfont{block body}{
    % family = \rmfamily,
    % series = \normalfont,
    size   = \small,
}
\setbeamerfont{block body example}{
    % family = \rmfamily,
    % series = \normalfont,
    size   = \small,
}
\setbeamerfont{block body alerted}{
    % family = \rmfamily,
    % series = \normalfont,
    size   = \small,
}
\setbeamerfont{item projected}{
    % family = \sffamily,
    % series = \bfseries,
    size   = \small
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{headline}
{
    \begin{beamercolorbox}[wd = \paperwidth,
                           leftskip  = 3cm,
                           rightskip = 3cm plus 20cm]{headline}
        \vskip-0.5cm
        \centering
        \includegraphics[scale = 1.3]
        % {uioposter-images/uioposter-logo-\uioposter@lang}
        {uioposter-images/escudo-horizontal-png.png}
        \usebeamerfont{title in headline}
        \usebeamercolor{title in headline}
        \color{uiobackground}
        \vskip0ex
        \hskip-0.05ex
        \inserttitle
        \vskip1ex
        \usebeamerfont{author in headline}
        \usebeamercolor{author in headline}
        \color{ugyellow}
        \hskip-0.05ex
        \insertauthor
        \ifdefempty{\insertinstitute}{}
        {
            \vskip1ex
            \usebeamerfont{institute}
            \def\beamer@andinst{\quad}
            \insertinstitute
        }
        \vskip3cm
    \end{beamercolorbox}
    \vskip1cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{footline}
{
    \leavevmode
    \begin{beamercolorbox}[wd = \paperwidth]{footline}
        \vskip2cm
        \hskip4.1cm
        \includegraphics[scale = 1.5]{uioposter-images/ciencias-e-ingenierias-png.png}
        \vskip2cm
    \end{beamercolorbox}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block begin}
{
    \setbeamercolor{itemize item}  {fg = block title.bg}
    \setbeamercolor{item projected}{fg = block title.fg,
                                    bg = block title.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title}

        \usebeamerfont*{block title}
        \insertblocktitle
        
    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body}

        \usebeamerfont{block body}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block example begin}
{
    \setbeamercolor{itemize item}  {fg = block title example.bg}
    \setbeamercolor{item projected}{fg = block title example.fg,
                                    bg = block title example.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title example}

        \usebeamerfont*{block title example}
        \insertblocktitle

    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body example}

        \usebeamerfont{block example body}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block example end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block alerted begin}
{
    \setbeamercolor{itemize item}  {fg = block title alerted.bg}
    \setbeamercolor{item projected}{fg = block title alerted.fg,
                                    bg = block title alerted.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title alerted}

        \usebeamerfont*{block title alerted}
        \insertblocktitle

    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body alerted}

        \usebeamerfont{block body alerted}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block alerted end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\enumitem}[1]
{{%
    \leavevmode\unskip
    \def\insertenumlabel{#1}
    \usebeamertemplate*{enumerate item}%
}}


\newcommand{\enumref}[1]{\enumitem{\ref{#1}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pgfpagesdeclarelayout{resize and center}
{
    \def\pgfpageoptionborder{0pt}
}
{
    \pgfpagesphysicalpageoptions
    {
        logical pages   = 1,
        physical height = \pgfpageoptionheight,
        physical width  = \pgfpageoptionwidth
    }
    \pgfpageslogicalpageoptions{1}
    {
        resized width  = \pgfphysicalwidth,
        resized height = \pgfphysicalheight,
        border shrink  = \pgfpageoptionborder,
        center         = \pgfpoint{.5\pgfphysicalwidth}{.5\pgfphysicalheight}
    }
}


\ifdefstring{\uioposter@size}{a0paper}{}
{
    \pgfpagesuselayout{resize and center}[\uioposter@size,
                                          \uioposter@orientation]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\endinput
