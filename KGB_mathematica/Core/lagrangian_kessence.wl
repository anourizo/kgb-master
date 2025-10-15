(* ::Package:: *)

L2 = G2fun[scalarcov[], Xcov[]];
L4 = Mpl^2/2 RicciScalarCD[];


LDE = Sqrt[-Detmetricg[]] ContractMetric[ToCanonical[EinsteinToRicci[L2]]] // NoScalar // ReplaceDummies;


Lgravity = Sqrt[-Detmetricg[]] ContractMetric[ToCanonical[EinsteinToRicci[L2 + L4]]] // NoScalar // ReplaceDummies;
