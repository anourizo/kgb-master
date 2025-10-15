(* ::Package:: *)

Lmatter = -Sqrt[-Detmetricg[]] (1/2 metricg[\[Mu],\[Nu]] CD[-\[Mu]]@mattercov[] CD[-\[Nu]]@mattercov[]+V[mattercov[]]) // NoScalar // ReplaceDummies;


EQmattertoscalar = VarD[pertmetricg[LI[1],\[Mu],\[Nu]]][ExpandPerturbation[Perturbation[Lmatter]]] //.delta[-LI[1],LI[1]]:>1;
EQmattertoscalar = 2  EQmattertoscalar/Sqrt[-Detmetricg[]]-stressenergy[-\[Mu],-\[Nu]] // Simplification // ToCanonical;


(* This part is for those interested in getting the fluid equation \
(matter equation of motion) directly from matter lagrangian using \
variational method *)

Pertmatter = 
  ExpandPerturbation[Perturbation[Lmatter, 1]]  // ToCanonical;
Tmunu = -2 VarD[pertmetricg[LI[1], \[Mu], \[Nu]], CD][Pertmatter]/
        Sqrt[-Detmetricg[]] //. delta[-LI[1], LI[1]] :> 1 // 
     ScreenDollarIndices // ToCanonical // ContractMetric;
rhomatter = 
  SVTDecomposition[Tmunu , 0, {\[Mu] -> a, \[Nu] -> b}, 
    Verbose -> False] // Simplify;
Pmatter = 
  SVTDecomposition[Tmunu , 0, {\[Mu] -> i, \[Nu] -> j}, 
      Verbose -> False] metric\[Delta][i, j]/3 // Simplify // 
   ContractMetric;

EQrhomatter = density[]*scale[]^2 + rhomatter;
EQPmatter = pressure[]*scale[]^2 + Pmatter;
EQprimerhomatter = TimeDer[EQrhomatter] // ToCanonical;
EQprimePmatter = TimeDer[EQPmatter] // ToCanonical;
EQPrhoplus = 
  density[]*scale[]^2 + pressure[]*scale[]^2 + Pmatter + rhomatter;
EQPrhomin = EQPmatter - EQrhomatter;

Removematter[expr_] := Module[{tmp},
   	tmp = 
    expr //. Flatten[Solve[EQprimerhomatter == 0, pprimematter[]]] // 
     Simplify;
   	tmp = 
    tmp //. Flatten[Solve[EQPrhoplus == 0, primematter[]]] // Simplify;
   	tmp = 
    tmp //. Flatten[Solve[EQPrhomin == 0, V[matter[]]]] // Simplify;
   	tmp];
