function sboTerm = Delay_getSBOTerm(SBMLDelay)
%
%   Delay_getSBOTerm 
%             takes an SBMLDelay structure 
%
%             and returns 
%               the sboTerm of the Delay as an integer
%
%       sboTerm = Delay_getSBOTerm(SBMLDelay)

%  Filename    :   Delay_getSBOTerm.m
%  Description :
%  Author(s)   :   SBML Development Group <sbml-team@caltech.edu>
%  $Id: Delay_getSBOTerm.m 7155 2008-06-26 20:24:00Z mhucka $
%  $Source v $
%
%<!---------------------------------------------------------------------------
% This file is part of SBMLToolbox.  Please visit http://sbml.org for more
% information about SBML, and the latest version of SBMLToolbox.
%
% Copyright 2005-2007 California Institute of Technology.
% Copyright 2002-2005 California Institute of Technology and
%                     Japan Science and Technology Corporation.
% 
% This library is free software; you can redistribute it and/or modify it
% under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation.  A copy of the license agreement is provided
% in the file named "LICENSE.txt" included with this software distribution.
% and also available online as http://sbml.org/software/sbmltoolbox/license.html
%----------------------------------------------------------------------- -->



% check that input is correct
if (~isstruct(SBMLDelay))
    error(sprintf('%s\n%s', ...
      'Delay_getSBOTerm(SBMLDelay)', ...
      'argument must be an SBML Delay structure'));
end;
 
[sbmlLevel, sbmlVersion] = GetLevelVersion(SBMLDelay);

if (~isSBML_Delay(SBMLDelay, sbmlLevel, sbmlVersion))
    error(sprintf('%s\n%s', ...
      'Delay_getSBOTerm(SBMLDelay)', ...
      'argument must be an SBML Delay structure'));
elseif (sbmlLevel ~= 2 || sbmlVersion ~= 3)
    error(sprintf('%s\n%s', ...
      'Delay_getSBOTerm(SBMLDelay)', ...
      'sboTerm field only in level 2 version 3 model'));    
end;

sboTerm = SBMLDelay.sboTerm;