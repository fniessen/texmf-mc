%% mcwhitepaper.cls -- LaTeX2e MC whitepaper class
%
% Copyright (C) 2008-2012 Francesco Pizzolante

%% Non, ton code est correct. La règle est :
%% 
%% - \LoadClassWithOptions{report} : passe à report toutes les options
%% passées à la classe courante, et seulement celles-là (en particuler :
%% pas celles fournies à \PassOptionsToClass)
%% 
%% - \LoadClass[whitepaper]{report} : charge report en lui passant 1) les
%% options entre [ et ] (whitepaper ici) et 2) celles stockées en attente
%% à l'aide de \PassOptionsToClass
%% 
%% Si tu utilises \DeclareOption...{\PassOptionsToClass...}, et plus loin
%% (ou même avant) \LoadClassWithOptions, tu gagnes un "useless use of
%% \PassOptionsToClass award [*]". Idem si tu utilises \LoadClass[...]{...}
%% avant \DeclareOption...
%% 
%% Si tu utilises \LoadClass (pas ...WithOptions) mais que tu n'utilises
%% pas \DeclareOption...{\PassOptionsToClass...}, alors ta classe impose
%% strictement les options passées à la classe de base (celles qui sont
%% entre crichets).
%% 
%% En général, pour des classes pas trop simples, on fait ce que tu fais
%% plus haut.
%% 
%% \LoadClassWithOptions c'est vraiment pour les cas les plus simples : la
%% classe définie est utilisée avec exactement les mêmes options que la
%% classe de base, et n'utilise pas ces options.


%* --[ Identification

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mcwhitepaper}[2010/08/03 v1.0 Mission Critical IT whitepaper class]

%* --[ Requires
%   - mcreport

%* --[ Options
%   - see the mcreport class for the complete list of options.

\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{mcreport}}
\ProcessOptions


%* --[ Document Classes (some of the various classes available)

\LoadClass[whitepaper]{mcreport}

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

%% mcwhitepaper.cls ends here
