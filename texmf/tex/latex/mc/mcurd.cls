%% mcurd.cls -- LaTeX2e MC URD class
% 
% Copyright (C) 2011-2012 Francesco Pizzolante

%* TODO
%


%* Identification

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mcurd}[2011/09/06 v0.1 ISC URD class]


% * --[ Documentation

% See http://en.wikibooks.org/wiki/LaTeX  (= excellent!)

%* Options

\DeclareOption*{% code to be executed for every unknown option
    \PassOptionsToClass{\CurrentOption}{article}%
    \PassOptionsToClass{\CurrentOption}{report}%
    \PassOptionsToClass{\CurrentOption}{book}%
}

\ProcessOptions\relax% execute the options

%* Document Classes (some of the various classes available)

\LoadClass[a4paper,12pt]{report}
\RequirePackage[T1]{fontenc}
\RequirePackage{fourier}
% http://www.tug.dk/FontCatalogue/utopia/

\RequirePackage[vcentering,pdftex]{geometry}
\RequirePackage{a4wide}
\RequirePackage[english]{babel}
%\RequirePackage[ansinew]{inputenc}
\RequirePackage[nofancy]{rcsinfo}
\RequirePackage[pdfusetitle]{hyperref}%
\RequirePackage{graphicx}
\RequirePackage{weanote}
\RequirePackage{weareqmt}
\RequirePackage{fancyhdr}
\RequirePackage{rotating}
\RequirePackage{lscape}
\RequirePackage{nomencl}
\RequirePackage{wasysym}
\RequirePackage{marvosym}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{todonotes}

\hypersetup{%
  % bookmarks=true,% make PDF bookmarks
  bookmarksnumbered,% include section numbers
  bookmarksopen=false,% subtrees not expanded
  breaklinks=true,% allow hyperlinks to wrap over lines
  citecolor=black,% color of links to bibliography
  colorlinks=true,% avoid the red boxed around cross-references
  filecolor=black,% color of file links
  % hyperindex,% link index to text
  linkcolor=black,% color of internal links
  pageanchor=true,% makes an anchor on every page (to be able to make links to pages)
  % pagebackref,% in bibliography: show page numbers where mentioned. backref: show sections
  pdffitwindow=true,% page fit to window when opened
  pdfmenubar=true,% show Acrobat's menu?
  pdfnewwindow=true,% links in new window
  % pdfpagelabels,% display e.g. ii (2 of 40)
  pdfpagemode=UseNone,% how file is opened (thumbnails, ...)
  pdfstartview=Fit,% FitH = fit horizontally -- Fit = whole page
  pdftoolbar=true,% show Acrobat's toolbar?
  plainpages=false,% anchors have formatted form, i.e. ii != 2
  unicode=false,% non-Latin characters in Acrobat's bookmarks
  urlcolor=black,% color of external links
}%

\definecolor{mc@todoborder}{RGB}{221,232,255}
\definecolor{mc@todobg}{RGB}{221,232,255}
\renewcommand{\@todonotes@backgroundcolor}{mc@todobg}
\renewcommand{\@todonotes@bordercolor}{mc@todoborder}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
%\RequirePackage{hyphenation}


% Import glossaries after hyperref
\usepackage[sanitize={name=true},toc,section=chapter,nonumberlist,style=altlistgroup]{glossaries}
\makeglossaries

%\input{glossary}
\glsaddall
\usepackage{makeidx}

% Some problems with floats
\renewcommand{\textfraction}{0.1}
% \renewcommand{\floatfraction}{0.9}
\usepackage{afterpage}

% When defining a concept X, if you want the page number to be emphasized in the index
% use the following syntax:
% \index{X|definition}
%
\makeindex{}

\usepackage[printonlyused]{acronym}
\let\oldmarginpar\marginpar
\renewcommand\marginpar[1]{\-\oldmarginpar[\raggedleft\small\sf #1]{\raggedright\small\sf #1}}


%* Set the header/footer

% define rules
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\pagestyle{fancyplain}
% Use uncapitalized chapter/section names
% \renewcommand{\chaptermark}[1]{\markboth{#1}{}}
% \renewcommand{\sectionmark}[1]{\markright{#1}}
\renewcommand{\chaptermark}[1]{\markboth{\textsc{\chaptername~\thechapter{} ---} #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection{} #1}}
% specify generic header/setter
\fancyhead[LCR]{}
\fancyhead[R]{\rightmark}
\fancyfoot[LCR]{}
\fancyhead[L]{\sl\leftmark} %Web Ordering System: Software Requirements Specification}
% \fancyfoot[R]{--- DRAFT -- \today --- \thepage{}}
\fancyfoot[R]{\thepage{}}
\fancyfoot[L]{\textcopyright{} Mission Critical 2010}
% \fancyfoot[L]{{\small Rev: \rcsInfoRevision{} du \rcsInfoDate{}}}
% \fancyfoot[C]{--- DRAFT -- \today ---}
% reset the 'plain' style to remove header/footer on chapters' first page
\fancypagestyle{plain}{ \fancyhead{} \renewcommand{\headrulewidth}{0pt}}

\renewcommand{\abstractname}{Executive Summary}

% Customize quote environment
\renewenvironment{quote}{%
\itshape\list{}{%
\leftmargin1cm   % this is the adjusting screw
\rightmargin\leftmargin
}
\item\relax
}
{\endlist}


\usepackage[draft]{pdfdraftcopy}
\draftstring{DRAFT}
\draftfontsize{180}
\definecolor{draftcolor}{rgb}{.80,.80,.80}
\draftcolor{draftcolor}
%\draftfontattrib{\upshape}

%% End of package
\endinput % very last line

% This is for the sake of Emacs.
% Local Variables:
% ispell-local-dictionary: "en_US"
% time-stamp-format: "%:y/%02m/%02d"
% time-stamp-start: "Provides\\(Class\\|Package\\){[a-zA-Z-]+}\\["
% time-stamp-end: " "
% End:

%% mcurd.cls ends here
