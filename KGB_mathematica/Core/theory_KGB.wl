(* ::Package:: *)

(* ::Title:: *)
(*Theory KGB*)


(* ::Section:: *)
(*Definitions*)


(* ::Subsection:: *)
(*Scalar Field*)


DefTensor[scalarcov[], M4, PrintAs -> "\[Phi]"]
DefTensorPerturbation[pertscalarcov[LI[order]], scalarcov[], M4, PrintAs -> "\[Delta]\[Phi]"]


DefTensor[Xcov[], M4, PrintAs -> "X"]
DefTensorPerturbation[pertXcov[LI[order]], Xcov[], M4, PrintAs -> "\[Delta]X"]


DefTensorSVT[scalar[], M1, PrintAs -> "\[Phi]", BackgroundQ->True]
DefTensorSVT[pertscalar[LI[order]], {M1, M3}, PrintAs -> "\[Delta]\[Phi]", ScalarPertQ->True]
DefTensorSVT[pertV[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(X\)]\)", ScalarPertQ->True]
DefTensorSVT[pertP[LI[order]], {M1, M3}, PrintAs -> "\[Pi]", ScalarPertQ->True]


DefTensorSVT[X[], M1, BackgroundQ->True]
DefTensorSVT[pertX[LI[order]], {M1, M3}, PrintAs -> "\[Delta]X", ScalarPertQ->True]


(* ::Subsection:: *)
(*Alphas*)


DefTensorSVT[currentS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(J\), \(\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[shiftS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(\[Phi]\)]\)", BackgroundQ->True]


DefTensorSVT[densityS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[pressureS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(P\), \(\[Phi]\)]\)", BackgroundQ->True]


DefTensorSVT[alphaK[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K\)]\)", BackgroundQ->True]
DefTensorSVT[alphaB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B\)]\)", BackgroundQ->True]


DefTensorSVT[alphaKK[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(KK\)]\)", BackgroundQ->True]
DefTensorSVT[alphaBB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(BB\)]\)", BackgroundQ->True]


DefTensorSVT[wS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(w\), \(S\)]\)", BackgroundQ->True]
DefTensorSVT[kinD[], M1, PrintAs -> "D", BackgroundQ->True]
DefTensorSVT[cs2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(S\)], \(2\)]\)", BackgroundQ->True]
DefTensorSVT[Qs[], M1, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(S\)]\)", BackgroundQ->True]
DefTensorSVT[kB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(k\), \(B\)]\)", BackgroundQ->True]


DefTensorSVT[ca2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(a\)], \(2\)]\)", BackgroundQ->True]
DefTensorSVT[ess[], M1, PrintAs -> "s", BackgroundQ->True]


(* ::Subsection::Closed:: *)
(*Scalar functions*)


DefScalarFunction[G2fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(2\)]\)"]
DefScalarFunction[G3fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(3\)]\)"]


(* ::Subsection::Closed:: *)
(*Sources*)


DefTensor[source11[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(11\)]\)"]


(* ::Section:: *)
(*Expansion Rules*)


(****   Scalar Field   ****)

scalarrules = Flatten[{
	scalarcov[] :> scalar[],
	pertscalarcov[LI[order_]] :> pertscalar[LI[order]],
	Xcov[]:>X[],
	pertXcov[LI[order_]]:>pertX[LI[order]]}];
If[fill,
	$SVTDecompositionRules[[1]] = Union[$SVTDecompositionRules[[1]], scalarrules];
]

Print[Column[{"Scalar field Decomposition", ScreenDollarIndices[scalarrules]}]]
Clear[scalarrules]


(****   X to Scalar Field   ****)
XcovToScalarcov[expr_]:= expr //.MakeRule[{Xcov[], Evaluate[-1/2 metricg[\[Mu], \[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[]]}];
ScalarcovToXcov[expr_]:= expr //.Gfun_[scalarcov[],x_]:>Gfun[scalarcov[],Xcov[]];


(* ::Section:: *)
(*To alphas*)


(* ::Subsection:: *)
(*Definitions*)


