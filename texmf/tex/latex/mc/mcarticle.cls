%% mcarticle.cls -- LaTeX2e MC article class
%
% Copyright (C) 2008-2009 Francesco Pizzolante

%* --[ Identification

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mcarticle}[2009/12/08 v1.0 Mission Critical IT article class]

%* --[ Requires
%   - mcreport

%* --[ Options
%   - see the mcreport class for the complete list of options.

\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{mcreport}}
\ProcessOptions


%* --[ Document Classes (some of the various classes available)

\LoadClass[article]{mcreport}

%% End of package
\endinput % very last line

% This is for the sake of Emacs.
% Local Variables:
% mode: outline-minor
% ispell-local-dictionary: "en_US"
% time-stamp-format: "%:y/%02m/%02d"
% time-stamp-start: "Provides\\(Class\\|Package\\){[a-zA-Z-]+}\\["
% time-stamp-end: " "
% End:

%% mcarticle.cls ends here
