%% mcbook.cls -- LaTeX2e MC book class
%
% Copyright (C) 2008-2009 Francesco Pizzolante

%* --[ Identification

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mcbook}[2009/12/08 v1.0 Mission Critical IT book class]

%* --[ Requires
%   - mcreport

%* --[ Options
%   - see the mcreport class for the complete list of options.

\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{mcreport}}
\ProcessOptions


%* --[ Document Classes (some of the various classes available)

\LoadClass[book]{mcreport}

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

%% mcbook.cls ends here
