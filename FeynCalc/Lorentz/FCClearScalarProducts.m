(* Wolfram Language package *)

(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

(* :Title: FCClearScalarProducts												*)

(*
	This software is covered by the GNU General Public License 3.
	Copyright (C) 1990-2019 Rolf Mertig
	Copyright (C) 1997-2019 Frederik Orellana
	Copyright (C) 2014-2019 Vladyslav Shtabovenko
*)

(* :Summary:  Clears definitions of scalar products						    *)

(* ------------------------------------------------------------------------ *)

FCClearScalarProducts::usage =
"FCClearScalarProducts[] removes all user-performed specific settings for \
ScalarProduct's.";

ClearScalarProducts::usage =
"ClearScalarProducts is a shortcut to FCClearScalarProducts[]. It is \
needed mainly for compatibility reasons, so that old codes that use \
ClearScalarProducts instead of FCClearScalarProducts[] still work.";

(* ------------------------------------------------------------------------ *)

Begin["`Package`"]
End[]

Begin["`FCClearScalarProducts`Private`"]

(* For compatibility with the old syntax	*)
ClearScalarProducts:=FCClearScalarProducts[];

FCClearScalarProducts[OptionsPattern[]] :=
	(
		DownValues[Pair] = FeynCalc`Package`initialPairDownValues;
		DownValues[CartesianPair] = FeynCalc`Package`initialCartesianPairDownValues;
		DownValues[TemporalPair] = FeynCalc`Package`initialTemporalPairDownValues;
		DownValues[ScalarProduct] = FeynCalc`Package`initialScalarProductDownValues;
		UpValues[ScalarProduct] = FeynCalc`Package`initialScalarProductUpValues;
		DownValues[CartesianScalarProduct] = FeynCalc`Package`initialCartesianScalarProductDownValues;
		UpValues[CartesianScalarProduct] = FeynCalc`Package`initialCartesianScalarProductUpValues;
		DownValues[SP] = FeynCalc`Package`initialSPDownValues;
		DownValues[SPD] = FeynCalc`Package`initialSPDDownValues;
		DownValues[SPE] = FeynCalc`Package`initialSPEDownValues;
		DownValues[CSP] = FeynCalc`Package`initialCSPDownValues;
		DownValues[CSPD] = FeynCalc`Package`initialCSPDDownValues;
		DownValues[CSPE] = FeynCalc`Package`initialCSPEDownValues;
		DownValues[TC] = FeynCalc`Package`initialTCDownValues;
		DownValues[Momentum] = FeynCalc`Package`initialMomentumDownValues;
		DownValues[TemporalMomentum] = FeynCalc`Package`initialTemporalMomentumDownValues;
		DownValues[CartesianMomentum] = FeynCalc`Package`initialCartesianMomentumDownValues;
		$ScalarProducts = FeynCalc`Package`initialScalarProducts;
	);

FCPrint[1,"FCClearScalarProducts.m loaded"];
End[]
