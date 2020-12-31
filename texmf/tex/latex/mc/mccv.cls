%% mccv.cls -- LaTeX2e MC Curriculum Vitae class
% 
% Copyright (C) 2010-2011 Francesco Pizzolante

% * Identification

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mccv}[2011/01/10 v0.9 Mission Critical IT Curriculum Vitae class]

\LoadClass[a4paper,11pt]{moderncv}
\usepackage[scale=0.75, top=2cm, bottom=2cm]{geometry}

% moderncv theme
\moderncvtheme[blue]{casual} % optional argument are 'blue' (default), 'orange', 'red', 'green', 'grey' and 'roman' (for roman fonts, instead of sans serif fonts)

% Add seventh parameter to cventry in order to put the skills separately
\let\oldcventry\cventry
\renewcommand{\cventry}[7]{\oldcventry{#1}{#2}{#3}{#4}{#5}{#6\footnotesize{\emph{#7}}}}

\RequirePackage{paralist}

% Define the skills itemize environment
\newenvironment{skills}{
\\[2pt]
\begin{inparaitem}
    \renewcommand{\labelitemi}{\raisebox{1pt}{\ensuremath{\triangleright}}}
    }{\end{inparaitem}}

% Redefine maketitle
% Maketitle if defined in the theme style file which is loaded in a
% AtEndPreamble hook. We should do the same in order to avoid an error due to
% a non defined maketitle command.
\AtEndPreamble{
% maketitle
\renewcommand*{\maketitle}{%
{%
\ifthenelse{\isundefined{\@photo}}%
{}%
{\includegraphics[width=\@photowidth]{\@photo}}%
\hfill%
% \raggedleft{\firstnamestyle{\MakeLowercase{\@firstname}}\familynamestyle{\MakeLowercase{\@familyname}}}\\[-.35em]}%
\raggedleft{\firstnamestyle{\@firstname}~\familynamestyle{\@familyname}}\\[-.35em]}%
{\color{firstnamecolor}\rule{\textwidth}{.25ex}\\}%
% optional quote
\ifthenelse{\isundefined{\@quote}}%
{}%
{\raggedleft{\Large{\emph{\@quote}}}}
% {{\centering{}\begin{minipage}{\quotewidth}\centering\quotestyle{\@quote}\end{minipage}\\[2.5em]}}%
\par}% to avoid weird spacing bug at the first section if no blank line is left after \maketitle

}

\address{Mission Critical S.A. -- Boulevard de France, 9, Bât.A}{1420 Braine l'Alleud}
\phone{+32 2 757 10 15}
\fax{+32 2 759 27 60}
\homepage{www.missioncriticalit.com}
\email{info@missioncriticalit.com}
\photo[100pt]{MissionCriticalIT} % '64pt' is the height the picture must be resized to

\newcommand{\jobtitle}[1]{\quote{\textsf{#1}}}
\renewcommand{\labelitemi}{$\triangleright$}
\renewcommand{\listitemsymbol}{$\triangleright$}

\AtEndPreamble{
\renewcommand*{\makefooter}{%
\fancypagestyle{plain}{%
\fancyfoot[c]{%
\parbox{0.8\textwidth}{%
\centering%
\addressfont\color{addresscolor}%
\ifthenelse{\isundefined{\@addressstreet}}{}{%
\addresssymbol~\@addressstreet%
\@firstfooterelementfalse%
\ifthenelse{\isundefined{\@addresscity}}{}{~--~\@addresscity}\\\@firstfooterelementtrue}%
\ifthenelse{\isundefined{\@mobile}}{}{\footersymbol\mobilesymbol~\@mobile\@firstfooterelementfalse}%
\ifthenelse{\isundefined{\@phone}}{}{\footersymbol\phonesymbol~\@phone\@firstfooterelementfalse}%
\ifthenelse{\isundefined{\@fax}}{}{\footersymbol\faxsymbol~\@fax\@firstfooterelementfalse}%
\ifthenelse{\isundefined{\@email}}{}{\footersymbol\emailsymbol~\emaillink{\@email}\\\@firstfooterelementfalse}%
\ifthenelse{\isundefined{\@homepage}}{}{\homepagesymbol~\httplink{\@homepage}\@firstfooterelementfalse}%
\ifthenelse{\isundefined{\@extrainfo}}{}{\footersymbol\@extrainfo\@firstfooterelementfalse}}}%
}%
\pagestyle{plain}}
}

\AtEndPreamble{
\renewcommand*{\firstnamefont}{\Huge\sffamily\mdseries\upshape}
}

\AtBeginDocument{%
    \maketitle%
}

%% End of package
\endinput