EQalphaK = - hubbleC[]^2/scale[]^2 alphaK[]*Mpl^2 +
	(6*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 +
	(3*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/scale[]^6  +
	(primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/scale[]^4  -
	(2*primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2  -
	(primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4  // ToCanonical;


EQalphaB = - alphaB[] hubbleC[]/scale[] Mpl^2 +
	(primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^3// ToCanonical;


EQalphaKK = - hubbleC[]^2*Mpl^2*alphaKK[]/scale[]^2  -
	(primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(4*scale[]^4) -
	(hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(4*scale[]^8)  -
	(primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(12*scale[]^6)  +
	(primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/(3*scale[]^4)  +
	(primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/(12*scale[]^6)// ToCanonical;


EQalphaBB = - hubbleC[]*Mpl^2*alphaBB[]/scale[] -
	(primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/scale[]^5// ToCanonical;


EQdensityS = -densityS[] -
	G2fun[scalar[], X[]]+
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4  +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2  -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2// ToCanonical;


EQpressureS = - pressureS[] +
	G2fun[scalar[], X[]] -
	(pprimescalar[]*primescalar[]^2*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4  -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2// ToCanonical;


(* Definitions have to be changed*)
EQcs2 = -cs2[]+
    Derivative[0,1][G2fun][scalar[],X[]]/
    (2X[]Derivative[0,2][G2fun][scalar[],X[]]+Derivative[0,1][G2fun][scalar[],X[]]);
    
EQca2=-ca2[]+primepressureS[]/primedensityS[];    
EQess=-ess[]+primecs2[]/(hubbleC[] cs2[]);    


(* ::Subsection:: *)
(*Functions*)


(****   NoG's   ****)
NoG2[expr_]:=expr//.Derivative[__][G2fun][__]:>0//.G2fun[__]:>0
NoG3[expr_]:=expr//.Derivative[__][G3fun][__]:>0//.G3fun[__]:>0


PertScalarToPertP[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertscalar[LI[2]] :> primescalar[] pertP[LI[2]] + pprimescalar[] pertP[LI[1]]^2 // Expand;
	tmp = tmp //.pertscalar[LI[1]] :> primescalar[] pertP[LI[1]] // Expand;
	tmp
]


PertPToPertScalar[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertP[LI[2]] :> pertscalar[LI[2]]/primescalar[] - pprimescalar[]/primescalar[]^3 pertscalar[LI[1]]^2 // Expand;
	tmp = tmp //.pertP[LI[1]] :> pertscalar[LI[1]]/primescalar[] // Expand;
	tmp
]


PtoXirules=PD[-a_?TangentM1`Q]@pertP[LI[ord_]]:>timevec[-a] (pertxi[LI[ord]]-hubbleC[] pertP[LI[ord]]+pertpsi[LI[ord]]);

XitoPrules=pertxi[LI[ord_]]:>timevec[a] PD[-a]@pertP[LI[ord]]-pertpsi[LI[ord]]+hubbleC[] pertP[LI[ord]];


SubX0=MakeRule[{X[],primescalar[]^2/2/scale[]^2}];
invSubX0={primescalar[]^n_/;EvenQ[n]:>(2 scale[]^2 X[])^(n/2),primescalar[]^n_/;OddQ[n]:>(2 scale[]^2 X[])^((n-1)/2) primescalar[]};
restoreXinG={Derivative[n_,m_][Gfun_][scalar[],x_]:>Derivative[n,m][Gfun][scalar[],X[]],Gfun_[scalar[],x_]:>Gfun[scalar[],X[]]};

EQprimedensityS=TimeDer[EQdensityS//.SubX0]//.restoreXinG//ToCanonical;
EQprimepressureS=TimeDer[EQpressureS//.SubX0]//.restoreXinG//ToCanonical;
EQpprimedensityS=TimeDer[EQprimedensityS//.SubX0]//.restoreXinG//ToCanonical;
EQpprimepressureS=TimeDer[EQprimepressureS//.SubX0]//.restoreXinG//ToCanonical;
EQppprimedensityS=TimeDer[EQpprimedensityS//.SubX0]//.restoreXinG//ToCanonical;

EQprimealphaK=TimeDer[EQalphaK//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaK=TimeDer[EQprimealphaK//.SubX0]//.restoreXinG//ToCanonical;

EQprimealphaB=TimeDer[EQalphaB//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaB=TimeDer[EQprimealphaB//.SubX0]//.restoreXinG//ToCanonical;

EQprimealphaKK=TimeDer[EQalphaKK//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaKK=TimeDer[EQprimealphaKK//.SubX0]//.restoreXinG//ToCanonical;

EQprimealphaBB=TimeDer[EQalphaBB//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaBB=TimeDer[EQprimealphaBB//.SubX0]//.restoreXinG//ToCanonical;

RemoveG2fun[expr_]:=Module[{tmp},tmp=expr;
tmp=tmp//.Flatten[Solve[TimeDer[EQpprimedensityS//.SubX0]==0//.restoreXinG,Derivative[3,1][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimealphaKK==0,Derivative[2,3][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimealphaK==0,Derivative[2,2][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimedensityS==0,Derivative[2,1][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimepressureS==0,Derivative[2,0][G2fun][scalar[],X[]]]]//Expand;
tmp=tmp//.Flatten[Solve[EQprimealphaKK==0,Derivative[1,3][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaK==0,Derivative[1,2][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimedensityS==0,Derivative[1,1][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimepressureS==0,Derivative[1,0][G2fun][scalar[],X[]]]]//Expand;
tmp=tmp//.Flatten[Solve[EQalphaKK==0,Derivative[0,3][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaK==0,Derivative[0,2][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQdensityS==0,Derivative[0,1][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpressureS==0,G2fun[scalar[],X[]]]]//Expand;
tmp]

RemoveG3fun[expr_]:=Module[{tmp},tmp=expr;
tmp=tmp//.Flatten[Solve[EQpprimealphaBB==0,Derivative[2,2][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimealphaB==0,Derivative[2,1][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaBB==0,Derivative[1,2][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaB==0,Derivative[1,1][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaBB==0,Derivative[0,2][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaB==0,Derivative[0,1][G3fun][scalar[],X[]]]]//Expand;
tmp]

Xinvrules={primescalar[]^n_/;Mod[n,2]==0:>scale[]^n (2 X[])^(n/2),
			primescalar[]^np1_/;Mod[np1,2]==1:>primescalar[] scale[]^(np1-1) (2 X[])^((np1-1)/2)};
			
Xrules=X[]:>primescalar[]^2/2/scale[]^2;	
Xprimerules=primeX[]:>(primescalar[]*pprimescalar[]-hubbleC[]*primescalar[]^2)/scale[]^2


subSV1 = -primescalar[]/scale[] PD[-i]@pertV[LI[2]]+
	2/primescalar[] timevec[a] PD[-a]@pertscalar[LI[1]] PD[-i]@pertscalar[LI[1]]-
	2 pertpsi[LI[1]] PD[-i]@pertscalar[LI[1]];
subSV2 = PD[-j]@subSV1 // SVTExpand // Symmetrize // SVTExpand;
subSV4 = PD[-j]@PD[-k]@PD[-l]@subSV1 // SVTExpand // Symmetrize // SVTExpand;


PertScalarToPertV[expr_] := Module[{tmp}, tmp = expr;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalar[LI[2]]], Evaluate[subSV4]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalar[LI[2]]], Evaluate[subSV2]}] // Expand;
	(*tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertscalar[LI[2]]], Evaluate[subSV1]}] // Expand;*)
	tmp = tmp //.pertscalar[LI[1]] :> -primescalar[]/scale[] pertV[LI[1]] // Expand;
	tmp
]


subPV1 = -PD[-i]@pertV[LI[2]]/scale[]+
	2 timevec[a] PD[-a]@pertP[LI[1]] PD[-i]@pertP[LI[1]]-
	2 pertpsi[LI[1]] PD[-i]@pertP[LI[1]];
subPV2 = PD[-j]@subPV1 // SVTExpand // Symmetrize // SVTExpand;
subPV4 = PD[-j]@PD[-k]@PD[-l]@subPV1 // SVTExpand // Symmetrize // SVTExpand;


PertPToPertV[expr_] := Module[{tmp}, tmp = expr;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalar[LI[2]]], Evaluate[subPV4]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalar[LI[2]]], Evaluate[subPV2]}] // Expand;
	(*tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertscalar[LI[2]]], Evaluate[subPV1]}] // Expand;*)
	tmp = tmp //.pertP[LI[1]] :> -pertV[LI[1]]/scale[] // Expand;
	tmp
]


(* ::Section:: *)
(*Tex Corrections*)


Tex[pertV] ^= "v_\\textrm{X}";


Tex[densityS] ^= "\\rho_\\phi";
Tex[pressureS] ^= "P_\\phi";


Tex[alphaK] ^= "\\alpha_\\textrm{K}";
Tex[alphaB] ^= "\\alpha_\\textrm{B}";


Tex[alphaKK] ^= "\\alpha_\\textrm{KK}";
Tex[alphaBB] ^= "\\alpha_\\textrm{BB}";


Tex[cs2] ^= "c_\\textrm{S}^2";
Tex[Qs] ^= "Q_\\textrm{S}";
