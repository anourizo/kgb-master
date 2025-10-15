(* Created with the Wolfram Language : www.wolfram.com *)
-(G2fun[scalarcov[], Xcov[]]*metricg[-\[Mu], -\[Nu]]) + 
 Mpl^2*RicciCD[-\[Mu], -\[Nu]] - 
 (Mpl^2*metricg[-\[Mu], -\[Nu]]*RicciScalarCD[])/2 - 
 stressenergy[-\[Mu], -\[Nu]] + 
 (metricg[-\[Mu], -\[Nu]]*CD[-\[Gamma]$32762][mattercov[]]*
   CD[\[Gamma]$32762][mattercov[]])/2 - 
 (metricg[-\[Mu], -\[Nu]]*CD[-\[Gamma]$32763][mattercov[]]*
   CD[\[Gamma]$32763][mattercov[]])/2 - CD[-\[Mu]][scalarcov[]]*
  CD[-\[Nu]][scalarcov[]]*Derivative[0, 1][G2fun][scalarcov[], Xcov[]]
