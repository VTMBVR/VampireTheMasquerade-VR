//Maya ASCII 2018ff09 scene
//Name: biped_standard_model.ma
//Last modified: Wed, May 20, 2020 11:10:54 AM
//Codeset: 1252
requires maya "2018ff09";
requires -nodeType "HIKSolverNode" -nodeType "HIKCharacterNode" -nodeType "HIKState2SK"
		 -nodeType "HIKProperty2State" -dataType "HIKCharacter" -dataType "HIKCharacterState"
		 -dataType "HIKEffectorState" -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2016.5";
requires -nodeType "vstExportNode" "PVstExportNode.py" "2.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201811122215-49253d42f6";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "33701571-4717-4B55-D131-89898169FF46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.6602907788492018 136.08517671924761 223.61244492854954 ;
	setAttr ".r" -type "double3" -22.471881497365978 -0.59999999999961784 7.7033282475449329e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D199E4DA-4FD7-A206-42E1-43A27716BCE0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 10;
	setAttr ".fcp" 40001.580000000002;
	setAttr ".coi" 265.60500019393044;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "899F77A3-47C4-B787-A013-039B7B647558";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C7AF7C33-4F97-2628-473D-DFBBBCFC8246";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 10;
	setAttr ".fcp" 40001.580000000002;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "6BA4CB36-4048-6568-954C-90B41E8AFFCA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C9CEE91A-4954-BF92-F03C-E38CEA8FE5C9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 10;
	setAttr ".fcp" 40001.580000000002;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "7DA7A83B-4463-6DD0-C8B1-23B7632D9B27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "368B838C-4BCF-F781-6ECA-7C849F4C82DF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 10;
	setAttr ".fcp" 40001.580000000002;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "__GEN_MAN__";
	rename -uid "29917E04-4C00-8978-D8EE-97B074165C43";
createNode joint -n "pelvis" -p "__GEN_MAN__";
	rename -uid "D33402C5-4A03-AE08-5B36-86B30A065938";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 41.453811645507813 -2.5860958099365234 ;
	setAttr ".jo" -type "double3" 90 0 90 ;
	setAttr ".ssc" no;
	setAttr ".typ" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine_0" -p "pelvis";
	rename -uid "AF4A39D0-4091-46AB-31F9-0F93C86A1E3F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.89681625366210938 0.22615242004394531 2.1315139425357162e-16 ;
	setAttr ".jo" -type "double3" -1.1244846610896201e-14 -1.4199590840811902e-14 7.1126606644624104 ;
	setAttr ".typ" 6;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine_1" -p "spine_0";
	rename -uid "9B4F9189-43A4-AA9A-4560-E5BE9B3816CE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.9419175493616478 -1.9530367190156994e-07 -3.1482887984088707e-15 ;
	setAttr ".jo" -type "double3" -4.8368354180440604e-15 -2.1684374122063099e-14 -9.9751502350696306 ;
	setAttr ".typ" 6;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine_2" -p "spine_1";
	rename -uid "CADAE391-45FA-7817-9DF6-C999A9CCE651";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.2612258434360513 3.4131164172723771e-08 -3.02400413051428e-15 ;
	setAttr ".jo" -type "double3" -1.2191819836084601e-14 4.7910347739483503e-14 -11.132873972181301 ;
	setAttr ".typ" 6;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "spine_3" -p "spine_2";
	rename -uid "C5AAE1BF-40F3-2F44-CF7C-EDB225380E0B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.29677091891066 -2.0966889202611583e-07 -4.2786608310250788e-15 ;
	setAttr ".jo" -type "double3" -4.01826307306178e-15 -2.26326722936451e-14 13.580048355918301 ;
	setAttr ".typ" 6;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "clavicle_L" -p "spine_3";
	rename -uid "85641EC9-4E33-788E-198F-E5B190CCD464";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2514092717117578 2.4113484325787651 0.86726629734039973 ;
	setAttr ".jo" -type "double3" 118.39697895133298 -58.902659473055699 -114.42582886679401 ;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "arm_upper_L" -p "clavicle_L";
	rename -uid "A05CC57A-4B9C-2149-9B3D-C6AAA343582A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 6.6634211316917531 1.2292084949905302e-07 -3.047179717441395e-07 ;
	setAttr ".jo" -type "double3" -6.8032685525045498 -34.869515531067798 23.113704768594399 ;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "arm_lower_L" -p "arm_upper_L";
	rename -uid "90F58AE3-4072-8EA5-0361-D5B3EDC1975B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 11.628010749816889 -4.5563552930616424e-13 3.8146970950947434e-06 ;
	setAttr ".jo" -type "double3" -6.2020816288538601e-14 -2.7829853462805799e-15 24.907141462655801 ;
	setAttr ".pa" -type "double3" 0 0 7.5830332790935402e-22 ;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hand_L" -p "arm_lower_L";
	rename -uid "4A9A6A23-4292-BEC4-A679-AFA3E6821097";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 1 -smx 
		1 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 3 -smx 3 -at "short";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 10.948375701904297 -4.768366981267036e-07 -3.8146974432606839e-06 ;
	setAttr ".jo" -type "double3" 94.923639946514101 -5.8504076248782502 -6.1069689540111298 ;
	setAttr ".pa" -type "double3" -1.3918553690445e-07 -5.3995145227542203e-15 1.1658604584479998e-07 ;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr -k on ".projectType" 1;
	setAttr -k on ".typeOf" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hand_end_L" -p "hand_L";
	rename -uid "9A52D430-4E6D-FA10-336D-32A8B9B8215F";
	addAttr -is true -ci true -k true -sn "rotX" -ln "rotX" -smn 22.265092849731399 
		-smx 22.265092849731399 -at "double";
	addAttr -is true -ci true -k true -sn "AimDirection" -ln "AimDirection" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -k true -sn "aimVector" -ln "aimVector" -at "double3" 
		-nc 3;
	addAttr -is true -ci true -sn "aimVector0" -ln "aimVector0" -at "double" -p "aimVector";
	addAttr -is true -ci true -sn "aimVector1" -ln "aimVector1" -at "double" -p "aimVector";
	addAttr -is true -ci true -sn "aimVector2" -ln "aimVector2" -at "double" -p "aimVector";
	addAttr -is true -ci true -k true -sn "inner" -ln "inner" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "inner0" -ln "inner0" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner1" -ln "inner1" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner2" -ln "inner2" -at "double" -p "inner";
	addAttr -is true -ci true -k true -sn "outer" -ln "outer" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "outer0" -ln "outer0" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer1" -ln "outer1" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer2" -ln "outer2" -at "double" -p "outer";
	addAttr -is true -ci true -k true -sn "poleVector" -ln "poleVector" -at "double3" 
		-nc 3;
	addAttr -is true -ci true -sn "poleVector0" -ln "poleVector0" -at "double" -p "poleVector";
	addAttr -is true -ci true -sn "poleVector1" -ln "poleVector1" -at "double" -p "poleVector";
	addAttr -is true -ci true -sn "poleVector2" -ln "poleVector2" -at "double" -p "poleVector";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 3.113351583480835 -9.423347080428357e-08 -2.7433939564502907e-08 ;
	setAttr ".jo" -type "double3" -165.62384763739399 -6.7514462816722798 -53.306275191407003 ;
	setAttr -k on ".rotX" 22.265092849731399;
	setAttr -k on ".aimVector" -type "double3" 24.196128845214801 37.910026550292997 
		0.19489374756812999 ;
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVector0";
	setAttr -k on ".aimVector1";
	setAttr -k on ".aimVector2";
	setAttr -k on ".inner" -type "double3" 24.011367797851602 38.297527313232401 1.7067180871963501 ;
	setAttr -k on ".inner";
	setAttr -k on ".inner0";
	setAttr -k on ".inner1";
	setAttr -k on ".inner2";
	setAttr -k on ".outer" -type "double3" 24.3808898925781 37.522525787353501 -1.3169307708740201 ;
	setAttr -k on ".outer";
	setAttr -k on ".outer0";
	setAttr -k on ".outer1";
	setAttr -k on ".outer2";
	setAttr -k on ".poleVector" -type "double3" 13.887951850891101 47.025352478027301 
		-12.6948957443237 ;
	setAttr -k on ".poleVector";
	setAttr -k on ".poleVector0";
	setAttr -k on ".poleVector1";
	setAttr -k on ".poleVector2";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_meta_L" -p "hand_L";
	rename -uid "BFDD3135-41D1-711D-410C-309A6239F7F8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.61957572641209424 0.10070905893896054 -0.87152859550215123 ;
	setAttr ".s" -type "double3" 1.0000008022275666 1 1 ;
	setAttr ".jo" -type "double3" 9.6071452379297497 8.7434670250106414 -10.064890517072699 ;
	setAttr ".pa" -type "double3" 1.5902773407317602e-15 -6.7586786981099704e-15 1.3616749730015701e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_0_L" -p "finger_index_meta_L";
	rename -uid "C60D85E9-449E-CF34-FA40-87AD019E569B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2519984025820037 -1.5345043635761613e-07 -3.0730801370282279e-07 ;
	setAttr ".s" -type "double3" 1.0000011472949444 1 1 ;
	setAttr ".jo" -type "double3" 0.153305887513283 -6.7730380584370904 19.970852702124301 ;
	setAttr ".pa" -type "double3" 7.1562480332929104e-15 -9.6410563781862916e-15 2.5146260450320901e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_1_L" -p "finger_index_0_L";
	rename -uid "279613F2-48C3-EF9D-4E0A-2CBAD52DA7C3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.9466841342762109 1.8793731584310081e-06 -3.5514345242404488e-07 ;
	setAttr ".jo" -type "double3" 0.44253599319345299 1.8622327340845202 34.973284534041198 ;
	setAttr ".pa" -type "double3" -2.4649298781342301e-14 3.2613109526725499e-15 1.2314554856769998e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_2_L" -p "finger_index_1_L";
	rename -uid "A93E4737-4A4C-50BC-EBAD-57B26841FFEE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.2858605583678298 -1.3497718498456379e-06 5.2507245129618241e-07 ;
	setAttr ".jo" -type "double3" -0.97482388976068801 -3.69334263979587 14.692907210012599 ;
	setAttr ".pa" -type "double3" -9.3428793767990803e-15 1.09083086340819e-14 1.63158727946561e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_end_L" -p "finger_index_2_L";
	rename -uid "1D24ED3B-4D92-D20D-9334-86AC4DDF7484";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.82419008016586304 0 -1.3322676295501878e-15 ;
	setAttr ".jo" -type "double3" 2.8624992133171698e-14 1.2622826392058301e-14 -4.0850249190047103e-14 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_index_2_L_InfGEOM" -p "finger_index_2_L";
	rename -uid "A328548D-4F9A-4AAB-24BD-C3B0B27FEECE";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 1.7763568394002501e-15 0 ;
	setAttr ".sp" -type "double3" 0 1.7763568394002501e-15 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_index_2_L_InfGEOMShape" -p "finger_index_2_L_InfGEOM";
	rename -uid "7E02D624-4A9B-7E1C-DC54-ECB9BF958358";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  3.5762787e-06 -0.13147423 -0.22771987 1.4305115e-06 0.13904579 -0.24083625
		 7.7486038e-07 0.27809423 -6.3866402e-08 -1.9669533e-06 0.13904701 0.24083658 8.6426735e-07 -0.099969469 0.17315057
		 1.1920929e-07 -0.16210857 2.0536739e-08 0.27473167 -0.13455839 -0.23306388 0.2747317 0.13904738 -0.24083677
		 0.27473044 0.27809411 -1.5236342e-08 0.27473134 0.13904573 0.24083693 0.27473059 -0.095725767 0.16580345
		 0.27473241 -0.1541542 1.1280578e-07 0.54945928 -0.13263705 -0.22973503 0.54946136 0.13904727 -0.24083672
		 0.54946005 0.27809399 3.3393718e-08 0.54946345 0.15264884 0.26439592 0.54945958 -0.083416618 0.14448176
		 0.54946011 -0.1415163 3.5754698e-07 0.82418954 -0.11484352 -0.19891652 0.82419217 0.13405329 -0.23218895
		 0.8241905 0.25681147 4.543069e-07 0.82419097 0.10568918 0.1830572 0.82418817 -0.072917968 0.12629774
		 0.82419097 -0.12830639 6.4597378e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 56 ".n[0:55]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_index_1_L_InfGEOM" -p "finger_index_1_L";
	rename -uid "51BAA62E-48AE-F012-D6FC-9EBA1808A995";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.4210854715202001e-14 1.0658141036401501e-14 7.2511441295830497e-16 ;
	setAttr ".sp" -type "double3" -1.4210854715202001e-14 1.0658141036401501e-14 7.2511441295830497e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_index_1_L_InfGEOMShape" -p "finger_index_1_L_InfGEOM";
	rename -uid "F9D16323-4593-E9BA-E8D7-038EA37AED8A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -2.5629997e-06 -0.16672288 -0.28877598 -1.3709068e-06 0.18540463 -0.3211309
		 2.0265579e-06 0.37081024 -3.4776832e-08 1.7285347e-06 0.18540548 0.32113072 -8.9406967e-07 -0.15088093 0.26133353
		 -4.7683716e-07 -0.24468954 -3.3884638e-07 0.42861956 -0.17269532 -0.29911241 0.42862055 0.18540445 -0.32113072
		 0.42861998 0.37080848 1.4824494e-07 0.42862076 0.20291726 0.35146546 0.42862001 -0.13962097 0.2418306
		 0.42862019 -0.25085735 4.3118803e-07 0.85724038 -0.15646534 -0.27100098 0.85724229 0.18540242 -0.32112998
		 0.85724187 0.37080827 3.4388376e-07 0.85724044 0.18723583 0.32430443 0.85724163 -0.12285797 0.21279144
		 0.8572408 -0.22373657 4.4470147e-07 1.28586102 -0.13387235 -0.23186572 1.28586102 0.22682314 -0.39287177
		 1.28586006 0.37080833 -2.4342569e-08 1.28585827 0.18920994 0.32772759 1.28586006 -0.099998616 0.17320016
		 1.28585982 -0.16452807 9.8648559e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_index_0_L_InfGEOM" -p "finger_index_0_L";
	rename -uid "486D12B9-451F-8FCC-DB7D-9681135A93B8";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 1.4210854715202001e-14 7.1054273576010003e-15 -1.33226762955019e-15 ;
	setAttr ".sp" -type "double3" 1.4210854715202001e-14 7.1054273576010003e-15 -1.33226762955019e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_index_0_L_InfGEOMShape" -p "finger_index_0_L_InfGEOM";
	rename -uid "00F0FE6A-41EE-B20C-B08D-3A9B3C49C891";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  1.1920929e-07 -0.19555928 -0.33871573 5.9604645e-07 0.32781234 -0.56778896
		 -1.3113022e-06 0.70147395 -4.6405268e-07 -8.3446503e-07 0.35073587 0.60749424 -2.9802322e-07 -0.32099733 0.55598497
		 -5.9604645e-07 -0.38819087 -1.9834725e-07 0.64889681 -0.18165816 -0.31464496 0.64889503 0.2796852 -0.4844268
		 0.64889622 0.80293924 8.8949548e-08 0.64889562 0.35073787 0.60749424 0.64889801 -0.21969523 0.38052663
		 0.64889675 -0.2989344 -3.1396524e-07 1.29779065 -0.17873165 -0.30957359 1.29779065 0.27816516 -0.48179331
		 1.29779196 0.61091042 4.5230956e-07 1.29779053 0.24538146 0.42501479 1.29779041 -0.18114404 0.31374985
		 1.29779053 -0.28447354 3.2288204e-07 1.94668508 -0.16900404 -0.29272398 1.94668627 0.28167099 -0.48787013
		 1.94668996 0.59638208 3.4448459e-07 1.94668841 0.22703813 0.39323986 1.94668388 -0.15792875 0.2735396
		 1.94668555 -0.2653397 1.6904434e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_index_meta_L_InfGEOM" -p "finger_index_meta_L";
	rename -uid "2ABDECFE-499D-FC88-5F0E-C4AD4CE05AD7";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.7763568394002501e-15 -7.1054273576010003e-15 1.1102230246251601e-15 ;
	setAttr ".sp" -type "double3" -1.7763568394002501e-15 -7.1054273576010003e-15 1.1102230246251601e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_index_meta_L_InfGEOMShape" -p "finger_index_meta_L_InfGEOM";
	rename -uid "3C3B04AA-449A-8761-2AF6-4284EC3D496F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -8.3446503e-07 -0.27662578 -0.47912666 1.5497208e-06 0.47467291 -0.82215977
		 1.1920929e-06 1.4895128 5.4733931e-08 0 0.61286914 1.061522245 -1.1920929e-07 -0.7359482 1.27469754
		 7.1525574e-07 -0.60803425 2.9600957e-07 1.084000468 -0.2750822 -0.47645235 1.083999634 0.70313036 -1.21786249
		 1.084000349 1.22574115 -2.2057648e-07 1.083999634 0.61286855 1.061521888 1.083999872 -0.61401212 1.06349659
		 1.083999157 -0.51248473 -4.7308785e-07 2.16800022 -0.2858448 -0.49509299 2.16800022 0.42853525 -0.74224782
		 2.16799951 1.17266202 -5.5313939e-07 2.16800141 0.61287099 1.061522603 2.1680007 -0.48516276 0.84032685
		 2.1680007 -0.47083652 1.6209432e-07 3.25200057 -0.20443112 -0.35408452 3.25200224 0.32456094 -0.5621528
		 3.25199938 0.92115653 -6.5978497e-07 3.25200105 0.6128704 1.061522245 3.252002 -0.32872128 0.56936485
		 3.25199962 -0.40234026 -3.4651796e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 1 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 54 ".n[0:53]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "finger_pinky_meta_L" -p "hand_L";
	rename -uid "FAA7EF7C-478A-F950-713A-40851FD3435C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.63997417870552198 0.37139039430086029 1.1022155643263458 ;
	setAttr ".jo" -type "double3" -27.158073891974698 -11.0534650806529 -3.8112249340776994 ;
	setAttr ".pa" -type "double3" 1.69960890790707e-14 -2.1866313435061699e-15 1.1131941385122299e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_pinky_0_L" -p "finger_pinky_meta_L";
	rename -uid "EB44436F-4A90-4D44-2F39-1ABB902CB9FF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6614562003162554 2.39077220243189e-06 5.5432420253964665e-07 ;
	setAttr ".jo" -type "double3" -2.8535927804797101 -17.522911482567299 19.862739613636702 ;
	setAttr ".pa" -type "double3" 1.5902773407317602e-15 1.2716006704991799e-14 -3.2116147857746804e-15 ;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_pinky_1_L" -p "finger_pinky_0_L";
	rename -uid "93CA3F1E-4369-C29E-5ABB-45A07007327C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.5752733486383468 -2.8156257698697118e-06 7.8101778910877329e-07 ;
	setAttr ".jo" -type "double3" -0.0073478602391588103 -0.0491919887403479 16.991040103812601 ;
	setAttr ".pa" -type "double3" 2.3830865032743e-14 -3.1146488180458598e-15 6.3506807942012002e-15 ;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_pinky_2_L" -p "finger_pinky_1_L";
	rename -uid "D3E75BD8-4932-6D22-9CB5-F6A9584C8432";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0121495794810969 -1.0187230614633336e-06 -1.6555299993115113e-06 ;
	setAttr ".jo" -type "double3" -0.19112456038575401 4.9118120273871604 1.1369598607701801 ;
	setAttr ".pa" -type "double3" -1.1069821176500002e-14 -1.9826829335729699e-14 2.2392782203136e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_pinky_end_L" -p "finger_pinky_2_L";
	rename -uid "2125CD7B-4528-8CD0-C09E-B59B47320490";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.76132488250732422 -1.4210854715202004e-14 -2.1316282072803006e-14 ;
	setAttr ".jo" -type "double3" -3.1805546814635203e-15 0 8.7465253740246798e-15 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_pinky_2_L_InfGEOM" -p "finger_pinky_2_L";
	rename -uid "5E78E479-4DE2-4B39-31DF-E1A787A32678";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 7.1054273576010003e-15 -1.4210854715202001e-14 ;
	setAttr ".sp" -type "double3" 7.1054273576010003e-15 7.1054273576010003e-15 -1.4210854715202001e-14 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_pinky_2_L_InfGEOMShape" -p "finger_pinky_2_L_InfGEOM";
	rename -uid "2DCA7908-48E7-B966-45D9-70853558C48F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  5.0663948e-07 -0.10148004 -0.17576863 -1.013279e-06 0.12920168 -0.22378279
		 -1.4901161e-07 0.25840157 -3.7949451e-07 -1.4901161e-06 0.12920113 0.22378244 4.4703484e-07 -0.13574018 0.23510954
		 2.3841858e-07 -0.18881138 -5.7967576e-08 0.25377905 -0.10181008 -0.17634057 0.25377479 0.12920162 -0.22378267
		 0.25377566 0.25840151 -2.5687888e-07 0.25377429 0.12920099 0.22378266 0.25377464 -0.14221253 0.24631973
		 0.25377572 -0.18991308 -2.774504e-07 0.50754946 -0.10528883 -0.18236576 0.50754976 0.14420724 -0.24977282
		 0.50755268 0.31191993 -2.9880192e-07 0.50755084 0.15634479 0.2707969 0.50755239 -0.13527581 0.23430608
		 0.50754893 -0.18827885 -7.7262871e-07 0.76132351 -0.089366615 -0.15478866 0.76132715 0.104546 -0.1810775
		 0.76132202 0.19809529 -9.290751e-07 0.76132768 0.10392614 0.18000621 0.76132274 -0.10192101 0.17653097
		 0.76132578 -0.17918089 -6.0205949e-08;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 0 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 62 ".n[0:61]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_pinky_1_L_InfGEOM" -p "finger_pinky_1_L";
	rename -uid "D6C822D7-4EC6-B303-400F-CB9A91C16DD6";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.4210854715202001e-14 7.1054273576010003e-15 1.7763568394002501e-15 ;
	setAttr ".sp" -type "double3" -1.4210854715202001e-14 7.1054273576010003e-15 1.7763568394002501e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_pinky_1_L_InfGEOMShape" -p "finger_pinky_1_L_InfGEOM";
	rename -uid "B6DA83F1-479B-4914-79C2-91A4700D199B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -8.9406967e-07 -0.13411346 -0.23229223 2.9802322e-07 0.15574868 -0.26976427
		 -1.6093254e-06 0.31149757 1.2824154e-07 -2.9802322e-07 0.1557482 0.26976413 -1.3113022e-06 -0.12773722 0.22124618
		 1.1920929e-06 -0.24265288 -2.1955358e-07 0.3373816 -0.12325887 -0.21349195 0.33738357 0.18850404 -0.32649919
		 0.33738098 0.31149745 1.2078715e-08 0.33738229 0.15574977 0.26976496 0.3373816 -0.13033648 0.22574739
		 0.33738321 -0.22508721 5.1894619e-07 0.67476463 -0.099934667 -0.17309205 0.6747638 0.15863207 -0.27475518
		 0.67476511 0.3585484 -1.6380906e-07 0.67476487 0.15574966 0.26976481 0.67476398 -0.12732832 0.22054321
		 0.67476481 -0.20152821 6.1416574e-07 1.012148738 -0.10179504 -0.17631619 1.012147069 0.16726093 -0.28970349
		 1.012146711 0.35592902 3.3980507e-07 1.01214838 0.19126323 0.33127618 1.012148142 -0.13473152 0.23336627
		 1.012148976 -0.18898678 2.6580022e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_pinky_0_L_InfGEOM" -p "finger_pinky_0_L";
	rename -uid "424C64BA-4A1E-A1B7-60F6-F095B65E1B29";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 3.5527136788005001e-15 7.1054273576010003e-15 -1.7763568394002501e-15 ;
	setAttr ".sp" -type "double3" 3.5527136788005001e-15 7.1054273576010003e-15 -1.7763568394002501e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_pinky_0_L_InfGEOMShape" -p "finger_pinky_0_L_InfGEOM";
	rename -uid "468DC070-49C0-934C-1F8E-689BE1FF2613";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -3.5762787e-07 -0.31860128 -0.55183381 1.3113022e-06 0.27827516 -0.48198658
		 4.1723251e-07 0.5565505 1.8223226e-07 1.1920929e-06 0.27827495 0.48198637 3.5762787e-07 -0.1497103 0.25930411
		 1.4901161e-06 -0.28400528 -5.1303675e-07 0.52509117 -0.17716399 -0.3068555 0.5250904 0.278274 -0.48198658
		 0.52509511 0.59300053 8.5148542e-07 0.52509177 0.25376043 0.43952796 0.52509129 -0.13019496 0.2255037
		 0.52509272 -0.24836685 -2.2175669e-08 1.050184488 -0.15035383 -0.26041946 1.050183177 0.24070705 -0.41691771
		 1.050183773 0.49485251 8.8953959e-07 1.050182223 0.2122454 0.36762333 1.050181627 -0.11708082 0.20278922
		 1.050180554 -0.23339878 -5.6325541e-07 1.57527399 -0.13332488 -0.23092234 1.5752759 0.20787679 -0.36005384
		 1.57527614 0.43825054 9.7867735e-07 1.5752759 0.21884702 0.37905753 1.57527494 -0.12662132 0.2193145
		 1.5752722 -0.23627813 -6.9635371e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_pinky_meta_L_InfGEOM" -p "finger_pinky_meta_L";
	rename -uid "8B631F77-4CCC-AE76-3D43-D8B65282CFE8";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -3.5527136788005001e-15 -7.1054273576010003e-15 7.1054273576010003e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005001e-15 -7.1054273576010003e-15 7.1054273576010003e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_pinky_meta_L_InfGEOMShape" -p "finger_pinky_meta_L_InfGEOM";
	rename -uid "47D71A54-40EA-27C0-E8F9-3894AD4EC09A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -4.7683716e-07 -0.57466888 -0.99535549 1.0728836e-06 0.57466948 -0.99535513
		 -8.3446503e-07 0.97934651 -5.8394548e-08 -5.9604645e-07 0.38938066 0.67442632 2.3841858e-07 -0.27111605 0.46958664
		 -8.3446503e-07 -0.69809622 3.8294837e-07 0.88715065 -0.6225155 -1.078229308 0.88715315 0.57466996 -0.99535513
		 0.88715112 0.97630614 -9.5914302e-08 0.88715082 0.40086576 0.69431818 0.88715327 -0.24996176 0.43294927
		 0.88715231 -0.5514825 1.1301155e-07 1.77430403 -0.53245896 -0.92224699 1.77430522 0.57467043 -0.99535525
		 1.77430618 0.81522101 1.6887442e-06 1.7743032 0.35400388 0.6131506 1.77430367 -0.20410551 0.35352522
		 1.77430296 -0.43576875 -4.5379994e-07 2.66146231 -0.38687935 -0.67009747 2.66146469 0.57467091 -0.99535525
		 2.6614604 0.76646525 -2.0634751e-07 2.66146111 0.33396015 0.57843328 2.66145658 -0.14801408 0.25637203
		 2.66145706 -0.29019651 -2.7779606e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 1 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 55 ".n[0:54]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "finger_middle_meta_L" -p "hand_L";
	rename -uid "F001ABC5-4CD3-7BBC-02AA-3BB8D067C906";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.65481395464112779 -0.017157415554351019 -0.23222426900177151 ;
	setAttr ".jo" -type "double3" 5.4712269440876904 -0.090311953653674296 -10.5877677230785 ;
	setAttr ".pa" -type "double3" 2.3792039902354002e-15 -8.3489560388417303e-15 3.97569335182939e-16 ;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_middle_0_L" -p "finger_middle_meta_L";
	rename -uid "9538698D-4113-95AD-CBF6-1A876F072883";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2439834392233848 5.4078323330486455e-07 -3.5515691187981702e-07 ;
	setAttr ".jo" -type "double3" -0.39422811781183997 -4.3454638985683802 26.670517288404699 ;
	setAttr ".pa" -type "double3" 5.9635400277440999e-16 -1.6648215910785598e-15 -4.4624051863853897e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_middle_1_L" -p "finger_middle_0_L";
	rename -uid "96817D37-43A4-E9C7-8A62-A58BD5B4B7D6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2121408641307685 3.9745698927617923e-06 -8.3378567339309484e-07 ;
	setAttr ".jo" -type "double3" 0.41995031813133099 1.4535976988959101 35.639992328519803 ;
	setAttr ".pa" -type "double3" -1.69960890790707e-14 1.4262799899688001e-14 4.4266666538623502e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_middle_2_L" -p "finger_middle_1_L";
	rename -uid "828E37C7-4B2E-E954-5731-D89CB1B9E622";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.4315080656067813 -2.9307016902180294e-06 1.1898582208402786e-06 ;
	setAttr ".s" -type "double3" 1.0000008820581934 1 1 ;
	setAttr ".jo" -type "double3" -0.19362236885411599 -1.3524079564580502 7.7902650106021696 ;
	setAttr ".pa" -type "double3" -8.9577340833406096e-15 1.73843403829603e-14 8.0876629113240396e-15 ;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_middle_end_L" -p "finger_middle_2_L";
	rename -uid "D0139DC2-41ED-C6AC-0312-12A90FB24D03";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.89560848474502563 -3.3750779948604759e-14 3.9968028886505635e-15 ;
	setAttr ".jo" -type "double3" 2.3854160110976403e-14 -1.8685758753598198e-14 2.1568136433674501e-14 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_middle_2_L_InfGEOM" -p "finger_middle_2_L";
	rename -uid "9EE32AFD-4001-66EE-CFEE-82B385B04AF1";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 -1.2434497875801801e-14 5.5511151231257797e-16 ;
	setAttr ".sp" -type "double3" 0 -1.2434497875801801e-14 5.5511151231257797e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_middle_2_L_InfGEOMShape" -p "finger_middle_2_L_InfGEOM";
	rename -uid "6C205831-4DE7-B3CA-7A42-9ABADDEEF562";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -2.1159649e-06 -0.15234868 -0.26387882 -3.8743019e-07 0.15264189 -0.26438236
		 -6.8545341e-07 0.30528232 -1.2631915e-07 -1.4007092e-06 0.15264218 0.26438189 -9.5367432e-07 -0.13341376 0.23107752
		 7.4505806e-07 -0.21150649 -4.8911971e-08 0.29853725 -0.13784868 -0.23875974 0.29853722 0.15264125 -0.26438218
		 0.29853696 0.3052817 7.0303493e-08 0.29853621 0.15264153 0.26438209 0.29853404 -0.11091943 0.19211955
		 0.29853451 -0.16896135 -1.9729256e-07 0.59707183 -0.12591833 -0.21809776 0.59706944 0.18825345 -0.32606104
		 0.59707099 0.30528238 -1.5757918e-07 0.59707266 0.1884108 0.32633677 0.59707129 -0.097165562 0.16829474
		 0.59707469 -0.15079637 2.48959e-07 0.89560801 -0.11575776 -0.20049961 0.89561123 0.14179762 -0.24560237
		 0.89560848 0.34391469 2.5857088e-07 0.89560688 0.15319276 0.26533687 0.89560896 -0.099094562 0.17163676
		 0.8956067 -0.15150049 -2.3650851e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 56 ".n[0:55]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_middle_1_L_InfGEOM" -p "finger_middle_1_L";
	rename -uid "373A94E1-4C1A-2753-E92C-3786D5548D92";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 2.8421709430404001e-14 -7.1054273576010003e-15 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 2.8421709430404001e-14 -7.1054273576010003e-15 8.8817841970012504e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_middle_1_L_InfGEOMShape" -p "finger_middle_1_L_InfGEOM";
	rename -uid "8E35B835-43B2-1E17-80D7-FD8555E5E582";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  1.9073486e-06 -0.19676284 -0.34080306 -1.1324883e-06 0.24885133 -0.4310236
		 1.7881393e-07 0.40080318 3.3445033e-08 -8.3446503e-07 0.20040162 0.34710619 -9.5367432e-07 -0.19027413 0.32956475
		 -1.7881393e-07 -0.3340674 -1.7275229e-07 0.47716737 -0.19409823 -0.3361879 0.47717094 0.22394186 -0.38787997
		 0.47716844 0.44664037 5.8035823e-08 0.47716862 0.22335719 0.38686827 0.47717184 -0.18409765 0.31886661
		 0.47717321 -0.30489632 5.3922838e-07 0.95433635 -0.17987716 -0.31155938 0.95433819 0.20925489 -0.36243969
		 0.9543407 0.47568452 4.4020896e-07 0.95433766 0.21191747 0.36705256 0.95434248 -0.16798837 0.29096431
		 0.95434046 -0.27656835 5.656654e-07 1.43150735 -0.15378863 -0.26636994 1.43150902 0.20188226 -0.3496716
		 1.43150878 0.4709928 1.6926975e-07 1.43150711 0.20571078 0.35630441 1.43150938 -0.13403545 0.23215657
		 1.43150902 -0.21099453 4.1324137e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_middle_0_L_InfGEOM" -p "finger_middle_0_L";
	rename -uid "C4DE9612-4F93-DFD6-B49B-48AEDBF06445";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 1.0658141036401501e-14 7.1054273576010003e-15 -1.4432899320127e-15 ;
	setAttr ".sp" -type "double3" 1.0658141036401501e-14 7.1054273576010003e-15 -1.4432899320127e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_middle_0_L_InfGEOMShape" -p "finger_middle_0_L_InfGEOM";
	rename -uid "182BF7E8-49E6-F350-36F3-6AB1E3E22247";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -2.8610229e-06 -0.27530307 -0.47683951 -1.4305115e-06 0.34168428 -0.59181714
		 -1.6689301e-06 0.68337208 -2.9925201e-07 5.9604645e-07 0.34168637 0.59181714 3.5762787e-06 -0.25386867 0.43971613
		 4.7683716e-07 -0.37866551 -6.3372042e-08 0.73738015 -0.18895821 -0.32728472 0.73737741 0.34168601 -0.59181744
		 0.73737657 0.7907865 -4.8763548e-07 0.73738003 0.34168637 0.59181714 0.7373811 -0.16983962 0.29417366
		 0.73738039 -0.33301121 2.4296583e-08 1.47475803 -0.1926109 -0.33361548 1.47475994 0.24582763 -0.42578185
		 1.47475874 0.59310269 -4.3373923e-08 1.47475958 0.23108731 0.40025139 1.47475958 -0.17766073 0.3077206
		 1.47476125 -0.33094531 -9.2046022e-08 2.21213698 -0.18523766 -0.32084385 2.21213913 0.2452317 -0.42474806
		 2.21213675 0.58198977 -4.6361296e-07 2.21213818 0.24913695 0.43151316 2.2121408 -0.17986505 0.31153798
		 2.21213865 -0.31993172 -3.5623435e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_middle_meta_L_InfGEOM" -p "finger_middle_meta_L";
	rename -uid "ED195FB9-456E-C36E-CADF-DD808BEB8682";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 2.8318872580257399e-08 3.1086244689504399e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 2.8318872580257399e-08 3.1086244689504399e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_middle_meta_L_InfGEOMShape" -p "finger_middle_meta_L_InfGEOM";
	rename -uid "C7B598A9-41C5-D696-6ED3-C1BA04C85C5F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -2.3841858e-07 -0.47015136 -0.81433141 -1.1920929e-07 0.63131922 -1.093473554
		 1.1920929e-07 1.3813163 -1.4524039e-07 -1.3113022e-06 0.6313197 1.093472958 0 -0.60916758 1.055117488
		 2.0265579e-06 -0.82087588 5.4664406e-07 1.0813272 -0.47958457 -0.83065999 1.081328988 0.63131958 -1.093474388
		 1.081326962 1.25636375 -5.4120005e-07 1.081327677 0.63132 1.09347415 1.081330061 -0.48021561 0.83176243
		 1.081328392 -0.67816508 1.1033961e-08 2.16265631 -0.48605269 -0.84186679 2.16265559 0.63131702 -1.093475699
		 2.16265583 1.062441945 -3.5435477e-07 2.16265583 0.63131624 1.093475103 2.16265583 -0.36751801 0.63655597
		 2.16265512 -0.50576735 -4.0255418e-07 3.24399042 -0.32582483 -0.56434488 3.24399638 0.63131326 -1.093476892
		 3.24399137 1.017113209 -1.0915004e-06 3.24399757 0.6313166 1.093476295 3.24398947 -0.25970343 0.44981644
		 3.24398661 -0.38483039 -5.462141e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 57 ".n[0:56]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "finger_ring_meta_L" -p "hand_L";
	rename -uid "417265E5-4A31-6A5F-724A-379C0162FADE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58519516948267025 0.043129470719868834 0.41031003830613155 ;
	setAttr ".jo" -type "double3" -9.6683251757250108 -5.94483499638865 -6.5007844169513902 ;
	setAttr ".pa" -type "double3" 2.8326815131784502e-15 2.6835930124848398e-15 3.3793393490549899e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_ring_0_L" -p "finger_ring_meta_L";
	rename -uid "EA275F49-49BD-8F11-54B2-59A5E55B5172";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.062894249408501 6.852781524457896e-07 3.3666861032344286e-07 ;
	setAttr ".jo" -type "double3" 0.081260785423763096 -10.4544107630737 18.038097116868403 ;
	setAttr ".pa" -type "double3" -8.1501713712502603e-15 -3.47873168285072e-16 -2.4351121779955098e-15 ;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_ring_1_L" -p "finger_ring_0_L";
	rename -uid "B5E7DAE7-4501-71E1-E47B-2BB444F5E548";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.8938381538177413 5.9366605853483634e-07 -7.6159846074119741e-07 ;
	setAttr ".jo" -type "double3" -0.11078212624085501 -0.462661647074117 31.983805605253504 ;
	setAttr ".pa" -type "double3" -4.5968954380527397e-15 8.7278893114379686e-16 -1.2702976020605001e-14 ;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_ring_2_L" -p "finger_ring_1_L";
	rename -uid "CEBDD6A6-4E02-4AFC-CCEE-1BB049E482EF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3259075934975399 8.1060710499514244e-07 8.6715274605353443e-07 ;
	setAttr ".jo" -type "double3" 0.14385783533333099 0.97282624637417903 7.4930500444567096 ;
	setAttr ".pa" -type "double3" -2.9569219304231103e-15 2.1889608513295101e-15 -6.389354645285e-15 ;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_ring_end_L" -p "finger_ring_2_L";
	rename -uid "6A623AD9-4191-4D65-B2ED-499A310C4617";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.99750733375549316 -1.9539925233402755e-14 -6.2172489379008766e-15 ;
	setAttr ".jo" -type "double3" 7.9513867036588008e-16 -2.2263882770244598e-14 -1.7691835415640801e-14 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_ring_2_L_InfGEOM" -p "finger_ring_2_L";
	rename -uid "8F0DF83E-43DB-8B35-7CC3-A6811FAB8EB3";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 -2.1316282072802999e-14 -1.7763568394002501e-15 ;
	setAttr ".sp" -type "double3" 0 -2.1316282072802999e-14 -1.7763568394002501e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_ring_2_L_InfGEOMShape" -p "finger_ring_2_L_InfGEOM";
	rename -uid "16301ABF-4EF9-8480-8A2D-3FACD9E8FB32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -1.758337e-06 -0.10891784 -0.18865165 1.9669533e-06 0.14326644 -0.24814421
		 -1.6689301e-06 0.28653333 -2.4105447e-07 9.2387199e-07 0.14326657 0.24814473 -1.1920929e-06 -0.13880812 0.24042071
		 9.8347664e-07 -0.15932553 3.3906433e-09 0.3325043 -0.10861667 -0.18812788 0.33250165 0.14326642 -0.24814467
		 0.33250165 0.28653228 -2.0243044e-07 0.33250064 0.14326657 0.24814424 0.33250371 -0.12756385 0.22094829
		 0.33250272 -0.1669364 -1.0356055e-07 0.66500545 -0.10776484 -0.186652 0.66500497 0.14326537 -0.24814463
		 0.66500545 0.28653306 1.0108668e-07 0.66500407 0.17275721 0.29922292 0.66500604 -0.11229983 0.19450982
		 0.6650095 -0.15385726 8.9056397e-07 0.9975065 -0.10740924 -0.18603657 0.99751043 0.16445123 -0.28483701
		 0.99750924 0.30272698 2.640561e-07 0.99750948 0.13560759 0.23487921 0.99750829 -0.090921655 0.15748227
		 0.99750537 -0.15679036 -3.8642617e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 57 ".n[0:56]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_ring_1_L_InfGEOM" -p "finger_ring_1_L";
	rename -uid "2C1E6906-41EE-B87A-5E6B-0EB10512FF03";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 3.5527136788005001e-15 -1.7763568394002501e-15 ;
	setAttr ".sp" -type "double3" 0 3.5527136788005001e-15 -1.7763568394002501e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_ring_1_L_InfGEOMShape" -p "finger_ring_1_L_InfGEOM";
	rename -uid "98A6B0ED-446C-5B90-6D12-69883659D14C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  1.847744e-06 -0.15903606 -0.27545831 -5.364418e-07 0.18202083 -0.31526938
		 1.3113022e-06 0.36404186 1.9524668e-07 7.7486038e-07 0.18202156 0.31526953 -4.1723251e-07 -0.16535836 0.28640896
		 1.847744e-06 -0.23923472 1.9204498e-07 0.44197172 -0.16407657 -0.28418791 0.44197005 0.21688814 -0.37565988
		 0.4419688 0.44817752 1.9418356e-07 0.44197017 0.21605951 0.37422505 0.44196975 -0.16162486 0.2799449
		 0.44197005 -0.24853207 2.463793e-07 0.88394201 -0.14398895 -0.24939719 0.88393754 0.19929849 -0.34519508
		 0.88393748 0.36404201 1.6368094e-07 0.8839376 0.20377351 0.3529436 0.88393724 -0.15428902 0.26723781
		 0.8839404 -0.22789547 6.3073594e-07 1.32590735 -0.10914069 -0.18903776 1.32590759 0.19925515 -0.34511775
		 1.32590687 0.42281005 2.8492516e-07 1.32590556 0.19899866 0.34467334 1.32590997 -0.13932022 0.24130963
		 1.32590914 -0.16006884 6.6589973e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 58 ".n[0:57]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_ring_0_L_InfGEOM" -p "finger_ring_0_L";
	rename -uid "490FAC9C-4B90-83DF-9482-FE99A37EDF94";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -3.5527136788005001e-15 7.1054273576010003e-15 2.66453525910038e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005001e-15 7.1054273576010003e-15 2.66453525910038e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_ring_0_L_InfGEOMShape" -p "finger_ring_0_L_InfGEOM";
	rename -uid "A2100823-4156-6A91-1EB8-0BB62063DD8C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  8.3446503e-07 -0.33427098 -0.5789752 -8.3446503e-07 0.33427122 -0.57897556
		 -1.7881393e-06 0.66854262 -2.3533323e-07 -9.5367432e-07 0.33427182 0.57897538 -4.7683716e-07 -0.2204046 0.38175365
		 2.682209e-06 -0.4113065 -3.7804284e-08 0.63128209 -0.19905151 -0.34477079 0.63127875 0.33427244 -0.57897526
		 0.63128114 0.74602634 2.7560657e-07 0.63127863 0.33427307 0.57897568 0.63128197 -0.15190417 0.26311225
		 0.63127947 -0.30792487 -8.7568338e-08 1.26255512 -0.16469908 -0.28526971 1.26255894 0.24321027 -0.42125183
		 1.26255703 0.5901053 1.340951e-07 1.26255763 0.21010245 0.36390269 1.26255882 -0.15986341 0.27689633
		 1.26255929 -0.27548686 1.86359e-07 1.89383531 -0.15488833 -0.26827911 1.89384103 0.2438046 -0.42227376
		 1.89383781 0.57757354 6.3565108e-07 1.89383435 0.23902917 0.41400751 1.89383769 -0.15937434 0.27605006
		 1.89383721 -0.23762061 4.6096997e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_ring_meta_L_InfGEOM" -p "finger_ring_meta_L";
	rename -uid "3E442130-42F0-5315-E9D4-D5A7C3787EBA";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -5.3290705182007498e-15 0 8.8817841970012507e-15 ;
	setAttr ".sp" -type "double3" -5.3290705182007498e-15 0 8.8817841970012507e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_ring_meta_L_InfGEOMShape" -p "finger_ring_meta_L_InfGEOM";
	rename -uid "93E756F8-477E-9CA4-EF47-B793E5727844";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -4.7683716e-07 -0.60708129 -1.051496983 3.5762787e-07 0.6342535 -1.098557234
		 3.5762787e-07 1.12799561 -1.8396724e-07 5.9604645e-07 0.73394734 1.27123487 -3.5762787e-07 -0.52664649 0.91217786
		 2.2649765e-06 -0.84004438 6.9601407e-07 1.020963907 -0.61153352 -1.059206009 1.020963788 0.63425213 -1.09855783
		 1.020964861 1.16993761 -1.5232334e-07 1.020966411 0.63425314 1.098557711 1.020966291 -0.44968998 0.77888602
		 1.020964861 -0.67829555 -1.1675465e-07 2.041930437 -0.56072712 -0.97120553 2.041931391 0.63425183 -1.098557472
		 2.041927338 0.9341411 -9.1310272e-07 2.041930437 0.78706545 1.36323738 2.041930199 -0.36525661 0.63263911
		 2.041930914 -0.5316596 5.3184937e-07 3.062892914 -0.48897091 -0.8469162 3.062895298 0.63425052 -1.098558068
		 3.062895536 0.87083882 3.8931475e-07 3.062896252 0.63425285 1.098557711 3.062895775 -0.22425646 0.38842162
		 3.062894344 -0.41708168 1.0731247e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 54 ".n[0:53]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "finger_thumb_0_L" -p "hand_L";
	rename -uid "B52B7942-4755-5519-EDDF-7EBCCD622D0F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0155115583532073 0.56066734706923427 -1.0578218422400072 ;
	setAttr ".jo" -type "double3" 95.994255889374315 32.088883689060502 27.291191892992 ;
	setAttr ".pa" -type "double3" -2.3456590775793399e-14 -1.59027734073176e-14 3.2552558948119903e-30 ;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_thumb_1_L" -p "finger_thumb_0_L";
	rename -uid "4CBC2237-465B-2F45-E49A-BD86AC5BA33F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.8057731042854321 6.8384129114917869e-07 -1.6588319056154432e-06 ;
	setAttr ".jo" -type "double3" -0.35125364469840697 -11.7902332834674 23.4570362331803 ;
	setAttr ".pa" -type "double3" -9.9392333795734903e-15 7.0568556994971809e-15 1.0436195048552198e-15 ;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_thumb_2_L" -p "finger_thumb_1_L";
	rename -uid "8C4EC2B7-4CFB-137E-ABE7-A293EABDC0EA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.4409893347999851 2.4007518106827774e-07 1.6819014021507428e-06 ;
	setAttr ".jo" -type "double3" -0.11032419513508002 0.44819559225551697 7.4819089901754001 ;
	setAttr ".pa" -type "double3" -6.4729257384472299e-15 1.4289200988352399e-14 6.3495588866363207e-15 ;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_thumb_end_L" -p "finger_thumb_2_L";
	rename -uid "66187228-417E-F620-423A-1EA6777AF8F3";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.3340537548065186 1.9539925233402755e-14 -1.4210854715202004e-14 ;
	setAttr ".jo" -type "double3" -4.8503458892318698e-14 4.0750856856251302e-15 1.9083328088781101e-14 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_thumb_2_L_InfGEOM" -p "finger_thumb_2_L";
	rename -uid "35DFB651-48D7-FB18-61F4-8CB8BC3BF65E";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 1.7763568394002501e-14 1.4210854715202001e-14 0 ;
	setAttr ".sp" -type "double3" 1.7763568394002501e-14 1.4210854715202001e-14 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_thumb_2_L_InfGEOMShape" -p "finger_thumb_2_L_InfGEOM";
	rename -uid "8002047E-46CC-D2DC-4D7F-CDA934196666";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -1.7285347e-06 -0.17072618 -0.29570428 1.4901161e-06 0.1788401 -0.30975938
		 -5.9604645e-08 0.35767925 6.1960327e-07 -1.0728836e-06 0.17883934 0.30975941 -1.7881393e-07 -0.1700229 0.29449055
		 2.0265579e-06 -0.31025892 -1.0298498e-06 0.44468784 -0.13249637 -0.22949286 0.44468486 0.17883967 -0.3097598
		 0.44468331 0.3576788 2.0561646e-07 0.44468635 0.17884023 0.30975908 0.44468176 -0.1205989 0.20888332
		 0.44468397 -0.18624097 8.7157616e-07 0.88937068 -0.10062017 -0.17428184 0.88936901 0.17883959 -0.30975848
		 0.88937074 0.35767972 -1.2096451e-07 0.88936973 0.17883982 0.30975866 0.88937151 -0.09682823 0.1677129
		 0.88936937 -0.13089536 1.2938568e-07 1.33405447 -0.11060768 -0.19157586 1.33405471 0.15037385 -0.26045445
		 1.33405411 0.3079091 -1.0288078e-06 1.33405459 0.17667459 0.30601147 1.33405626 -0.1235237 0.2139487
		 1.33405185 -0.16684408 3.7595436e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 57 ".n[0:56]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_thumb_1_L_InfGEOM" -p "finger_thumb_1_L";
	rename -uid "F7ACCDB0-4D6A-F8A5-79A1-358CFE5AD440";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.0658141036401501e-14 -1.7763568394002501e-15 0 ;
	setAttr ".sp" -type "double3" -1.0658141036401501e-14 -1.7763568394002501e-15 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_thumb_1_L_InfGEOMShape" -p "finger_thumb_1_L_InfGEOM";
	rename -uid "6792CB08-4A48-BD16-FE9B-A88D50A406C1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  1.6093254e-06 -0.23218329 -0.40215573 6.5565109e-07 0.33634946 -0.58257532
		 3.5762787e-07 0.58546817 6.9147245e-07 -1.847744e-06 0.29273349 0.5070309 2.3841858e-06 -0.30862466 0.53455544
		 -1.6093254e-06 -0.46713197 1.4131131e-06 0.4803316 -0.19208398 -0.33270147 0.48033273 0.25442058 -0.440667
		 0.48032945 0.57617396 2.311288e-06 0.48032689 0.26943156 0.4666715 0.48032671 -0.24339367 0.42157069
		 0.48032883 -0.37632582 2.2352442e-06 0.96066201 -0.16536322 -0.28641966 0.96065676 0.22757687 -0.39417472
		 0.96066058 0.57786071 8.2468586e-07 0.96065867 0.28182924 0.48814416 0.96065664 -0.18358193 0.3179754
		 0.96066028 -0.35199085 1.3495651e-08 1.44099236 -0.17135192 -0.2967923 1.44099224 0.25412199 -0.44014901
		 1.44099236 0.5382244 2.5634636e-06 1.44099033 0.29371226 0.50872666 1.44099069 -0.17075923 0.29576728
		 1.44099057 -0.31007156 2.5696459e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_thumb_0_L_InfGEOM" -p "finger_thumb_0_L";
	rename -uid "D1C5205C-4188-F8E7-264B-B9B40BBBF2D9";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.4210854715202001e-14 3.5527136788005001e-15 -1.0658141036401501e-14 ;
	setAttr ".sp" -type "double3" -1.4210854715202001e-14 3.5527136788005001e-15 -1.0658141036401501e-14 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_thumb_0_L_InfGEOMShape" -p "finger_thumb_0_L_InfGEOM";
	rename -uid "5F3F4FBE-4E04-2779-7150-B1912634DE0E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -4.7683716e-07 -0.40854219 -0.70761645 -1.7285347e-06 0.53519046 -0.92697769
		 1.7881393e-07 1.077556133 3.4696518e-07 7.7486038e-07 0.53877759 0.93319064 3.5762787e-07 -0.41831875 0.72454786
		 -5.9604645e-08 -0.68858224 -3.326723e-07 0.60192519 -0.37087134 -0.64237273 0.60192251 0.52476209 -0.9089148
		 0.60192466 1.31591332 -2.319488e-06 0.60192508 0.53877813 0.93319058 0.60192668 -0.42552388 0.73703188
		 0.60192287 -0.58689541 -7.0201486e-07 1.203848 -0.30681443 -0.53142154 1.20384753 0.43889564 -0.76019174
		 1.20385015 1.098247528 -2.6600442e-06 1.2038492 0.53877825 0.9331888 1.20384765 -0.37824884 0.65514404
		 1.20384812 -0.49481151 -2.4861079e-06 1.80577397 -0.23774771 -0.41179657 1.80577028 0.33021227 -0.57194752
		 1.8057754 0.81718689 -3.3156489e-06 1.8057754 0.41926408 0.72618169 1.80577207 -0.30615854 0.53027993
		 1.80577302 -0.48375905 -3.4824507e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hand_L_InfGEOM" -p "hand_L";
	rename -uid "3A3164B3-4364-85D6-0FA3-D5B23C0FEA6D";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 2.1316282072802999e-14 -1.37169706704299e-08 ;
	setAttr ".sp" -type "double3" 7.1054273576010003e-15 2.1316282072802999e-14 -1.37169706704299e-08 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "hand_L_InfGEOMShape" -p "hand_L_InfGEOM";
	rename -uid "09C18A3E-4DCF-9E1F-75E2-3A9FE7F8B884";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  8.3446503e-07 -0.5455519 -0.94492561 -1.7881393e-06 0.69822407 -1.2093637
		 -1.1920929e-06 1.1463747 -2.2637437e-06 9.5367432e-07 0.7739557 1.34052801 -1.1920929e-07 -0.62906325 1.089563131
		 -3.5762787e-07 -0.83769125 -1.3142833e-06 1.037785292 -0.57149315 -0.98985398 1.037781954 0.66805923 -1.15711486
		 1.037786245 1.27840567 -6.0383577e-08 1.037783861 0.66806054 1.15711379 1.037781835 -0.59180224 1.025026917
		 1.037783861 -0.85916698 -2.8033287e-07 2.075566769 -0.67329276 -1.16617417 2.075569153 0.66806012 -1.15711367
		 2.075569391 0.86117887 7.6505762e-07 2.075566769 0.66805965 1.15711391 2.075569391 -0.58079255 1.0059646368
		 2.07556653 -0.88579631 1.4218307e-08 3.11334896 -0.78008068 -1.35113728 3.11335182 0.71674323 -1.24143291
		 3.11335135 0.53176588 5.7076437e-07 3.11334991 0.66805869 1.15711391 3.11335135 -0.58658278 1.015993714
		 3.11335301 -0.89615846 1.6322142e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 54 ".n[0:53]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "object_hand_L" -p "hand_L";
	rename -uid "EFE9C468-42FC-B1E5-7CEC-3DBB2B838A5D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 19.059797286987305 42.086406707763672 6.6902103424072266 ;
	setAttr ".jo" -type "double3" -165.62384763739399 -6.75144628167227 -53.306275191407003 ;
	setAttr ".pa" -type "double3" 1.5902773407317602e-15 4.7708320221952799e-15 -1.9083328088781101e-14 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "weapon_hand_L" -p "hand_L";
	rename -uid "597BACA8-4E0D-820F-44D1-FE8E1A5B24C0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 19.059797286987305 42.086406707763672 6.6902103424072266 ;
	setAttr ".jo" -type "double3" -165.62384763739399 -6.75144628167227 -53.306275191407003 ;
	setAttr ".pa" -type "double3" 1.5902773407317602e-15 4.7708320221952799e-15 -1.9083328088781101e-14 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "arm_lower_L_InfGEOM" -p "arm_lower_L";
	rename -uid "23D935DD-41B2-5466-F6BD-8B9A5EF5D26C";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 -1.01232624061254e-07 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 -1.01232624061254e-07 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "arm_lower_L_InfGEOMShape" -p "arm_lower_L_InfGEOM";
	rename -uid "11732205-45E1-D86E-23FE-1E83F34F40AE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  2.8610229e-06 -0.74008906 -1.28183985 9.5367432e-07 0.76301789 -1.32161343
		 4.7683716e-07 1.52606058 -1.6195952e-07 4.7683716e-07 0.79038745 1.36901796 1.9073486e-06 -0.88083684 1.52562368
		 4.7683716e-07 -1.64841342 3.8336589e-07 3.6494565 -0.81275624 -1.40772808 3.64945841 0.76302642 -1.32161152
		 3.64945841 1.69756591 -3.8684072e-07 3.64945793 0.76377743 1.32290852 3.64945769 -0.76303399 1.32160401
		 3.64945698 -1.79176307 -1.8759575e-06 7.29891586 -0.64360994 -1.11477375 7.29891777 0.65850693 -1.14056218
		 7.29891825 1.29431796 -2.0383229e-06 7.29891777 0.56394726 0.97677833 7.29891825 -0.68528974 1.18696296
		 7.29891539 -1.4688673 -4.039719e-06 10.94837761 -0.48211658 -0.83507091 10.94837856 0.45151716 -0.78203779
		 10.94837856 1.35725117 -4.1802896e-06 10.94838238 0.64758617 1.12162709 10.94838142 -0.65290284 1.13088107
		 10.94838333 -1.5531106 -1.6782682e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "arm_upper_L_InfGEOM" -p "arm_upper_L";
	rename -uid "1BCF46DD-4C9A-CF23-8E9A-2FAB77DA54AB";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 3.6306215756010099e-08 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 3.6306215756010099e-08 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "arm_upper_L_InfGEOMShape" -p "arm_upper_L_InfGEOM";
	rename -uid "4E277751-4699-910A-49E6-44B39653A216";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -0.092079163 -1.15114069 -2.085571051 -0.092075348 1.24954498 -2.23186898
		 4.7683716e-07 2.91954684 4.5885054e-07 0.92972612 1.58222711 1.26619399 0.92972422 -1.096158028 1.26620114
		 -4.7683716e-07 -2.90659547 -4.1527289e-07 3.87600136 -0.98420542 -1.70469868 3.87600327 0.972332 -1.68412423
		 3.8760035 2.32903361 8.3937255e-07 3.87600279 0.95269328 1.65010917 3.87600183 -0.94051129 1.629017
		 3.87600279 -2.20999885 -4.4291164e-07 7.75200653 -0.8221947 -1.42407799 7.75200462 0.84550297 -1.46445715
		 7.75200558 2.091278076 7.4718321e-07 7.75200748 1.021061778 1.76853681 7.75200748 -0.92549372 1.60300159
		 7.75201035 -2.067251205 3.8285884e-06 11.62807274 -0.73988432 -1.28150511 11.62810516 1.11538434 -1.93191516
		 11.62809658 2.014265537 2.7227052e-06 11.62807274 0.76253164 1.32075405 11.62808418 -0.87037921 1.50753284
		 11.62807751 -1.61552691 2.2495151e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "clavicle_L_InfGEOM" -p "clavicle_L";
	rename -uid "AE27EB5C-4DBD-F5D0-6736-4288DED75DAA";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 -1.75176229078033e-08 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010003e-15 -1.75176229078033e-08 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "clavicle_L_InfGEOMShape" -p "clavicle_L_InfGEOM";
	rename -uid "2A682924-4D14-20D4-26D7-DD88519F2D8B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  0.64609575 -1.56078351 -1.22286916 -0.29013538 0.78878933 -0.79261482
		 -0.79159641 1.24824774 0.094167352 -0.22836637 3.044479609 3.12636924 0.89929819 -1.086599827 2.57892179
		 1.22395992 -3.78668571 -0.48527777 2.70357084 -1.37913465 -2.63077664 2.1713419 1.15223825 -1.26727641
		 2.051859856 2.62342501 0.16235441 1.82176435 3.73765373 4.20855856 2.85915756 -4.24237442 3.097931385
		 2.1375463 -5.23585081 0.54028577 4.53211021 -1.21084106 -2.3307364 4.46155548 1.32866299 -1.45737314
		 4.62100744 2.39780807 0.3045409 3.78530002 3.80627012 4.39477587 5.75767612 -4.029623985 4.85119152
		 4.81270218 -4.42423773 0.39938304 6.96121216 -1.095628977 -2.25132036 7.044924736 0.4239468 -2.13744473
		 6.16043949 1.82811844 0.3156237 6.063274384 2.10669112 2.63441563 7.99319792 -1.83484542 3.28246546
		 7.2592001 -2.69165945 -0.040021215;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 1 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 1 5 11 0 11 10 0 5 0 0 6 11 1 7 13 1 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 0 11 17 0 17 16 0 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 58 ".n[0:57]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "neck_0" -p "spine_3";
	rename -uid "A837116A-4F9F-5933-B558-F5A916E8464D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.1762376695998427 6.7888738630728085e-08 -4.0309693919461611e-15 ;
	setAttr ".jo" -type "double3" 0 0 16.7842790632568 ;
	setAttr ".typ" 7;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "head" -p "neck_0";
	rename -uid "0176FB15-4AAB-A615-4F4A-538BFF791B61";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.7648932284869119 7.339190020161368e-07 -4.6056702352298864e-15 ;
	setAttr ".jo" -type "double3" 2.4779288695561701e-15 -2.2789558935387499e-14 -16.368963876386601 ;
	setAttr ".typ" 8;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "eye_R" -p "head";
	rename -uid "8F9BEA61-4962-8913-AC10-5A9C718D48E8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.9820231199264526 3.1010301113128662 -1.4112889766693115 ;
	setAttr ".jo" -type "double3" 89.999999999999702 11.0209192414491 90 ;
	setAttr ".radi" 0.500000000000001;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "eye_end_R" -p "eye_R";
	rename -uid "92E199DD-47C5-6F59-B16D-78B98097C820";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.71669167280197144 0 -1.4210854715202004e-14 ;
	setAttr ".jo" -type "double3" 2.7623899702364898e-13 3.5227805877636601e-15 6.8381925651465603e-14 ;
	setAttr ".radi" 0.500000000000001;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "head_end" -p "head";
	rename -uid "4D00365B-43A3-747C-D92A-78BBC7D4CEF7";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 6.0538773536682129 -2.1316282072803006e-14 -4.3687503023829774e-15 ;
	setAttr ".jo" -type "double3" -3.8831804933708697e-15 -6.8867855280699509e-15 -1.5291735717837099e-30 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "eye_L" -p "head";
	rename -uid "2A27F47E-43CE-2E0F-85A5-359ACCA5B6FD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.9820231199264526 3.1010301113128662 1.411288857460022 ;
	setAttr ".jo" -type "double3" 90.000000000000597 -11.020947304657 90 ;
	setAttr ".radi" 0.500000000000001;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "eye_end_L" -p "eye_L";
	rename -uid "3C659EE8-453B-3B83-60F3-E0A54E4760AE";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.71669173240661621 -4.4408920985006262e-16 -1.4210854715202004e-14 ;
	setAttr ".jo" -type "double3" -3.2170528547393202e-13 7.8580599430815003e-15 -3.3395824155366902e-14 ;
	setAttr ".radi" 0.500000000000001;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "head_InfGEOM" -p "head";
	rename -uid "5FDF2563-4702-FF9D-4C49-D4A694C9FD12";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 6.6613381477509402e-16 -2.2717696451357301e-15 ;
	setAttr ".sp" -type "double3" 0 6.6613381477509402e-16 -2.2717696451357301e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "head_InfGEOMShape" -p "head_InfGEOM";
	rename -uid "8C62C946-4B9D-A5C8-4C3E-389566ECAF30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -1.57927155 0.5682925 -2.52628779 -2.95191169 4.071771622 -1.32501769
		 -2.95191169 4.7266078 -3.4658942e-07 -2.95191169 4.071772575 1.32501769 -1.57927155 0.56829345 2.52628803
		 -0.54294991 -2.9871347 -1.4936381e-13 1.32258081 -2.19012618 -3.037535429 1.32008481 2.87512565 -2.5669446
		 0.62756562 5.095452785 -4.5271662e-07 1.32008481 2.8751266 2.56694436 1.32258081 -2.19012523 3.037535667
		 2.017958641 -3.79312444 2.2232811e-14 4.035918236 -2.15800214 -3.03767705 3.80084944 2.85753155 -2.53223276
		 3.80084944 4.25422955 -4.5271645e-07 3.80084944 2.85753298 2.53223228 4.035918236 -2.15800095 3.03767705
		 4.035918236 -3.69970584 2.2810885e-13 6.053877831 -0.86368561 -1.49594665 6.053877831 0.92138946 -1.59589398
		 6.053877831 2.59086466 -3.8606859e-07 6.053877831 0.92139006 1.59589386 6.053877831 -0.86368513 1.49594676
		 6.053877831 -1.9521811 2.277674e-13;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 0 5 0 0 6 11 0 7 13 0 13 12 0
		 12 6 0 8 14 0 14 13 0 9 15 0 15 14 0 10 16 0 16 15 0 11 17 0 17 16 0 12 17 0 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 76 ".n[0:75]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "neck_0_InfGEOM" -p "neck_0";
	rename -uid "1EA6CA6F-4750-C514-41D6-DC8236DDF112";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 -3.5527136788005001e-15 -1.34109328174126e-15 ;
	setAttr ".sp" -type "double3" 0 -3.5527136788005001e-15 -1.34109328174126e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "neck_0_InfGEOMShape" -p "neck_0_InfGEOM";
	rename -uid "4438C1A2-4396-0831-5ED6-C28D57334070";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -1.4305115e-06 -1.72288108 -2.98411679 -7.1525574e-07 1.66610527 -2.88577962
		 7.1525574e-07 3.20650339 -4.7780668e-07 -4.7683716e-07 1.66610634 2.88577962 -1.1920929e-06 -1.7228806 2.98411727
		 7.1525574e-07 -2.30178905 -3.0144179e-13 1.9216342 -1.074705958 -1.86144316 1.92163277 1.31067121 -2.27015042
		 1.92163479 3.11357236 -4.6395854e-07 1.92163301 1.31067204 2.27015042 1.92163432 -1.074705482 1.86144364
		 1.92163229 -1.71836889 1.1141616e-14 3.84326887 -1.14987636 -1.99164081 3.84325838 1.23748755 -2.14338923
		 3.84326553 2.84124398 -4.2337797e-07 3.84325862 1.23748827 2.14338899 3.84326172 -1.14987373 1.99164116
		 3.84326839 -2.066931486 2.9858538e-13 5.76489925 -1.56378067 -2.70854425 5.76489639 1.61540031 -2.26150203
		 5.76490021 2.12000275 -2.7819203e-07 5.76488924 1.61540341 2.26150179 5.76489973 -1.56377995 2.70854449
		 5.76489925 -2.84124541 8.0308275e-13;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 58 ".n[0:57]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "clavicle_R" -p "spine_3";
	rename -uid "496DF036-41CD-75AE-6129-82AC03F1C73A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2514092734399469 2.4113481941664499 -0.86726629734038641 ;
	setAttr ".jo" -type "double3" 118.39697895133298 -58.902659473055593 65.574171133205297 ;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "arm_upper_R" -p "clavicle_R";
	rename -uid "B6476BB2-4396-F0E4-B5C7-59AB73D13EB4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -6.6634212434398385 8.7687286765003591e-08 3.0471814227439609e-07 ;
	setAttr ".jo" -type "double3" -6.80326855250485 -34.869515531067705 23.113704768594499 ;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "arm_lower_R" -p "arm_upper_R";
	rename -uid "FF357766-4351-4E2A-FAA1-2CA5B047A868";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -11.628010749816898 -4.5119463720766362e-13 -3.814697365100983e-06 ;
	setAttr ".jo" -type "double3" -6.99722029921974e-14 -3.6576378836830397e-14 24.907141462655702 ;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hand_R" -p "arm_lower_R";
	rename -uid "DD5A01EC-4A45-2ECC-0847-7D87891A0600";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 1 -smx 
		1 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 3 -smx 3 -at "short";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -10.948375701904293 4.4941828036826337e-13 3.8146971732544444e-06 ;
	setAttr ".jo" -type "double3" 94.923639816056706 -5.8504078599612699 -6.1069690109492001 ;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr -k on ".projectType" 1;
	setAttr -k on ".typeOf" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_thumb_0_R" -p "hand_R";
	rename -uid "DEDE02BD-48DC-AF96-AABE-6FB8F396588C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0155115444796188 -0.56066713720804984 1.0578217640185761 ;
	setAttr ".jo" -type "double3" 95.994256051922093 32.088883658803802 27.291191740266001 ;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_thumb_1_R" -p "finger_thumb_0_R";
	rename -uid "935D8CD4-403C-C866-FEAA-128D9C0F60BA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.8057731042856524 -4.6383265939198282e-07 1.4808715889103041e-06 ;
	setAttr ".jo" -type "double3" -0.35125364469654602 -11.790233283467501 23.457036233179899 ;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_thumb_2_R" -p "finger_thumb_1_R";
	rename -uid "832878B4-49EA-0C24-7AA2-E692E2D7F7DD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.440989334799978 -1.2813475969153387e-07 -1.708422061597048e-06 ;
	setAttr ".jo" -type "double3" -0.11032419513757299 0.44819559225517003 7.4819089901754001 ;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_thumb_end_R" -p "finger_thumb_2_R";
	rename -uid "50412898-44C5-932F-1765-04A3C7A10778";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -1.3340537548065186 -1.0658141036401503e-14 -8.5265128291212022e-14 ;
	setAttr ".jo" -type "double3" 4.1744780194208699e-14 -1.22252570568754e-14 2.2263882770244598e-14 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_thumb_2_R_InfGEOM" -p "finger_thumb_2_R";
	rename -uid "FBFB3343-4FB0-C586-D15C-DA94A0B9CA17";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 1.0658141036401501e-14 -5.3290705182007498e-15 7.1054273576010003e-15 ;
	setAttr ".sp" -type "double3" 1.0658141036401501e-14 -5.3290705182007498e-15 7.1054273576010003e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_thumb_2_R_InfGEOMShape" -p "finger_thumb_2_R_InfGEOM";
	rename -uid "9286C7DE-4DF3-76BE-C14A-34B2A769BB21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  5.364418e-07 -0.1788397 0.30975831 1.1324883e-06 0.17072636 0.29570645
		 0 0.31025952 -1.2298977e-07 -3.5762787e-07 0.17002285 -0.29448834 -1.7881393e-07 -0.17883977 -0.30975905
		 -1.1920929e-06 -0.35767978 -1.9088816e-07 -0.44468611 -0.17884025 0.30976033 -0.44468522 0.13249774 0.22949341
		 -0.4446815 0.1862428 -3.5143509e-07 -0.44468635 0.12059753 -0.2088812 -0.44468433 -0.1788397 -0.30976036
		 -0.44468457 -0.35767937 2.2309862e-07 -0.88937026 -0.17884018 0.30975902 -0.88936865 0.10062075 0.17428067
		 -0.88937074 0.13089518 3.3932486e-07 -0.88936841 0.096828252 -0.16771229 -0.8893677 -0.17883927 -0.30975994
		 -0.88936871 -0.35767928 -1.0838621e-06 -1.33405602 -0.15037425 0.26045492 -1.33405495 0.11060739 0.19157808
		 -1.33405328 0.16684392 9.2756167e-08 -1.33405399 0.12352339 -0.2139498 -1.3340559 -0.17667499 -0.30601099
		 -1.33405185 -0.30791202 -1.6770949e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 57 ".n[0:56]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_thumb_1_R_InfGEOM" -p "finger_thumb_1_R";
	rename -uid "787AB79B-45CD-9729-4024-168170816659";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 1.7763568394002501e-15 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 1.7763568394002501e-15 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_thumb_1_R_InfGEOMShape" -p "finger_thumb_1_R_InfGEOM";
	rename -uid "1E9D1EAC-412F-7D3A-AE39-788A3DF24BD2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  1.7881393e-06 -0.33634979 0.58257425 -2.8610229e-06 0.23218273 0.40215623
		 3.5762787e-07 0.46713161 -9.2795329e-07 9.5367432e-07 0.30862647 -0.53455317 6.5565109e-07 -0.29273418 -0.50703079
		 -8.9406967e-07 -0.58546865 1.435606e-06 -0.48032933 -0.25442091 0.44066763 -0.48032969 0.19208492 0.33270028
		 -0.48033011 0.37632546 -1.7500845e-06 -0.48032832 0.24339397 -0.42157024 -0.48032814 -0.26943204 -0.46667102
		 -0.48032922 -0.57617557 -1.6937008e-08 -0.96065789 -0.22757754 0.39417523 -0.96066004 0.16536407 0.2864185
		 -0.96065843 0.35199192 -1.1895626e-06 -0.96066034 0.18358061 -0.31797156 -0.96065992 -0.28182968 -0.48814368
		 -0.96065789 -0.57786161 -1.9000067e-06 -1.44099343 -0.25412256 0.44014952 -1.44099033 0.17135277 0.29679114
		 -1.44099188 0.31007123 -2.0844864e-06 -1.440992 0.17075889 -0.2957668 -1.44099164 -0.29371271 -0.50872618
		 -1.44098914 -0.5382244 -1.9481179e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_thumb_0_R_InfGEOM" -p "finger_thumb_0_R";
	rename -uid "B5826BE7-4F1B-8E62-C661-43B938F8E826";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_thumb_0_R_InfGEOMShape" -p "finger_thumb_0_R_InfGEOM";
	rename -uid "525C1ED4-45F2-D234-85F2-F4B081C60499";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  9.5367432e-07 -0.53519166 0.92697799 -4.7683716e-07 0.40854105 0.70761675
		 -1.013279e-06 0.68858129 5.8086903e-07 -2.9802322e-07 0.41831744 -0.7245456 -1.7881393e-06 -0.53877854 -0.93319064
		 -1.1324883e-06 -1.077557445 -2.5035069e-07 -0.60192335 -0.52476329 0.9089151 -0.6019206 0.37087455 0.64236927
		 -0.60192382 0.58689445 9.5866858e-07 -0.60192382 0.42552567 -0.73702878 -0.60192609 -0.53877914 -0.93319064
		 -0.60192335 -1.31591725 1.2282824e-06 -1.2038486 -0.43889731 0.76019019 -1.20384622 0.30681515 0.5314191
		 -1.20384908 0.49481055 2.7427616e-06 -1.20384884 0.37824798 -0.6551438 -1.20385015 -0.53877926 -0.9331888
		 -1.20384669 -1.098248363 4.7749035e-07 -1.80577362 -0.33021608 0.57194883 -1.80577219 0.23774901 0.41179585
		 -1.80577266 0.48375681 4.0097284e-06 -1.80577314 0.30615768 -0.53027976 -1.8057729 -0.41926727 -0.72619307
		 -1.8057735 -0.81719112 2.3428415e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "finger_ring_meta_R" -p "hand_R";
	rename -uid "35EE9674-4FDC-40E9-244F-C6B78CEE0DEA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.58519517969337898 -0.0431295776404923 -0.41031001250444898 ;
	setAttr ".jo" -type "double3" -9.6683250437358392 -5.9448349449389903 -6.5007846696987901 ;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_ring_0_R" -p "finger_ring_meta_R";
	rename -uid "DAC1735E-4F69-FC75-9503-D38EA47112D8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.0628943246326514 2.9714091382970764e-06 -3.9851654420886007e-08 ;
	setAttr ".jo" -type "double3" 0.081260785423667506 -10.4544107630737 18.038097116867899 ;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_ring_1_R" -p "finger_ring_0_R";
	rename -uid "B3F5F207-4019-18D1-0C62-6CBC685A1350";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.8938394610359079 -4.3303251118231856e-06 3.2729855092838989e-07 ;
	setAttr ".s" -type "double3" 1.0000005329233068 1 1 ;
	setAttr ".jo" -type "double3" -0.110782126240976 -0.46266164707430801 31.983805605253504 ;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_ring_2_R" -p "finger_ring_1_R";
	rename -uid "3603FD85-4D63-3B39-535E-01A7A01B7A50";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.3259068868909232 -9.2766994441717543e-07 -6.4581542602581976e-07 ;
	setAttr ".jo" -type "double3" 0.14385783532879301 0.97282624637410309 7.4930500444571102 ;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_ring_end_R" -p "finger_ring_2_R";
	rename -uid "A89B4E4D-490E-0D1B-C3A4-7B920154F5C7";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.99750733375549316 5.3290705182007514e-15 9.7699626167013776e-15 ;
	setAttr ".jo" -type "double3" -7.9513867036587899e-16 0 1.9878466759147e-14 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_ring_2_R_InfGEOM" -p "finger_ring_2_R";
	rename -uid "3C138C56-41DE-4C36-CE55-AC91BA59CA61";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 5.3290705182007498e-15 1.7763568394002501e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010003e-15 5.3290705182007498e-15 1.7763568394002501e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_ring_2_R_InfGEOMShape" -p "finger_ring_2_R_InfGEOM";
	rename -uid "FEF00A31-49AE-284C-67ED-45B4D9C25DC3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  2.9802322e-07 -0.14326721 0.24814458 2.0861626e-07 0.10891819 0.18865241
		 1.2814999e-06 0.15932494 2.9655544e-07 -2.3841858e-07 0.13880856 -0.24042068 1.3113022e-06 -0.14326723 -0.24814454
		 2.682209e-07 -0.28653306 -3.650203e-09 -0.33250302 -0.14326616 0.24814457 -0.33250222 0.10861599 0.18812913
		 -0.3325004 0.16693585 1.1166828e-07 -0.33250129 0.12756337 -0.22094893 -0.33250201 -0.14326617 -0.24814457
		 -0.33250305 -0.28653201 -1.3090382e-08 -0.66500634 -0.14326511 0.24814454 -0.66500735 0.10776346 0.18665175
		 -0.66500264 0.15385929 3.8259529e-07 -0.66500366 0.11229937 -0.1945105 -0.66500545 -0.17275679 -0.29922295
		 -0.66500318 -0.28653383 1.5600325e-07 -0.99750841 -0.16445199 0.28483856 -0.99750793 0.10740969 0.18603657
		 -0.99750674 0.15679082 2.7212914e-07 -0.99750972 0.090922087 -0.15748224 -0.99751043 -0.13560535 -0.234879
		 -0.99750698 -0.30272764 2.1099298e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 1 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 57 ".n[0:56]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_ring_1_R_InfGEOM" -p "finger_ring_1_R";
	rename -uid "46148A8F-4B71-33C5-E928-8CA114E66C8C";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 -3.5527136788005001e-15 -8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" 0 -3.5527136788005001e-15 -8.8817841970012504e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_ring_1_R_InfGEOMShape" -p "finger_ring_1_R_InfGEOM";
	rename -uid "1D80ED65-45CF-4C6B-1409-5EB38259D642";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -8.9406967e-07 -0.18202068 0.31526905 4.7683716e-07 0.15903568 0.27545875
		 -3.3378601e-06 0.23923491 -2.8755082e-07 2.682209e-06 0.16535802 -0.28640842 1.5497208e-06 -0.1820218 -0.31526923
		 9.5367432e-07 -0.36404219 4.0917769e-08 -0.44197154 -0.21688782 0.37565967 -0.44196951 0.16407612 0.28418887
		 -0.44196749 0.24853359 2.1036377e-07 -0.44197121 0.16162507 -0.27994472 -0.44196779 -0.2160597 -0.3742249
		 -0.44196647 -0.44817764 -2.7827895e-08 -0.88393891 -0.19929811 0.3451944 -0.8839398 0.14398852 0.24939813
		 -0.88393784 0.227897 -1.7399265e-07 -0.88393873 0.15428922 -0.26723766 -0.88393879 -0.20377132 -0.35294321
		 -0.88393891 -0.36404175 -4.2342603e-07 -1.3259089 -0.19925477 0.34511688 -1.3259089 0.10914092 0.18903764
		 -1.32590675 0.16006851 -5.5805589e-07 -1.32591152 0.13932043 -0.24130948 -1.32590675 -0.19899648 -0.34467286
		 -1.32590818 -0.4228096 -5.5596701e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 58 ".n[0:57]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_ring_0_R_InfGEOM" -p "finger_ring_0_R";
	rename -uid "04EB194C-4D73-94D2-F1CC-0C9C38B44CCE";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.7763568394002501e-14 0 0 ;
	setAttr ".sp" -type "double3" -1.7763568394002501e-14 0 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_ring_0_R_InfGEOMShape" -p "finger_ring_0_R_InfGEOM";
	rename -uid "30E5E810-43C8-91FB-52F8-6783D65ACEF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -5.364418e-07 -0.33427176 0.57897496 1.2516975e-06 0.33427158 0.57897532
		 2.3841858e-07 0.41130576 3.2444717e-07 2.5629997e-06 0.22040536 -0.3817521 -4.1723251e-07 -0.33427206 -0.57897532
		 4.1723251e-07 -0.6685428 1.9129686e-08 -0.63128006 -0.33427301 0.57897466 -0.63127995 0.19905256 0.34477082
		 -0.63128084 0.30792436 -3.9601204e-08 -0.63127637 0.15190655 -0.26311091 -0.63127649 -0.33427179 -0.57897514
		 -0.63127828 -0.74602699 -3.3972742e-07 -1.26255608 -0.24321109 0.4212524 -1.26255655 0.16469854 0.28526968
		 -1.26255989 0.27548459 -5.4383048e-07 -1.26256025 0.15986288 -0.27689633 -1.26255631 -0.21009977 -0.36390194
		 -1.26255417 -0.59010595 -2.2834087e-08 -1.89383531 -0.24380215 0.42227474 -1.89383662 0.15488781 0.26827905
		 -1.89383864 0.2376201 -5.8813953e-07 -1.89383912 0.15937383 -0.27605018 -1.89383566 -0.23902968 -0.41400772
		 -1.89383578 -0.57757241 -2.9408812e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_ring_meta_R_InfGEOM" -p "finger_ring_meta_R";
	rename -uid "C0A7717E-4367-4A54-64FE-92A66C6EADB8";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -2.30926389122033e-14 2.8421709430404001e-14 0 ;
	setAttr ".sp" -type "double3" -2.30926389122033e-14 2.8421709430404001e-14 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_ring_meta_R_InfGEOMShape" -p "finger_ring_meta_R_InfGEOM";
	rename -uid "5CBCEF90-4841-DB5A-6F46-F8A7891F896A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  1.1920929e-06 -0.63425249 1.098557949 -7.1525574e-07 0.60708022 1.051496983
		 3.2186508e-06 0.84004676 1.6019977e-06 -7.1525574e-07 0.52664554 -0.91217798 -1.6689301e-06 -0.73394811 -1.27123511
		 -1.4305115e-06 -1.12799633 -2.4344186e-07 -1.020964861 -0.63425362 1.098557472 -1.020965099 0.61153245 1.059206009
		 -1.020966053 0.6782946 -1.9680391e-07 -1.02096498 0.44969094 -0.7788831 -1.020964742 -0.63425148 -1.098557353
		 -1.020964622 -1.16993988 9.2818624e-08 -2.04192853 -0.63425219 1.098557949 -2.041930437 0.56072462 0.97120553
		 -2.041928291 0.5316596 5.5894162e-07 -2.041931152 0.36525565 -0.63263917 -2.041931391 -0.78706616 -1.36323798
		 -2.041929722 -0.93414044 4.5934058e-07 -3.062896252 -0.63425195 1.098557591 -3.062895298 0.48896602 0.84691501
		 -3.062896729 0.41708219 -3.9029865e-07 -3.062893391 0.22425629 -0.38841966 -3.062894821 -0.63425124 -1.098557472
		 -3.062892675 -0.87083858 5.307005e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 1 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 54 ".n[0:53]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "finger_middle_meta_R" -p "hand_R";
	rename -uid "3B47A8B9-4909-6C54-9C80-E795721B5B3A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.65481397395623731 0.017157439539552399 0.23222404618833714 ;
	setAttr ".jo" -type "double3" 5.4712270713662798 -0.090311892978473696 -10.587767962356002 ;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_middle_0_R" -p "finger_middle_meta_R";
	rename -uid "4B7F9837-42F0-712C-18F5-6D816036E64A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.2439834611331833 -6.6685671384902889e-07 7.265617441021277e-08 ;
	setAttr ".s" -type "double3" 1 1.0000010197119993 1.0000009212737024 ;
	setAttr ".jo" -type "double3" -0.39422811781171302 -4.3454638985684602 26.670517288404501 ;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_middle_1_R" -p "finger_middle_0_R";
	rename -uid "AB5484C2-41CC-16B5-0EA0-00BF3C4079E5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2121395211639268 -5.8041479178427835e-07 2.7309903849470629e-07 ;
	setAttr ".jo" -type "double3" 0.41995031813141798 1.45359769889575 35.639992328519 ;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_middle_2_R" -p "finger_middle_1_R";
	rename -uid "274B1B0F-4897-A38C-0A8A-2EB83FFAE61C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.4315110933672592 8.1301497800723155e-07 2.6100452465982471e-07 ;
	setAttr ".s" -type "double3" 1.0000009469867701 1.0000009169647881 1.000001303243665 ;
	setAttr ".jo" -type "double3" -0.193622368857641 -1.3524079564579901 7.7902650106021998 ;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_middle_end_R" -p "finger_middle_2_R";
	rename -uid "F4AD6990-4392-561F-C2B3-A9AF0CA20319";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.89560848474502563 1.2434497875801753e-14 6.2172489379008766e-15 ;
	setAttr ".jo" -type "double3" -3.1805546814635203e-15 4.7708320221952799e-15 -3.6775163504421902e-15 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_middle_2_R_InfGEOM" -p "finger_middle_2_R";
	rename -uid "CB8659D1-4804-D667-8307-F4867EC9ADED";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 1.7763568394002501e-15 9.9920072216264108e-16 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 1.7763568394002501e-15 9.9920072216264108e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_middle_2_R_InfGEOMShape" -p "finger_middle_2_R_InfGEOM";
	rename -uid "83540D04-4E02-FA16-AAF7-38894EB1118A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -9.2387199e-07 -0.15264152 0.26438224 7.7486038e-07 0.15234928 0.26387885
		 2.1457672e-06 0.21150751 3.7507985e-07 -2.682209e-07 0.13341404 -0.23107904 8.9406967e-08 -0.15264164 -0.26438221
		 -6.2584877e-07 -0.30528194 -1.3610749e-07 -0.29853499 -0.15264221 0.26438248 -0.29853857 0.13784929 0.2387598
		 -0.29853582 0.1689619 3.9292583e-08 -0.29853535 0.11092001 -0.1921196 -0.29853752 -0.152641 -0.26438242
		 -0.29853469 -0.30528262 9.1775135e-08 -0.59707361 -0.18824974 0.32606015 -0.59707254 0.12592104 0.21809942
		 -0.59707248 0.15079564 2.5166517e-07 -0.59706897 0.097164527 -0.16829589 -0.59707046 -0.18841152 -0.32633635
		 -0.5970723 -0.30528197 -4.6317755e-08 -0.89560902 -0.1417983 0.2456028 -0.89560932 0.11575837 0.20049962
		 -0.89560801 0.15150106 1.3703821e-07 -0.89560676 0.099093817 -0.17163639 -0.89560819 -0.15319213 -0.26533696
		 -0.89561045 -0.34391582 -2.4211462e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 1 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 56 ".n[0:55]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_middle_1_R_InfGEOM" -p "finger_middle_1_R";
	rename -uid "566C1631-4F49-822C-F77C-5A9982F77896";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 -7.1054273576010003e-15 -2.2204460492503099e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 -7.1054273576010003e-15 -2.2204460492503099e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_middle_1_R_InfGEOMShape" -p "finger_middle_1_R_InfGEOM";
	rename -uid "D3CA0AB3-449D-19C7-E696-8AAD28CA5154";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -2.3841858e-07 -0.2488509 0.43102342 3.5762787e-07 0.19676246 0.34080368
		 -1.1920929e-06 0.33406782 5.317554e-08 -4.1723251e-07 0.19027455 -0.32956484 -5.364418e-07 -0.20040126 -0.34710667
		 -1.5497208e-06 -0.40080303 -3.2197758e-07 -0.47717234 -0.22394143 0.38787979 -0.4771688 0.19409868 0.33618796
		 -0.47717047 0.30489773 -2.5193421e-07 -0.47716945 0.18409708 -0.31886697 -0.47716999 -0.22335672 -0.38686833
		 -0.47716981 -0.44663996 -3.2363133e-07 -0.95433956 -0.20925446 0.36243951 -0.95434099 0.17988026 0.31155866
		 -0.95433819 0.27656794 -5.5772176e-08 -0.95433968 0.16798966 -0.2909649 -0.95433903 -0.21191703 -0.36705258
		 -0.95434207 -0.47568411 -7.3500826e-07 -1.43151045 -0.20188184 0.34967142 -1.43150878 0.15378907 0.26636997
		 -1.43150663 0.21099411 3.8244309e-08 -1.43151021 0.13403741 -0.23215857 -1.43150902 -0.20571208 -0.35630375
		 -1.43151021 -0.47099239 -5.2247651e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_middle_0_R_InfGEOM" -p "finger_middle_0_R";
	rename -uid "5F92C27A-41F1-9443-E529-59B5F38E67F2";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 2.4868995751603503e-14 -2.1316282072802999e-14 1.11022302462516e-16 ;
	setAttr ".sp" -type "double3" 2.4868995751603503e-14 -2.1316282072802999e-14 1.11022302462516e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_middle_0_R_InfGEOMShape" -p "finger_middle_0_R_InfGEOM";
	rename -uid "47C36933-46EB-8EC9-2A56-9CAFDB73DFF2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  7.1525574e-07 -0.34168667 0.5918169 1.1920929e-06 0.27530268 0.4768399
		 1.6689301e-06 0.37866646 2.3125027e-07 -1.4305115e-06 0.25386971 -0.43971568 1.5497208e-06 -0.34168524 -0.59181666
		 2.3841858e-07 -0.68337238 2.5786321e-08 -0.73737884 -0.34168667 0.5918169 -0.73738086 0.18895602 0.32728502
		 -0.73737758 0.33301049 4.9589499e-07 -0.73737836 0.16983894 -0.29417261 -0.73737794 -0.34168524 -0.59181672
		 -0.73737794 -0.79078692 1.6942163e-07 -1.47475791 -0.24582656 0.42578232 -1.47475946 0.19261047 0.33361551
		 -1.47475994 0.33094808 1.1274371e-07 -1.47475767 0.1776619 -0.30771887 -1.47476101 -0.23108773 -0.40025136
		 -1.47475946 -0.5931049 3.3516429e-08 -2.2121377 -0.24522896 0.42474744 -2.21213841 0.18523724 0.32084388
		 -2.21213984 0.31993127 1.8454395e-07 -2.21213818 0.17986442 -0.31153649 -2.21213961 -0.24913737 -0.43151316
		 -2.21213722 -0.58199197 4.2445069e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_middle_meta_R_InfGEOM" -p "finger_middle_meta_R";
	rename -uid "409DA118-496F-F7F0-D962-2F86C334588A";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 -2.3497257473081799e-08 1.7763568394002501e-15 ;
	setAttr ".sp" -type "double3" 0 -2.3497257473081799e-08 1.7763568394002501e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_middle_meta_R_InfGEOMShape" -p "finger_middle_meta_R_InfGEOM";
	rename -uid "1BDFF062-4F4A-4DE9-2C1D-4CBCAD9CA5F1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  5.9604645e-07 -0.63132107 1.093472719 -8.3446503e-07 0.47015014 0.81433094
		 7.1525574e-07 0.82087612 3.150077e-07 -2.7418137e-06 0.60916758 -1.055116892 3.5762787e-07 -0.63131964 -1.093472838
		 2.3841858e-07 -1.38131797 5.1978894e-08 -1.081327558 -0.63131762 1.093473792 -1.081326962 0.47958207 0.83065999
		 -1.081329346 0.67816377 -1.8819898e-07 -1.081327796 0.48021597 -0.83175921 -1.081326246 -0.63131744 -1.093473196
		 -1.081329346 -1.25636303 -2.6799725e-07 -2.16265678 -0.63131821 1.093474388 -2.16265535 0.48605025 0.84186405
		 -2.16265726 0.50576198 -1.1191641e-07 -2.16265678 0.36751685 -0.63655597 -2.16265678 -0.63131684 -1.093474627
		 -2.16265535 -1.062443733 3.4042756e-07 -3.2439959 -0.63131601 1.093475699 -3.24398947 0.3258265 0.56434685
		 -3.24398756 0.38482922 3.546244e-07 -3.24399042 0.2597023 -0.44981652 -3.24399614 -0.63131458 -1.093474984
		 -3.24399495 -1.017116666 1.7119625e-08;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 57 ".n[0:56]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "finger_pinky_meta_R" -p "hand_R";
	rename -uid "69EB8A7C-402C-AF4B-0F05-9A85AD3DD253";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.63997381243541085 -0.37138688296566613 -1.10221578612152 ;
	setAttr ".jo" -type "double3" -27.158073755901501 -11.0534650354201 -3.8112251992434798 ;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_pinky_0_R" -p "finger_pinky_meta_R";
	rename -uid "71681F04-4CD1-B5DA-BEF4-9B998AD91A21";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.6614562003160742 -2.5650869588389469e-06 -6.1228418601899648e-07 ;
	setAttr ".jo" -type "double3" -2.85359278048124 -17.522911482567199 19.862739613636201 ;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_pinky_1_R" -p "finger_pinky_0_R";
	rename -uid "250E57A4-449A-3478-8452-CFA14DFDDA24";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.5752749884106856 -6.4214078321356283e-07 -1.842243250393949e-06 ;
	setAttr ".jo" -type "double3" -0.0073478602390538413 -0.049191988740440999 16.9910401038122 ;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_pinky_2_R" -p "finger_pinky_1_R";
	rename -uid "0F9B3B7A-446B-54B9-C99F-5FB5F1AF02FB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0121496992368719 1.1602544063293863e-06 1.3907576104088548e-06 ;
	setAttr ".jo" -type "double3" -0.19112456038123099 4.9118120273871 1.1369598607709801 ;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_pinky_end_R" -p "finger_pinky_2_R";
	rename -uid "63379E1C-43D0-E04B-6337-9D969549D626";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.76132488250732422 3.1974423109204508e-14 0 ;
	setAttr ".jo" -type "double3" -3.1805546814635203e-15 -1.5902773407317602e-15 4.7708320221952799e-15 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_pinky_2_R_InfGEOM" -p "finger_pinky_2_R";
	rename -uid "2E0A8BCA-4F1E-AD60-49C5-7FAB4ADAEECD";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 1.4210854715202001e-14 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010003e-15 1.4210854715202001e-14 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_pinky_2_R_InfGEOMShape" -p "finger_pinky_2_R_InfGEOM";
	rename -uid "E5ECD4FF-414B-5712-0725-23ABED06A11D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -4.4703484e-07 -0.12920184 0.22378284 1.758337e-06 0.1014799 0.17576914
		 -1.6987324e-06 0.18881151 -2.0672778e-07 -1.9669533e-06 0.13574015 -0.23510951 5.9604645e-08 -0.1292011 -0.22378318
		 -1.3113022e-06 -0.25840187 7.3603985e-08 -0.25377625 -0.12920177 0.22378272 -0.25377309 0.10181139 0.17634268
		 -0.25377709 0.18991151 -8.3349892e-07 -0.25377238 0.14221245 -0.24631934 -0.25377575 -0.12920102 -0.2237833
		 -0.25377339 -0.25840208 7.1480611e-07 -0.5075475 -0.14420749 0.24977352 -0.50755095 0.10528892 0.1823656
		 -0.50755036 0.18827906 4.072439e-07 -0.50754976 0.13527638 -0.23430678 -0.50755227 -0.15634465 -0.27079716
		 -0.50755048 -0.31192195 2.5373882e-07 -0.76132524 -0.10454695 0.1810794 -0.761325 0.089366697 0.15478849
		 -0.76132345 0.17918094 2.5725996e-07 -0.76132417 0.10192103 -0.17653103 -0.76132512 -0.10392728 -0.18000776
		 -0.76132345 -0.19809516 6.6437974e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 0 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 62 ".n[0:61]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_pinky_1_R_InfGEOM" -p "finger_pinky_1_R";
	rename -uid "F1C74432-4C55-E38F-88FC-6FA67FF4EC72";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 -1.4210854715202001e-14 3.5527136788005001e-15 ;
	setAttr ".sp" -type "double3" 0 -1.4210854715202001e-14 3.5527136788005001e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_pinky_1_R_InfGEOMShape" -p "finger_pinky_1_R_InfGEOM";
	rename -uid "E7D9EF19-4293-4DF7-EACC-699808979AC3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -1.7881393e-06 -0.15574868 0.26976413 -5.364418e-07 0.13411357 0.232292
		 1.0728836e-06 0.24265268 6.0803336e-07 -2.3841858e-07 0.12773721 -0.22124608 -1.2516975e-06 -0.15574805 -0.26976436
		 1.1920929e-07 -0.31149748 -3.2651548e-07 -0.33738509 -0.18850398 0.32649916 -0.33738315 0.12326058 0.21349278
		 -0.33738089 0.22508894 4.0289009e-07 -0.33738309 0.13033475 -0.22574812 -0.33738375 -0.15574962 -0.2697652
		 -0.33738244 -0.31149739 -2.1035267e-07 -0.6747691 -0.1586318 0.27475467 -0.67476618 0.099934712 0.17309196
		 -0.6747663 0.20152836 -8.738175e-07 -0.67476547 0.12732832 -0.22054309 -0.6747663 -0.15574951 -0.26976511
		 -0.6747666 -0.35854813 6.8140764e-09 -1.012148619 -0.16726252 0.28970248 -1.012150168 0.10179515 0.17631601
		 -1.012146711 0.18898675 -8.2634386e-08 -1.012149811 0.13473146 -0.23336603 -1.012149811 -0.19126303 -0.3312763
		 -1.012148261 -0.35592875 -4.9679994e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_pinky_0_R_InfGEOM" -p "finger_pinky_0_R";
	rename -uid "C7C7BED5-43F6-43A4-CF9C-6E8B280A91BE";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 1.4210854715202001e-14 -7.1054273576010003e-15 -5.3290705182007498e-15 ;
	setAttr ".sp" -type "double3" 1.4210854715202001e-14 -7.1054273576010003e-15 -5.3290705182007498e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_pinky_0_R_InfGEOMShape" -p "finger_pinky_0_R_InfGEOM";
	rename -uid "1064C47A-4ECE-70FB-2F6B-529A8DDC39A1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  9.5367432e-07 -0.27827466 0.48198664 -1.0728836e-06 0.31860077 0.55183405
		 -2.9802322e-06 0.28400496 4.4409109e-07 -1.7881393e-06 0.14970991 -0.25930408 1.013279e-06 -0.27827418 -0.48198605
		 -1.847744e-06 -0.55655074 -3.201676e-07 -0.52509189 -0.27827448 0.48198631 -0.52509266 0.17716366 0.30685541
		 -0.52509052 0.24836731 6.0462514e-07 -0.52509272 0.13019444 -0.22550346 -0.5250895 -0.25375977 -0.43952769
		 -0.52509236 -0.59300202 -5.9687932e-07 -1.050184608 -0.24070752 0.41691786 -1.050182223 0.15035465 0.26041946
		 -1.050181508 0.2333968 -3.4679135e-07 -1.050183058 0.11708011 -0.20278867 -1.050183654 -0.21224567 -0.36762351
		 -1.050185204 -0.49485275 -1.0611368e-06 -1.57527375 -0.20787615 0.36005414 -1.57527542 0.13332461 0.23092218
		 -1.57527685 0.23627536 -8.6508811e-07 -1.57527637 0.12662092 -0.21931446 -1.57527363 -0.21884626 -0.37905744
		 -1.57527399 -0.43824986 -7.041827e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_pinky_meta_R_InfGEOM" -p "finger_pinky_meta_R";
	rename -uid "66253528-4E3D-57F5-EB1E-F3960568C5F0";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 1.0658141036401501e-14 -2.1316282072802999e-14 0 ;
	setAttr ".sp" -type "double3" 1.0658141036401501e-14 -2.1316282072802999e-14 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_pinky_meta_R_InfGEOMShape" -p "finger_pinky_meta_R_InfGEOM";
	rename -uid "74541717-491D-FB6F-6845-C79FAC5FB6C0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  5.9604645e-07 -0.57466877 0.99535614 -5.9604645e-07 0.57466805 0.99535549
		 -3.5762787e-07 0.69809532 -7.5863318e-07 -1.4305115e-06 0.27111521 -0.469587 -5.9604645e-07 -0.38938132 -0.67442685
		 8.3446503e-07 -0.97934902 -1.7736134e-07 -0.88715148 -0.57466918 0.9953562 -0.88715184 0.62251443 1.078229189
		 -0.88715345 0.5514816 -4.8869634e-07 -0.88715446 0.24996093 -0.43294963 -0.88715035 -0.40086311 -0.69431651
		 -0.88715112 -0.97630876 -3.8421831e-08 -1.77430356 -0.57466972 0.99535632 -1.77430522 0.53245789 0.92224687
		 -1.77430415 0.43576804 -1.2472449e-07 -1.77430487 0.20410469 -0.35352558 -1.77430439 -0.35400456 -0.61315107
		 -1.77430165 -0.81521767 8.112678e-07 -2.66146302 -0.5746702 0.99535638 -2.66146088 0.38688034 0.67009896
		 -2.66146088 0.29019359 -1.5864471e-06 -2.66145754 0.14801325 -0.25637239 -2.66146111 -0.33396161 -0.57843518
		 -2.6614604 -0.76646775 -1.3082823e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 1 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 55 ".n[0:54]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "finger_index_meta_R" -p "hand_R";
	rename -uid "0E058B5A-4DBE-6176-0044-9A98FB93A1A2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.61957572629720659 -0.1007088850361697 0.87152839925754844 ;
	setAttr ".s" -type "double3" 1.0000008616422285 1 1 ;
	setAttr ".jo" -type "double3" 9.6071453672595304 8.7434670845217202 -10.0648907364902 ;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_0_R" -p "finger_index_meta_R";
	rename -uid "C214934E-4F24-8A24-0047-C9A130E67F90";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.2519982093658015 1.8701017978628443e-07 2.5094527700275648e-07 ;
	setAttr ".jo" -type "double3" 0.153305887513874 -6.7730380584372698 19.970852702123501 ;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_1_R" -p "finger_index_0_R";
	rename -uid "F2233772-481A-7EC8-4743-E9B38F97663B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.9466854478222011 1.6177831341224191e-06 -6.3586868392917495e-07 ;
	setAttr ".jo" -type "double3" 0.44253599319346298 1.8622327340847697 34.973284534041497 ;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_2_R" -p "finger_index_1_R";
	rename -uid "C4BACDF2-4B44-BEED-9665-088D682DC33F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.285860558367915 1.3365369824214213e-06 -2.8794025297429471e-07 ;
	setAttr ".jo" -type "double3" -0.97482388976061807 -3.6933426397956506 14.692907210012301 ;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "finger_index_end_R" -p "finger_index_2_R";
	rename -uid "91F7FA11-45FB-AA11-F4E9-6A85614B26E8";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.82419008016586304 2.6645352591003757e-14 -1.7763568394002505e-15 ;
	setAttr ".jo" -type "double3" 0 -1.8884543421189598e-15 8.2992598719438707e-15 ;
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "finger_index_2_R_InfGEOM" -p "finger_index_2_R";
	rename -uid "11C124A9-408D-A5D3-946A-A88AA6B3DF43";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 7.1054273576010003e-15 -3.5527136788005001e-15 ;
	setAttr ".sp" -type "double3" 0 7.1054273576010003e-15 -3.5527136788005001e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_index_2_R_InfGEOMShape" -p "finger_index_2_R_InfGEOM";
	rename -uid "8993529B-4407-DD64-E58E-EC88F84327F8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  8.9406967e-07 -0.13904676 0.24083681 -1.2218952e-06 0.13147372 0.22772045
		 2.8312206e-06 0.16210978 2.2985711e-08 1.4305115e-06 0.099968277 -0.1731521 6.8545341e-07 -0.1390467 -0.24083722
		 1.5795231e-06 -0.27809536 1.8503614e-07 -0.27472937 -0.13904835 0.24083732 -0.27473295 0.13455898 0.23306392
		 -0.27472949 0.15415545 4.4215263e-08 -0.27473187 0.095726281 -0.1658036 -0.27472961 -0.13904831 -0.24083669
		 -0.2747317 -0.27809408 -1.7524476e-07 -0.54945904 -0.13904823 0.24083728 -0.54946059 0.13263771 0.22973531
		 -0.54945779 0.14151579 2.4804544e-07 -0.54946089 0.083417177 -0.14448179 -0.54945755 -0.15265077 -0.26439589
		 -0.54946136 -0.27809396 -2.2387484e-07 -0.82419044 -0.13405533 0.23219056 -0.8241908 0.11484403 0.19891635
		 -0.82418859 0.12830603 4.1361301e-07 -0.82418948 0.072918519 -0.12629779 -0.82418931 -0.10569263 -0.18305989
		 -0.82419181 -0.2568109 -6.1435969e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 1 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 56 ".n[0:55]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_index_1_R_InfGEOM" -p "finger_index_1_R";
	rename -uid "FFDF379F-4D39-C09C-D974-E693EFBDF6F2";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 -3.5527136788005001e-15 2.7009644520958898e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010003e-15 -3.5527136788005001e-15 2.7009644520958898e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_index_1_R_InfGEOMShape" -p "finger_index_1_R_InfGEOM";
	rename -uid "4C93FD39-4367-7911-7620-FFB035703773";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  0 -0.18540457 0.32113054 1.1920929e-06 0.16672313 0.28877589
		 -8.9406967e-07 0.24468973 4.9893544e-08 -4.7683716e-07 0.15088119 -0.26133361 6.5565109e-07 -0.18540542 -0.32113037
		 3.5762787e-07 -0.37081027 2.6159907e-07 -0.42862195 -0.18540438 0.32113034 -0.42861742 0.17269361 0.29911366
		 -0.42861784 0.25085741 6.9231334e-08 -0.42862141 0.13962123 -0.24183068 -0.42862213 -0.20291701 -0.35146552
		 -0.42862135 -0.3708083 -4.852879e-07 -0.8572399 -0.18540257 0.32113016 -0.85724181 0.15646566 0.27100116
		 -0.85723841 0.22373657 -5.7035635e-08 -0.85723925 0.12285783 -0.2127915 -0.85723794 -0.18723597 -0.32430449
		 -0.85723948 -0.3708083 -1.1706155e-07 -1.28586245 -0.22682296 0.39287147 -1.28586268 0.13387071 0.23186599
		 -1.28586113 0.16452828 -1.162685e-06 -1.28586149 0.099998832 -0.17320032 -1.28585982 -0.18921155 -0.32772723
		 -1.28586137 -0.37080812 -3.1270037e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_index_0_R_InfGEOM" -p "finger_index_0_R";
	rename -uid "ED382346-4519-6F5D-70B1-7BA2B45D0CDC";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 2.8421709430404001e-14 2.66453525910038e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010003e-15 2.8421709430404001e-14 2.66453525910038e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_index_0_R_InfGEOMShape" -p "finger_index_0_R_InfGEOM";
	rename -uid "2E2C6174-4238-EE7D-0A6A-FD85EEC64872";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -8.9406967e-07 -0.32781461 0.56778926 -1.3709068e-06 0.1955587 0.3387157
		 -5.9604645e-07 0.38819027 4.9467189e-08 -9.5367432e-07 0.32099676 -0.55598503 -4.1723251e-07 -0.35073647 -0.60749459
		 5.9604645e-08 -0.70147473 2.1236445e-07 -0.64889371 -0.27968359 0.48442832 -0.64889479 0.18165927 0.31464374
		 -0.64889503 0.29893577 2.6424885e-07 -0.64889646 0.21969666 -0.38052616 -0.64889395 -0.3507365 -0.60749418
		 -0.64889354 -0.80293965 6.3884528e-08 -1.29779351 -0.27816421 0.4817926 -1.29779267 0.1787311 0.30957365
		 -1.29779243 0.284473 -4.7176209e-07 -1.29779124 0.1811417 -0.31375027 -1.29779243 -0.24538207 -0.42501482
		 -1.29779065 -0.61090916 -3.885761e-07 -1.94668746 -0.28167328 0.48786992 -1.94668746 0.16900346 0.29272392
		 -1.9466877 0.26533914 -4.313743e-07 -1.94668627 0.15792809 -0.27354002 -1.94668639 -0.22703853 -0.39323997
		 -1.94668579 -0.59637886 1.5876225e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "finger_index_meta_R_InfGEOM" -p "finger_index_meta_R";
	rename -uid "216D664B-4859-1258-50CF-5685E9CFF006";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 5.3290705182007498e-15 -7.1054273576010003e-15 2.8865798640254102e-15 ;
	setAttr ".sp" -type "double3" 5.3290705182007498e-15 -7.1054273576010003e-15 2.8865798640254102e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "finger_index_meta_R_InfGEOMShape" -p "finger_index_meta_R_InfGEOM";
	rename -uid "D3E148E5-4ACA-0366-90E4-F38C368B7E3D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -1.3113022e-06 -0.47467509 0.82216007 8.3446503e-07 0.27662358 0.47912776
		 -3.5762787e-07 0.60803193 -4.4820268e-08 -9.5367432e-07 0.73594719 -1.27469754 -9.5367432e-07 -0.61286986 -1.061522484
		 2.3841858e-07 -1.48951077 1.4081932e-07 -1.08400178 -0.70313543 1.21786201 -1.084000111 0.27507997 0.47645286
		 -1.084000111 0.51248372 1.5410617e-07 -1.084001064 0.61401105 -1.06349659 -1.084000587 -0.61286926 -1.061522126
		 -1.083999157 -1.225739 4.9839241e-07 -2.16799998 -0.4285374 0.74224836 -2.16799974 0.28584257 0.49509352
		 -2.16800046 0.47083423 1.3348929e-07 -2.16799974 0.48516363 -0.84032214 -2.16799998 -0.61286879 -1.061522007
		 -2.16800046 -1.17266297 4.2920576e-08 -3.25200105 -0.32455894 0.56215376 -3.25200105 0.20443001 0.35408294
		 -3.25200057 0.40233919 5.4855903e-08 -3.25200033 0.32872209 -0.56936169 -3.25199986 -0.61286819 -1.061521769
		 -3.25200033 -0.92115742 4.0287837e-08;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 1 7 6 1 6 0 0 1 2 0 2 8 1 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 54 ".n[0:53]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "hand_end_R" -p "hand_R";
	rename -uid "83744909-44F6-7ABE-5F7E-24AF3EB82AE6";
	addAttr -is true -ci true -k true -sn "rotX" -ln "rotX" -smn -22.265092849731399 
		-smx -22.265092849731399 -at "double";
	addAttr -is true -ci true -k true -sn "AimDirection" -ln "AimDirection" -smn 0 -smx 
		0 -at "long";
	addAttr -is true -ci true -k true -sn "aimVector" -ln "aimVector" -at "double3" 
		-nc 3;
	addAttr -is true -ci true -sn "aimVector0" -ln "aimVector0" -at "double" -p "aimVector";
	addAttr -is true -ci true -sn "aimVector1" -ln "aimVector1" -at "double" -p "aimVector";
	addAttr -is true -ci true -sn "aimVector2" -ln "aimVector2" -at "double" -p "aimVector";
	addAttr -is true -ci true -k true -sn "inner" -ln "inner" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "inner0" -ln "inner0" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner1" -ln "inner1" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner2" -ln "inner2" -at "double" -p "inner";
	addAttr -is true -ci true -k true -sn "outer" -ln "outer" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "outer0" -ln "outer0" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer1" -ln "outer1" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer2" -ln "outer2" -at "double" -p "outer";
	addAttr -is true -ci true -k true -sn "poleVector" -ln "poleVector" -at "double3" 
		-nc 3;
	addAttr -is true -ci true -sn "poleVector0" -ln "poleVector0" -at "double" -p "poleVector";
	addAttr -is true -ci true -sn "poleVector1" -ln "poleVector1" -at "double" -p "poleVector";
	addAttr -is true -ci true -sn "poleVector2" -ln "poleVector2" -at "double" -p "poleVector";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -3.113351583480835 1.0722445864530528e-07 2.9404002788169237e-08 ;
	setAttr ".jo" -type "double3" 14.376152415321098 -6.7514461507481798 -53.306275436681403 ;
	setAttr -k on ".rotX" -22.265092849731399;
	setAttr -k on ".aimVector" -type "double3" -24.196128845214801 37.910026550292997 
		0.19489373266696899 ;
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVector0";
	setAttr -k on ".aimVector1";
	setAttr -k on ".aimVector2";
	setAttr -k on ".inner" -type "double3" -24.011367797851602 38.297527313232401 1.7067180871963501 ;
	setAttr -k on ".inner";
	setAttr -k on ".inner0";
	setAttr -k on ".inner1";
	setAttr -k on ".inner2";
	setAttr -k on ".outer" -type "double3" -24.3808898925781 37.522525787353501 -1.3169307708740201 ;
	setAttr -k on ".outer";
	setAttr -k on ".outer0";
	setAttr -k on ".outer1";
	setAttr -k on ".outer2";
	setAttr -k on ".poleVector" -type "double3" -13.887951850891101 47.025352478027301 
		-12.6948957443237 ;
	setAttr -k on ".poleVector";
	setAttr -k on ".poleVector0";
	setAttr -k on ".poleVector1";
	setAttr -k on ".poleVector2";
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "hand_R_InfGEOM" -p "hand_R";
	rename -uid "14563869-460B-B3AB-A031-068CF2C944F8";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 1.4210854715202001e-14 1.4702002282263e-08 ;
	setAttr ".sp" -type "double3" 0 1.4210854715202001e-14 1.4702002282263e-08 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "hand_R_InfGEOMShape" -p "hand_R_InfGEOM";
	rename -uid "262CACEA-453D-9E6E-E8DE-A4BF07CB662F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  7.1525574e-07 -0.69822484 1.2093631 2.3841858e-06 0.54555196 0.94492507
		 -8.3446503e-07 0.83769047 1.1278203e-06 1.1920929e-07 0.62906098 -1.089563131 7.1525574e-07 -0.77395421 -1.34052706
		 0 -1.14637542 1.8432108e-06 -1.037783146 -0.6680603 1.15711403 -1.037780762 0.57149172 0.9898532
		 -1.037786245 0.8591677 -1.8699276e-07 -1.037786007 0.59179914 -1.02502799 -1.037785053 -0.66806102 -1.15711415
		 -1.037783384 -1.27840567 8.0499677e-07 -2.075567245 -0.66805899 1.15711379 -2.075567007 0.67329043 1.16617477
		 -2.075567722 0.88579553 -3.1392915e-07 -2.075567007 0.58079243 -1.0059621334 -2.075567961 -0.66806012 -1.15711415
		 -2.07556653 -0.86117887 3.8542424e-08 -3.11335278 -0.71674395 1.24143219 -3.11335039 0.78007984 1.35113752
		 -3.11335015 0.8961584 -6.8043374e-07 -3.11334991 0.58658421 -1.015991569 -3.11335087 -0.66805911 -1.15711427
		 -3.11335254 -0.53176665 -1.0595377e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 1 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 54 ".n[0:53]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "object_hand_R" -p "hand_R";
	rename -uid "24763FA7-4D6B-E7FC-9145-E8822B381AAF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -19.059797286987305 -42.086402893066406 -6.6902103424072266 ;
	setAttr ".jo" -type "double3" 14.376152415321 -6.7514461507481904 -53.306275436681403 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "weapon_hand_R" -p "hand_R";
	rename -uid "ACDEA37D-4D84-BF5F-4287-CAA0B9BDAAC5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -19.059797286987305 -42.086402893066406 -6.6902103424072266 ;
	setAttr ".jo" -type "double3" 14.376152415321 -6.7514461507481904 -53.306275436681403 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "arm_lower_R_InfGEOM" -p "arm_lower_R";
	rename -uid "FE629F80-4822-1181-52E9-ACA0F8097C2F";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 -5.3290705182007498e-15 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 -5.3290705182007498e-15 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "arm_lower_R_InfGEOMShape" -p "arm_lower_R_InfGEOM";
	rename -uid "63583055-4C16-3CF0-2E35-158F87CDFE55";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  9.5367432e-07 -0.76303154 1.32160807 1.4305115e-06 0.74007434 1.28184855
		 -1.4305115e-06 1.64841425 -1.2087656e-06 -4.7683716e-07 0.88082504 -1.52563369 1.4305115e-06 -0.79040051 -1.36901176
		 9.5367432e-07 -1.52606249 1.5077874e-06 -3.64945936 -0.76303059 1.3216089 -3.64945769 0.81275189 1.40773046
		 -3.64945793 1.79176438 1.1296663e-06 -3.64945889 0.76303136 -1.32160771 -3.64945865 -0.76378024 -1.3229059
		 -3.64945698 -1.69756687 1.9741983e-06 -7.29891491 -0.65850413 1.14056444 -7.29891634 0.64361209 1.11477315
		 -7.29891682 1.46886766 3.135211e-06 -7.29891491 0.68529361 -1.18696046 -7.29891729 -0.56394559 -0.97678035
		 -7.29891777 -1.2943176 -2.1593098e-07 -10.94837856 -0.45150983 0.78203952 -10.94837952 0.48212561 0.83506882
		 -10.94838333 1.55310977 4.6747032e-06 -10.94838333 0.65291584 -1.13087964 -10.94838524 -0.64757401 -1.12163138
		 -10.94837952 -1.35725081 3.2634211e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "arm_upper_R_InfGEOM" -p "arm_upper_R";
	rename -uid "625C7740-4363-F939-2952-678FFB39F454";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.15448040816091e-06 -1.59139410427223e-07 -9.0450841838674002e-07 ;
	setAttr ".sp" -type "double3" -1.15448040816091e-06 -1.59139410427223e-07 -9.0450841838674002e-07 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "arm_upper_R_InfGEOMShape" -p "arm_upper_R_InfGEOM";
	rename -uid "D82E9280-4B47-EBF4-550D-11829F1F7C1A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  0.092077732 1.15114319 2.085570335 0.092073917 -1.24954712 2.23186827
		 -4.7683716e-06 -2.91954637 -3.8161875e-06 -0.92972517 -1.58223069 -1.26619291 -0.92972851 1.096158147 -1.26620424
		 2.3841858e-06 2.90659165 1.9073486e-06 -3.87600255 0.98420823 1.70469773 -3.87600446 -0.97233307 1.68412292
		 -3.87600446 -2.32903123 -1.6704201e-06 -3.87600446 -0.95269501 -1.65011013 -3.87600613 0.94051087 -1.62902057
		 -3.87600398 2.20999742 -4.7683716e-07 -7.75201035 0.82219803 1.42407477 -7.75200653 -0.84550583 1.4644562
		 -7.75200653 -2.091276407 -1.6704201e-06 -7.75200844 -1.021062016 -1.76853788 -7.75200844 0.92549622 -1.60300267
		 -7.75200939 2.067247629 -2.3841858e-06 -11.62807655 0.7398845 1.28150189 -11.62810326 -1.11538422 1.93191779
		 -11.62810135 -2.014265299 -5.4851175e-06 -11.62807465 -0.76253235 -1.32075369 -11.62808609 0.87038147 -1.50753415
		 -11.62807655 1.61552644 0;
	setAttr -s 42 ".ed[0:41]"  0 6 0 6 7 1 7 1 0 1 0 0 7 8 1 8 2 0 2 1 0
		 8 9 1 9 3 0 3 2 0 9 10 1 10 4 0 4 3 0 10 11 1 11 5 0 5 4 0 11 6 1 0 5 0 6 12 0 12 13 1
		 13 7 0 13 14 1 14 8 0 14 15 1 15 9 0 15 16 1 16 10 0 16 17 1 17 11 0 17 12 1 12 18 0
		 18 19 0 19 13 0 19 20 0 20 14 0 20 21 0 21 15 0 21 22 0 22 16 0 22 23 0 23 17 0 23 18 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 13 14 7
		f 4 -3 4 5 6
		mu 0 4 7 14 15 8
		f 4 -6 7 8 9
		mu 0 4 8 15 16 9
		f 4 -9 10 11 12
		mu 0 4 9 16 17 10
		f 4 -12 13 14 15
		mu 0 4 10 17 18 11
		f 4 -15 16 -1 17
		mu 0 4 11 18 19 12
		f 4 18 19 20 -2
		mu 0 4 13 20 21 14
		f 4 -21 21 22 -5
		mu 0 4 14 21 22 15
		f 4 -23 23 24 -8
		mu 0 4 15 22 23 16
		f 4 -25 25 26 -11
		mu 0 4 16 23 24 17
		f 4 -27 27 28 -14
		mu 0 4 17 24 25 18
		f 4 -29 29 -19 -17
		mu 0 4 18 25 26 19
		f 4 30 31 32 -20
		mu 0 4 20 27 28 21
		f 4 -33 33 34 -22
		mu 0 4 21 28 29 22
		f 4 -35 35 36 -24
		mu 0 4 22 29 30 23
		f 4 -37 37 38 -26
		mu 0 4 23 30 31 24
		f 4 -39 39 40 -28
		mu 0 4 24 31 32 25
		f 4 -41 41 -31 -30
		mu 0 4 25 32 33 26
		f 6 -4 -7 -10 -13 -16 -18
		mu 0 6 0 1 2 3 4 5
		f 6 -42 -40 -38 -36 -34 -32
		mu 0 6 38 39 34 35 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "clavicle_R_InfGEOM" -p "clavicle_R";
	rename -uid "2CA3B0C2-4894-BD69-51E4-4C838E168B5E";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.93405313098083e-07 -3.66735279477837e-07 -1.3849731033133101e-06 ;
	setAttr ".sp" -type "double3" -1.93405313098083e-07 -3.66735279477837e-07 -1.3849731033133101e-06 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "clavicle_R_InfGEOMShape" -p "clavicle_R_InfGEOM";
	rename -uid "881D8FB7-44C9-7DFF-C90E-E4A1DD73854D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -0.64609599 1.5607841 1.22286654 0.29013491 -0.78878731 0.79261351
		 0.79159594 -1.24824893 -0.094168469 0.2283659 -3.044480324 -3.12637091 -0.89929938 1.086598635 -2.57892561
		 -1.22396016 3.78668594 0.48527735 -2.70357084 1.37913489 2.63077331 -2.17134166 -1.15223563 1.26727486
		 -2.051859379 -2.62342405 -0.16235468 -1.82176411 -3.73765087 -4.20855951 -2.8591578 4.24237537 -3.097933769
		 -2.13754678 5.23585176 -0.54028869 -4.53211021 1.21084321 2.3307333 -4.46155548 -1.32866275 1.4573698
		 -4.62100697 -2.39780807 -0.30454153 -3.78530002 -3.80626941 -4.39477873 -5.75767517 4.029621124 -4.8511939
		 -4.8127017 4.42423487 -0.39938146 -6.9612112 1.095629215 2.25131965 -7.044924259 -0.42394531 2.13744164
		 -6.16044044 -1.82812023 -0.31562757 -6.06327343 -2.10669088 -2.63441563 -7.99319696 1.83484757 -3.28246689
		 -7.25919962 2.69165659 0.040020049;
	setAttr -s 42 ".ed[0:41]"  0 6 0 6 7 1 7 1 0 1 0 0 7 8 1 8 2 1 2 1 0
		 8 9 1 9 3 0 3 2 0 9 10 1 10 4 0 4 3 0 10 11 0 11 5 0 5 4 1 11 6 1 0 5 0 6 12 0 12 13 1
		 13 7 1 13 14 1 14 8 1 14 15 1 15 9 0 15 16 0 16 10 0 16 17 0 17 11 0 17 12 1 12 18 0
		 18 19 0 19 13 0 19 20 0 20 14 1 20 21 0 21 15 0 21 22 0 22 16 0 22 23 0 23 17 0 23 18 0;
	setAttr -s 58 ".n[0:57]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 13 14 7
		f 4 -3 4 5 6
		mu 0 4 7 14 15 8
		f 4 -6 7 8 9
		mu 0 4 8 15 16 9
		f 4 -9 10 11 12
		mu 0 4 9 16 17 10
		f 4 -12 13 14 15
		mu 0 4 10 17 18 11
		f 4 -15 16 -1 17
		mu 0 4 11 18 19 12
		f 4 18 19 20 -2
		mu 0 4 13 20 21 14
		f 4 -21 21 22 -5
		mu 0 4 14 21 22 15
		f 4 -23 23 24 -8
		mu 0 4 15 22 23 16
		f 4 -25 25 26 -11
		mu 0 4 16 23 24 17
		f 4 -27 27 28 -14
		mu 0 4 17 24 25 18
		f 4 -29 29 -19 -17
		mu 0 4 18 25 26 19
		f 4 30 31 32 -20
		mu 0 4 20 27 28 21
		f 4 -33 33 34 -22
		mu 0 4 21 28 29 22
		f 4 -35 35 36 -24
		mu 0 4 22 29 30 23
		f 4 -37 37 38 -26
		mu 0 4 23 30 31 24
		f 4 -39 39 40 -28
		mu 0 4 24 31 32 25
		f 4 -41 41 -31 -30
		mu 0 4 25 32 33 26
		f 6 -4 -7 -10 -13 -16 -18
		mu 0 6 0 1 2 3 4 5
		f 6 -42 -40 -38 -36 -34 -32
		mu 0 6 38 39 34 35 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spine_3_InfGEOM" -p "spine_3";
	rename -uid "04FE69D9-4E50-41EE-E145-32BE4FF4E30B";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 -7.1054273576010003e-15 -1.1265307672227099e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 -7.1054273576010003e-15 -1.1265307672227099e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "spine_3_InfGEOMShape" -p "spine_3_InfGEOM";
	rename -uid "88534DA0-4892-E30C-96A6-88A23FD88E86";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -1.6689301e-06 -2.53599119 -4.39246368 -1.6689301e-06 2.53598928 -4.39246464
		 -7.1525574e-07 5.5733242 -8.3049133e-07 -1.6689301e-06 2.53599072 4.39246368 -1.6689301e-06 -2.53599 4.39246416
		 -4.7683716e-07 -3.56852794 -8.0794995e-13 1.72541201 -2.53599119 -4.39246368 1.72541201 2.53598928 -4.39246464
		 1.72540951 4.70704556 -7.014051e-07 1.72541201 2.53599072 4.39246368 1.72541201 -2.53599 4.39246416
		 1.72541046 -3.62553215 -4.7581226e-13 3.45082068 -2.98193693 -5.16486406 3.45082116 2.5443573 -4.40695858
		 3.45082426 3.34121156 -4.9787945e-07 3.45082116 2.54435849 4.40695763 3.4508245 -2.98193598 5.16486597
		 3.45082569 -3.35576534 -1.2078342e-13 5.17623425 -2.088297129 -3.61703515 5.1762352 1.5006882 -2.59926963
		 5.17623329 3.07929492 -4.5885051e-07 5.1762352 1.50068915 2.59926915 5.17623425 -2.088296175 3.61703587
		 5.17623234 -2.69269514 1.5911521e-13;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 0
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 0 11 17 1 17 16 0 12 17 0 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 63 ".n[0:62]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spine_2_InfGEOM" -p "spine_2";
	rename -uid "C79BD7DC-4C69-B12F-3714-40A3E37DD30C";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 3.5527136788005001e-15 -1.3456538334667102e-15 ;
	setAttr ".sp" -type "double3" 0 3.5527136788005001e-15 -1.3456538334667102e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "spine_2_InfGEOMShape" -p "spine_2_InfGEOM";
	rename -uid "5DB45042-46BE-B3CB-2773-58894DD7477A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  1.4305115e-06 -3.012603521 -5.21798038 -4.7683716e-07 2.98005795 -5.16161442
		 4.7683716e-07 5.54769945 -8.2667231e-07 -7.1525574e-07 2.98005939 5.16161299 1.1920929e-06 -3.012602568 5.21798182
		 -1.4305115e-06 -3.54153752 -4.405217e-13 1.76559222 -3.1361208 -5.43191862 1.76559377 3.070224524 -5.31778574
		 1.76559281 5.52562952 -8.2338283e-07 1.76559341 3.070226192 5.31778479 1.76559198 -3.13611984 5.43191957
		 1.76559067 -3.74123001 6.3588394e-15 3.44625378 -2.99777222 -5.65327024 3.59513617 3.092739344 -5.41367722
		 3.53117871 5.46956253 -8.1502759e-07 3.59513569 3.092741251 5.41367626 3.44625354 -2.99777126 5.65327215
		 3.53118134 -3.6806252 4.6864487e-13 5.15050745 -2.97117615 -5.682827 5.47444868 2.76792717 -5.57088041
		 5.29683065 5.16060352 -7.6898851e-07 5.4744482 2.76792836 5.57087851 5.15050697 -2.97117472 5.6828289
		 5.29681063 -3.48223686 8.803301e-13;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 56 ".n[0:55]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spine_1_InfGEOM" -p "spine_1";
	rename -uid "668A86E0-45B3-D175-BF7A-B9BD5CB284F6";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.1054273576010003e-15 1.7065582891273598e-08 -1.6226411201129099e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010003e-15 1.7065582891273598e-08 -1.6226411201129099e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "spine_1_InfGEOMShape" -p "spine_1_InfGEOM";
	rename -uid "EB4D83B5-4BB0-DB7F-8A7B-FAA6E644174D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  1.4305115e-06 -2.43218899 -4.21268702 -3.3378601e-06 2.85923529 -4.9523263
		 -2.3841858e-07 5.17866373 -7.7168033e-07 -3.5762787e-06 2.85923648 4.95232534 5.2452087e-06 -2.43218803 4.21268845
		 -1.1920929e-06 -2.94080091 -3.4191229e-13 1.42040849 -2.62694669 -4.5500083 1.42040765 2.88003898 -4.98836994
		 1.4204098 5.31376219 -7.9181206e-07 1.42040753 2.88004017 4.98836899 1.42040849 -2.62694597 4.55000973
		 1.42040861 -2.90461469 -1.4620553e-13 2.84082031 -2.85747027 -4.94927502 2.84081578 2.93749309 -5.087895393
		 2.84081769 5.44088316 -8.1075518e-07 2.84081554 2.93749452 5.08789444 2.84082031 -2.85746884 4.94927645
		 2.84081864 -3.23150229 4.9760733e-14 4.26122475 -3.08059001 -5.33571768 4.26122618 2.95746803 -5.12250471
		 4.26122665 5.53071404 -8.2414152e-07 4.26122236 2.95746946 5.12250376 4.26122475 -3.080588579 5.33571911
		 4.26122618 -3.71913505 3.0410429e-13;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 56 ".n[0:55]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spine_0_InfGEOM" -p "spine_0";
	rename -uid "7E0679B8-4917-6362-373F-B0BB7AB7767A";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 -8.8817841970012504e-16 -2.1625565103266799e-15 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012504e-16 -2.1625565103266799e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "spine_0_InfGEOMShape" -p "spine_0_InfGEOM";
	rename -uid "DAE2701A-4BF6-B194-82E0-A1B1AFCD2A32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -1.1920929e-07 -2.3728807 -4.10994768 4.7683716e-07 3.09906435 -5.36773968
		 0 5.72644758 -8.5330799e-07 5.9604645e-07 3.099065781 5.36773825 0 -2.37287974 4.10994911
		 -1.5497208e-06 -3.24766135 -4.481902e-13 1.31397414 -2.21228433 -3.83178616 1.31397271 3.11413813 -5.39384794
		 1.31397367 5.73050213 -8.539119e-07 1.31397295 3.11413956 5.39384699 1.31397426 -2.21228337 3.83178782
		 1.31397152 -3.12358189 -2.6251175e-13 2.62794399 -2.256073 -3.90763164 2.62794352 3.064223766 -5.30739355
		 2.62794566 5.39725733 -8.0425423e-07 2.62794352 3.064225197 5.3073926 2.62794423 -2.25607252 3.90763307
		 2.62794542 -2.95300698 -8.879981e-14 3.94191694 -2.49722767 -4.32532263 3.94191837 2.91101289 -5.042024612
		 3.94191742 5.26601696 -7.8469759e-07 3.94191837 2.91101408 5.042023659 3.94191694 -2.49722624 4.32532406
		 3.94191861 -2.90945888 6.9974178e-14;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 56 ".n[0:55]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "leg_upper_R" -p "pelvis";
	rename -uid "41706FCE-4771-D97C-9EF9-FF87354BC0E6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.7492828369140625 0.51371240615844815 -4.0714731216430664 ;
	setAttr ".jo" -type "double3" -14.228786985131601 -1.9303725617871901 -2.86596728503913 ;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "leg_lower_R" -p "leg_upper_R";
	rename -uid "29110D38-4E8C-E1A6-A9E3-568604D7A589";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -17.29946513224969 -3.2004582364297818e-06 1.6913708833499186e-07 ;
	setAttr ".jo" -type "double3" -2.7034714792439897e-14 9.1440947092076103e-15 13.8538117020504 ;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ankle_R" -p "leg_lower_R";
	rename -uid "FB8052FD-4223-C1C1-9B85-E58AE67AA458";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 1 -smx 
		1 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 3 -smx 3 -at "short";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -16.970497747561573 2.675761793469178e-06 -2.1034063379943291e-08 ;
	setAttr ".jo" -type "double3" 179.093023182754 0.76110771181394499 -71.042812500427203 ;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr -k on ".projectType" 1;
	setAttr -k on ".typeOf" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ball_R" -p "ankle_R";
	rename -uid "97A241DC-49FC-716F-C168-18805C0D2F95";
	addAttr -is true -ci true -k true -sn "rotX" -ln "rotX" -smn 0 -smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "AimDirection" -ln "AimDirection" -smn 2 -smx 
		2 -at "long";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "aimVector" -ln "aimVector" -at "double3" 
		-nc 3;
	addAttr -is true -ci true -sn "aimVector0" -ln "aimVector0" -at "double" -p "aimVector";
	addAttr -is true -ci true -sn "aimVector1" -ln "aimVector1" -at "double" -p "aimVector";
	addAttr -is true -ci true -sn "aimVector2" -ln "aimVector2" -at "double" -p "aimVector";
	addAttr -is true -ci true -k true -sn "inner" -ln "inner" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "inner0" -ln "inner0" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner1" -ln "inner1" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner2" -ln "inner2" -at "double" -p "inner";
	addAttr -is true -ci true -k true -sn "outer" -ln "outer" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "outer0" -ln "outer0" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer1" -ln "outer1" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer2" -ln "outer2" -at "double" -p "outer";
	addAttr -is true -ci true -k true -sn "poleVector" -ln "poleVector" -at "double3" 
		-nc 3;
	addAttr -is true -ci true -sn "poleVector0" -ln "poleVector0" -at "double" -p "poleVector";
	addAttr -is true -ci true -sn "poleVector1" -ln "poleVector1" -at "double" -p "poleVector";
	addAttr -is true -ci true -sn "poleVector2" -ln "poleVector2" -at "double" -p "poleVector";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -6.1188870339056809 -5.3334652250214276e-09 2.2658919629492402e-07 ;
	setAttr ".jo" -type "double3" -0.0054890023708509799 0.27679492828696001 28.430042329402699 ;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr -k on ".AimDirection" 2;
	setAttr -k on ".aimVector" -type "double3" -5.84006643295288 0.96439236402511597 
		2.1708996295928999 ;
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVector0";
	setAttr -k on ".aimVector1";
	setAttr -k on ".aimVector2";
	setAttr -k on ".inner" -type "double3" -4.3157925605773899 0.96439242362976096 2.5536458492279102 ;
	setAttr -k on ".inner";
	setAttr -k on ".inner0";
	setAttr -k on ".inner1";
	setAttr -k on ".inner2";
	setAttr -k on ".outer" -type "double3" -7.36434030532837 0.96439236402511597 1.78815317153931 ;
	setAttr -k on ".outer";
	setAttr -k on ".outer0";
	setAttr -k on ".outer1";
	setAttr -k on ".outer2";
	setAttr -k on ".poleVector" -type "double3" -8.1807527542114293 20.469728469848601 
		12.537561416626 ;
	setAttr -k on ".poleVector";
	setAttr -k on ".poleVector0";
	setAttr -k on ".poleVector1";
	setAttr -k on ".poleVector2";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ball_end_R" -p "ball_R";
	rename -uid "EE8F1E57-4DC3-6D57-662A-02950D847399";
	addAttr -is true -ci true -k true -sn "ball" -ln "ball" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "ball0" -ln "ball0" -at "double" -p "ball";
	addAttr -is true -ci true -sn "ball1" -ln "ball1" -at "double" -p "ball";
	addAttr -is true -ci true -sn "ball2" -ln "ball2" -at "double" -p "ball";
	addAttr -is true -ci true -k true -sn "heel" -ln "heel" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "heel0" -ln "heel0" -at "double" -p "heel";
	addAttr -is true -ci true -sn "heel1" -ln "heel1" -at "double" -p "heel";
	addAttr -is true -ci true -sn "heel2" -ln "heel2" -at "double" -p "heel";
	addAttr -is true -ci true -k true -sn "toe" -ln "toe" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "toe0" -ln "toe0" -at "double" -p "toe";
	addAttr -is true -ci true -sn "toe1" -ln "toe1" -at "double" -p "toe";
	addAttr -is true -ci true -sn "toe2" -ln "toe2" -at "double" -p "toe";
	addAttr -is true -ci true -k true -sn "inner" -ln "inner" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "inner0" -ln "inner0" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner1" -ln "inner1" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner2" -ln "inner2" -at "double" -p "inner";
	addAttr -is true -ci true -k true -sn "outer" -ln "outer" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "outer0" -ln "outer0" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer1" -ln "outer1" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer2" -ln "outer2" -at "double" -p "outer";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -3.3375022411346436 4.2188474935755949e-15 5.3290705182007514e-15 ;
	setAttr ".jo" -type "double3" -4.0154502853476901e-14 3.3395824155366902e-14 -1.0336802714756399e-14 ;
	setAttr -k on ".ball" -type "double3" -5.5071587562561 1.7398595809936499 0.84510600566864003 ;
	setAttr -k on ".ball";
	setAttr -k on ".ball0";
	setAttr -k on ".ball1";
	setAttr -k on ".ball2";
	setAttr -k on ".heel" -type "double3" -3.30540823936462 1.8651746813702601e-14 -6.8371772766113299 ;
	setAttr -k on ".heel";
	setAttr -k on ".heel0";
	setAttr -k on ".heel1";
	setAttr -k on ".heel2";
	setAttr -k on ".toe" -type "double3" -6.2080030441284197 1.8873791418627699e-14 
		4.2469615936279297 ;
	setAttr -k on ".toe";
	setAttr -k on ".toe0";
	setAttr -k on ".toe1";
	setAttr -k on ".toe2";
	setAttr -k on ".inner" -type "double3" -3.1966085433960001 1.8873791418627699e-14 
		1.04807829856873 ;
	setAttr -k on ".inner";
	setAttr -k on ".inner0";
	setAttr -k on ".inner1";
	setAttr -k on ".inner2";
	setAttr -k on ".outer" -type "double3" -7.67983198165894 1.8873791418627699e-14 
		-0.89946043491363503 ;
	setAttr -k on ".outer";
	setAttr -k on ".outer0";
	setAttr -k on ".outer1";
	setAttr -k on ".outer2";
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "ball_R_InfGEOM" -p "ball_R";
	rename -uid "AFC11D1E-4F08-467A-48BD-9480B9E827C9";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -7.58945510881404e-08 2.0200271011461301e-08 -1.5422774168882799e-10 ;
	setAttr ".sp" -type "double3" -7.58945510881404e-08 2.0200271011461301e-08 -1.5422685351040901e-10 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "ball_R_InfGEOMShape" -p "ball_R_InfGEOM";
	rename -uid "F2D2DB69-41BB-DD0B-A90C-53AB895BF33F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -0.0069545507 0.67461896 1.85897863 0.079498887 -0.23833859 1.54217148
		 -1.1920929e-07 -0.64785504 -2.9951335e-07 -0.015342593 -0.32423198 -1.79909265 -0.010167241 0.83663934 -1.85897839
		 -0.0069540739 0.99854624 1.7881393e-07 -1.1194551 0.67461902 1.70941782 -1.034099817 -0.21585429 1.56291628
		 -1.11250091 -0.54419327 0.031199811 -1.15082455 -0.37565219 -1.76147592 -1.12266827 0.83663934 -1.64702523
		 -1.1194551 0.99854612 0.031200409 -2.23381758 0.46382743 1.2953757 -2.22388411 -0.06946671 1.22852862
		 -2.20062876 -0.21416388 -0.18076181 -2.2050457 -0.24277782 -1.63667881 -2.30989552 0.63967156 -1.39899266
		 -1.93600333 0.70972025 -0.069275379 -2.95260429 -0.061520226 -0.32665795 -2.95260382 -0.07152009 -0.32665819
		 -2.95260429 -0.076520197 -0.33531857 -2.95260382 -0.071520083 -0.3439787 -2.95260429 -0.061520223 -0.34397846
		 -2.95260382 -0.056520231 -0.33531809;
	setAttr -s 42 ".ed[0:41]"  0 6 0 6 7 1 7 1 0 1 0 0 7 8 1 8 2 1 2 1 0
		 8 9 1 9 3 0 3 2 0 9 10 1 10 4 0 4 3 0 10 11 1 11 5 1 5 4 0 11 6 1 0 5 0 6 12 0 12 13 0
		 13 7 0 13 14 1 14 8 1 14 15 1 15 9 0 15 16 0 16 10 0 16 17 1 17 11 1 17 12 1 12 18 0
		 18 19 1 19 13 0 19 20 0 20 14 1 20 21 0 21 15 0 21 22 0 22 16 0 22 23 0 23 17 1 23 18 0;
	setAttr -s 54 ".n[0:53]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 13 14 7
		f 4 -3 4 5 6
		mu 0 4 7 14 15 8
		f 4 -6 7 8 9
		mu 0 4 8 15 16 9
		f 4 -9 10 11 12
		mu 0 4 9 16 17 10
		f 4 -12 13 14 15
		mu 0 4 10 17 18 11
		f 4 -15 16 -1 17
		mu 0 4 11 18 19 12
		f 4 18 19 20 -2
		mu 0 4 13 20 21 14
		f 4 -21 21 22 -5
		mu 0 4 14 21 22 15
		f 4 -23 23 24 -8
		mu 0 4 15 22 23 16
		f 4 -25 25 26 -11
		mu 0 4 16 23 24 17
		f 4 -27 27 28 -14
		mu 0 4 17 24 25 18
		f 4 -29 29 -19 -17
		mu 0 4 18 25 26 19
		f 4 30 31 32 -20
		mu 0 4 20 27 28 21
		f 4 -33 33 34 -22
		mu 0 4 21 28 29 22
		f 4 -35 35 36 -24
		mu 0 4 22 29 30 23
		f 4 -37 37 38 -26
		mu 0 4 23 30 31 24
		f 4 -39 39 40 -28
		mu 0 4 24 31 32 25
		f 4 -41 41 -31 -30
		mu 0 4 25 32 33 26
		f 6 -4 -7 -10 -13 -16 -18
		mu 0 6 0 1 2 3 4 5
		f 6 -42 -40 -38 -36 -34 -32
		mu 0 6 38 39 34 35 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ankle_R_InfGEOM" -p "ankle_R";
	rename -uid "A0FB96BB-4B32-B99B-7948-CDBDC23CA059";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -3.7730169211158702e-08 -1.5828150790042601e-08 2.1048940368473299e-10 ;
	setAttr ".sp" -type "double3" -3.7730169211158702e-08 -1.5828150790042601e-08 2.1048940368473299e-10 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "ankle_R_InfGEOMShape" -p "ankle_R_InfGEOM";
	rename -uid "84B00621-4E4F-2F01-FC4D-E3A8A46623D6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  0.85801268 2.95886755 1.14220202 1.21902084 0.83047998 0.94360119
		 1.34873724 0.74067044 0.20993757 1.50685978 0.67638385 -0.84927374 0.94329739 3.098474741 -1.14943755
		 0.47028399 3.78533268 -0.081773758 -2.78565693 1.98561323 1.16143668 -2.12041759 -0.29576004 0.75893289
		 -2.12041736 -1.028450251 4.7534704e-07 -2.12041807 -0.48819029 -1.092230797 -2.78565693 2.077683926 -1.32090867
		 -2.78565693 2.92617059 4.7683716e-07 -4.36534166 1.28947425 1.35997331 -4.079257965 -0.31278837 0.54176527
		 -4.079257965 -0.65181041 4.1574239e-07 -4.079257965 -0.51349604 -0.88940042 -4.36534166 1.41997063 -1.58600116
		 -4.36534119 2.11540627 -1.1920929e-07 -6.51248169 0.58227193 1.28163731 -6.11888695 -0.51912344 0.89914829
		 -6.11888695 -0.84495115 1.1771917e-07 -6.11888695 -0.71329701 -1.23546541 -6.51248169 0.58227134 -1.50889289
		 -6.51248169 1.048981428 -0.11362767;
	setAttr -s 42 ".ed[0:41]"  0 6 0 6 7 1 7 1 0 1 0 0 7 8 1 8 2 0 2 1 0
		 8 9 1 9 3 0 3 2 0 9 10 1 10 4 0 4 3 0 10 11 1 11 5 0 5 4 0 11 6 1 0 5 0 6 12 0 12 13 1
		 13 7 0 13 14 1 14 8 0 14 15 1 15 9 0 15 16 1 16 10 0 16 17 1 17 11 0 17 12 1 12 18 0
		 18 19 0 19 13 0 19 20 0 20 14 0 20 21 0 21 15 0 21 22 0 22 16 0 22 23 0 23 17 0 23 18 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 13 14 7
		f 4 -3 4 5 6
		mu 0 4 7 14 15 8
		f 4 -6 7 8 9
		mu 0 4 8 15 16 9
		f 4 -9 10 11 12
		mu 0 4 9 16 17 10
		f 4 -12 13 14 15
		mu 0 4 10 17 18 11
		f 4 -15 16 -1 17
		mu 0 4 11 18 19 12
		f 4 18 19 20 -2
		mu 0 4 13 20 21 14
		f 4 -21 21 22 -5
		mu 0 4 14 21 22 15
		f 4 -23 23 24 -8
		mu 0 4 15 22 23 16
		f 4 -25 25 26 -11
		mu 0 4 16 23 24 17
		f 4 -27 27 28 -14
		mu 0 4 17 24 25 18
		f 4 -29 29 -19 -17
		mu 0 4 18 25 26 19
		f 4 30 31 32 -20
		mu 0 4 20 27 28 21
		f 4 -33 33 34 -22
		mu 0 4 21 28 29 22
		f 4 -35 35 36 -24
		mu 0 4 22 29 30 23
		f 4 -37 37 38 -26
		mu 0 4 23 30 31 24
		f 4 -39 39 40 -28
		mu 0 4 24 31 32 25
		f 4 -41 41 -31 -30
		mu 0 4 25 32 33 26
		f 6 -4 -7 -10 -13 -16 -18
		mu 0 6 0 1 2 3 4 5
		f 6 -42 -40 -38 -36 -34 -32
		mu 0 6 38 39 34 35 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leg_lower_R_InfGEOM" -p "leg_lower_R";
	rename -uid "F34CA776-4656-26CE-93BC-CEAFA635F04D";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 3.5527136788005001e-15 4.4408920985006301e-15 7.8152936566766598e-08 ;
	setAttr ".sp" -type "double3" 3.5527136788005001e-15 4.4408920985006301e-15 7.8152936566766598e-08 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "leg_lower_R_InfGEOMShape" -p "leg_lower_R_InfGEOM";
	rename -uid "51E4DE79-494B-59CB-2464-EAAED41FFEB7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  0 -0.94312865 1.63356066 9.5367432e-07 0.81826854 1.41729641
		 0 2.1924727 1.7354207e-05 -9.5367432e-07 0.84893185 -1.47037911 9.5367432e-07 -0.9431411 -1.63355315
		 -9.5367432e-07 -1.88626909 1.4849045e-05 -5.90189838 -2.18786693 1.80097353 -5.65683365 0.4748939 0.82254118
		 -5.6568327 1.40289223 3.9437318e-06 -5.65683365 0.93801081 -1.62467539 -5.30272961 -2.77754784 -2.090910196
		 -5.30272961 -3.72067976 -0.45734906 -11.31366539 -0.72477651 1.25534856 -11.31366634 0.47058934 0.81507993
		 -11.31366539 1.0099149942 -1.9733122e-06 -11.31366634 0.64223355 -1.11238074 -11.31366634 -0.99215287 -1.71846831
		 -11.3136673 -2.2974956 -5.6955701e-06 -16.97060966 -0.64371502 1.11494172 -16.97064209 0.82975835 1.43716681
		 -16.97066116 1.88627183 -1.43094e-05 -16.9706192 0.69397938 -1.20201302 -16.9705925 -0.55035764 -0.95326078
		 -16.97064972 -1.73539698 -1.3332316e-05;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 1 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 0 5 0 0 6 11 1 7 13 1 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 59 ".n[0:58]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leg_upper_R_InfGEOM" -p "leg_upper_R";
	rename -uid "8875A05C-4463-50E5-B211-A3B6D91D88CC";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 7.1054273576010003e-15 -2.2204460492503099e-15 7.1054273576010003e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010003e-15 -2.2204460492503099e-15 7.1054273576010003e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "leg_upper_R_InfGEOMShape" -p "leg_upper_R_InfGEOM";
	rename -uid "13AF9F4B-4293-859F-D2C8-F0AAEA0FBB1C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -2.77689981 -1.79131484 2.81195879 -2.81261301 2.079016447 2.55376482
		 9.5367432e-07 3.34548497 3.1926029e-07 -1.9073486e-06 1.27291763 -2.20475769 2.8610229e-06 -1.18681133 -2.055618286
		 -2.95643663 -3.50261164 0.060187496 -5.76648712 -1.81408465 3.14208293 -5.76648808 1.65405869 2.8649168
		 -5.76648712 3.62478352 4.0456308e-07 -5.76648712 1.4363544 -2.4878397 -5.76648617 -1.42733121 -2.4722085
		 -5.76649094 -3.47665858 1.178138e-07 -11.5329771 -1.37362742 2.37918735 -11.53297806 1.51666796 2.62695026
		 -11.5329771 2.89760017 5.0363417e-07 -11.53297806 1.27852905 -2.21447992 -11.53297615 -1.4537549 -2.51797366
		 -11.5329771 -3.45132613 4.1374854e-08 -17.29956055 -1.21550679 2.10531306 -17.29953003 0.83144909 1.44011796
		 -17.29955292 2.23415112 3.1277253e-07 -17.29953194 0.85202736 -1.47575939 -17.29955864 -1.22006774 -2.11321402
		 -17.29958344 -3.092958212 -1.5965141e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "leg_upper_L" -p "pelvis";
	rename -uid "B0B66381-4534-8786-F7CF-EFBE70930B37";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.7492828369140625 0.51371240615844638 4.0714731216430664 ;
	setAttr ".jo" -type "double3" -14.228786985131601 -1.9303725617872998 177.13403271496099 ;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "leg_lower_L" -p "leg_upper_L";
	rename -uid "9D6C6601-4B2A-B00A-4DC0-40959C2A45A2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 17.299465138206742 3.0850999017673075e-06 -1.9859606759098369e-07 ;
	setAttr ".jo" -type "double3" 1.27222187258541e-14 6.7189217645916795e-14 13.853811702050301 ;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ankle_L" -p "leg_lower_L";
	rename -uid "3BF2D930-4224-5636-CA1C-7586BF53ABC6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 1 -smx 
		1 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 3 -smx 3 -at "short";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 16.970497769399834 -2.5623328920865163e-06 5.0492979575267327e-08 ;
	setAttr ".jo" -type "double3" 179.093023182753 0.76110771181390702 -71.042812500427004 ;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr -k on ".projectType" 1;
	setAttr -k on ".typeOf" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ball_L" -p "ankle_L";
	rename -uid "F415E59B-44BE-20CC-A3F8-478D9009C9AF";
	addAttr -is true -ci true -k true -sn "rotX" -ln "rotX" -smn 0 -smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "AimDirection" -ln "AimDirection" -smn 2 -smx 
		2 -at "long";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "aimVector" -ln "aimVector" -at "double3" 
		-nc 3;
	addAttr -is true -ci true -sn "aimVector0" -ln "aimVector0" -at "double" -p "aimVector";
	addAttr -is true -ci true -sn "aimVector1" -ln "aimVector1" -at "double" -p "aimVector";
	addAttr -is true -ci true -sn "aimVector2" -ln "aimVector2" -at "double" -p "aimVector";
	addAttr -is true -ci true -k true -sn "inner" -ln "inner" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "inner0" -ln "inner0" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner1" -ln "inner1" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner2" -ln "inner2" -at "double" -p "inner";
	addAttr -is true -ci true -k true -sn "outer" -ln "outer" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "outer0" -ln "outer0" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer1" -ln "outer1" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer2" -ln "outer2" -at "double" -p "outer";
	addAttr -is true -ci true -k true -sn "poleVector" -ln "poleVector" -at "double3" 
		-nc 3;
	addAttr -is true -ci true -sn "poleVector0" -ln "poleVector0" -at "double" -p "poleVector";
	addAttr -is true -ci true -sn "poleVector1" -ln "poleVector1" -at "double" -p "poleVector";
	addAttr -is true -ci true -sn "poleVector2" -ln "poleVector2" -at "double" -p "poleVector";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 6.1188871430091982 -6.9828169024788167e-08 -2.1207305245241059e-07 ;
	setAttr ".jo" -type "double3" -0.00548900237695071 0.27679492828679902 28.430042329402802 ;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr -k on ".AimDirection" 2;
	setAttr -k on ".aimVector" -type "double3" 5.84006643295288 0.96439236402511597 
		2.1708996295928999 ;
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVector0";
	setAttr -k on ".aimVector1";
	setAttr -k on ".aimVector2";
	setAttr -k on ".inner" -type "double3" 4.3157925605773899 0.964391648769379 2.5536456108093302 ;
	setAttr -k on ".inner";
	setAttr -k on ".inner0";
	setAttr -k on ".inner1";
	setAttr -k on ".inner2";
	setAttr -k on ".outer" -type "double3" 7.36434030532837 0.96439307928085305 1.78815352916718 ;
	setAttr -k on ".outer";
	setAttr -k on ".outer0";
	setAttr -k on ".outer1";
	setAttr -k on ".outer2";
	setAttr -k on ".poleVector" -type "double3" 8.1807527542114293 20.469728469848601 
		12.537561416626 ;
	setAttr -k on ".poleVector";
	setAttr -k on ".poleVector0";
	setAttr -k on ".poleVector1";
	setAttr -k on ".poleVector2";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "ball_end_L" -p "ball_L";
	rename -uid "5663811B-4635-FBD2-63A3-DDB2FCF04C99";
	addAttr -is true -ci true -k true -sn "ball" -ln "ball" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "ball0" -ln "ball0" -at "double" -p "ball";
	addAttr -is true -ci true -sn "ball1" -ln "ball1" -at "double" -p "ball";
	addAttr -is true -ci true -sn "ball2" -ln "ball2" -at "double" -p "ball";
	addAttr -is true -ci true -k true -sn "heel" -ln "heel" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "heel0" -ln "heel0" -at "double" -p "heel";
	addAttr -is true -ci true -sn "heel1" -ln "heel1" -at "double" -p "heel";
	addAttr -is true -ci true -sn "heel2" -ln "heel2" -at "double" -p "heel";
	addAttr -is true -ci true -k true -sn "toe" -ln "toe" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "toe0" -ln "toe0" -at "double" -p "toe";
	addAttr -is true -ci true -sn "toe1" -ln "toe1" -at "double" -p "toe";
	addAttr -is true -ci true -sn "toe2" -ln "toe2" -at "double" -p "toe";
	addAttr -is true -ci true -k true -sn "inner" -ln "inner" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "inner0" -ln "inner0" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner1" -ln "inner1" -at "double" -p "inner";
	addAttr -is true -ci true -sn "inner2" -ln "inner2" -at "double" -p "inner";
	addAttr -is true -ci true -k true -sn "outer" -ln "outer" -at "double3" -nc 3;
	addAttr -is true -ci true -sn "outer0" -ln "outer0" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer1" -ln "outer1" -at "double" -p "outer";
	addAttr -is true -ci true -sn "outer2" -ln "outer2" -at "double" -p "outer";
	addAttr -is true -ci true -k true -sn "projectType" -ln "projectType" -smn 0 -smx 
		0 -at "short";
	addAttr -is true -ci true -k true -sn "typeOf" -ln "typeOf" -smn 1 -smx 1 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 3.3375022411346436 2.6645352591003757e-15 -2.6645352591003757e-15 ;
	setAttr ".jo" -type "double3" 1.49088500693602e-15 5.2479152244148003e-14 1.9480897423964e-14 ;
	setAttr -k on ".ball" -type "double3" 5.5071587562561 1.7398595809936499 0.84510600566864003 ;
	setAttr -k on ".ball";
	setAttr -k on ".ball0";
	setAttr -k on ".ball1";
	setAttr -k on ".ball2";
	setAttr -k on ".heel" -type "double3" 3.30540823936462 2.44249065417534e-14 -6.8371772766113299 ;
	setAttr -k on ".heel";
	setAttr -k on ".heel0";
	setAttr -k on ".heel1";
	setAttr -k on ".heel2";
	setAttr -k on ".toe" -type "double3" 6.2080030441284197 2.46469511466785e-14 4.2469615936279297 ;
	setAttr -k on ".toe";
	setAttr -k on ".toe0";
	setAttr -k on ".toe1";
	setAttr -k on ".toe2";
	setAttr -k on ".inner" -type "double3" 3.1966085433960001 2.46469511466785e-14 1.04807829856873 ;
	setAttr -k on ".inner";
	setAttr -k on ".inner0";
	setAttr -k on ".inner1";
	setAttr -k on ".inner2";
	setAttr -k on ".outer" -type "double3" 7.67983198165894 2.46469511466785e-14 -0.89946043491363503 ;
	setAttr -k on ".outer";
	setAttr -k on ".outer0";
	setAttr -k on ".outer1";
	setAttr -k on ".outer2";
	setAttr -k on ".typeOf" 1;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "ball_L_InfGEOM" -p "ball_L";
	rename -uid "C1B133E1-45C6-2A71-863F-B4B1C2A66228";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.7763568394002501e-15 1.1102230246251601e-15 8.8817841970012504e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002501e-15 1.1102230246251601e-15 8.8817841970012504e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "ball_L_InfGEOMShape" -p "ball_L_InfGEOM";
	rename -uid "86DC8DC2-4201-6BF3-B7B7-DDA4A424606B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  0.0069543123 -0.6746189 -1.85897827 -0.079498649 0.23833866 -1.54217112
		 0 0.64785498 1.0456035e-07 0.015342474 0.32423177 1.79909241 0.010167241 -0.83663923 1.85897839
		 0.0069543123 -0.99854612 -2.0604976e-07 1.1194551 -0.6746189 -1.70941746 1.034099817 0.2158543 -1.5629164
		 1.11250091 0.54419327 -0.031200057 1.15082407 0.3756519 1.76147521 1.12266803 -0.83663923 1.64702499
		 1.1194551 -0.99854612 -0.031199917 2.23381758 -0.46382737 -1.29537535 2.22388411 0.069466755 -1.2285285
		 2.20062852 0.21416405 0.18076175 2.20504522 0.24277784 1.63667822 2.30989552 -0.63967144 1.39899242
		 1.93600321 -0.70972013 0.069275111 2.95260429 0.061520163 0.32665801 2.95260429 0.071520157 0.32665801
		 2.95260429 0.07652016 0.33531827 2.95260429 0.071520165 0.34397852 2.95260429 0.061520167 0.34397852
		 2.95260429 0.056520168 0.33531827;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 1 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 0
		 12 6 0 8 14 1 14 13 1 9 15 0 15 14 1 10 16 0 16 15 0 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 1 18 12 0 14 20 1 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 54 ".n[0:53]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ankle_L_InfGEOM" -p "ankle_L";
	rename -uid "F6BEC3B6-408C-8AE4-AF7F-1C9E9B4387E0";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 8.8817841970012504e-16 -2.5399851111274099e-09 -6.2172489379008798e-15 ;
	setAttr ".sp" -type "double3" 8.8817841970012504e-16 -2.5399851111274099e-09 -6.2172489379008798e-15 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "ankle_L_InfGEOMShape" -p "ankle_L_InfGEOM";
	rename -uid "23EE6598-463F-60F9-6DA3-108F6831B374";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -0.8580122 -2.95886755 -1.14220142 -1.21902084 -0.83048034 -0.94360101
		 -1.34873724 -0.74067104 -0.20993747 -1.50685978 -0.67638385 0.84927344 -0.94329786 -3.098474979 1.14943719
		 -0.47028399 -3.78533292 0.081773795 2.78565717 -1.98561323 -1.16143644 2.12041759 0.29575971 -0.75893271
		 2.12041759 1.028449774 -4.1182929e-07 2.12041807 0.48818991 1.092230558 2.78565693 -2.077684164 1.32090843
		 2.78565693 -2.92617059 -3.1390312e-07 4.36534166 -1.28947425 -1.35997343 4.079257965 0.31278804 -0.54176521
		 4.079257965 0.65181041 -4.3031937e-07 4.079257965 0.51349574 0.88940042 4.36534166 -1.41997075 1.58600104
		 4.36534119 -2.11540627 -6.6748314e-08 6.51248169 -0.58227181 -1.28163755 6.11888695 0.5191232 -0.89914781
		 6.11888695 0.84495121 -1.2036824e-07 6.11888695 0.71329689 1.23546541 6.51248169 -0.5822714 1.50889289
		 6.51248169 -1.048981309 0.11362719;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leg_lower_L_InfGEOM" -p "leg_lower_L";
	rename -uid "D7A1936D-4EC2-47FC-C819-3D9DCC4F1C4D";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 1.0658141036401501e-14 1.33226762955019e-15 -7.8152959659405496e-08 ;
	setAttr ".sp" -type "double3" 1.0658141036401501e-14 1.33226762955019e-15 -7.8152959659405496e-08 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "leg_lower_L_InfGEOMShape" -p "leg_lower_L_InfGEOM";
	rename -uid "D5DDEBCB-45B1-349E-D5CC-57A00C513083";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -9.5367432e-07 -0.81826907 -1.41729593 0 0.94312799 -1.6335609
		 9.5367432e-07 1.88626909 -1.5093381e-05 -9.5367432e-07 0.94314134 1.63355291 9.5367432e-07 -0.84893161 1.47037911
		 0 -2.1924727 -1.7354205e-05 5.65683365 -0.47489411 -0.8225407 5.90189838 2.18786597 -1.80097318
		 5.30272961 3.72067976 0.45734879 5.30272961 2.77754807 2.090909719 5.6568327 -0.93801051 1.62467575
		 5.6568327 -1.40289235 -3.4965149e-06 11.3136673 -0.47059 -0.81507981 11.3136673 0.72477591 -1.25534856
		 11.31366634 2.29749584 5.4839761e-06 11.3136673 0.99215329 1.71846783 11.31366634 -0.64223343 1.1123811
		 11.31366539 -1.0099149942 2.9561229e-06 16.97064209 -0.82975912 -1.43716669 16.97060966 0.64371461 -1.11494172
		 16.97064972 1.73539698 1.3091652e-05 16.97059441 0.5503583 0.95326042 16.9706192 -0.69397914 1.2020129
		 16.97066116 -1.88627231 1.446521e-05;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 1 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 0 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 1 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 59 ".n[0:58]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leg_upper_L_InfGEOM" -p "leg_upper_L";
	rename -uid "A2683593-4FE1-9466-D81E-B39F738B9A20";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -1.4210854715202001e-14 2.8865798640254102e-15 -5.5884585847820703e-09 ;
	setAttr ".sp" -type "double3" -1.4210854715202001e-14 2.8865798640254102e-15 -5.5884585847820703e-09 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "leg_upper_L_InfGEOMShape" -p "leg_upper_L_InfGEOM";
	rename -uid "0AEA3F3C-48E8-62EB-4B04-B496F13C8E5D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  2.81261301 -2.079016924 -2.55376482 2.77689981 1.79131293 -2.81195998
		 2.95643663 3.50261188 -0.060189951 -2.8610229e-06 1.18681228 2.055618048 1.9073486e-06 -1.27291799 2.20475698
		 2.8610229e-06 -3.34548497 -1.929913e-06 5.76648855 -1.65405965 -2.86491609 5.76648712 1.81408286 -3.14208364
		 5.76649094 3.47665906 -1.2726798e-06 5.76648617 1.42733169 2.4722085 5.76648664 -1.43635404 2.48783946
		 5.76648712 -3.62478352 -4.0456305e-07 11.53297615 -1.51666939 -2.62694955 11.53297806 1.37362647 -2.37918758
		 11.5329771 3.45132613 1.8959832e-07 11.53297615 1.4537549 2.51797366 11.53297806 -1.27852845 2.21448016
		 11.5329771 -2.89760017 5.0863542e-07 17.29953003 -0.83145022 -1.44011724 17.29956055 1.21550667 -2.10531306
		 17.29958344 3.09295845 1.4323531e-06 17.29955864 1.2200675 2.11321378 17.29953194 -0.85202658 1.47575963
		 17.29955292 -2.2341516 1.087796e-06;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 0 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 0 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pelvis_InfGEOM" -p "pelvis";
	rename -uid "BD0B0982-4C09-B8EF-F31A-65BBC446C186";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -5.98603172437819 4.4408920985006301e-16 4.8893105860924103e-16 ;
	setAttr ".sp" -type "double3" -5.98603172437819 4.4408920985006301e-16 4.8893105860924103e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "pelvis_InfGEOMShape" -p "pelvis_InfGEOM";
	rename -uid "C1ACA55E-472B-F30F-E85F-E790F452A636";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.43781328 0.41666666 0.43781328
		 0.45833331 0.43781328 0.49999997 0.43781328 0.54166663 0.43781328 0.58333331 0.43781328
		 0.625 0.43781328 0.375 0.56312656 0.41666666 0.56312656 0.45833331 0.56312656 0.49999997
		 0.56312656 0.54166663 0.56312656 0.58333331 0.56312656 0.625 0.56312656 0.375 0.68843985
		 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985
		 0.58333331 0.68843985 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 24 ".vt[0:23]"  -6.28037214 -2.55046082 -4.59739923 -4.99909306 1.93350077 -4.33217382
		 -6.55288792 4.32049847 -8.9679213e-07 -4.99909306 1.9335022 4.33217287 -6.28037691 -2.55045986 4.59740019
		 -6.010905266 -2.94842649 7.2559381e-08 -3.60362673 -2.67726183 -4.91697598 -3.79779887 2.64592957 -4.59169865
		 -3.87057495 4.57151508 -7.976094e-07 -3.79779911 2.64593101 4.59169817 -3.60362625 -2.67726016 4.91697645
		 -3.59460068 -3.82413435 2.9156868e-07 -1.3251493 -2.48584938 -4.70971823 -1.53264618 3.24073219 -5.51952314
		 -1.60309649 5.095941544 -8.3350204e-07 -1.53264666 3.24073362 5.51952171 -1.32514954 -2.48584843 4.70971918
		 -1.28946686 -3.56627345 3.3470621e-07 1.34768653 -1.61522329 -4.63686752 1.1774826 3.79080963 -4.93343115
		 1.05806303 6.041079998 -8.1078821e-07 1.1774826 3.79081059 4.93343019 1.34768271 -1.61522281 4.636868
		 1.28855538 -2.99967313 3.3397612e-07;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 7 0 7 6 1 6 0 0 1 2 0 2 8 0 8 7 1
		 2 3 0 3 9 0 9 8 1 3 4 0 4 10 0 10 9 1 4 5 0 5 11 1 11 10 1 5 0 0 6 11 1 7 13 0 13 12 1
		 12 6 0 8 14 0 14 13 1 9 15 0 15 14 1 10 16 0 16 15 1 11 17 1 17 16 1 12 17 1 13 19 0
		 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 1 23 22 0 18 23 0;
	setAttr -s 56 ".n[0:55]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 6 7 14 13
		f 4 4 5 6 -2
		mu 0 4 7 8 15 14
		f 4 7 8 9 -6
		mu 0 4 8 9 16 15
		f 4 10 11 12 -9
		mu 0 4 9 10 17 16
		f 4 13 14 15 -12
		mu 0 4 10 11 18 17
		f 4 16 -4 17 -15
		mu 0 4 11 12 19 18
		f 4 -3 18 19 20
		mu 0 4 13 14 21 20
		f 4 -7 21 22 -19
		mu 0 4 14 15 22 21
		f 4 -10 23 24 -22
		mu 0 4 15 16 23 22
		f 4 -13 25 26 -24
		mu 0 4 16 17 24 23
		f 4 -16 27 28 -26
		mu 0 4 17 18 25 24
		f 4 -18 -21 29 -28
		mu 0 4 18 19 26 25
		f 4 -20 30 31 32
		mu 0 4 20 21 28 27
		f 4 -23 33 34 -31
		mu 0 4 21 22 29 28
		f 4 -25 35 36 -34
		mu 0 4 22 23 30 29
		f 4 -27 37 38 -36
		mu 0 4 23 24 31 30
		f 4 -29 39 40 -38
		mu 0 4 24 25 32 31
		f 4 -30 -33 41 -40
		mu 0 4 25 26 33 32
		f 6 -17 -14 -11 -8 -5 -1
		mu 0 6 0 5 4 3 2 1
		f 6 -32 -35 -37 -39 -41 -42
		mu 0 6 38 37 36 35 34 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "root_motion" -p "__GEN_MAN__";
	rename -uid "2D9689F9-43E0-E6D1-26F5-1AAE146C2A62";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.1554436208840472e-30 7.1720580763212638e-07 8.3153999241858401e-08 ;
	setAttr ".jo" -type "double3" 1.2722218725854067e-14 -1.2722218725854067e-14 0 ;
	setAttr ".ssc" no;
	setAttr ".sd" 2;
	setAttr ".radi" 0.500000000000001;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hand_L_IK_target" -p "root_motion";
	rename -uid "FD72DE1A-4F81-CEBF-F7E1-38AAC4081EA5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 21.416112899780273 41.467262268066406 -1.0566186904907227 ;
	setAttr ".s" -type "double3" 1.0000001150215401 1.00000000189995 1.00000007877066 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hand_R_IK_target" -p "root_motion";
	rename -uid "441BEABE-4B6B-F5D2-7BDA-78A1BAAC77CE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -21.416112899780273 41.467262268066406 -1.0566189289093018 ;
	setAttr ".s" -type "double3" 1.0000001157335301 0.99999999801482897 1.00000007411993 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "foot_L_IK_target" -p "root_motion";
	rename -uid "96962FE4-4CD5-EDD1-E9FC-2B8DE25A0729";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 4.211005687713623 4.7590851783752441 -4.3167767524719238 ;
	setAttr ".s" -type "double3" 0.99999995580856904 0.99999996326948304 1.0000000953357999 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "foot_R_IK_target" -p "root_motion";
	rename -uid "470ED63B-4535-9AB6-06BF-F6BDA586DA9A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -4.211005687713623 4.7590851783752441 -4.3167767524719238 ;
	setAttr ".s" -type "double3" 0.99999994949559701 0.99999997423230302 1.0000000878644 ;
	setAttr -k on ".filmboxTypeID" 5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A9AF7864-4EBA-9C5C-4B6D-5DB5F68A38A1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "42219A75-4E33-81B6-274D-A0B231E59DE6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3293E22B-45E1-5838-5876-DFA5E1632C25";
createNode displayLayerManager -n "layerManager";
	rename -uid "78DF147D-4C69-7289-B56D-F3B2DEB5CC3B";
	setAttr ".cdl" 1;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "BA1DD4AE-41F8-83FA-FA9A-D49BB2F09A35";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1AF2B779-426B-2E4B-520E-7080C79D88A7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FDA30949-4E03-5403-49B4-F090651E2B98";
	setAttr ".g" yes;
createNode phong -n "gray_50";
	rename -uid "22963257-46CE-0888-DEA4-74B076C1364B";
	addAttr -is true -ci true -k true -sn "FBX_vmatPath" -ln "FBX_vmatPath" -dt "string";
	setAttr ".cp" 6.311790943145752;
	setAttr -k on ".FBX_vmatPath" -type "string" "materials/dev/gray_50.vmat";
createNode shadingEngine -n "finger_index_2_L_InfGEOMSG";
	rename -uid "7528F8B0-4047-21B9-6253-1F932E4AE656";
	setAttr ".ihi" 0;
	setAttr -s 61 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "EFC517C1-4678-4E7E-185F-8299E7C98561";
createNode file -n "gray_50File";
	rename -uid "C1BB5A59-430E-F485-44C8-76AAEF1F55F9";
	setAttr ".ftn" -type "string" "d:/dev/source2/main/content/core/materials/dev/gray_50_color.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "B110FCFE-4348-0B8A-B48B-77933636A201";
createNode bump2d -n "bump2d1";
	rename -uid "54E78F9C-42B4-EA30-2DF2-93AD92AFBD20";
	setAttr ".bi" 1;
createNode file -n "gray_50_bumpMap_file";
	rename -uid "8004AE80-404C-5485-E3A3-8F814456D9DC";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "d:/dev/source2/main/content/core/materials/default/default_normal.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "EB5C813D-4526-8C76-32A9-2FA94A4E89A7";
createNode displayLayer -n "SKEL";
	rename -uid "064642A6-4006-A72D-B83E-63B23ACCA068";
	setAttr ".dt" 1;
	setAttr ".do" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F9585510-49A1-8BB0-6FB6-D5BC3EB55FAC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n"
		+ "            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2224\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 1\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n"
		+ "\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 1\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 1024\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"vPlanarDisplay\" 1 \n                -pluginObjects \"vRigWidget\" 1 \n                -pluginObjects \"vstAttachment\" 1 \n                -pluginObjects \"vChainDisplay\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2224\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 1 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 1 \\n    -pluginObjects \\\"vChainDisplay\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2224\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 1 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 1 \\n    -pluginObjects \\\"vChainDisplay\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 50 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "75541641-4198-5790-BED9-A7A5DE050AF1";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "GEOM";
	rename -uid "0D3073E7-428E-33C7-70EA-97BBBF4AD3CA";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode HIKCharacterNode -n "BIPED_STANDARD_MDL";
	rename -uid "F2A4DDED-4E92-5DE3-9D08-2295E4C7E860";
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".ReferenceTx" -3.1554436208840472e-30;
	setAttr ".ReferenceTy" 7.1720580763212638e-07;
	setAttr ".ReferenceTz" 8.3153999241858401e-08;
	setAttr ".ReferenceJointOrientx" 1.2722218725854067e-14;
	setAttr ".ReferenceJointOrienty" -1.2722218725854067e-14;
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTy" 41.453811645507813;
	setAttr ".HipsTz" -2.5860958099365234;
	setAttr ".HipsRx" 90;
	setAttr ".HipsRz" 90;
	setAttr ".HipsJointOrientx" 90;
	setAttr ".HipsJointOrientz" 90;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 4.0714731216430655;
	setAttr ".LeftUpLegTy" 38.70452880859375;
	setAttr ".LeftUpLegTz" -2.0723834037780762;
	setAttr ".LeftUpLegRx" -104.32540755107128;
	setAttr ".LeftUpLegRy" -2.8643394916837912;
	setAttr ".LeftUpLegRz" -88.067211799364074;
	setAttr ".LeftUpLegSx" 0.99999999999999978;
	setAttr ".LeftUpLegSy" 0.99999999999999967;
	setAttr ".LeftUpLegJointOrientx" -14.228786985131601;
	setAttr ".LeftUpLegJointOrienty" -1.9303725617872998;
	setAttr ".LeftUpLegJointOrientz" 177.13403271496099;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 4.6542043685913086;
	setAttr ".LeftLegTy" 21.436506271362298;
	setAttr ".LeftLegTz" -1.2079089879989624;
	setAttr ".LeftLegRx" -104.5588069949427;
	setAttr ".LeftLegRy" 10.555777240879275;
	setAttr ".LeftLegRz" -91.522266609210988;
	setAttr ".LeftLegSy" 0.99999999999999978;
	setAttr ".LeftLegJointOrientx" 1.27222187258541e-14;
	setAttr ".LeftLegJointOrienty" 6.7189217645916795e-14;
	setAttr ".LeftLegJointOrientz" 13.853811702050301;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 4.2110056877136248;
	setAttr ".LeftFootTy" 4.759087085723877;
	setAttr ".LeftFootTz" -4.3167767524719238;
	setAttr ".LeftFootRx" 63.028865234383296;
	setAttr ".LeftFootRy" -57.522070982091869;
	setAttr ".LeftFootRz" -66.766170893396236;
	setAttr ".LeftFootSx" 0.99999999999999989;
	setAttr ".LeftFootSz" 1.0000000000000002;
	setAttr ".LeftFootJointOrientx" 179.093023182753;
	setAttr ".LeftFootJointOrienty" 0.76110771181390702;
	setAttr ".LeftFootJointOrientz" -71.042812500427004;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -4.0714731216430673;
	setAttr ".RightUpLegTy" 38.70452880859375;
	setAttr ".RightUpLegTz" -2.0723834037780762;
	setAttr ".RightUpLegRx" 75.674592448928706;
	setAttr ".RightUpLegRy" 2.8643394916839116;
	setAttr ".RightUpLegRz" 88.067211799364159;
	setAttr ".RightUpLegSz" 0.99999999999999989;
	setAttr ".RightUpLegJointOrientx" -14.228786985131601;
	setAttr ".RightUpLegJointOrienty" -1.9303725617871901;
	setAttr ".RightUpLegJointOrientz" -2.86596728503913;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -4.6542043685913086;
	setAttr ".RightLegTy" 21.436506271362301;
	setAttr ".RightLegTz" -1.2079091072082515;
	setAttr ".RightLegRx" 75.441193005057286;
	setAttr ".RightLegRy" -10.555777240879257;
	setAttr ".RightLegRz" 91.522266609211101;
	setAttr ".RightLegSz" 0.99999999999999989;
	setAttr ".RightLegJointOrientx" -2.7034714792439897e-14;
	setAttr ".RightLegJointOrienty" 9.1440947092076103e-15;
	setAttr ".RightLegJointOrientz" 13.8538117020504;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -4.2110056877136239;
	setAttr ".RightFootTy" 4.7590870857238734;
	setAttr ".RightFootTz" -4.3167767524719238;
	setAttr ".RightFootRx" -116.97113476561583;
	setAttr ".RightFootRy" 57.522070982092067;
	setAttr ".RightFootRz" 66.766170893396207;
	setAttr ".RightFootSy" 1.0000000000000002;
	setAttr ".RightFootJointOrientx" 179.093023182754;
	setAttr ".RightFootJointOrienty" 0.76110771181394499;
	setAttr ".RightFootJointOrientz" -71.042812500427203;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTx" 3.6206868022682377e-16;
	setAttr ".SpineTy" 42.350627899169922;
	setAttr ".SpineTz" -2.3599433898925781;
	setAttr ".SpineRx" 90;
	setAttr ".SpineRy" -7.1126606644624122;
	setAttr ".SpineRz" 90;
	setAttr ".SpineJointOrientx" -1.1244846610896201e-14;
	setAttr ".SpineJointOrienty" -1.4199590840811902e-14;
	setAttr ".SpineJointOrientz" 7.1126606644624104;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 6.5730943679809579;
	setAttr ".LeftArmTy" 57.480625152587805;
	setAttr ".LeftArmTz" -4.1011085510253906;
	setAttr ".LeftArmRx" 90;
	setAttr ".LeftArmSx" 1.0000000000000002;
	setAttr ".LeftArmSy" 0.99999999999999267;
	setAttr ".LeftArmSz" 0.99999999999999312;
	setAttr ".LeftArmJointOrientx" -6.8032685525045498;
	setAttr ".LeftArmJointOrienty" -34.869515531067798;
	setAttr ".LeftArmJointOrientz" 23.113704768594399;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 18.201105117797852;
	setAttr ".LeftForeArmTy" 57.480621337890611;
	setAttr ".LeftForeArmTz" -4.1011085510253933;
	setAttr ".LeftForeArmRx" 90;
	setAttr ".LeftForeArmSx" 1.0000000000000002;
	setAttr ".LeftForeArmSy" 0.99999999999999267;
	setAttr ".LeftForeArmSz" 0.99999999999999312;
	setAttr ".LeftForeArmJointOrientx" -6.2020816288538601e-14;
	setAttr ".LeftForeArmJointOrienty" -2.7829853462805799e-15;
	setAttr ".LeftForeArmJointOrientz" 24.907141462655801;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 29.149480819702141;
	setAttr ".LeftHandTy" 57.480625152587884;
	setAttr ".LeftHandTz" -4.1011090278625471;
	setAttr ".LeftHandRx" -175.70120290815854;
	setAttr ".LeftHandRy" 6.0750395405494499;
	setAttr ".LeftHandRz" -5.8835652556031359;
	setAttr ".LeftHandSx" 1.0000000000000002;
	setAttr ".LeftHandSy" 1.0000000000000002;
	setAttr ".LeftHandSz" 0.99999999999999989;
	setAttr ".LeftHandJointOrientx" 94.923639946514101;
	setAttr ".LeftHandJointOrienty" -5.8504076248782502;
	setAttr ".LeftHandJointOrientz" -6.1069689540111298;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -6.5730943679809579;
	setAttr ".RightArmTy" 57.480625152587926;
	setAttr ".RightArmTz" -4.1011090278625488;
	setAttr ".RightArmRx" -90;
	setAttr ".RightArmSy" 0.99999999999999267;
	setAttr ".RightArmSz" 0.99999999999999267;
	setAttr ".RightArmJointOrientx" -6.80326855250485;
	setAttr ".RightArmJointOrienty" -34.869515531067705;
	setAttr ".RightArmJointOrientz" 23.113704768594499;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -18.201105117797855;
	setAttr ".RightForeArmTy" 57.480621337890639;
	setAttr ".RightForeArmTz" -4.1011090278625497;
	setAttr ".RightForeArmRx" -90;
	setAttr ".RightForeArmSy" 0.99999999999999267;
	setAttr ".RightForeArmSz" 0.99999999999999267;
	setAttr ".RightForeArmJointOrientx" -6.99722029921974e-14;
	setAttr ".RightForeArmJointOrienty" -3.6576378836830397e-14;
	setAttr ".RightForeArmJointOrientz" 24.907141462655702;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -29.149480819702152;
	setAttr ".RightHandTy" 57.480625152587898;
	setAttr ".RightHandTz" -4.1011090278625497;
	setAttr ".RightHandRx" 4.2988105956562794;
	setAttr ".RightHandRy" -6.0750409949110065;
	setAttr ".RightHandRz" 5.8835640464238805;
	setAttr ".RightHandSx" 0.99999999999999989;
	setAttr ".RightHandSy" 0.99999999999999978;
	setAttr ".RightHandSz" 0.99999999999999989;
	setAttr ".RightHandJointOrientx" 94.923639816056706;
	setAttr ".RightHandJointOrienty" -5.8504078599612699;
	setAttr ".RightHandJointOrientz" -6.1069690109492001;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTx" -1.3522375324245389e-14;
	setAttr ".HeadTy" 66.364982604980469;
	setAttr ".HeadTz" -1.7784903049468983;
	setAttr ".HeadRx" 90;
	setAttr ".HeadRz" 90;
	setAttr ".HeadSx" 0.99999999999999989;
	setAttr ".HeadSy" 0.99999999999999989;
	setAttr ".HeadJointOrientx" 2.4779288695561701e-15;
	setAttr ".HeadJointOrienty" -2.2789558935387499e-14;
	setAttr ".HeadJointOrientz" -16.368963876386601;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 5.5071587562561044;
	setAttr ".LeftToeBaseTy" 1.7398602962493896;
	setAttr ".LeftToeBaseTz" 0.84510630369186401;
	setAttr ".LeftToeBaseRx" 4.4243720528163468;
	setAttr ".LeftToeBaseRy" -75.583676077443442;
	setAttr ".LeftToeBaseRz" -4.5676165377199185;
	setAttr ".LeftToeBaseSy" 0.99999999999999989;
	setAttr ".LeftToeBaseJointOrientx" -0.00548900237695071;
	setAttr ".LeftToeBaseJointOrienty" 0.27679492828679902;
	setAttr ".LeftToeBaseJointOrientz" 28.430042329402802;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -5.5071587562561053;
	setAttr ".RightToeBaseTy" 1.739860415458681;
	setAttr ".RightToeBaseTz" 0.84510624408721835;
	setAttr ".RightToeBaseRx" -175.57562794717708;
	setAttr ".RightToeBaseRy" 75.583676077443798;
	setAttr ".RightToeBaseRz" 4.5676165377196414;
	setAttr ".RightToeBaseSx" 1.0000000000000002;
	setAttr ".RightToeBaseSy" 1.0000000000000002;
	setAttr ".RightToeBaseJointOrientx" -0.0054890023708509799;
	setAttr ".RightToeBaseJointOrienty" 0.27679492828696001;
	setAttr ".RightToeBaseJointOrientz" 28.430042329402699;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 0.86726629734039307;
	setAttr ".LeftShoulderTy" 58.926460266113288;
	setAttr ".LeftShoulderTz" -0.97792619466781661;
	setAttr ".LeftShoulderRx" 90;
	setAttr ".LeftShoulderRy" 27.950303732669759;
	setAttr ".LeftShoulderRz" -14.21924080376634;
	setAttr ".LeftShoulderSy" 0.99999999999999989;
	setAttr ".LeftShoulderSz" 0.99999999999999833;
	setAttr ".LeftShoulderJointOrientx" 118.39697895133298;
	setAttr ".LeftShoulderJointOrienty" -58.902659473055699;
	setAttr ".LeftShoulderJointOrientz" -114.42582886679401;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -0.86726629734039307;
	setAttr ".RightShoulderTy" 58.926460266113288;
	setAttr ".RightShoulderTz" -0.97792643308639526;
	setAttr ".RightShoulderRx" -90;
	setAttr ".RightShoulderRy" -27.950303732669706;
	setAttr ".RightShoulderRz" 14.219240803766716;
	setAttr ".RightShoulderSx" 0.99999999999999989;
	setAttr ".RightShoulderSy" 0.99999999999999989;
	setAttr ".RightShoulderSz" 0.999999999999998;
	setAttr ".RightShoulderJointOrientx" 118.39697895133298;
	setAttr ".RightShoulderJointOrienty" -58.902659473055593;
	setAttr ".RightShoulderJointOrientz" 65.574171133205297;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTx" -9.7841334779089404e-15;
	setAttr ".NeckTy" 60.833759307861335;
	setAttr ".NeckTz" -3.4031634330749512;
	setAttr ".NeckRx" 90;
	setAttr ".NeckRy" -16.368963876386591;
	setAttr ".NeckRz" 90;
	setAttr ".NeckSx" 0.99999999999999989;
	setAttr ".NeckSy" 0.99999999999999989;
	setAttr ".NeckJointOrientz" 16.7842790632568;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".Spine1Tx" -2.0260521996136884e-15;
	setAttr ".Spine1Ty" 46.262210845947266;
	setAttr ".Spine1Tz" -1.8718523979187012;
	setAttr ".Spine1Rx" 90;
	setAttr ".Spine1Ry" 2.8624895706072202;
	setAttr ".Spine1Rz" 90;
	setAttr ".Spine1JointOrientx" -4.8368354180440604e-15;
	setAttr ".Spine1JointOrienty" -2.1684374122063099e-14;
	setAttr ".Spine1JointOrientz" -9.9751502350696306;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Tx" -4.0578032368965044e-15;
	setAttr ".Spine2Ty" 50.518119812011712;
	setAttr ".Spine2Tz" -2.0846540927886958;
	setAttr ".Spine2Rx" 90;
	setAttr ".Spine2Ry" 13.995363542788519;
	setAttr ".Spine2Rz" 90;
	setAttr ".Spine2Sx" 0.99999999999999989;
	setAttr ".Spine2Sy" 0.99999999999999989;
	setAttr ".Spine2JointOrientx" -1.2191819836084601e-14;
	setAttr ".Spine2JointOrienty" 4.7910347739483503e-14;
	setAttr ".Spine2JointOrientz" -11.132873972181301;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Spine3Tx" -6.9108206909363823e-15;
	setAttr ".Spine3Ty" 55.657657623291016;
	setAttr ".Spine3Tz" -3.3656432628631605;
	setAttr ".Spine3Rx" 90;
	setAttr ".Spine3Ry" 0.41531518687021646;
	setAttr ".Spine3Rz" 90;
	setAttr ".Spine3Sx" 0.99999999999999989;
	setAttr ".Spine3Sy" 0.99999999999999989;
	setAttr ".Spine3JointOrientx" -4.01826307306178e-15;
	setAttr ".Spine3JointOrienty" -2.26326722936451e-14;
	setAttr ".Spine3JointOrientz" 13.580048355918301;
	setAttr ".Spine3MinRLimitx" -45;
	setAttr ".Spine3MinRLimity" -45;
	setAttr ".Spine3MinRLimitz" -45;
	setAttr ".Spine3MaxRLimitx" 45;
	setAttr ".Spine3MaxRLimity" 45;
	setAttr ".Spine3MaxRLimitz" 45;
	setAttr ".LeftHandThumb1Tx" 30.195154190063477;
	setAttr ".LeftHandThumb1Ty" 56.731105804443359;
	setAttr ".LeftHandThumb1Tz" -3.2014498710632324;
	setAttr ".LeftHandThumb1Rx" -82.888306287362624;
	setAttr ".LeftHandThumb1Ry" -24.716448730113537;
	setAttr ".LeftHandThumb1Rz" -33.935618409389242;
	setAttr ".LeftHandThumb1Sz" 1.0000000000000002;
	setAttr ".LeftHandThumb1JointOrientx" 95.994255889374315;
	setAttr ".LeftHandThumb1JointOrienty" 32.088883689060502;
	setAttr ".LeftHandThumb1JointOrientz" 27.291191892992;
	setAttr ".LeftHandThumb1MinRLimitx" -45;
	setAttr ".LeftHandThumb1MinRLimity" -45;
	setAttr ".LeftHandThumb1MinRLimitz" -45;
	setAttr ".LeftHandThumb1MaxRLimitx" 45;
	setAttr ".LeftHandThumb1MaxRLimity" 45;
	setAttr ".LeftHandThumb1MaxRLimitz" 45;
	setAttr ".LeftHandThumb2Tx" 31.556089401245114;
	setAttr ".LeftHandThumb2Ty" 55.815364837646484;
	setAttr ".LeftHandThumb2Tz" -2.446406602859498;
	setAttr ".LeftHandThumb2Rx" -84.315601462068059;
	setAttr ".LeftHandThumb2Ry" -2.7063908107449257;
	setAttr ".LeftHandThumb2Rz" -19.382388236664337;
	setAttr ".LeftHandThumb2Sy" 0.99999999999999978;
	setAttr ".LeftHandThumb2Sz" 1.0000000000000002;
	setAttr ".LeftHandThumb2JointOrientx" -0.35125364469840697;
	setAttr ".LeftHandThumb2JointOrienty" -11.7902332834674;
	setAttr ".LeftHandThumb2JointOrientz" 23.4570362331803;
	setAttr ".LeftHandThumb2MinRLimitx" -45;
	setAttr ".LeftHandThumb2MinRLimity" -45;
	setAttr ".LeftHandThumb2MinRLimitz" -45;
	setAttr ".LeftHandThumb2MaxRLimitx" 45;
	setAttr ".LeftHandThumb2MaxRLimity" 45;
	setAttr ".LeftHandThumb2MaxRLimitz" 45;
	setAttr ".LeftHandThumb3Tx" 32.913894653320313;
	setAttr ".LeftHandThumb3Ty" 55.337677001953118;
	setAttr ".LeftHandThumb3Tz" -2.3783662319183358;
	setAttr ".LeftHandThumb3Rx" -84.449892119026458;
	setAttr ".LeftHandThumb3Ry" 4.7830966633518495;
	setAttr ".LeftHandThumb3Rz" -19.088403118966554;
	setAttr ".LeftHandThumb3Sy" 0.99999999999999989;
	setAttr ".LeftHandThumb3Sz" 1.0000000000000004;
	setAttr ".LeftHandThumb3JointOrientx" -0.11032419513508002;
	setAttr ".LeftHandThumb3JointOrienty" 0.44819559225551697;
	setAttr ".LeftHandThumb3JointOrientz" 7.4819089901754001;
	setAttr ".LeftHandThumb3MinRLimitx" -45;
	setAttr ".LeftHandThumb3MinRLimity" -45;
	setAttr ".LeftHandThumb3MinRLimitz" -45;
	setAttr ".LeftHandThumb3MaxRLimitx" 45;
	setAttr ".LeftHandThumb3MaxRLimity" 45;
	setAttr ".LeftHandThumb3MaxRLimitz" 45;
	setAttr ".LeftHandIndex1Tx" 33.076377868652344;
	setAttr ".LeftHandIndex1Ty" 57.435188293457038;
	setAttr ".LeftHandIndex1Tz" -3.1128678321838401;
	setAttr ".LeftHandIndex1Rx" -164.50839058005016;
	setAttr ".LeftHandIndex1Ry" 8.2897937373755379;
	setAttr ".LeftHandIndex1Rz" -14.104184869439843;
	setAttr ".LeftHandIndex1Sx" 1.0000007746223547;
	setAttr ".LeftHandIndex1Sy" 1.0000000000000002;
	setAttr ".LeftHandIndex1Sz" 0.99999999999999967;
	setAttr ".LeftHandIndex1JointOrientx" 0.153305887513283;
	setAttr ".LeftHandIndex1JointOrienty" -6.7730380584370904;
	setAttr ".LeftHandIndex1JointOrientz" 19.970852702124301;
	setAttr ".LeftHandIndex1MinRLimitx" -45;
	setAttr ".LeftHandIndex1MinRLimity" -45;
	setAttr ".LeftHandIndex1MinRLimitz" -45;
	setAttr ".LeftHandIndex1MaxRLimitx" 45;
	setAttr ".LeftHandIndex1MaxRLimity" 45;
	setAttr ".LeftHandIndex1MaxRLimitz" 45;
	setAttr ".LeftHandIndex2Tx" 34.944652557373047;
	setAttr ".LeftHandIndex2Ty" 56.965763092041023;
	setAttr ".LeftHandIndex2Tz" -3.3935410976409912;
	setAttr ".LeftHandIndex2Rx" -171.63024898008786;
	setAttr ".LeftHandIndex2Ry" 13.798726154645225;
	setAttr ".LeftHandIndex2Rz" -49.373653720939807;
	setAttr ".LeftHandIndex2Sx" 1.0000000000000002;
	setAttr ".LeftHandIndex2Sy" 1.0000000000000002;
	setAttr ".LeftHandIndex2Sz" 0.99999999999999967;
	setAttr ".LeftHandIndex2JointOrientx" 0.44253599319345299;
	setAttr ".LeftHandIndex2JointOrienty" 1.8622327340845202;
	setAttr ".LeftHandIndex2JointOrientz" 34.973284534041198;
	setAttr ".LeftHandIndex2MinRLimitx" -45;
	setAttr ".LeftHandIndex2MinRLimity" -45;
	setAttr ".LeftHandIndex2MinRLimitz" -45;
	setAttr ".LeftHandIndex2MaxRLimitx" 45;
	setAttr ".LeftHandIndex2MaxRLimity" 45;
	setAttr ".LeftHandIndex2MaxRLimitz" 45;
	setAttr ".LeftHandIndex3Tx" 35.757743835449226;
	setAttr ".LeftHandIndex3Ty" 56.017997741699226;
	setAttr ".LeftHandIndex3Tz" -3.7002344131469718;
	setAttr ".LeftHandIndex3Rx" -176.34582046179565;
	setAttr ".LeftHandIndex3Ry" 19.141602245668711;
	setAttr ".LeftHandIndex3Rz" -64.155882165140099;
	setAttr ".LeftHandIndex3Sx" 1.0000000000000004;
	setAttr ".LeftHandIndex3Sy" 1.0000000000000002;
	setAttr ".LeftHandIndex3Sz" 0.99999999999999967;
	setAttr ".LeftHandIndex3JointOrientx" -0.97482388976068801;
	setAttr ".LeftHandIndex3JointOrienty" -3.69334263979587;
	setAttr ".LeftHandIndex3JointOrientz" 14.692907210012599;
	setAttr ".LeftHandIndex3MinRLimitx" -45;
	setAttr ".LeftHandIndex3MinRLimity" -45;
	setAttr ".LeftHandIndex3MinRLimitz" -45;
	setAttr ".LeftHandIndex3MaxRLimitx" 45;
	setAttr ".LeftHandIndex3MaxRLimity" 45;
	setAttr ".LeftHandIndex3MaxRLimitz" 45;
	setAttr ".LeftHandMiddle1Tx" 33.040943145751953;
	setAttr ".LeftHandMiddle1Ty" 57.677219390869141;
	setAttr ".LeftHandMiddle1Tz" -4.2369694709777805;
	setAttr ".LeftHandMiddle1Rx" -172.95546399462285;
	setAttr ".LeftHandMiddle1Ry" 13.863383794268666;
	setAttr ".LeftHandMiddle1Rz" -21.260799183187146;
	setAttr ".LeftHandMiddle1Sy" 1.0000000000000004;
	setAttr ".LeftHandMiddle1Sz" 0.99999999999999989;
	setAttr ".LeftHandMiddle1JointOrientx" -0.39422811781183997;
	setAttr ".LeftHandMiddle1JointOrienty" -4.3454638985683802;
	setAttr ".LeftHandMiddle1JointOrientz" 26.670517288404699;
	setAttr ".LeftHandMiddle1MinRLimitx" -45;
	setAttr ".LeftHandMiddle1MinRLimity" -45;
	setAttr ".LeftHandMiddle1MinRLimitz" -45;
	setAttr ".LeftHandMiddle1MaxRLimitx" 45;
	setAttr ".LeftHandMiddle1MaxRLimity" 45;
	setAttr ".LeftHandMiddle1MaxRLimitz" 45;
	setAttr ".LeftHandMiddle2Tx" 35.042469024658196;
	setAttr ".LeftHandMiddle2Ty" 56.898429870605462;
	setAttr ".LeftHandMiddle2Tz" -4.7670149803161603;
	setAttr ".LeftHandMiddle2Rx" 177.89030068020409;
	setAttr ".LeftHandMiddle2Ry" 13.861765468467933;
	setAttr ".LeftHandMiddle2Rz" -58.034176436603637;
	setAttr ".LeftHandMiddle2Sx" 1.0000000000000002;
	setAttr ".LeftHandMiddle2Sy" 1.0000000000000002;
	setAttr ".LeftHandMiddle2Sz" 0.99999999999999989;
	setAttr ".LeftHandMiddle2JointOrientx" 0.41995031813133099;
	setAttr ".LeftHandMiddle2JointOrienty" 1.4535976988959101;
	setAttr ".LeftHandMiddle2JointOrientz" 35.639992328519803;
	setAttr ".LeftHandMiddle2MinRLimitx" -45;
	setAttr ".LeftHandMiddle2MinRLimity" -45;
	setAttr ".LeftHandMiddle2MinRLimitz" -45;
	setAttr ".LeftHandMiddle2MaxRLimitx" 45;
	setAttr ".LeftHandMiddle2MaxRLimity" 45;
	setAttr ".LeftHandMiddle2MaxRLimitz" 45;
	setAttr ".LeftHandMiddle3Tx" 35.77825927734375;
	setAttr ".LeftHandMiddle3Ty" 55.719360351562507;
	setAttr ".LeftHandMiddle3Tz" -5.1099772453308105;
	setAttr ".LeftHandMiddle3Rx" 175.78014705539846;
	setAttr ".LeftHandMiddle3Ry" 14.794837779951601;
	setAttr ".LeftHandMiddle3Rz" -66.137565939855108;
	setAttr ".LeftHandMiddle3Sx" 1.0000006438890769;
	setAttr ".LeftHandMiddle3Sy" 1.0000000000000002;
	setAttr ".LeftHandMiddle3Sz" 0.99999999999999978;
	setAttr ".LeftHandMiddle3JointOrientx" -0.19362236885411599;
	setAttr ".LeftHandMiddle3JointOrienty" -1.3524079564580502;
	setAttr ".LeftHandMiddle3JointOrientz" 7.7902650106021696;
	setAttr ".LeftHandMiddle3MinRLimitx" -45;
	setAttr ".LeftHandMiddle3MinRLimity" -45;
	setAttr ".LeftHandMiddle3MinRLimitz" -45;
	setAttr ".LeftHandMiddle3MaxRLimitx" 45;
	setAttr ".LeftHandMiddle3MaxRLimity" 45;
	setAttr ".LeftHandMiddle3MaxRLimitz" 45;
	setAttr ".LeftHandRing1Tx" 32.684749603271499;
	setAttr ".LeftHandRing1Ty" 57.473659515380859;
	setAttr ".LeftHandRing1Tz" -5.1822957992553738;
	setAttr ".LeftHandRing1Rx" 171.71776994175843;
	setAttr ".LeftHandRing1Ry" 19.823623357858651;
	setAttr ".LeftHandRing1Rz" -18.614823658256359;
	setAttr ".LeftHandRing1Sx" 1.0000000000000002;
	setAttr ".LeftHandRing1Sy" 1.0000000000000002;
	setAttr ".LeftHandRing1Sz" 0.99999999999999978;
	setAttr ".LeftHandRing1JointOrientx" 0.081260785423763096;
	setAttr ".LeftHandRing1JointOrienty" -10.4544107630737;
	setAttr ".LeftHandRing1JointOrientz" 18.038097116868403;
	setAttr ".LeftHandRing1MinRLimitx" -45;
	setAttr ".LeftHandRing1MinRLimity" -45;
	setAttr ".LeftHandRing1MinRLimitz" -45;
	setAttr ".LeftHandRing1MaxRLimitx" 45;
	setAttr ".LeftHandRing1MaxRLimity" 45;
	setAttr ".LeftHandRing1MaxRLimitz" 45;
	setAttr ".LeftHandRing2Tx" 34.373157501220703;
	setAttr ".LeftHandRing2Ty" 56.904960632324212;
	setAttr ".LeftHandRing2Tz" -5.8245444297790527;
	setAttr ".LeftHandRing2Rx" 162.29906605086751;
	setAttr ".LeftHandRing2Ry" 12.907481112645169;
	setAttr ".LeftHandRing2Rz" -51.224886154718433;
	setAttr ".LeftHandRing2Sx" 1.0000000000000004;
	setAttr ".LeftHandRing2Sy" 1.0000000000000002;
	setAttr ".LeftHandRing2Sz" 0.99999999999999978;
	setAttr ".LeftHandRing2JointOrientx" -0.11078212624085501;
	setAttr ".LeftHandRing2JointOrienty" -0.462661647074117;
	setAttr ".LeftHandRing2JointOrientz" 31.983805605253504;
	setAttr ".LeftHandRing2MinRLimitx" -45;
	setAttr ".LeftHandRing2MinRLimity" -45;
	setAttr ".LeftHandRing2MinRLimitz" -45;
	setAttr ".LeftHandRing2MaxRLimitx" 45;
	setAttr ".LeftHandRing2MaxRLimity" 45;
	setAttr ".LeftHandRing2MaxRLimitz" 45;
	setAttr ".LeftHandRing3Tx" 35.182544708251953;
	setAttr ".LeftHandRing3Ty" 55.897388458251953;
	setAttr ".LeftHandRing3Tz" -6.1207227706909162;
	setAttr ".LeftHandRing3Rx" 161.02271400738383;
	setAttr ".LeftHandRing3Ry" 9.6151800567657375;
	setAttr ".LeftHandRing3Rz" -58.160174129588043;
	setAttr ".LeftHandRing3Sx" 1.0000000000000004;
	setAttr ".LeftHandRing3Sy" 1.0000000000000002;
	setAttr ".LeftHandRing3Sz" 0.99999999999999989;
	setAttr ".LeftHandRing3JointOrientx" 0.14385783533333099;
	setAttr ".LeftHandRing3JointOrienty" 0.97282624637417903;
	setAttr ".LeftHandRing3JointOrientz" 7.4930500444567096;
	setAttr ".LeftHandRing3MinRLimitx" -45;
	setAttr ".LeftHandRing3MinRLimity" -45;
	setAttr ".LeftHandRing3MinRLimitz" -45;
	setAttr ".LeftHandRing3MaxRLimitx" 45;
	setAttr ".LeftHandRing3MaxRLimity" 45;
	setAttr ".LeftHandRing3MaxRLimitz" 45;
	setAttr ".LeftHandPinky1Tx" 32.181865692138679;
	setAttr ".LeftHandPinky1Ty" 57.091388702392578;
	setAttr ".LeftHandPinky1Tz" -6.0583229064941415;
	setAttr ".LeftHandPinky1Rx" 148.3645000864413;
	setAttr ".LeftHandPinky1Ry" 24.093016540196171;
	setAttr ".LeftHandPinky1Rz" -28.091269685490911;
	setAttr ".LeftHandPinky1Sx" 1.0000000000000002;
	setAttr ".LeftHandPinky1Sy" 1.0000000000000002;
	setAttr ".LeftHandPinky1JointOrientx" -2.8535927804797101;
	setAttr ".LeftHandPinky1JointOrienty" -17.522911482567299;
	setAttr ".LeftHandPinky1JointOrientz" 19.862739613636702;
	setAttr ".LeftHandPinky1MinRLimitx" -45;
	setAttr ".LeftHandPinky1MinRLimity" -45;
	setAttr ".LeftHandPinky1MinRLimitz" -45;
	setAttr ".LeftHandPinky1MaxRLimitx" 45;
	setAttr ".LeftHandPinky1MaxRLimity" 45;
	setAttr ".LeftHandPinky1MaxRLimitz" 45;
	setAttr ".LeftHandPinky2Tx" 33.450504302978516;
	setAttr ".LeftHandPinky2Ty" 56.414249420166009;
	setAttr ".LeftHandPinky2Tz" -6.701381683349604;
	setAttr ".LeftHandPinky2Rx" 143.3856471833997;
	setAttr ".LeftHandPinky2Ry" 14.545338302725213;
	setAttr ".LeftHandPinky2Rz" -43.013157030888337;
	setAttr ".LeftHandPinky2Sy" 1.0000000000000002;
	setAttr ".LeftHandPinky2JointOrientx" -0.0073478602391588103;
	setAttr ".LeftHandPinky2JointOrienty" -0.0491919887403479;
	setAttr ".LeftHandPinky2JointOrientz" 16.991040103812601;
	setAttr ".LeftHandPinky2MinRLimitx" -45;
	setAttr ".LeftHandPinky2MinRLimity" -45;
	setAttr ".LeftHandPinky2MinRLimitz" -45;
	setAttr ".LeftHandPinky2MaxRLimitx" 45;
	setAttr ".LeftHandPinky2MaxRLimity" 45;
	setAttr ".LeftHandPinky2MaxRLimitz" 45;
	setAttr ".LeftHandPinky3Tx" 34.166866302490234;
	setAttr ".LeftHandPinky3Ty" 55.745925903320313;
	setAttr ".LeftHandPinky3Tz" -6.9555783271789613;
	setAttr ".LeftHandPinky3Rx" 143.58000876343075;
	setAttr ".LeftHandPinky3Ry" 9.9179518943134095;
	setAttr ".LeftHandPinky3Rz" -40.965369330445995;
	setAttr ".LeftHandPinky3Sx" 1.0000000000000002;
	setAttr ".LeftHandPinky3JointOrientx" -0.19112456038575401;
	setAttr ".LeftHandPinky3JointOrienty" 4.9118120273871604;
	setAttr ".LeftHandPinky3JointOrientz" 1.1369598607701801;
	setAttr ".LeftHandPinky3MinRLimitx" -45;
	setAttr ".LeftHandPinky3MinRLimity" -45;
	setAttr ".LeftHandPinky3MinRLimitz" -45;
	setAttr ".LeftHandPinky3MaxRLimitx" 45;
	setAttr ".LeftHandPinky3MaxRLimity" 45;
	setAttr ".LeftHandPinky3MaxRLimitz" 45;
	setAttr ".RightHandThumb1Tx" -30.195154190063473;
	setAttr ".RightHandThumb1Ty" 56.731105804443352;
	setAttr ".RightHandThumb1Tz" -3.2014501094818111;
	setAttr ".RightHandThumb1Rx" 97.111706189174697;
	setAttr ".RightHandThumb1Ry" 24.716441104058021;
	setAttr ".RightHandThumb1Rz" 33.935623626175314;
	setAttr ".RightHandThumb1Sx" 0.99999999999999989;
	setAttr ".RightHandThumb1Sy" 0.99999999999999989;
	setAttr ".RightHandThumb1Sz" 0.99999999999999989;
	setAttr ".RightHandThumb1JointOrientx" 95.994256051922093;
	setAttr ".RightHandThumb1JointOrienty" 32.088883658803802;
	setAttr ".RightHandThumb1JointOrientz" 27.291191740266001;
	setAttr ".RightHandThumb1MinRLimitx" -45;
	setAttr ".RightHandThumb1MinRLimity" -45;
	setAttr ".RightHandThumb1MinRLimitz" -45;
	setAttr ".RightHandThumb1MaxRLimitx" 45;
	setAttr ".RightHandThumb1MaxRLimity" 45;
	setAttr ".RightHandThumb1MaxRLimitz" 45;
	setAttr ".RightHandThumb2Tx" -31.55608940124511;
	setAttr ".RightHandThumb2Ty" 55.815364837646484;
	setAttr ".RightHandThumb2Tz" -2.4464068412780757;
	setAttr ".RightHandThumb2Rx" 95.684411438491509;
	setAttr ".RightHandThumb2Ry" 2.706386277259635;
	setAttr ".RightHandThumb2Rz" 19.382388845799376;
	setAttr ".RightHandThumb2Sx" 0.99999999999999989;
	setAttr ".RightHandThumb2Sy" 0.99999999999999989;
	setAttr ".RightHandThumb2Sz" 0.99999999999999989;
	setAttr ".RightHandThumb2JointOrientx" -0.35125364469654602;
	setAttr ".RightHandThumb2JointOrienty" -11.790233283467501;
	setAttr ".RightHandThumb2JointOrientz" 23.457036233179899;
	setAttr ".RightHandThumb2MinRLimitx" -45;
	setAttr ".RightHandThumb2MinRLimity" -45;
	setAttr ".RightHandThumb2MinRLimitz" -45;
	setAttr ".RightHandThumb2MaxRLimitx" 45;
	setAttr ".RightHandThumb2MaxRLimity" 45;
	setAttr ".RightHandThumb2MaxRLimitz" 45;
	setAttr ".RightHandThumb3Tx" -32.91389465332032;
	setAttr ".RightHandThumb3Ty" 55.337677001953132;
	setAttr ".RightHandThumb3Tz" -2.3783664703369132;
	setAttr ".RightHandThumb3Rx" 95.550120835346902;
	setAttr ".RightHandThumb3Ry" -4.7831011306584834;
	setAttr ".RightHandThumb3Rz" 19.08840203877854;
	setAttr ".RightHandThumb3Sx" 0.99999999999999989;
	setAttr ".RightHandThumb3Sy" 0.99999999999999989;
	setAttr ".RightHandThumb3JointOrientx" -0.11032419513757299;
	setAttr ".RightHandThumb3JointOrienty" 0.44819559225517003;
	setAttr ".RightHandThumb3JointOrientz" 7.4819089901754001;
	setAttr ".RightHandThumb3MinRLimitx" -45;
	setAttr ".RightHandThumb3MinRLimity" -45;
	setAttr ".RightHandThumb3MinRLimitz" -45;
	setAttr ".RightHandThumb3MaxRLimitx" 45;
	setAttr ".RightHandThumb3MaxRLimity" 45;
	setAttr ".RightHandThumb3MaxRLimitz" 45;
	setAttr ".RightHandIndex1Tx" -33.076377868652344;
	setAttr ".RightHandIndex1Ty" 57.435188293457031;
	setAttr ".RightHandIndex1Tz" -3.1128680706024223;
	setAttr ".RightHandIndex1Rx" 15.491622808413636;
	setAttr ".RightHandIndex1Ry" -8.289797066215808;
	setAttr ".RightHandIndex1Rz" 14.104182939089872;
	setAttr ".RightHandIndex1Sx" 0.99999999999999967;
	setAttr ".RightHandIndex1Sy" 0.99999999999999989;
	setAttr ".RightHandIndex1Sz" 0.99999999999999978;
	setAttr ".RightHandIndex1JointOrientx" 0.153305887513874;
	setAttr ".RightHandIndex1JointOrienty" -6.7730380584372698;
	setAttr ".RightHandIndex1JointOrientz" 19.970852702123501;
	setAttr ".RightHandIndex1MinRLimitx" -45;
	setAttr ".RightHandIndex1MinRLimity" -45;
	setAttr ".RightHandIndex1MinRLimitz" -45;
	setAttr ".RightHandIndex1MaxRLimitx" 45;
	setAttr ".RightHandIndex1MaxRLimity" 45;
	setAttr ".RightHandIndex1MaxRLimitz" 45;
	setAttr ".RightHandIndex2Tx" -34.944652557373054;
	setAttr ".RightHandIndex2Ty" 56.965766906738281;
	setAttr ".RightHandIndex2Tz" -3.3935413360595708;
	setAttr ".RightHandIndex2Rx" 8.3697601788322125;
	setAttr ".RightHandIndex2Ry" -13.79873652248812;
	setAttr ".RightHandIndex2Rz" 49.373651536426408;
	setAttr ".RightHandIndex2Sx" 0.99999999999999989;
	setAttr ".RightHandIndex2Sy" 0.99999999999999989;
	setAttr ".RightHandIndex2Sz" 0.99999999999999978;
	setAttr ".RightHandIndex2JointOrientx" 0.44253599319346298;
	setAttr ".RightHandIndex2JointOrienty" 1.8622327340847697;
	setAttr ".RightHandIndex2JointOrientz" 34.973284534041497;
	setAttr ".RightHandIndex2MinRLimitx" -45;
	setAttr ".RightHandIndex2MinRLimity" -45;
	setAttr ".RightHandIndex2MinRLimitz" -45;
	setAttr ".RightHandIndex2MaxRLimitx" 45;
	setAttr ".RightHandIndex2MaxRLimity" 45;
	setAttr ".RightHandIndex2MaxRLimitz" 45;
	setAttr ".RightHandIndex3Tx" -35.757743835449212;
	setAttr ".RightHandIndex3Ty" 56.018001556396484;
	setAttr ".RightHandIndex3Tz" -3.7002346515655526;
	setAttr ".RightHandIndex3Rx" 3.65418584160218;
	setAttr ".RightHandIndex3Ry" -19.14161453978021;
	setAttr ".RightHandIndex3Rz" 64.155880098228792;
	setAttr ".RightHandIndex3Sy" 0.99999999999999967;
	setAttr ".RightHandIndex3Sz" 0.99999999999999989;
	setAttr ".RightHandIndex3JointOrientx" -0.97482388976061807;
	setAttr ".RightHandIndex3JointOrienty" -3.6933426397956506;
	setAttr ".RightHandIndex3JointOrientz" 14.692907210012301;
	setAttr ".RightHandIndex3MinRLimitx" -45;
	setAttr ".RightHandIndex3MinRLimity" -45;
	setAttr ".RightHandIndex3MinRLimitz" -45;
	setAttr ".RightHandIndex3MaxRLimitx" 45;
	setAttr ".RightHandIndex3MaxRLimity" 45;
	setAttr ".RightHandIndex3MaxRLimitz" 45;
	setAttr ".RightHandMiddle1Tx" -33.040943145751953;
	setAttr ".RightHandMiddle1Ty" 57.677219390869148;
	setAttr ".RightHandMiddle1Tz" -4.2369699478149405;
	setAttr ".RightHandMiddle1Rx" 7.0445491691376692;
	setAttr ".RightHandMiddle1Ry" -13.863388747707994;
	setAttr ".RightHandMiddle1Rz" 21.26079604130204;
	setAttr ".RightHandMiddle1Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle1Sy" 1.000000537951697;
	setAttr ".RightHandMiddle1Sz" 1.0000005306181889;
	setAttr ".RightHandMiddle1JointOrientx" -0.39422811781171302;
	setAttr ".RightHandMiddle1JointOrienty" -4.3454638985684602;
	setAttr ".RightHandMiddle1JointOrientz" 26.670517288404501;
	setAttr ".RightHandMiddle1MinRLimitx" -45;
	setAttr ".RightHandMiddle1MinRLimity" -45;
	setAttr ".RightHandMiddle1MinRLimitz" -45;
	setAttr ".RightHandMiddle1MaxRLimitx" 45;
	setAttr ".RightHandMiddle1MaxRLimity" 45;
	setAttr ".RightHandMiddle1MaxRLimitz" 45;
	setAttr ".RightHandMiddle2Tx" -35.042469024658203;
	setAttr ".RightHandMiddle2Ty" 56.898433685302734;
	setAttr ".RightHandMiddle2Tz" -4.7670154571533194;
	setAttr ".RightHandMiddle2Rx" -2.1096918708718833;
	setAttr ".RightHandMiddle2Ry" -13.861777057440182;
	setAttr ".RightHandMiddle2Rz" 58.034174651986248;
	setAttr ".RightHandMiddle2Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle2Sy" 0.99999999999999989;
	setAttr ".RightHandMiddle2Sz" 0.99999999999999989;
	setAttr ".RightHandMiddle2JointOrientx" 0.41995031813141798;
	setAttr ".RightHandMiddle2JointOrienty" 1.45359769889575;
	setAttr ".RightHandMiddle2JointOrientz" 35.639992328519;
	setAttr ".RightHandMiddle2MinRLimitx" -45;
	setAttr ".RightHandMiddle2MinRLimity" -45;
	setAttr ".RightHandMiddle2MinRLimitz" -45;
	setAttr ".RightHandMiddle2MaxRLimitx" 45;
	setAttr ".RightHandMiddle2MaxRLimity" 45;
	setAttr ".RightHandMiddle2MaxRLimitz" 45;
	setAttr ".RightHandMiddle3Tx" -35.778259277343743;
	setAttr ".RightHandMiddle3Ty" 55.7193603515625;
	setAttr ".RightHandMiddle3Tz" -5.1099772453308114;
	setAttr ".RightHandMiddle3Rx" -4.2198461548374491;
	setAttr ".RightHandMiddle3Ry" -14.794850272630882;
	setAttr ".RightHandMiddle3Rz" 66.137564480300966;
	setAttr ".RightHandMiddle3Sx" 1.0000006438890765;
	setAttr ".RightHandMiddle3Sy" 1.0000005873926967;
	setAttr ".RightHandMiddle3Sz" 1.0000008428448797;
	setAttr ".RightHandMiddle3JointOrientx" -0.193622368857641;
	setAttr ".RightHandMiddle3JointOrienty" -1.3524079564579901;
	setAttr ".RightHandMiddle3JointOrientz" 7.7902650106021998;
	setAttr ".RightHandMiddle3MinRLimitx" -45;
	setAttr ".RightHandMiddle3MinRLimity" -45;
	setAttr ".RightHandMiddle3MinRLimitz" -45;
	setAttr ".RightHandMiddle3MaxRLimitx" 45;
	setAttr ".RightHandMiddle3MaxRLimity" 45;
	setAttr ".RightHandMiddle3MaxRLimitz" 45;
	setAttr ".RightHandRing1Tx" -32.684749603271484;
	setAttr ".RightHandRing1Ty" 57.473663330078125;
	setAttr ".RightHandRing1Tz" -5.1822957992553675;
	setAttr ".RightHandRing1Rx" -8.282216297019696;
	setAttr ".RightHandRing1Ry" -19.823627718311993;
	setAttr ".RightHandRing1Rz" 18.614818991468468;
	setAttr ".RightHandRing1Sx" 0.99999999999999989;
	setAttr ".RightHandRing1Sy" 0.99999999999999956;
	setAttr ".RightHandRing1Sz" 0.99999999999999978;
	setAttr ".RightHandRing1JointOrientx" 0.081260785423667506;
	setAttr ".RightHandRing1JointOrienty" -10.4544107630737;
	setAttr ".RightHandRing1JointOrientz" 18.038097116867899;
	setAttr ".RightHandRing1MinRLimitx" -45;
	setAttr ".RightHandRing1MinRLimity" -45;
	setAttr ".RightHandRing1MinRLimitz" -45;
	setAttr ".RightHandRing1MaxRLimitx" 45;
	setAttr ".RightHandRing1MaxRLimity" 45;
	setAttr ".RightHandRing1MaxRLimitz" 45;
	setAttr ".RightHandRing2Tx" -34.373157501220703;
	setAttr ".RightHandRing2Ty" 56.904960632324226;
	setAttr ".RightHandRing2Tz" -5.8245449066162118;
	setAttr ".RightHandRing2Rx" -17.700916291379574;
	setAttr ".RightHandRing2Ry" -12.907491762412182;
	setAttr ".RightHandRing2Rz" 51.22488419417931;
	setAttr ".RightHandRing2Sx" 1.0000005062946353;
	setAttr ".RightHandRing2Sy" 0.99999999999999967;
	setAttr ".RightHandRing2Sz" 1.0000005351289392;
	setAttr ".RightHandRing2JointOrientx" -0.110782126240976;
	setAttr ".RightHandRing2JointOrienty" -0.46266164707430801;
	setAttr ".RightHandRing2JointOrientz" 31.983805605253504;
	setAttr ".RightHandRing2MinRLimitx" -45;
	setAttr ".RightHandRing2MinRLimity" -45;
	setAttr ".RightHandRing2MinRLimitz" -45;
	setAttr ".RightHandRing2MaxRLimitx" 45;
	setAttr ".RightHandRing2MaxRLimity" 45;
	setAttr ".RightHandRing2MaxRLimitz" 45;
	setAttr ".RightHandRing3Tx" -35.182544708251953;
	setAttr ".RightHandRing3Ty" 55.897388458251946;
	setAttr ".RightHandRing3Tz" -6.1207232475280771;
	setAttr ".RightHandRing3Rx" -18.977278683457534;
	setAttr ".RightHandRing3Ry" -9.615191661613677;
	setAttr ".RightHandRing3Rz" 58.160172908736698;
	setAttr ".RightHandRing3Sx" 0.99999999999999989;
	setAttr ".RightHandRing3Sy" 0.99999999999999967;
	setAttr ".RightHandRing3JointOrientx" 0.14385783532879301;
	setAttr ".RightHandRing3JointOrienty" 0.97282624637410309;
	setAttr ".RightHandRing3JointOrientz" 7.4930500444571102;
	setAttr ".RightHandRing3MinRLimitx" -45;
	setAttr ".RightHandRing3MinRLimity" -45;
	setAttr ".RightHandRing3MinRLimitz" -45;
	setAttr ".RightHandRing3MaxRLimitx" 45;
	setAttr ".RightHandRing3MaxRLimity" 45;
	setAttr ".RightHandRing3MaxRLimitz" 45;
	setAttr ".RightHandPinky1Tx" -32.181865692138658;
	setAttr ".RightHandPinky1Ty" 57.091392517089837;
	setAttr ".RightHandPinky1Tz" -6.0583229064941424;
	setAttr ".RightHandPinky1Rx" -31.635486712357519;
	setAttr ".RightHandPinky1Ry" -24.093022972559183;
	setAttr ".RightHandPinky1Rz" 28.091264296504171;
	setAttr ".RightHandPinky1Sx" 0.99999999999999989;
	setAttr ".RightHandPinky1Sy" 0.99999999999999978;
	setAttr ".RightHandPinky1Sz" 0.99999999999999989;
	setAttr ".RightHandPinky1JointOrientx" -2.85359278048124;
	setAttr ".RightHandPinky1JointOrienty" -17.522911482567199;
	setAttr ".RightHandPinky1JointOrientz" 19.862739613636201;
	setAttr ".RightHandPinky1MinRLimitx" -45;
	setAttr ".RightHandPinky1MinRLimity" -45;
	setAttr ".RightHandPinky1MinRLimitz" -45;
	setAttr ".RightHandPinky1MaxRLimitx" 45;
	setAttr ".RightHandPinky1MaxRLimity" 45;
	setAttr ".RightHandPinky1MaxRLimitz" 45;
	setAttr ".RightHandPinky2Tx" -33.450504302978523;
	setAttr ".RightHandPinky2Ty" 56.414249420166016;
	setAttr ".RightHandPinky2Tz" -6.7013816833496067;
	setAttr ".RightHandPinky2Rx" -36.614342497436482;
	setAttr ".RightHandPinky2Ry" -14.545347621373356;
	setAttr ".RightHandPinky2Rz" 43.013154439268021;
	setAttr ".RightHandPinky2Sx" 0.99999999999999978;
	setAttr ".RightHandPinky2Sy" 0.99999999999999989;
	setAttr ".RightHandPinky2Sz" 0.99999999999999989;
	setAttr ".RightHandPinky2JointOrientx" -0.0073478602390538413;
	setAttr ".RightHandPinky2JointOrienty" -0.049191988740440999;
	setAttr ".RightHandPinky2JointOrientz" 16.9910401038122;
	setAttr ".RightHandPinky2MinRLimitx" -45;
	setAttr ".RightHandPinky2MinRLimity" -45;
	setAttr ".RightHandPinky2MinRLimitz" -45;
	setAttr ".RightHandPinky2MaxRLimitx" 45;
	setAttr ".RightHandPinky2MaxRLimity" 45;
	setAttr ".RightHandPinky2MaxRLimitz" 45;
	setAttr ".RightHandPinky3Tx" -34.166866302490234;
	setAttr ".RightHandPinky3Ty" 55.745925903320313;
	setAttr ".RightHandPinky3Tz" -6.9555788040161151;
	setAttr ".RightHandPinky3Rx" -36.419980765041274;
	setAttr ".RightHandPinky3Ry" -9.9179608500933192;
	setAttr ".RightHandPinky3Rz" 40.965367526851708;
	setAttr ".RightHandPinky3Sx" 0.99999999999999989;
	setAttr ".RightHandPinky3Sy" 0.99999999999999978;
	setAttr ".RightHandPinky3JointOrientx" -0.19112456038123099;
	setAttr ".RightHandPinky3JointOrienty" 4.9118120273871;
	setAttr ".RightHandPinky3JointOrientz" 1.1369598607709801;
	setAttr ".RightHandPinky3MinRLimitx" -45;
	setAttr ".RightHandPinky3MinRLimity" -45;
	setAttr ".RightHandPinky3MinRLimitz" -45;
	setAttr ".RightHandPinky3MaxRLimitx" 45;
	setAttr ".RightHandPinky3MaxRLimity" 45;
	setAttr ".RightHandPinky3MaxRLimitz" 45;
	setAttr ".LeftInHandIndexTx" 29.836036682128906;
	setAttr ".LeftInHandIndexTy" 57.243244171142578;
	setAttr ".LeftInHandIndexTz" -3.3099896907806405;
	setAttr ".LeftInHandIndexRx" -165.11104917258032;
	setAttr ".LeftInHandIndexRy" -3.475140075895895;
	setAttr ".LeftInHandIndexRz" 3.3899973689681278;
	setAttr ".LeftInHandIndexSx" 1.0000005023907297;
	setAttr ".LeftInHandIndexSy" 1.0000000000000002;
	setAttr ".LeftInHandIndexSz" 0.99999999999999978;
	setAttr ".LeftInHandIndexJointOrientx" 9.6071452379297497;
	setAttr ".LeftInHandIndexJointOrienty" 8.7434670250106414;
	setAttr ".LeftInHandIndexJointOrientz" -10.064890517072699;
	setAttr ".LeftInHandIndexMinRLimitx" -45;
	setAttr ".LeftInHandIndexMinRLimity" -45;
	setAttr ".LeftInHandIndexMinRLimitz" -45;
	setAttr ".LeftInHandIndexMaxRLimitx" 45;
	setAttr ".LeftInHandIndexMaxRLimity" 45;
	setAttr ".LeftInHandIndexMaxRLimitz" 45;
	setAttr ".LeftInHandMiddleTx" 29.821670532226563;
	setAttr ".LeftInHandMiddleTy" 57.41105651855468;
	setAttr ".LeftInHandMiddleTz" -3.9388592243194589;
	setAttr ".LeftInHandMiddleRx" -169.18637858986466;
	setAttr ".LeftInHandMiddleRy" 5.2727166626216126;
	setAttr ".LeftInHandMiddleRz" 4.7263587626936499;
	setAttr ".LeftInHandMiddleSy" 1.0000000000000002;
	setAttr ".LeftInHandMiddleSz" 0.99999999999999989;
	setAttr ".LeftInHandMiddleJointOrientx" 5.4712269440876904;
	setAttr ".LeftInHandMiddleJointOrienty" -0.090311953653674296;
	setAttr ".LeftInHandMiddleJointOrientz" -10.5877677230785;
	setAttr ".LeftInHandMiddleMinRLimitx" -45;
	setAttr ".LeftInHandMiddleMinRLimity" -45;
	setAttr ".LeftInHandMiddleMinRLimitz" -45;
	setAttr ".LeftInHandMiddleMaxRLimitx" 45;
	setAttr ".LeftInHandMiddleMaxRLimity" 45;
	setAttr ".LeftInHandMiddleMaxRLimitz" 45;
	setAttr ".LeftInHandRingTx" 29.683654785156254;
	setAttr ".LeftInHandRingTy" 57.413261413574219;
	setAttr ".LeftInHandRingTz" -4.573113441467286;
	setAttr ".LeftInHandRingRx" 175.36835023947654;
	setAttr ".LeftInHandRingRy" 11.47211490287553;
	setAttr ".LeftInHandRingRz" 1.1529558785700302;
	setAttr ".LeftInHandRingSx" 1.0000000000000002;
	setAttr ".LeftInHandRingSy" 1.0000000000000002;
	setAttr ".LeftInHandRingSz" 0.99999999999999978;
	setAttr ".LeftInHandRingJointOrientx" -9.6683251757250108;
	setAttr ".LeftInHandRingJointOrienty" -5.94483499638865;
	setAttr ".LeftInHandRingJointOrientz" -6.5007844169513902;
	setAttr ".LeftInHandRingMinRLimitx" -45;
	setAttr ".LeftInHandRingMinRLimity" -45;
	setAttr ".LeftInHandRingMinRLimitz" -45;
	setAttr ".LeftInHandRingMaxRLimitx" 45;
	setAttr ".LeftInHandRingMaxRLimity" 45;
	setAttr ".LeftInHandRingMaxRLimitz" 45;
	setAttr ".LeftInHandPinkyTx" 29.63437652587891;
	setAttr ".LeftInHandPinkyTy" 57.141407012939453;
	setAttr ".LeftInHandPinkyTz" -5.2894625663757333;
	setAttr ".LeftInHandPinkyRx" 157.71979168745474;
	setAttr ".LeftInHandPinkyRy" 16.791347999637708;
	setAttr ".LeftInHandPinkyRz" -1.1247667621051778;
	setAttr ".LeftInHandPinkySx" 1.0000000000000002;
	setAttr ".LeftInHandPinkySy" 1.0000000000000002;
	setAttr ".LeftInHandPinkyJointOrientx" -27.158073891974698;
	setAttr ".LeftInHandPinkyJointOrienty" -11.0534650806529;
	setAttr ".LeftInHandPinkyJointOrientz" -3.8112249340776994;
	setAttr ".LeftInHandPinkyMinRLimitx" -45;
	setAttr ".LeftInHandPinkyMinRLimity" -45;
	setAttr ".LeftInHandPinkyMinRLimitz" -45;
	setAttr ".LeftInHandPinkyMaxRLimitx" 45;
	setAttr ".LeftInHandPinkyMaxRLimity" 45;
	setAttr ".LeftInHandPinkyMaxRLimitz" 45;
	setAttr ".RightInHandIndexTx" -29.836036682128906;
	setAttr ".RightInHandIndexTy" 57.243244171142571;
	setAttr ".RightInHandIndexTz" -3.3099899291992196;
	setAttr ".RightInHandIndexRx" 14.888964489013651;
	setAttr ".RightInHandIndexRy" 3.4751408836624327;
	setAttr ".RightInHandIndexRz" -3.3899965408653512;
	setAttr ".RightInHandIndexSx" 1.0000005023907295;
	setAttr ".RightInHandIndexSy" 0.99999999999999989;
	setAttr ".RightInHandIndexSz" 0.99999999999999989;
	setAttr ".RightInHandIndexJointOrientx" 9.6071453672595304;
	setAttr ".RightInHandIndexJointOrienty" 8.7434670845217202;
	setAttr ".RightInHandIndexJointOrientz" -10.0648907364902;
	setAttr ".RightInHandIndexMinRLimitx" -45;
	setAttr ".RightInHandIndexMinRLimity" -45;
	setAttr ".RightInHandIndexMinRLimitz" -45;
	setAttr ".RightInHandIndexMaxRLimitx" 45;
	setAttr ".RightInHandIndexMaxRLimity" 45;
	setAttr ".RightInHandIndexMaxRLimitz" 45;
	setAttr ".RightInHandMiddleTx" -29.821670532226559;
	setAttr ".RightInHandMiddleTy" 57.41105651855468;
	setAttr ".RightInHandMiddleTz" -3.9388594627380371;
	setAttr ".RightInHandMiddleRx" 10.813635081911826;
	setAttr ".RightInHandMiddleRy" -5.2727155370474943;
	setAttr ".RightInHandMiddleRz" -4.7263600190818762;
	setAttr ".RightInHandMiddleSx" 0.99999999999999978;
	setAttr ".RightInHandMiddleSy" 0.99999999999999978;
	setAttr ".RightInHandMiddleJointOrientx" 5.4712270713662798;
	setAttr ".RightInHandMiddleJointOrienty" -0.090311892978473696;
	setAttr ".RightInHandMiddleJointOrientz" -10.587767962356002;
	setAttr ".RightInHandMiddleMinRLimitx" -45;
	setAttr ".RightInHandMiddleMinRLimity" -45;
	setAttr ".RightInHandMiddleMinRLimitz" -45;
	setAttr ".RightInHandMiddleMaxRLimitx" 45;
	setAttr ".RightInHandMiddleMaxRLimity" 45;
	setAttr ".RightInHandMiddleMaxRLimitz" 45;
	setAttr ".RightInHandRingTx" -29.68365478515625;
	setAttr ".RightInHandRingTy" 57.413261413574205;
	setAttr ".RightInHandRingTz" -4.573113441467286;
	setAttr ".RightInHandRingRx" -4.631635824493241;
	setAttr ".RightInHandRingRy" -11.472114628007727;
	setAttr ".RightInHandRingRz" -1.1529586503220888;
	setAttr ".RightInHandRingSx" 0.99999999999999989;
	setAttr ".RightInHandRingSy" 0.99999999999999967;
	setAttr ".RightInHandRingSz" 0.99999999999999989;
	setAttr ".RightInHandRingJointOrientx" -9.6683250437358392;
	setAttr ".RightInHandRingJointOrienty" -5.9448349449389903;
	setAttr ".RightInHandRingJointOrientz" -6.5007846696987901;
	setAttr ".RightInHandRingMinRLimitx" -45;
	setAttr ".RightInHandRingMinRLimity" -45;
	setAttr ".RightInHandRingMinRLimitz" -45;
	setAttr ".RightInHandRingMaxRLimitx" 45;
	setAttr ".RightInHandRingMaxRLimity" 45;
	setAttr ".RightInHandRingMaxRLimitz" 45;
	setAttr ".RightInHandPinkyTx" -29.634376525878903;
	setAttr ".RightInHandPinkyTy" 57.141410827636719;
	setAttr ".RightInHandPinkyTz" -5.2894625663757315;
	setAttr ".RightInHandPinkyRx" -22.280194046543269;
	setAttr ".RightInHandPinkyRy" -16.791348267785274;
	setAttr ".RightInHandPinkyRz" 1.1247626408381153;
	setAttr ".RightInHandPinkySx" 0.99999999999999989;
	setAttr ".RightInHandPinkySy" 0.99999999999999989;
	setAttr ".RightInHandPinkySz" 0.99999999999999989;
	setAttr ".RightInHandPinkyJointOrientx" -27.158073755901501;
	setAttr ".RightInHandPinkyJointOrienty" -11.0534650354201;
	setAttr ".RightInHandPinkyJointOrientz" -3.8112251992434798;
	setAttr ".RightInHandPinkyMinRLimitx" -45;
	setAttr ".RightInHandPinkyMinRLimity" -45;
	setAttr ".RightInHandPinkyMinRLimitz" -45;
	setAttr ".RightInHandPinkyMaxRLimitx" 45;
	setAttr ".RightInHandPinkyMaxRLimity" 45;
	setAttr ".RightInHandPinkyMaxRLimitz" 45;
createNode HIKProperty2State -n "HIKproperties1";
	rename -uid "85987581-4673-5858-D6A2-9FB8D13EA0E1";
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".FootBottomToAnkle" 4.759087085723877;
	setAttr ".FootBackToAnkle" 2.5809415280818939;
	setAttr ".FootMiddleToAnkle" 5.1618830561637878;
	setAttr ".FootFrontToMiddle" 2.5809415280818939;
	setAttr ".FootInToAnkle" 2.5809415280818939;
	setAttr ".FootOutToAnkle" 2.5809415280818939;
	setAttr ".HandBottomToWrist" 1.3607937593045671;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 3.4068428170681;
	setAttr ".HandFrontToMiddle" 3.4068428170681;
	setAttr ".HandInToWrist" 3.4068428170681;
	setAttr ".HandOutToWrist" 3.4068428170681;
	setAttr ".CtrlPullLeftFoot" 0;
	setAttr ".CtrlPullRightFoot" 0;
	setAttr ".CtrlChestPullLeftHand" 0;
	setAttr ".CtrlChestPullRightHand" 0;
	setAttr ".LeftHandThumbTip" 0.42524804978267722;
	setAttr ".LeftHandIndexTip" 0.42524804978267722;
	setAttr ".LeftHandMiddleTip" 0.42524804978267722;
	setAttr ".LeftHandRingTip" 0.42524804978267722;
	setAttr ".LeftHandPinkyTip" 0.42524804978267722;
	setAttr ".LeftHandExtraFingerTip" 0.42524804978267722;
	setAttr ".RightHandThumbTip" 0.42524804978267722;
	setAttr ".RightHandIndexTip" 0.42524804978267722;
	setAttr ".RightHandMiddleTip" 0.42524804978267722;
	setAttr ".RightHandRingTip" 0.42524804978267722;
	setAttr ".RightHandPinkyTip" 0.42524804978267722;
	setAttr ".RightHandExtraFingerTip" 0.42524804978267722;
	setAttr ".LeftFootThumbTip" 0.42524804978267722;
	setAttr ".LeftFootIndexTip" 0.42524804978267722;
	setAttr ".LeftFootMiddleTip" 0.42524804978267722;
	setAttr ".LeftFootRingTip" 0.42524804978267722;
	setAttr ".LeftFootPinkyTip" 0.42524804978267722;
	setAttr ".LeftFootExtraFingerTip" 0.42524804978267722;
	setAttr ".RightFootThumbTip" 0.42524804978267722;
	setAttr ".RightFootIndexTip" 0.42524804978267722;
	setAttr ".RightFootMiddleTip" 0.42524804978267722;
	setAttr ".RightFootRingTip" 0.42524804978267722;
	setAttr ".RightFootPinkyTip" 0.42524804978267722;
	setAttr ".RightFootExtraFingerTip" 0.42524804978267722;
	setAttr ".LeftUpLegRollEx" 1;
	setAttr ".LeftLegRollEx" 1;
	setAttr ".RightUpLegRollEx" 1;
	setAttr ".RightLegRollEx" 1;
	setAttr ".LeftArmRollEx" 1;
	setAttr ".LeftForeArmRollEx" 1;
	setAttr ".RightArmRollEx" 1;
	setAttr ".RightForeArmRollEx" 1;
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0.2;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0.2;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0.2;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0.2;
	setAttr ".ParamLeafLeftUpLegRoll2" 0.22;
	setAttr ".ParamLeafLeftLegRoll2" 0.4;
	setAttr ".ParamLeafRightUpLegRoll2" 0.22;
	setAttr ".ParamLeafRightLegRoll2" 0.4;
	setAttr ".ParamLeafLeftArmRoll2" 0.22;
	setAttr ".ParamLeafLeftForeArmRoll2" 0.4;
	setAttr ".ParamLeafRightArmRoll2" 0.22;
	setAttr ".ParamLeafRightForeArmRoll2" 0.4;
	setAttr ".ParamLeafLeftUpLegRoll3" 0.44;
	setAttr ".ParamLeafLeftLegRoll3" 0.6;
	setAttr ".ParamLeafRightUpLegRoll3" 0.44;
	setAttr ".ParamLeafRightLegRoll3" 0.6;
	setAttr ".ParamLeafLeftArmRoll3" 0.44;
	setAttr ".ParamLeafLeftForeArmRoll3" 0.6;
	setAttr ".ParamLeafRightArmRoll3" 0.44;
	setAttr ".ParamLeafRightForeArmRoll3" 0.6;
	setAttr ".ParamLeafLeftUpLegRoll4" 0.66;
	setAttr ".ParamLeafLeftLegRoll4" 0.8;
	setAttr ".ParamLeafRightUpLegRoll4" 0.66;
	setAttr ".ParamLeafRightLegRoll4" 0.8;
	setAttr ".ParamLeafLeftArmRoll4" 0.66;
	setAttr ".ParamLeafLeftForeArmRoll4" 0.8;
	setAttr ".ParamLeafRightArmRoll4" 0.66;
	setAttr ".ParamLeafRightForeArmRoll4" 0.8;
	setAttr ".ParamLeafLeftUpLegRoll5" 0.9;
	setAttr ".ParamLeafLeftLegRoll5" 1;
	setAttr ".ParamLeafRightUpLegRoll5" 0.9;
	setAttr ".ParamLeafRightLegRoll5" 1;
	setAttr ".ParamLeafLeftArmRoll5" 0.9;
	setAttr ".ParamLeafLeftForeArmRoll5" 1;
	setAttr ".ParamLeafRightArmRoll5" 0.9;
	setAttr ".ParamLeafRightForeArmRoll5" 1;
createNode HIKSolverNode -n "HIKSolverNode1";
	rename -uid "5CEF116E-475F-0B80-E5EC-EBA34B2F9894";
	setAttr ".ihi" 0;
	setAttr ".InputStance" yes;
createNode HIKState2SK -n "HIKState2SK1";
	rename -uid "D850CF3F-4D23-A06A-F88D-6091E96A93DB";
	setAttr ".ihi" 0;
	setAttr ".HipsTy" 41.453811645507813;
	setAttr ".HipsTz" -2.5860958099365234;
	setAttr ".LeftUpLegTx" -2.7492828369140625;
	setAttr ".LeftUpLegTy" 0.51371240615844638;
	setAttr ".LeftUpLegTz" 4.0714731216430664;
	setAttr ".LeftLegTx" 17.299465138206742;
	setAttr ".LeftLegTy" 3.0850999017673075e-06;
	setAttr ".LeftLegTz" -1.9859606759098369e-07;
	setAttr ".LeftFootTx" 16.970497769399834;
	setAttr ".LeftFootTy" -2.5623328920865163e-06;
	setAttr ".LeftFootTz" 5.0492979575267327e-08;
	setAttr ".RightUpLegTx" -2.7492828369140625;
	setAttr ".RightUpLegTy" 0.51371240615844815;
	setAttr ".RightUpLegTz" -4.0714731216430664;
	setAttr ".RightLegTx" -17.29946513224969;
	setAttr ".RightLegTy" -3.2004582364297818e-06;
	setAttr ".RightLegTz" 1.6913708833499186e-07;
	setAttr ".RightFootTx" -16.970497747561573;
	setAttr ".RightFootTy" 2.675761793469178e-06;
	setAttr ".RightFootTz" -2.1034063379943291e-08;
	setAttr ".SpineTx" 0.89681625366210938;
	setAttr ".SpineTy" 0.22615242004394531;
	setAttr ".SpineTz" 2.1315139425357162e-16;
	setAttr ".LeftArmTx" 6.6634211316917531;
	setAttr ".LeftArmTy" 1.2292084949905302e-07;
	setAttr ".LeftArmTz" -3.047179717441395e-07;
	setAttr ".LeftArmRx" 14.250324810991291;
	setAttr ".LeftArmRy" 47.626088406619665;
	setAttr ".LeftArmRz" 14.649149919856434;
	setAttr ".LeftForeArmTx" 7.5821307910968798;
	setAttr ".LeftForeArmTy" 1.9819431935551453;
	setAttr ".LeftForeArmTz" -8.5903333952817533;
	setAttr ".LeftForeArmRx" 14.250324810991668;
	setAttr ".LeftForeArmRy" 47.626088406620134;
	setAttr ".LeftForeArmRz" -10.2579915427992;
	setAttr ".LeftHandTx" 4.4260011745168519;
	setAttr ".LeftHandTy" 2.1874958080269682;
	setAttr ".LeftHandTz" -16.678586921551577;
	setAttr ".LeftHandRx" 18.21103947873377;
	setAttr ".LeftHandRy" -14.076975372993491;
	setAttr ".LeftHandRz" -49.021900561312734;
	setAttr ".RightArmTx" -6.6634212434398385;
	setAttr ".RightArmTy" 8.7687286765003591e-08;
	setAttr ".RightArmTz" 3.0471814227439609e-07;
	setAttr ".RightArmRx" 14.250338471369389;
	setAttr ".RightArmRy" 47.62608840662039;
	setAttr ".RightArmRz" 14.649149919857086;
	setAttr ".RightForeArmTx" -7.5821307910969722;
	setAttr ".RightForeArmTy" -1.9819431935551912;
	setAttr ".RightForeArmTz" 8.5903333952816538;
	setAttr ".RightForeArmRx" 14.250338471369496;
	setAttr ".RightForeArmRy" 47.626088406620006;
	setAttr ".RightForeArmRz" -10.257991542798752;
	setAttr ".RightHandTx" -4.4260013421474262;
	setAttr ".RightHandTy" -2.1874962473613788;
	setAttr ".RightHandTz" 16.678586842443124;
	setAttr ".RightHandRx" 18.211053011891416;
	setAttr ".RightHandRy" -14.076976189648864;
	setAttr ".RightHandRz" -49.0219024098703;
	setAttr ".HeadTx" 5.7648932284869119;
	setAttr ".HeadTy" 7.339190020161368e-07;
	setAttr ".HeadTz" -4.6056702352298864e-15;
	setAttr ".LeftToeBaseTx" 6.1188871430091982;
	setAttr ".LeftToeBaseTy" -6.9828169024788167e-08;
	setAttr ".LeftToeBaseTz" -2.1207305245241059e-07;
	setAttr ".RightToeBaseTx" -6.1188870339056809;
	setAttr ".RightToeBaseTy" -5.3334652250214276e-09;
	setAttr ".RightToeBaseTz" 2.2658919629492402e-07;
	setAttr ".LeftShoulderTx" 3.2514092717117578;
	setAttr ".LeftShoulderTy" 2.4113484325787651;
	setAttr ".LeftShoulderTz" 0.86726629734039973;
	setAttr ".RightShoulderTx" 3.2514092734399469;
	setAttr ".RightShoulderTy" 2.4113481941664499;
	setAttr ".RightShoulderTz" -0.86726629734038641;
	setAttr ".NeckTx" 5.1762376695998427;
	setAttr ".NeckTy" 6.7888738630728085e-08;
	setAttr ".NeckTz" -4.0309693919461611e-15;
	setAttr ".Spine1Tx" 3.9419175493616478;
	setAttr ".Spine1Ty" -1.9530367190156994e-07;
	setAttr ".Spine1Tz" -3.1482887984088707e-15;
	setAttr ".Spine2Tx" 4.2612258434360513;
	setAttr ".Spine2Ty" 3.4131164172723771e-08;
	setAttr ".Spine2Tz" -3.02400413051428e-15;
	setAttr ".Spine3Tx" 5.29677091891066;
	setAttr ".Spine3Ty" -2.0966889202611583e-07;
	setAttr ".Spine3Tz" -4.2786608310250788e-15;
	setAttr ".LeftHandThumb1Tx" -6.9532292596816134;
	setAttr ".LeftHandThumb1Ty" -16.305302208737892;
	setAttr ".LeftHandThumb1Tz" -0.66818114377303406;
	setAttr ".LeftHandThumb1Rx" 17.810260690092598;
	setAttr ".LeftHandThumb1Ry" -40.307599848740246;
	setAttr ".LeftHandThumb1Rz" 22.272439705119311;
	setAttr ".LeftHandThumb2Tx" -11.484305817407844;
	setAttr ".LeftHandThumb2Ty" -5.7932892907750784;
	setAttr ".LeftHandThumb2Tz" 13.228376974836973;
	setAttr ".LeftHandThumb2Rx" 4.3557563167907896;
	setAttr ".LeftHandThumb2Ry" -44.823294741311877;
	setAttr ".LeftHandThumb2Rz" 24.501058753782559;
	setAttr ".LeftHandThumb3Tx" -10.559003324125428;
	setAttr ".LeftHandThumb3Ty" 0.30205739208497207;
	setAttr ".LeftHandThumb3Tz" 16.926963928798401;
	setAttr ".LeftHandThumb3Rx" -3.3471611673837161;
	setAttr ".LeftHandThumb3Ry" -44.905929106576501;
	setAttr ".LeftHandThumb3Rz" 27.656234112384716;
	setAttr ".LeftHandIndex1Tx" -2.9435597026161187;
	setAttr ".LeftHandIndex1Ty" -19.687041105130277;
	setAttr ".LeftHandIndex1Tz" 3.163848574838716;
	setAttr ".LeftHandIndex1Rx" 18.193978915553565;
	setAttr ".LeftHandIndex1Ry" -25.98707035644544;
	setAttr ".LeftHandIndex1Rz" -45.951039324705697;
	setAttr ".LeftHandIndex1Sx" 1.0000011472949448;
	setAttr ".LeftHandIndex2Tx" -10.869611338097727;
	setAttr ".LeftHandIndex2Ty" -17.632425475934035;
	setAttr ".LeftHandIndex2Tz" 5.5183219716897893;
	setAttr ".LeftHandIndex2Rx" 0.099076017170597871;
	setAttr ".LeftHandIndex2Ry" -31.151045193875685;
	setAttr ".LeftHandIndex2Rz" -41.896573763404611;
	setAttr ".LeftHandIndex3Tx" -19.958064341843894;
	setAttr ".LeftHandIndex3Ty" -7.7993440012236412;
	setAttr ".LeftHandIndex3Tz" 5.5655790775816874;
	setAttr ".LeftHandIndex3Rx" -11.751661966059839;
	setAttr ".LeftHandIndex3Ry" -30.19970197756156;
	setAttr ".LeftHandIndex3Rz" -37.899385494142159;
	setAttr ".LeftHandMiddle1Tx" -3.2708811872674595;
	setAttr ".LeftHandMiddle1Ty" -19.971647545587714;
	setAttr ".LeftHandMiddle1Tz" 2.5825969703405236;
	setAttr ".LeftHandMiddle1Rx" 10.043107182344446;
	setAttr ".LeftHandMiddle1Ry" -23.958834382816597;
	setAttr ".LeftHandMiddle1Rz" -47.368016063503568;
	setAttr ".LeftHandMiddle2Tx" -13.178805711129833;
	setAttr ".LeftHandMiddle2Ty" -16.434811668945869;
	setAttr ".LeftHandMiddle2Tz" 4.4910645478716331;
	setAttr ".LeftHandMiddle2Rx" -5.512936480361061;
	setAttr ".LeftHandMiddle2Ry" -24.909430149719991;
	setAttr ".LeftHandMiddle2Rz" -44.225798177292248;
	setAttr ".LeftHandMiddle3Tx" -21.260977168411102;
	setAttr ".LeftHandMiddle3Ty" -5.2649845125453485;
	setAttr ".LeftHandMiddle3Tz" 4.564383604551546;
	setAttr ".LeftHandMiddle3Rx" -10.179846776247503;
	setAttr ".LeftHandMiddle3Ry" -24.137524154041682;
	setAttr ".LeftHandMiddle3Rz" -42.931304457802725;
	setAttr ".LeftHandMiddle3Sx" 1.0000008820581936;
	setAttr ".LeftHandRing1Tx" -4.8455690113449172;
	setAttr ".LeftHandRing1Ty" -19.544327505612927;
	setAttr ".LeftHandRing1Tz" -1.8625612955473319;
	setAttr ".LeftHandRing1Rx" 1.4765928564073985;
	setAttr ".LeftHandRing1Ry" -13.564650927067182;
	setAttr ".LeftHandRing1Rz" -50.230485099377027;
	setAttr ".LeftHandRing2Tx" -12.506632147624131;
	setAttr ".LeftHandRing2Ty" -17.549024668655605;
	setAttr ".LeftHandRing2Tz" 1.0980444936746778;
	setAttr ".LeftHandRing2Rx" -6.4564196701214085;
	setAttr ".LeftHandRing2Ry" -12.326207578717055;
	setAttr ".LeftHandRing2Rz" -49.292710552324358;
	setAttr ".LeftHandRing3Tx" -20.655423176682639;
	setAttr ".LeftHandRing3Ty" -8.2417916803102074;
	setAttr ".LeftHandRing3Tz" 1.5407158818543714;
	setAttr ".LeftHandRing3Rx" -7.1924235895531377;
	setAttr ".LeftHandRing3Ry" -11.159881294529608;
	setAttr ".LeftHandRing3Rz" -49.449953007771207;
	setAttr ".LeftHandPinky1Tx" -5.8654957792380493;
	setAttr ".LeftHandPinky1Ty" -18.032788343747086;
	setAttr ".LeftHandPinky1Tz" -6.6776220766373946;
	setAttr ".LeftHandPinky1Rx" -11.992663988466303;
	setAttr ".LeftHandPinky1Ry" -0.1892699853913101;
	setAttr ".LeftHandPinky1Rz" -50.429996509519434;
	setAttr ".LeftHandPinky2Tx" -14.497263076802021;
	setAttr ".LeftHandPinky2Ty" -15.15470953231176;
	setAttr ".LeftHandPinky2Tz" -2.8006702239376402;
	setAttr ".LeftHandPinky2Rx" -11.577994331507712;
	setAttr ".LeftHandPinky2Ry" 3.2883893660075487;
	setAttr ".LeftHandPinky2Rz" -50.775392553980581;
	setAttr ".LeftHandPinky3Tx" -19.162925874997079;
	setAttr ".LeftHandPinky3Ty" -10.578897161003582;
	setAttr ".LeftHandPinky3Tz" -2.8429871922452428;
	setAttr ".LeftHandPinky3Rx" -7.8112682815943835;
	setAttr ".LeftHandPinky3Ry" 5.4223344248933181;
	setAttr ".LeftHandPinky3Rz" -51.315718527796101;
	setAttr ".RightHandThumb1Tx" 6.953229213987548;
	setAttr ".RightHandThumb1Ty" 16.305302128992786;
	setAttr ".RightHandThumb1Tz" 0.66818093467656325;
	setAttr ".RightHandThumb1Rx" 17.810265136194555;
	setAttr ".RightHandThumb1Ry" -40.307599626917437;
	setAttr ".RightHandThumb1Rz" 22.272451259880846;
	setAttr ".RightHandThumb2Tx" 11.484305707965937;
	setAttr ".RightHandThumb2Ty" 5.7932890453988506;
	setAttr ".RightHandThumb2Tz" -13.228376778966325;
	setAttr ".RightHandThumb2Rx" 4.355760629681428;
	setAttr ".RightHandThumb2Ry" -44.823293178406971;
	setAttr ".RightHandThumb2Rz" 24.501066675591499;
	setAttr ".RightHandThumb3Tx" 10.559003120887546;
	setAttr ".RightHandThumb3Ty" -0.30205777803980816;
	setAttr ".RightHandThumb3Tz" -16.926963506846192;
	setAttr ".RightHandThumb3Rx" -3.3471548157808599;
	setAttr ".RightHandThumb3Ry" -44.905924882024372;
	setAttr ".RightHandThumb3Rz" 27.656241627606811;
	setAttr ".RightHandIndex1Tx" 2.9435594622456076;
	setAttr ".RightHandIndex1Ty" 19.687040859798259;
	setAttr ".RightHandIndex1Tz" -3.1638485918337982;
	setAttr ".RightHandIndex1Rx" 18.193991551526032;
	setAttr ".RightHandIndex1Ry" -25.987074947422528;
	setAttr ".RightHandIndex1Rz" -45.951037633051044;
	setAttr ".RightHandIndex2Tx" 10.8696268809631;
	setAttr ".RightHandIndex2Ty" 17.632427228629197;
	setAttr ".RightHandIndex2Tz" -5.5183214739503841;
	setAttr ".RightHandIndex2Rx" 0.099084700431958314;
	setAttr ".RightHandIndex2Ry" -31.151054878226326;
	setAttr ".RightHandIndex2Rz" -41.896582169790541;
	setAttr ".RightHandIndex3Tx" 19.958065056815592;
	setAttr ".RightHandIndex3Ty" 7.7993413498323783;
	setAttr ".RightHandIndex3Tz" -5.5655775442730002;
	setAttr ".RightHandIndex3Rx" -11.751658235396977;
	setAttr ".RightHandIndex3Ry" -30.199713696930925;
	setAttr ".RightHandIndex3Rz" -37.899381642366372;
	setAttr ".RightHandMiddle1Tx" 3.2708811670075644;
	setAttr ".RightHandMiddle1Ty" 19.971647460025743;
	setAttr ".RightHandMiddle1Tz" -2.58259721281184;
	setAttr ".RightHandMiddle1Rx" 10.043118948136421;
	setAttr ".RightHandMiddle1Ry" -23.958838652923184;
	setAttr ".RightHandMiddle1Rz" -47.36802115276965;
	setAttr ".RightHandMiddle1Sy" 1.0000010197119993;
	setAttr ".RightHandMiddle1Sz" 1.0000009212737029;
	setAttr ".RightHandMiddle2Tx" 13.178809229557135;
	setAttr ".RightHandMiddle2Ty" 16.434796415389322;
	setAttr ".RightHandMiddle2Tz" -4.491059958877945;
	setAttr ".RightHandMiddle2Rx" -5.5129278034639526;
	setAttr ".RightHandMiddle2Ry" -24.909442506983421;
	setAttr ".RightHandMiddle2Rz" -44.225801360980029;
	setAttr ".RightHandMiddle3Tx" 21.260974077859103;
	setAttr ".RightHandMiddle3Ty" 5.2649826391505439;
	setAttr ".RightHandMiddle3Tz" -4.5643826006448016;
	setAttr ".RightHandMiddle3Rx" -10.17983472757596;
	setAttr ".RightHandMiddle3Ry" -24.137535634817322;
	setAttr ".RightHandMiddle3Rz" -42.931304864894095;
	setAttr ".RightHandMiddle3Sx" 1.0000009469867703;
	setAttr ".RightHandMiddle3Sy" 1.0000009169647881;
	setAttr ".RightHandMiddle3Sz" 1.000001303243665;
	setAttr ".RightHandRing1Tx" 4.8455715368677037;
	setAttr ".RightHandRing1Ty" 19.544329998927289;
	setAttr ".RightHandRing1Tz" 1.8625623723812623;
	setAttr ".RightHandRing1Rx" 1.4766061897632372;
	setAttr ".RightHandRing1Ry" -13.564654991263433;
	setAttr ".RightHandRing1Rz" -50.230491436951731;
	setAttr ".RightHandRing2Tx" 12.506630917249876;
	setAttr ".RightHandRing2Ty" 17.549021342345362;
	setAttr ".RightHandRing2Tz" -1.0980450436662581;
	setAttr ".RightHandRing2Rx" -6.4564004393070826;
	setAttr ".RightHandRing2Ry" -12.326218304700415;
	setAttr ".RightHandRing2Rz" -49.292712689176824;
	setAttr ".RightHandRing2Sx" 1.0000005329233068;
	setAttr ".RightHandRing3Tx" 20.655412450520728;
	setAttr ".RightHandRing3Ty" 8.24179198789205;
	setAttr ".RightHandRing3Tz" -1.5407159992292474;
	setAttr ".RightHandRing3Rx" -7.1924105731751382;
	setAttr ".RightHandRing3Ry" -11.159896044213463;
	setAttr ".RightHandRing3Rz" -49.449948543917095;
	setAttr ".RightHandPinky1Tx" 5.8654983836446277;
	setAttr ".RightHandPinky1Ty" 18.032787052387214;
	setAttr ".RightHandPinky1Tz" 6.6776221567218244;
	setAttr ".RightHandPinky1Rx" -11.992648406692577;
	setAttr ".RightHandPinky1Ry" -0.18926543365353779;
	setAttr ".RightHandPinky1Rz" -50.430006837112344;
	setAttr ".RightHandPinky2Tx" 14.497261415418812;
	setAttr ".RightHandPinky2Ty" 15.154706710539916;
	setAttr ".RightHandPinky2Tz" 2.8006691905082572;
	setAttr ".RightHandPinky2Rx" -11.57798213394592;
	setAttr ".RightHandPinky2Ry" 3.2883813210093846;
	setAttr ".RightHandPinky2Rz" -50.775396688068952;
	setAttr ".RightHandPinky3Tx" 19.162926100745906;
	setAttr ".RightHandPinky3Ty" 10.578898010267885;
	setAttr ".RightHandPinky3Tz" 2.8429868093499735;
	setAttr ".RightHandPinky3Rx" -7.8112536136505364;
	setAttr ".RightHandPinky3Ry" 5.4223318207357698;
	setAttr ".RightHandPinky3Rz" -51.315726862231465;
	setAttr ".LeftInHandIndexTx" -7.5841841765188249;
	setAttr ".LeftInHandIndexTy" -16.333961476515405;
	setAttr ".LeftInHandIndexTz" -0.73226330122874117;
	setAttr ".LeftInHandIndexRx" 29.001574188524835;
	setAttr ".LeftInHandIndexRy" -15.488412696591146;
	setAttr ".LeftInHandIndexRz" -44.833236657264173;
	setAttr ".LeftInHandIndexSx" 1.000000802227567;
	setAttr ".LeftInHandMiddleTx" -7.8881202856933932;
	setAttr ".LeftInHandMiddleTy" -16.459458344012603;
	setAttr ".LeftInHandMiddleTz" -0.17037573399796102;
	setAttr ".LeftInHandMiddleRx" 22.077000908105209;
	setAttr ".LeftInHandMiddleRy" -14.67680753273722;
	setAttr ".LeftInHandMiddleRz" -47.86356424225125;
	setAttr ".LeftInHandRingTx" -8.1411234625724624;
	setAttr ".LeftInHandRingTy" -16.387068572135526;
	setAttr ".LeftInHandRingTz" 0.42298817911768261;
	setAttr ".LeftInHandRingRx" 12.033783688413765;
	setAttr ".LeftInHandRingRy" -6.3214763037804511;
	setAttr ".LeftInHandRingRz" -50.74019418953521;
	setAttr ".LeftInHandPinkyTx" -8.1553099987620783;
	setAttr ".LeftInHandPinkyTy" -16.224974794821627;
	setAttr ".LeftInHandPinkyTz" 1.1733304878581974;
	setAttr ".LeftInHandPinkyRx" 1.2013718842199563;
	setAttr ".LeftInHandPinkyRy" 4.8092263348626521;
	setAttr ".LeftInHandPinkyRz" -51.493094025397028;
	setAttr ".RightInHandIndexTx" 7.5841841309848874;
	setAttr ".RightInHandIndexTy" 16.33396139398512;
	setAttr ".RightInHandIndexTz" 0.73226309180117699;
	setAttr ".RightInHandIndexRx" 29.001582524137575;
	setAttr ".RightInHandIndexRy" -15.488412324597238;
	setAttr ".RightInHandIndexRz" -44.833235432221912;
	setAttr ".RightInHandIndexSx" 1.0000008616422282;
	setAttr ".RightInHandMiddleTx" 7.8881202403275665;
	setAttr ".RightInHandMiddleTy" 16.459458261550395;
	setAttr ".RightInHandMiddleTz" 0.17037552467653327;
	setAttr ".RightInHandMiddleRx" 22.077015293084312;
	setAttr ".RightInHandMiddleRy" -14.676805771476113;
	setAttr ".RightInHandMiddleRz" -47.863564928324585;
	setAttr ".RightInHandRingTx" 8.1411233528392302;
	setAttr ".RightInHandRingTy" 16.387068476427935;
	setAttr ".RightInHandRingTz" -0.42298815942002754;
	setAttr ".RightInHandRingRx" 12.0337967446289;
	setAttr ".RightInHandRingRy" -6.3214754975481942;
	setAttr ".RightInHandRingRz" -50.740196860263111;
	setAttr ".RightInHandPinkyTx" 8.155312784343284;
	setAttr ".RightInHandPinkyTy" 16.224976998170156;
	setAttr ".RightInHandPinkyTz" -1.1733295279842739;
	setAttr ".RightInHandPinkyRx" 1.2013910706157718;
	setAttr ".RightInHandPinkyRy" 4.8092240080878517;
	setAttr ".RightInHandPinkyRz" -51.493099503038117;
createNode vstExportNode -n "biped_standard_model_exportNode";
	rename -uid "FCEE1227-4FDA-2F63-1D79-9583B2511E48";
	setAttr ".ei[0].exportFile" -type "string" "biped_standard_model";
	setAttr ".ei[0].fe" 120;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av ".unw";
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -k on ".an";
	setAttr -cb on ".ar";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "__GEN_MAN__.s" "pelvis.is";
connectAttr "SKEL.di" "pelvis.do";
connectAttr "pelvis.s" "spine_0.is";
connectAttr "SKEL.di" "spine_0.do";
connectAttr "spine_0.s" "spine_1.is";
connectAttr "SKEL.di" "spine_1.do";
connectAttr "spine_1.s" "spine_2.is";
connectAttr "SKEL.di" "spine_2.do";
connectAttr "spine_2.s" "spine_3.is";
connectAttr "SKEL.di" "spine_3.do";
connectAttr "spine_3.s" "clavicle_L.is";
connectAttr "SKEL.di" "clavicle_L.do";
connectAttr "clavicle_L.s" "arm_upper_L.is";
connectAttr "SKEL.di" "arm_upper_L.do";
connectAttr "arm_upper_L.s" "arm_lower_L.is";
connectAttr "SKEL.di" "arm_lower_L.do";
connectAttr "arm_lower_L.s" "hand_L.is";
connectAttr "SKEL.di" "hand_L.do";
connectAttr "hand_L.s" "hand_end_L.is";
connectAttr "SKEL.di" "hand_end_L.do";
connectAttr "hand_L.s" "finger_index_meta_L.is";
connectAttr "SKEL.di" "finger_index_meta_L.do";
connectAttr "finger_index_meta_L.s" "finger_index_0_L.is";
connectAttr "SKEL.di" "finger_index_0_L.do";
connectAttr "finger_index_0_L.s" "finger_index_1_L.is";
connectAttr "SKEL.di" "finger_index_1_L.do";
connectAttr "finger_index_1_L.s" "finger_index_2_L.is";
connectAttr "SKEL.di" "finger_index_2_L.do";
connectAttr "finger_index_2_L.s" "finger_index_end_L.is";
connectAttr "SKEL.di" "finger_index_end_L.do";
connectAttr "GEOM.di" "finger_index_2_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_index_1_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_index_0_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_index_meta_L_InfGEOM.do";
connectAttr "hand_L.s" "finger_pinky_meta_L.is";
connectAttr "SKEL.di" "finger_pinky_meta_L.do";
connectAttr "finger_pinky_meta_L.s" "finger_pinky_0_L.is";
connectAttr "SKEL.di" "finger_pinky_0_L.do";
connectAttr "finger_pinky_0_L.s" "finger_pinky_1_L.is";
connectAttr "SKEL.di" "finger_pinky_1_L.do";
connectAttr "finger_pinky_1_L.s" "finger_pinky_2_L.is";
connectAttr "SKEL.di" "finger_pinky_2_L.do";
connectAttr "finger_pinky_2_L.s" "finger_pinky_end_L.is";
connectAttr "SKEL.di" "finger_pinky_end_L.do";
connectAttr "GEOM.di" "finger_pinky_2_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_pinky_1_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_pinky_0_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_pinky_meta_L_InfGEOM.do";
connectAttr "hand_L.s" "finger_middle_meta_L.is";
connectAttr "SKEL.di" "finger_middle_meta_L.do";
connectAttr "finger_middle_meta_L.s" "finger_middle_0_L.is";
connectAttr "SKEL.di" "finger_middle_0_L.do";
connectAttr "finger_middle_0_L.s" "finger_middle_1_L.is";
connectAttr "SKEL.di" "finger_middle_1_L.do";
connectAttr "finger_middle_1_L.s" "finger_middle_2_L.is";
connectAttr "SKEL.di" "finger_middle_2_L.do";
connectAttr "finger_middle_2_L.s" "finger_middle_end_L.is";
connectAttr "SKEL.di" "finger_middle_end_L.do";
connectAttr "GEOM.di" "finger_middle_2_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_middle_1_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_middle_0_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_middle_meta_L_InfGEOM.do";
connectAttr "hand_L.s" "finger_ring_meta_L.is";
connectAttr "SKEL.di" "finger_ring_meta_L.do";
connectAttr "finger_ring_meta_L.s" "finger_ring_0_L.is";
connectAttr "SKEL.di" "finger_ring_0_L.do";
connectAttr "finger_ring_0_L.s" "finger_ring_1_L.is";
connectAttr "SKEL.di" "finger_ring_1_L.do";
connectAttr "finger_ring_1_L.s" "finger_ring_2_L.is";
connectAttr "SKEL.di" "finger_ring_2_L.do";
connectAttr "finger_ring_2_L.s" "finger_ring_end_L.is";
connectAttr "SKEL.di" "finger_ring_end_L.do";
connectAttr "GEOM.di" "finger_ring_2_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_ring_1_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_ring_0_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_ring_meta_L_InfGEOM.do";
connectAttr "hand_L.s" "finger_thumb_0_L.is";
connectAttr "SKEL.di" "finger_thumb_0_L.do";
connectAttr "finger_thumb_0_L.s" "finger_thumb_1_L.is";
connectAttr "SKEL.di" "finger_thumb_1_L.do";
connectAttr "finger_thumb_1_L.s" "finger_thumb_2_L.is";
connectAttr "SKEL.di" "finger_thumb_2_L.do";
connectAttr "finger_thumb_2_L.s" "finger_thumb_end_L.is";
connectAttr "SKEL.di" "finger_thumb_end_L.do";
connectAttr "GEOM.di" "finger_thumb_2_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_thumb_1_L_InfGEOM.do";
connectAttr "GEOM.di" "finger_thumb_0_L_InfGEOM.do";
connectAttr "GEOM.di" "hand_L_InfGEOM.do";
connectAttr "hand_L.s" "object_hand_L.is";
connectAttr "hand_L.s" "weapon_hand_L.is";
connectAttr "GEOM.di" "arm_lower_L_InfGEOM.do";
connectAttr "GEOM.di" "arm_upper_L_InfGEOM.do";
connectAttr "GEOM.di" "clavicle_L_InfGEOM.do";
connectAttr "spine_3.s" "neck_0.is";
connectAttr "SKEL.di" "neck_0.do";
connectAttr "neck_0.s" "head.is";
connectAttr "SKEL.di" "head.do";
connectAttr "head.s" "eye_R.is";
connectAttr "eye_R.s" "eye_end_R.is";
connectAttr "head.s" "head_end.is";
connectAttr "SKEL.di" "head_end.do";
connectAttr "head.s" "eye_L.is";
connectAttr "eye_L.s" "eye_end_L.is";
connectAttr "GEOM.di" "head_InfGEOM.do";
connectAttr "GEOM.di" "neck_0_InfGEOM.do";
connectAttr "spine_3.s" "clavicle_R.is";
connectAttr "SKEL.di" "clavicle_R.do";
connectAttr "clavicle_R.s" "arm_upper_R.is";
connectAttr "SKEL.di" "arm_upper_R.do";
connectAttr "arm_upper_R.s" "arm_lower_R.is";
connectAttr "SKEL.di" "arm_lower_R.do";
connectAttr "arm_lower_R.s" "hand_R.is";
connectAttr "SKEL.di" "hand_R.do";
connectAttr "hand_R.s" "finger_thumb_0_R.is";
connectAttr "SKEL.di" "finger_thumb_0_R.do";
connectAttr "finger_thumb_0_R.s" "finger_thumb_1_R.is";
connectAttr "SKEL.di" "finger_thumb_1_R.do";
connectAttr "finger_thumb_1_R.s" "finger_thumb_2_R.is";
connectAttr "SKEL.di" "finger_thumb_2_R.do";
connectAttr "finger_thumb_2_R.s" "finger_thumb_end_R.is";
connectAttr "SKEL.di" "finger_thumb_end_R.do";
connectAttr "GEOM.di" "finger_thumb_2_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_thumb_1_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_thumb_0_R_InfGEOM.do";
connectAttr "hand_R.s" "finger_ring_meta_R.is";
connectAttr "SKEL.di" "finger_ring_meta_R.do";
connectAttr "finger_ring_meta_R.s" "finger_ring_0_R.is";
connectAttr "SKEL.di" "finger_ring_0_R.do";
connectAttr "finger_ring_0_R.s" "finger_ring_1_R.is";
connectAttr "SKEL.di" "finger_ring_1_R.do";
connectAttr "finger_ring_1_R.s" "finger_ring_2_R.is";
connectAttr "SKEL.di" "finger_ring_2_R.do";
connectAttr "finger_ring_2_R.s" "finger_ring_end_R.is";
connectAttr "SKEL.di" "finger_ring_end_R.do";
connectAttr "GEOM.di" "finger_ring_2_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_ring_1_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_ring_0_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_ring_meta_R_InfGEOM.do";
connectAttr "hand_R.s" "finger_middle_meta_R.is";
connectAttr "SKEL.di" "finger_middle_meta_R.do";
connectAttr "finger_middle_meta_R.s" "finger_middle_0_R.is";
connectAttr "SKEL.di" "finger_middle_0_R.do";
connectAttr "finger_middle_0_R.s" "finger_middle_1_R.is";
connectAttr "SKEL.di" "finger_middle_1_R.do";
connectAttr "finger_middle_1_R.s" "finger_middle_2_R.is";
connectAttr "SKEL.di" "finger_middle_2_R.do";
connectAttr "finger_middle_2_R.s" "finger_middle_end_R.is";
connectAttr "SKEL.di" "finger_middle_end_R.do";
connectAttr "GEOM.di" "finger_middle_2_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_middle_1_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_middle_0_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_middle_meta_R_InfGEOM.do";
connectAttr "hand_R.s" "finger_pinky_meta_R.is";
connectAttr "SKEL.di" "finger_pinky_meta_R.do";
connectAttr "finger_pinky_meta_R.s" "finger_pinky_0_R.is";
connectAttr "SKEL.di" "finger_pinky_0_R.do";
connectAttr "finger_pinky_0_R.s" "finger_pinky_1_R.is";
connectAttr "SKEL.di" "finger_pinky_1_R.do";
connectAttr "finger_pinky_1_R.s" "finger_pinky_2_R.is";
connectAttr "SKEL.di" "finger_pinky_2_R.do";
connectAttr "finger_pinky_2_R.s" "finger_pinky_end_R.is";
connectAttr "SKEL.di" "finger_pinky_end_R.do";
connectAttr "GEOM.di" "finger_pinky_2_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_pinky_1_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_pinky_0_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_pinky_meta_R_InfGEOM.do";
connectAttr "hand_R.s" "finger_index_meta_R.is";
connectAttr "SKEL.di" "finger_index_meta_R.do";
connectAttr "finger_index_meta_R.s" "finger_index_0_R.is";
connectAttr "SKEL.di" "finger_index_0_R.do";
connectAttr "finger_index_0_R.s" "finger_index_1_R.is";
connectAttr "SKEL.di" "finger_index_1_R.do";
connectAttr "finger_index_1_R.s" "finger_index_2_R.is";
connectAttr "SKEL.di" "finger_index_2_R.do";
connectAttr "finger_index_2_R.s" "finger_index_end_R.is";
connectAttr "SKEL.di" "finger_index_end_R.do";
connectAttr "GEOM.di" "finger_index_2_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_index_1_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_index_0_R_InfGEOM.do";
connectAttr "GEOM.di" "finger_index_meta_R_InfGEOM.do";
connectAttr "hand_R.s" "hand_end_R.is";
connectAttr "SKEL.di" "hand_end_R.do";
connectAttr "GEOM.di" "hand_R_InfGEOM.do";
connectAttr "hand_R.s" "object_hand_R.is";
connectAttr "hand_R.s" "weapon_hand_R.is";
connectAttr "GEOM.di" "arm_lower_R_InfGEOM.do";
connectAttr "GEOM.di" "arm_upper_R_InfGEOM.do";
connectAttr "GEOM.di" "clavicle_R_InfGEOM.do";
connectAttr "GEOM.di" "spine_3_InfGEOM.do";
connectAttr "GEOM.di" "spine_2_InfGEOM.do";
connectAttr "GEOM.di" "spine_1_InfGEOM.do";
connectAttr "GEOM.di" "spine_0_InfGEOM.do";
connectAttr "pelvis.s" "leg_upper_R.is";
connectAttr "SKEL.di" "leg_upper_R.do";
connectAttr "leg_upper_R.s" "leg_lower_R.is";
connectAttr "SKEL.di" "leg_lower_R.do";
connectAttr "leg_lower_R.s" "ankle_R.is";
connectAttr "SKEL.di" "ankle_R.do";
connectAttr "ankle_R.s" "ball_R.is";
connectAttr "SKEL.di" "ball_R.do";
connectAttr "ball_R.s" "ball_end_R.is";
connectAttr "SKEL.di" "ball_end_R.do";
connectAttr "GEOM.di" "ball_R_InfGEOM.do";
connectAttr "GEOM.di" "ankle_R_InfGEOM.do";
connectAttr "GEOM.di" "leg_lower_R_InfGEOM.do";
connectAttr "GEOM.di" "leg_upper_R_InfGEOM.do";
connectAttr "pelvis.s" "leg_upper_L.is";
connectAttr "SKEL.di" "leg_upper_L.do";
connectAttr "leg_upper_L.s" "leg_lower_L.is";
connectAttr "SKEL.di" "leg_lower_L.do";
connectAttr "leg_lower_L.s" "ankle_L.is";
connectAttr "SKEL.di" "ankle_L.do";
connectAttr "ankle_L.s" "ball_L.is";
connectAttr "SKEL.di" "ball_L.do";
connectAttr "ball_L.s" "ball_end_L.is";
connectAttr "SKEL.di" "ball_end_L.do";
connectAttr "GEOM.di" "ball_L_InfGEOM.do";
connectAttr "GEOM.di" "ankle_L_InfGEOM.do";
connectAttr "GEOM.di" "leg_lower_L_InfGEOM.do";
connectAttr "GEOM.di" "leg_upper_L_InfGEOM.do";
connectAttr "GEOM.di" "pelvis_InfGEOM.do";
connectAttr "__GEN_MAN__.s" "root_motion.is";
connectAttr "SKEL.di" "root_motion.do";
connectAttr "root_motion.s" "hand_L_IK_target.is";
connectAttr "root_motion.s" "hand_R_IK_target.is";
connectAttr "root_motion.s" "foot_L_IK_target.is";
connectAttr "root_motion.s" "foot_R_IK_target.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "finger_index_2_L_InfGEOMSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "finger_index_2_L_InfGEOMSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "gray_50File.oc" "gray_50.c";
connectAttr "bump2d1.o" "gray_50.n";
connectAttr "gray_50.oc" "finger_index_2_L_InfGEOMSG.ss";
connectAttr "finger_index_2_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_index_1_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_index_0_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_index_meta_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_pinky_2_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_pinky_1_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_pinky_0_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_pinky_meta_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_middle_2_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_middle_1_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_middle_0_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_middle_meta_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_ring_2_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" 
		-na;
connectAttr "finger_ring_1_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" 
		-na;
connectAttr "finger_ring_0_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" 
		-na;
connectAttr "finger_ring_meta_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_thumb_2_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_thumb_1_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_thumb_0_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "hand_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "arm_lower_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "arm_upper_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "clavicle_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "head_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "neck_0_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "finger_thumb_2_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_thumb_1_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_thumb_0_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_ring_2_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" 
		-na;
connectAttr "finger_ring_1_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" 
		-na;
connectAttr "finger_ring_0_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" 
		-na;
connectAttr "finger_ring_meta_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_middle_2_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_middle_1_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_middle_0_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_middle_meta_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_pinky_2_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_pinky_1_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_pinky_0_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_pinky_meta_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_index_2_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_index_1_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_index_0_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "finger_index_meta_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm"
		 -na;
connectAttr "hand_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "arm_lower_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "arm_upper_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "clavicle_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "spine_3_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "spine_2_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "spine_1_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "spine_0_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "ball_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "ankle_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "leg_lower_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "leg_upper_R_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "ball_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "ankle_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "leg_lower_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "leg_upper_L_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "pelvis_InfGEOMShape.iog" "finger_index_2_L_InfGEOMSG.dsm" -na;
connectAttr "finger_index_2_L_InfGEOMSG.msg" "materialInfo1.sg";
connectAttr "gray_50.msg" "materialInfo1.m";
connectAttr "gray_50File.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "gray_50File.uv";
connectAttr "place2dTexture1.ofu" "gray_50File.ofu";
connectAttr "place2dTexture1.ofv" "gray_50File.ofv";
connectAttr "place2dTexture1.rf" "gray_50File.rf";
connectAttr "place2dTexture1.reu" "gray_50File.reu";
connectAttr "place2dTexture1.rev" "gray_50File.rev";
connectAttr "place2dTexture1.vt1" "gray_50File.vt1";
connectAttr "place2dTexture1.vt2" "gray_50File.vt2";
connectAttr "place2dTexture1.vt3" "gray_50File.vt3";
connectAttr "place2dTexture1.vc1" "gray_50File.vc1";
connectAttr "place2dTexture1.ofs" "gray_50File.fs";
connectAttr ":defaultColorMgtGlobals.cme" "gray_50File.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "gray_50File.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "gray_50File.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "gray_50File.ws";
connectAttr "gray_50_bumpMap_file.oa" "bump2d1.bv";
connectAttr "place2dTexture2.o" "gray_50_bumpMap_file.uv";
connectAttr "place2dTexture2.ofu" "gray_50_bumpMap_file.ofu";
connectAttr "place2dTexture2.ofv" "gray_50_bumpMap_file.ofv";
connectAttr "place2dTexture2.rf" "gray_50_bumpMap_file.rf";
connectAttr "place2dTexture2.reu" "gray_50_bumpMap_file.reu";
connectAttr "place2dTexture2.rev" "gray_50_bumpMap_file.rev";
connectAttr "place2dTexture2.vt1" "gray_50_bumpMap_file.vt1";
connectAttr "place2dTexture2.vt2" "gray_50_bumpMap_file.vt2";
connectAttr "place2dTexture2.vt3" "gray_50_bumpMap_file.vt3";
connectAttr "place2dTexture2.vc1" "gray_50_bumpMap_file.vc1";
connectAttr "place2dTexture2.ofs" "gray_50_bumpMap_file.fs";
connectAttr ":defaultColorMgtGlobals.cme" "gray_50_bumpMap_file.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "gray_50_bumpMap_file.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "gray_50_bumpMap_file.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "gray_50_bumpMap_file.ws";
connectAttr "layerManager.dli[1]" "SKEL.id";
connectAttr "layerManager.dli[2]" "GEOM.id";
connectAttr "HIKproperties1.msg" "BIPED_STANDARD_MDL.propertyState";
connectAttr "pelvis.ch" "BIPED_STANDARD_MDL.Hips";
connectAttr "spine_0.ch" "BIPED_STANDARD_MDL.Spine";
connectAttr "spine_1.ch" "BIPED_STANDARD_MDL.Spine1";
connectAttr "spine_2.ch" "BIPED_STANDARD_MDL.Spine2";
connectAttr "spine_3.ch" "BIPED_STANDARD_MDL.Spine3";
connectAttr "clavicle_L.ch" "BIPED_STANDARD_MDL.LeftShoulder";
connectAttr "arm_upper_L.ch" "BIPED_STANDARD_MDL.LeftArm";
connectAttr "arm_lower_L.ch" "BIPED_STANDARD_MDL.LeftForeArm";
connectAttr "hand_L.ch" "BIPED_STANDARD_MDL.LeftHand";
connectAttr "finger_index_meta_L.ch" "BIPED_STANDARD_MDL.LeftInHandIndex";
connectAttr "finger_index_0_L.ch" "BIPED_STANDARD_MDL.LeftHandIndex1";
connectAttr "finger_index_1_L.ch" "BIPED_STANDARD_MDL.LeftHandIndex2";
connectAttr "finger_index_2_L.ch" "BIPED_STANDARD_MDL.LeftHandIndex3";
connectAttr "finger_pinky_meta_L.ch" "BIPED_STANDARD_MDL.LeftInHandPinky";
connectAttr "finger_pinky_0_L.ch" "BIPED_STANDARD_MDL.LeftHandPinky1";
connectAttr "finger_pinky_1_L.ch" "BIPED_STANDARD_MDL.LeftHandPinky2";
connectAttr "finger_pinky_2_L.ch" "BIPED_STANDARD_MDL.LeftHandPinky3";
connectAttr "finger_middle_meta_L.ch" "BIPED_STANDARD_MDL.LeftInHandMiddle";
connectAttr "finger_middle_0_L.ch" "BIPED_STANDARD_MDL.LeftHandMiddle1";
connectAttr "finger_middle_1_L.ch" "BIPED_STANDARD_MDL.LeftHandMiddle2";
connectAttr "finger_middle_2_L.ch" "BIPED_STANDARD_MDL.LeftHandMiddle3";
connectAttr "finger_ring_meta_L.ch" "BIPED_STANDARD_MDL.LeftInHandRing";
connectAttr "finger_ring_0_L.ch" "BIPED_STANDARD_MDL.LeftHandRing1";
connectAttr "finger_ring_1_L.ch" "BIPED_STANDARD_MDL.LeftHandRing2";
connectAttr "finger_ring_2_L.ch" "BIPED_STANDARD_MDL.LeftHandRing3";
connectAttr "finger_thumb_0_L.ch" "BIPED_STANDARD_MDL.LeftHandThumb1";
connectAttr "finger_thumb_1_L.ch" "BIPED_STANDARD_MDL.LeftHandThumb2";
connectAttr "finger_thumb_2_L.ch" "BIPED_STANDARD_MDL.LeftHandThumb3";
connectAttr "neck_0.ch" "BIPED_STANDARD_MDL.Neck";
connectAttr "head.ch" "BIPED_STANDARD_MDL.Head";
connectAttr "clavicle_R.ch" "BIPED_STANDARD_MDL.RightShoulder";
connectAttr "arm_upper_R.ch" "BIPED_STANDARD_MDL.RightArm";
connectAttr "arm_lower_R.ch" "BIPED_STANDARD_MDL.RightForeArm";
connectAttr "hand_R.ch" "BIPED_STANDARD_MDL.RightHand";
connectAttr "finger_thumb_0_R.ch" "BIPED_STANDARD_MDL.RightHandThumb1";
connectAttr "finger_thumb_1_R.ch" "BIPED_STANDARD_MDL.RightHandThumb2";
connectAttr "finger_thumb_2_R.ch" "BIPED_STANDARD_MDL.RightHandThumb3";
connectAttr "finger_ring_meta_R.ch" "BIPED_STANDARD_MDL.RightInHandRing";
connectAttr "finger_ring_0_R.ch" "BIPED_STANDARD_MDL.RightHandRing1";
connectAttr "finger_ring_1_R.ch" "BIPED_STANDARD_MDL.RightHandRing2";
connectAttr "finger_ring_2_R.ch" "BIPED_STANDARD_MDL.RightHandRing3";
connectAttr "finger_middle_meta_R.ch" "BIPED_STANDARD_MDL.RightInHandMiddle";
connectAttr "finger_middle_0_R.ch" "BIPED_STANDARD_MDL.RightHandMiddle1";
connectAttr "finger_middle_1_R.ch" "BIPED_STANDARD_MDL.RightHandMiddle2";
connectAttr "finger_middle_2_R.ch" "BIPED_STANDARD_MDL.RightHandMiddle3";
connectAttr "finger_pinky_meta_R.ch" "BIPED_STANDARD_MDL.RightInHandPinky";
connectAttr "finger_pinky_0_R.ch" "BIPED_STANDARD_MDL.RightHandPinky1";
connectAttr "finger_pinky_1_R.ch" "BIPED_STANDARD_MDL.RightHandPinky2";
connectAttr "finger_pinky_2_R.ch" "BIPED_STANDARD_MDL.RightHandPinky3";
connectAttr "finger_index_meta_R.ch" "BIPED_STANDARD_MDL.RightInHandIndex";
connectAttr "finger_index_0_R.ch" "BIPED_STANDARD_MDL.RightHandIndex1";
connectAttr "finger_index_1_R.ch" "BIPED_STANDARD_MDL.RightHandIndex2";
connectAttr "finger_index_2_R.ch" "BIPED_STANDARD_MDL.RightHandIndex3";
connectAttr "leg_upper_R.ch" "BIPED_STANDARD_MDL.RightUpLeg";
connectAttr "leg_lower_R.ch" "BIPED_STANDARD_MDL.RightLeg";
connectAttr "ankle_R.ch" "BIPED_STANDARD_MDL.RightFoot";
connectAttr "ball_R.ch" "BIPED_STANDARD_MDL.RightToeBase";
connectAttr "leg_upper_L.ch" "BIPED_STANDARD_MDL.LeftUpLeg";
connectAttr "leg_lower_L.ch" "BIPED_STANDARD_MDL.LeftLeg";
connectAttr "ankle_L.ch" "BIPED_STANDARD_MDL.LeftFoot";
connectAttr "ball_L.ch" "BIPED_STANDARD_MDL.LeftToeBase";
connectAttr "root_motion.ch" "BIPED_STANDARD_MDL.Reference";
connectAttr "HIKproperties1.OutputPropertySetState" "HIKSolverNode1.InputPropertySetState"
		;
connectAttr "BIPED_STANDARD_MDL.OutputCharacterDefinition" "HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "BIPED_STANDARD_MDL.OutputCharacterDefinition" "HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2SK1.InputCharacterState"
		;
connectAttr "pelvis.pm" "HIKState2SK1.HipsPGX";
connectAttr "pelvis.jo" "HIKState2SK1.HipsPreR";
connectAttr "pelvis.ssc" "HIKState2SK1.HipsSC";
connectAttr "pelvis.is" "HIKState2SK1.HipsIS";
connectAttr "pelvis.ro" "HIKState2SK1.HipsROrder";
connectAttr "pelvis.ra" "HIKState2SK1.HipsPostR";
connectAttr "leg_upper_L.pm" "HIKState2SK1.LeftUpLegPGX";
connectAttr "leg_upper_L.jo" "HIKState2SK1.LeftUpLegPreR";
connectAttr "leg_upper_L.ssc" "HIKState2SK1.LeftUpLegSC";
connectAttr "leg_upper_L.is" "HIKState2SK1.LeftUpLegIS";
connectAttr "leg_upper_L.ro" "HIKState2SK1.LeftUpLegROrder";
connectAttr "leg_upper_L.ra" "HIKState2SK1.LeftUpLegPostR";
connectAttr "leg_lower_L.pm" "HIKState2SK1.LeftLegPGX";
connectAttr "leg_lower_L.jo" "HIKState2SK1.LeftLegPreR";
connectAttr "leg_lower_L.ssc" "HIKState2SK1.LeftLegSC";
connectAttr "leg_lower_L.is" "HIKState2SK1.LeftLegIS";
connectAttr "leg_lower_L.ro" "HIKState2SK1.LeftLegROrder";
connectAttr "leg_lower_L.ra" "HIKState2SK1.LeftLegPostR";
connectAttr "ankle_L.pm" "HIKState2SK1.LeftFootPGX";
connectAttr "ankle_L.jo" "HIKState2SK1.LeftFootPreR";
connectAttr "ankle_L.ssc" "HIKState2SK1.LeftFootSC";
connectAttr "ankle_L.is" "HIKState2SK1.LeftFootIS";
connectAttr "ankle_L.ro" "HIKState2SK1.LeftFootROrder";
connectAttr "ankle_L.ra" "HIKState2SK1.LeftFootPostR";
connectAttr "leg_upper_R.pm" "HIKState2SK1.RightUpLegPGX";
connectAttr "leg_upper_R.jo" "HIKState2SK1.RightUpLegPreR";
connectAttr "leg_upper_R.ssc" "HIKState2SK1.RightUpLegSC";
connectAttr "leg_upper_R.is" "HIKState2SK1.RightUpLegIS";
connectAttr "leg_upper_R.ro" "HIKState2SK1.RightUpLegROrder";
connectAttr "leg_upper_R.ra" "HIKState2SK1.RightUpLegPostR";
connectAttr "leg_lower_R.pm" "HIKState2SK1.RightLegPGX";
connectAttr "leg_lower_R.jo" "HIKState2SK1.RightLegPreR";
connectAttr "leg_lower_R.ssc" "HIKState2SK1.RightLegSC";
connectAttr "leg_lower_R.is" "HIKState2SK1.RightLegIS";
connectAttr "leg_lower_R.ro" "HIKState2SK1.RightLegROrder";
connectAttr "leg_lower_R.ra" "HIKState2SK1.RightLegPostR";
connectAttr "ankle_R.pm" "HIKState2SK1.RightFootPGX";
connectAttr "ankle_R.jo" "HIKState2SK1.RightFootPreR";
connectAttr "ankle_R.ssc" "HIKState2SK1.RightFootSC";
connectAttr "ankle_R.is" "HIKState2SK1.RightFootIS";
connectAttr "ankle_R.ro" "HIKState2SK1.RightFootROrder";
connectAttr "ankle_R.ra" "HIKState2SK1.RightFootPostR";
connectAttr "spine_0.pm" "HIKState2SK1.SpinePGX";
connectAttr "spine_0.jo" "HIKState2SK1.SpinePreR";
connectAttr "spine_0.ssc" "HIKState2SK1.SpineSC";
connectAttr "spine_0.is" "HIKState2SK1.SpineIS";
connectAttr "spine_0.ro" "HIKState2SK1.SpineROrder";
connectAttr "spine_0.ra" "HIKState2SK1.SpinePostR";
connectAttr "arm_upper_L.pm" "HIKState2SK1.LeftArmPGX";
connectAttr "arm_upper_L.jo" "HIKState2SK1.LeftArmPreR";
connectAttr "arm_upper_L.ssc" "HIKState2SK1.LeftArmSC";
connectAttr "arm_upper_L.is" "HIKState2SK1.LeftArmIS";
connectAttr "arm_upper_L.ro" "HIKState2SK1.LeftArmROrder";
connectAttr "arm_upper_L.ra" "HIKState2SK1.LeftArmPostR";
connectAttr "arm_lower_L.pm" "HIKState2SK1.LeftForeArmPGX";
connectAttr "arm_lower_L.jo" "HIKState2SK1.LeftForeArmPreR";
connectAttr "arm_lower_L.ssc" "HIKState2SK1.LeftForeArmSC";
connectAttr "arm_lower_L.is" "HIKState2SK1.LeftForeArmIS";
connectAttr "arm_lower_L.ro" "HIKState2SK1.LeftForeArmROrder";
connectAttr "arm_lower_L.ra" "HIKState2SK1.LeftForeArmPostR";
connectAttr "hand_L.pm" "HIKState2SK1.LeftHandPGX";
connectAttr "hand_L.jo" "HIKState2SK1.LeftHandPreR";
connectAttr "hand_L.ssc" "HIKState2SK1.LeftHandSC";
connectAttr "hand_L.is" "HIKState2SK1.LeftHandIS";
connectAttr "hand_L.ro" "HIKState2SK1.LeftHandROrder";
connectAttr "hand_L.ra" "HIKState2SK1.LeftHandPostR";
connectAttr "arm_upper_R.pm" "HIKState2SK1.RightArmPGX";
connectAttr "arm_upper_R.jo" "HIKState2SK1.RightArmPreR";
connectAttr "arm_upper_R.ssc" "HIKState2SK1.RightArmSC";
connectAttr "arm_upper_R.is" "HIKState2SK1.RightArmIS";
connectAttr "arm_upper_R.ro" "HIKState2SK1.RightArmROrder";
connectAttr "arm_upper_R.ra" "HIKState2SK1.RightArmPostR";
connectAttr "arm_lower_R.pm" "HIKState2SK1.RightForeArmPGX";
connectAttr "arm_lower_R.jo" "HIKState2SK1.RightForeArmPreR";
connectAttr "arm_lower_R.ssc" "HIKState2SK1.RightForeArmSC";
connectAttr "arm_lower_R.is" "HIKState2SK1.RightForeArmIS";
connectAttr "arm_lower_R.ro" "HIKState2SK1.RightForeArmROrder";
connectAttr "arm_lower_R.ra" "HIKState2SK1.RightForeArmPostR";
connectAttr "hand_R.pm" "HIKState2SK1.RightHandPGX";
connectAttr "hand_R.jo" "HIKState2SK1.RightHandPreR";
connectAttr "hand_R.ssc" "HIKState2SK1.RightHandSC";
connectAttr "hand_R.is" "HIKState2SK1.RightHandIS";
connectAttr "hand_R.ro" "HIKState2SK1.RightHandROrder";
connectAttr "hand_R.ra" "HIKState2SK1.RightHandPostR";
connectAttr "head.pm" "HIKState2SK1.HeadPGX";
connectAttr "head.jo" "HIKState2SK1.HeadPreR";
connectAttr "head.ssc" "HIKState2SK1.HeadSC";
connectAttr "head.is" "HIKState2SK1.HeadIS";
connectAttr "head.ro" "HIKState2SK1.HeadROrder";
connectAttr "head.ra" "HIKState2SK1.HeadPostR";
connectAttr "ball_L.pm" "HIKState2SK1.LeftToeBasePGX";
connectAttr "ball_L.jo" "HIKState2SK1.LeftToeBasePreR";
connectAttr "ball_L.ssc" "HIKState2SK1.LeftToeBaseSC";
connectAttr "ball_L.is" "HIKState2SK1.LeftToeBaseIS";
connectAttr "ball_L.ro" "HIKState2SK1.LeftToeBaseROrder";
connectAttr "ball_L.ra" "HIKState2SK1.LeftToeBasePostR";
connectAttr "ball_R.pm" "HIKState2SK1.RightToeBasePGX";
connectAttr "ball_R.jo" "HIKState2SK1.RightToeBasePreR";
connectAttr "ball_R.ssc" "HIKState2SK1.RightToeBaseSC";
connectAttr "ball_R.is" "HIKState2SK1.RightToeBaseIS";
connectAttr "ball_R.ro" "HIKState2SK1.RightToeBaseROrder";
connectAttr "ball_R.ra" "HIKState2SK1.RightToeBasePostR";
connectAttr "clavicle_L.pm" "HIKState2SK1.LeftShoulderPGX";
connectAttr "clavicle_L.jo" "HIKState2SK1.LeftShoulderPreR";
connectAttr "clavicle_L.ssc" "HIKState2SK1.LeftShoulderSC";
connectAttr "clavicle_L.is" "HIKState2SK1.LeftShoulderIS";
connectAttr "clavicle_L.ro" "HIKState2SK1.LeftShoulderROrder";
connectAttr "clavicle_L.ra" "HIKState2SK1.LeftShoulderPostR";
connectAttr "clavicle_R.pm" "HIKState2SK1.RightShoulderPGX";
connectAttr "clavicle_R.jo" "HIKState2SK1.RightShoulderPreR";
connectAttr "clavicle_R.ssc" "HIKState2SK1.RightShoulderSC";
connectAttr "clavicle_R.is" "HIKState2SK1.RightShoulderIS";
connectAttr "clavicle_R.ro" "HIKState2SK1.RightShoulderROrder";
connectAttr "clavicle_R.ra" "HIKState2SK1.RightShoulderPostR";
connectAttr "neck_0.pm" "HIKState2SK1.NeckPGX";
connectAttr "neck_0.jo" "HIKState2SK1.NeckPreR";
connectAttr "neck_0.ssc" "HIKState2SK1.NeckSC";
connectAttr "neck_0.is" "HIKState2SK1.NeckIS";
connectAttr "neck_0.ro" "HIKState2SK1.NeckROrder";
connectAttr "neck_0.ra" "HIKState2SK1.NeckPostR";
connectAttr "spine_1.pm" "HIKState2SK1.Spine1PGX";
connectAttr "spine_1.jo" "HIKState2SK1.Spine1PreR";
connectAttr "spine_1.ssc" "HIKState2SK1.Spine1SC";
connectAttr "spine_1.is" "HIKState2SK1.Spine1IS";
connectAttr "spine_1.ro" "HIKState2SK1.Spine1ROrder";
connectAttr "spine_1.ra" "HIKState2SK1.Spine1PostR";
connectAttr "spine_2.pm" "HIKState2SK1.Spine2PGX";
connectAttr "spine_2.jo" "HIKState2SK1.Spine2PreR";
connectAttr "spine_2.ssc" "HIKState2SK1.Spine2SC";
connectAttr "spine_2.is" "HIKState2SK1.Spine2IS";
connectAttr "spine_2.ro" "HIKState2SK1.Spine2ROrder";
connectAttr "spine_2.ra" "HIKState2SK1.Spine2PostR";
connectAttr "spine_3.pm" "HIKState2SK1.Spine3PGX";
connectAttr "spine_3.jo" "HIKState2SK1.Spine3PreR";
connectAttr "spine_3.ssc" "HIKState2SK1.Spine3SC";
connectAttr "spine_3.is" "HIKState2SK1.Spine3IS";
connectAttr "spine_3.ro" "HIKState2SK1.Spine3ROrder";
connectAttr "spine_3.ra" "HIKState2SK1.Spine3PostR";
connectAttr "finger_thumb_0_L.pm" "HIKState2SK1.LeftHandThumb1PGX";
connectAttr "finger_thumb_0_L.jo" "HIKState2SK1.LeftHandThumb1PreR";
connectAttr "finger_thumb_0_L.ssc" "HIKState2SK1.LeftHandThumb1SC";
connectAttr "finger_thumb_0_L.is" "HIKState2SK1.LeftHandThumb1IS";
connectAttr "finger_thumb_0_L.ro" "HIKState2SK1.LeftHandThumb1ROrder";
connectAttr "finger_thumb_0_L.ra" "HIKState2SK1.LeftHandThumb1PostR";
connectAttr "finger_thumb_1_L.pm" "HIKState2SK1.LeftHandThumb2PGX";
connectAttr "finger_thumb_1_L.jo" "HIKState2SK1.LeftHandThumb2PreR";
connectAttr "finger_thumb_1_L.ssc" "HIKState2SK1.LeftHandThumb2SC";
connectAttr "finger_thumb_1_L.is" "HIKState2SK1.LeftHandThumb2IS";
connectAttr "finger_thumb_1_L.ro" "HIKState2SK1.LeftHandThumb2ROrder";
connectAttr "finger_thumb_1_L.ra" "HIKState2SK1.LeftHandThumb2PostR";
connectAttr "finger_thumb_2_L.pm" "HIKState2SK1.LeftHandThumb3PGX";
connectAttr "finger_thumb_2_L.jo" "HIKState2SK1.LeftHandThumb3PreR";
connectAttr "finger_thumb_2_L.ssc" "HIKState2SK1.LeftHandThumb3SC";
connectAttr "finger_thumb_2_L.is" "HIKState2SK1.LeftHandThumb3IS";
connectAttr "finger_thumb_2_L.ro" "HIKState2SK1.LeftHandThumb3ROrder";
connectAttr "finger_thumb_2_L.ra" "HIKState2SK1.LeftHandThumb3PostR";
connectAttr "finger_index_0_L.pm" "HIKState2SK1.LeftHandIndex1PGX";
connectAttr "finger_index_0_L.jo" "HIKState2SK1.LeftHandIndex1PreR";
connectAttr "finger_index_0_L.ssc" "HIKState2SK1.LeftHandIndex1SC";
connectAttr "finger_index_0_L.is" "HIKState2SK1.LeftHandIndex1IS";
connectAttr "finger_index_0_L.ro" "HIKState2SK1.LeftHandIndex1ROrder";
connectAttr "finger_index_0_L.ra" "HIKState2SK1.LeftHandIndex1PostR";
connectAttr "finger_index_1_L.pm" "HIKState2SK1.LeftHandIndex2PGX";
connectAttr "finger_index_1_L.jo" "HIKState2SK1.LeftHandIndex2PreR";
connectAttr "finger_index_1_L.ssc" "HIKState2SK1.LeftHandIndex2SC";
connectAttr "finger_index_1_L.is" "HIKState2SK1.LeftHandIndex2IS";
connectAttr "finger_index_1_L.ro" "HIKState2SK1.LeftHandIndex2ROrder";
connectAttr "finger_index_1_L.ra" "HIKState2SK1.LeftHandIndex2PostR";
connectAttr "finger_index_2_L.pm" "HIKState2SK1.LeftHandIndex3PGX";
connectAttr "finger_index_2_L.jo" "HIKState2SK1.LeftHandIndex3PreR";
connectAttr "finger_index_2_L.ssc" "HIKState2SK1.LeftHandIndex3SC";
connectAttr "finger_index_2_L.is" "HIKState2SK1.LeftHandIndex3IS";
connectAttr "finger_index_2_L.ro" "HIKState2SK1.LeftHandIndex3ROrder";
connectAttr "finger_index_2_L.ra" "HIKState2SK1.LeftHandIndex3PostR";
connectAttr "finger_middle_0_L.pm" "HIKState2SK1.LeftHandMiddle1PGX";
connectAttr "finger_middle_0_L.jo" "HIKState2SK1.LeftHandMiddle1PreR";
connectAttr "finger_middle_0_L.ssc" "HIKState2SK1.LeftHandMiddle1SC";
connectAttr "finger_middle_0_L.is" "HIKState2SK1.LeftHandMiddle1IS";
connectAttr "finger_middle_0_L.ro" "HIKState2SK1.LeftHandMiddle1ROrder";
connectAttr "finger_middle_0_L.ra" "HIKState2SK1.LeftHandMiddle1PostR";
connectAttr "finger_middle_1_L.pm" "HIKState2SK1.LeftHandMiddle2PGX";
connectAttr "finger_middle_1_L.jo" "HIKState2SK1.LeftHandMiddle2PreR";
connectAttr "finger_middle_1_L.ssc" "HIKState2SK1.LeftHandMiddle2SC";
connectAttr "finger_middle_1_L.is" "HIKState2SK1.LeftHandMiddle2IS";
connectAttr "finger_middle_1_L.ro" "HIKState2SK1.LeftHandMiddle2ROrder";
connectAttr "finger_middle_1_L.ra" "HIKState2SK1.LeftHandMiddle2PostR";
connectAttr "finger_middle_2_L.pm" "HIKState2SK1.LeftHandMiddle3PGX";
connectAttr "finger_middle_2_L.jo" "HIKState2SK1.LeftHandMiddle3PreR";
connectAttr "finger_middle_2_L.ssc" "HIKState2SK1.LeftHandMiddle3SC";
connectAttr "finger_middle_2_L.is" "HIKState2SK1.LeftHandMiddle3IS";
connectAttr "finger_middle_2_L.ro" "HIKState2SK1.LeftHandMiddle3ROrder";
connectAttr "finger_middle_2_L.ra" "HIKState2SK1.LeftHandMiddle3PostR";
connectAttr "finger_ring_0_L.pm" "HIKState2SK1.LeftHandRing1PGX";
connectAttr "finger_ring_0_L.jo" "HIKState2SK1.LeftHandRing1PreR";
connectAttr "finger_ring_0_L.ssc" "HIKState2SK1.LeftHandRing1SC";
connectAttr "finger_ring_0_L.is" "HIKState2SK1.LeftHandRing1IS";
connectAttr "finger_ring_0_L.ro" "HIKState2SK1.LeftHandRing1ROrder";
connectAttr "finger_ring_0_L.ra" "HIKState2SK1.LeftHandRing1PostR";
connectAttr "finger_ring_1_L.pm" "HIKState2SK1.LeftHandRing2PGX";
connectAttr "finger_ring_1_L.jo" "HIKState2SK1.LeftHandRing2PreR";
connectAttr "finger_ring_1_L.ssc" "HIKState2SK1.LeftHandRing2SC";
connectAttr "finger_ring_1_L.is" "HIKState2SK1.LeftHandRing2IS";
connectAttr "finger_ring_1_L.ro" "HIKState2SK1.LeftHandRing2ROrder";
connectAttr "finger_ring_1_L.ra" "HIKState2SK1.LeftHandRing2PostR";
connectAttr "finger_ring_2_L.pm" "HIKState2SK1.LeftHandRing3PGX";
connectAttr "finger_ring_2_L.jo" "HIKState2SK1.LeftHandRing3PreR";
connectAttr "finger_ring_2_L.ssc" "HIKState2SK1.LeftHandRing3SC";
connectAttr "finger_ring_2_L.is" "HIKState2SK1.LeftHandRing3IS";
connectAttr "finger_ring_2_L.ro" "HIKState2SK1.LeftHandRing3ROrder";
connectAttr "finger_ring_2_L.ra" "HIKState2SK1.LeftHandRing3PostR";
connectAttr "finger_pinky_0_L.pm" "HIKState2SK1.LeftHandPinky1PGX";
connectAttr "finger_pinky_0_L.jo" "HIKState2SK1.LeftHandPinky1PreR";
connectAttr "finger_pinky_0_L.ssc" "HIKState2SK1.LeftHandPinky1SC";
connectAttr "finger_pinky_0_L.is" "HIKState2SK1.LeftHandPinky1IS";
connectAttr "finger_pinky_0_L.ro" "HIKState2SK1.LeftHandPinky1ROrder";
connectAttr "finger_pinky_0_L.ra" "HIKState2SK1.LeftHandPinky1PostR";
connectAttr "finger_pinky_1_L.pm" "HIKState2SK1.LeftHandPinky2PGX";
connectAttr "finger_pinky_1_L.jo" "HIKState2SK1.LeftHandPinky2PreR";
connectAttr "finger_pinky_1_L.ssc" "HIKState2SK1.LeftHandPinky2SC";
connectAttr "finger_pinky_1_L.is" "HIKState2SK1.LeftHandPinky2IS";
connectAttr "finger_pinky_1_L.ro" "HIKState2SK1.LeftHandPinky2ROrder";
connectAttr "finger_pinky_1_L.ra" "HIKState2SK1.LeftHandPinky2PostR";
connectAttr "finger_pinky_2_L.pm" "HIKState2SK1.LeftHandPinky3PGX";
connectAttr "finger_pinky_2_L.jo" "HIKState2SK1.LeftHandPinky3PreR";
connectAttr "finger_pinky_2_L.ssc" "HIKState2SK1.LeftHandPinky3SC";
connectAttr "finger_pinky_2_L.is" "HIKState2SK1.LeftHandPinky3IS";
connectAttr "finger_pinky_2_L.ro" "HIKState2SK1.LeftHandPinky3ROrder";
connectAttr "finger_pinky_2_L.ra" "HIKState2SK1.LeftHandPinky3PostR";
connectAttr "finger_thumb_0_R.pm" "HIKState2SK1.RightHandThumb1PGX";
connectAttr "finger_thumb_0_R.jo" "HIKState2SK1.RightHandThumb1PreR";
connectAttr "finger_thumb_0_R.ssc" "HIKState2SK1.RightHandThumb1SC";
connectAttr "finger_thumb_0_R.is" "HIKState2SK1.RightHandThumb1IS";
connectAttr "finger_thumb_0_R.ro" "HIKState2SK1.RightHandThumb1ROrder";
connectAttr "finger_thumb_0_R.ra" "HIKState2SK1.RightHandThumb1PostR";
connectAttr "finger_thumb_1_R.pm" "HIKState2SK1.RightHandThumb2PGX";
connectAttr "finger_thumb_1_R.jo" "HIKState2SK1.RightHandThumb2PreR";
connectAttr "finger_thumb_1_R.ssc" "HIKState2SK1.RightHandThumb2SC";
connectAttr "finger_thumb_1_R.is" "HIKState2SK1.RightHandThumb2IS";
connectAttr "finger_thumb_1_R.ro" "HIKState2SK1.RightHandThumb2ROrder";
connectAttr "finger_thumb_1_R.ra" "HIKState2SK1.RightHandThumb2PostR";
connectAttr "finger_thumb_2_R.pm" "HIKState2SK1.RightHandThumb3PGX";
connectAttr "finger_thumb_2_R.jo" "HIKState2SK1.RightHandThumb3PreR";
connectAttr "finger_thumb_2_R.ssc" "HIKState2SK1.RightHandThumb3SC";
connectAttr "finger_thumb_2_R.is" "HIKState2SK1.RightHandThumb3IS";
connectAttr "finger_thumb_2_R.ro" "HIKState2SK1.RightHandThumb3ROrder";
connectAttr "finger_thumb_2_R.ra" "HIKState2SK1.RightHandThumb3PostR";
connectAttr "finger_index_0_R.pm" "HIKState2SK1.RightHandIndex1PGX";
connectAttr "finger_index_0_R.jo" "HIKState2SK1.RightHandIndex1PreR";
connectAttr "finger_index_0_R.ssc" "HIKState2SK1.RightHandIndex1SC";
connectAttr "finger_index_0_R.is" "HIKState2SK1.RightHandIndex1IS";
connectAttr "finger_index_0_R.ro" "HIKState2SK1.RightHandIndex1ROrder";
connectAttr "finger_index_0_R.ra" "HIKState2SK1.RightHandIndex1PostR";
connectAttr "finger_index_1_R.pm" "HIKState2SK1.RightHandIndex2PGX";
connectAttr "finger_index_1_R.jo" "HIKState2SK1.RightHandIndex2PreR";
connectAttr "finger_index_1_R.ssc" "HIKState2SK1.RightHandIndex2SC";
connectAttr "finger_index_1_R.is" "HIKState2SK1.RightHandIndex2IS";
connectAttr "finger_index_1_R.ro" "HIKState2SK1.RightHandIndex2ROrder";
connectAttr "finger_index_1_R.ra" "HIKState2SK1.RightHandIndex2PostR";
connectAttr "finger_index_2_R.pm" "HIKState2SK1.RightHandIndex3PGX";
connectAttr "finger_index_2_R.jo" "HIKState2SK1.RightHandIndex3PreR";
connectAttr "finger_index_2_R.ssc" "HIKState2SK1.RightHandIndex3SC";
connectAttr "finger_index_2_R.is" "HIKState2SK1.RightHandIndex3IS";
connectAttr "finger_index_2_R.ro" "HIKState2SK1.RightHandIndex3ROrder";
connectAttr "finger_index_2_R.ra" "HIKState2SK1.RightHandIndex3PostR";
connectAttr "finger_middle_0_R.pm" "HIKState2SK1.RightHandMiddle1PGX";
connectAttr "finger_middle_0_R.jo" "HIKState2SK1.RightHandMiddle1PreR";
connectAttr "finger_middle_0_R.ssc" "HIKState2SK1.RightHandMiddle1SC";
connectAttr "finger_middle_0_R.is" "HIKState2SK1.RightHandMiddle1IS";
connectAttr "finger_middle_0_R.ro" "HIKState2SK1.RightHandMiddle1ROrder";
connectAttr "finger_middle_0_R.ra" "HIKState2SK1.RightHandMiddle1PostR";
connectAttr "finger_middle_1_R.pm" "HIKState2SK1.RightHandMiddle2PGX";
connectAttr "finger_middle_1_R.jo" "HIKState2SK1.RightHandMiddle2PreR";
connectAttr "finger_middle_1_R.ssc" "HIKState2SK1.RightHandMiddle2SC";
connectAttr "finger_middle_1_R.is" "HIKState2SK1.RightHandMiddle2IS";
connectAttr "finger_middle_1_R.ro" "HIKState2SK1.RightHandMiddle2ROrder";
connectAttr "finger_middle_1_R.ra" "HIKState2SK1.RightHandMiddle2PostR";
connectAttr "finger_middle_2_R.pm" "HIKState2SK1.RightHandMiddle3PGX";
connectAttr "finger_middle_2_R.jo" "HIKState2SK1.RightHandMiddle3PreR";
connectAttr "finger_middle_2_R.ssc" "HIKState2SK1.RightHandMiddle3SC";
connectAttr "finger_middle_2_R.is" "HIKState2SK1.RightHandMiddle3IS";
connectAttr "finger_middle_2_R.ro" "HIKState2SK1.RightHandMiddle3ROrder";
connectAttr "finger_middle_2_R.ra" "HIKState2SK1.RightHandMiddle3PostR";
connectAttr "finger_ring_0_R.pm" "HIKState2SK1.RightHandRing1PGX";
connectAttr "finger_ring_0_R.jo" "HIKState2SK1.RightHandRing1PreR";
connectAttr "finger_ring_0_R.ssc" "HIKState2SK1.RightHandRing1SC";
connectAttr "finger_ring_0_R.is" "HIKState2SK1.RightHandRing1IS";
connectAttr "finger_ring_0_R.ro" "HIKState2SK1.RightHandRing1ROrder";
connectAttr "finger_ring_0_R.ra" "HIKState2SK1.RightHandRing1PostR";
connectAttr "finger_ring_1_R.pm" "HIKState2SK1.RightHandRing2PGX";
connectAttr "finger_ring_1_R.jo" "HIKState2SK1.RightHandRing2PreR";
connectAttr "finger_ring_1_R.ssc" "HIKState2SK1.RightHandRing2SC";
connectAttr "finger_ring_1_R.is" "HIKState2SK1.RightHandRing2IS";
connectAttr "finger_ring_1_R.ro" "HIKState2SK1.RightHandRing2ROrder";
connectAttr "finger_ring_1_R.ra" "HIKState2SK1.RightHandRing2PostR";
connectAttr "finger_ring_2_R.pm" "HIKState2SK1.RightHandRing3PGX";
connectAttr "finger_ring_2_R.jo" "HIKState2SK1.RightHandRing3PreR";
connectAttr "finger_ring_2_R.ssc" "HIKState2SK1.RightHandRing3SC";
connectAttr "finger_ring_2_R.is" "HIKState2SK1.RightHandRing3IS";
connectAttr "finger_ring_2_R.ro" "HIKState2SK1.RightHandRing3ROrder";
connectAttr "finger_ring_2_R.ra" "HIKState2SK1.RightHandRing3PostR";
connectAttr "finger_pinky_0_R.pm" "HIKState2SK1.RightHandPinky1PGX";
connectAttr "finger_pinky_0_R.jo" "HIKState2SK1.RightHandPinky1PreR";
connectAttr "finger_pinky_0_R.ssc" "HIKState2SK1.RightHandPinky1SC";
connectAttr "finger_pinky_0_R.is" "HIKState2SK1.RightHandPinky1IS";
connectAttr "finger_pinky_0_R.ro" "HIKState2SK1.RightHandPinky1ROrder";
connectAttr "finger_pinky_0_R.ra" "HIKState2SK1.RightHandPinky1PostR";
connectAttr "finger_pinky_1_R.pm" "HIKState2SK1.RightHandPinky2PGX";
connectAttr "finger_pinky_1_R.jo" "HIKState2SK1.RightHandPinky2PreR";
connectAttr "finger_pinky_1_R.ssc" "HIKState2SK1.RightHandPinky2SC";
connectAttr "finger_pinky_1_R.is" "HIKState2SK1.RightHandPinky2IS";
connectAttr "finger_pinky_1_R.ro" "HIKState2SK1.RightHandPinky2ROrder";
connectAttr "finger_pinky_1_R.ra" "HIKState2SK1.RightHandPinky2PostR";
connectAttr "finger_pinky_2_R.pm" "HIKState2SK1.RightHandPinky3PGX";
connectAttr "finger_pinky_2_R.jo" "HIKState2SK1.RightHandPinky3PreR";
connectAttr "finger_pinky_2_R.ssc" "HIKState2SK1.RightHandPinky3SC";
connectAttr "finger_pinky_2_R.is" "HIKState2SK1.RightHandPinky3IS";
connectAttr "finger_pinky_2_R.ro" "HIKState2SK1.RightHandPinky3ROrder";
connectAttr "finger_pinky_2_R.ra" "HIKState2SK1.RightHandPinky3PostR";
connectAttr "finger_index_meta_L.pm" "HIKState2SK1.LeftInHandIndexPGX";
connectAttr "finger_index_meta_L.jo" "HIKState2SK1.LeftInHandIndexPreR";
connectAttr "finger_index_meta_L.ssc" "HIKState2SK1.LeftInHandIndexSC";
connectAttr "finger_index_meta_L.is" "HIKState2SK1.LeftInHandIndexIS";
connectAttr "finger_index_meta_L.ro" "HIKState2SK1.LeftInHandIndexROrder";
connectAttr "finger_index_meta_L.ra" "HIKState2SK1.LeftInHandIndexPostR";
connectAttr "finger_middle_meta_L.pm" "HIKState2SK1.LeftInHandMiddlePGX";
connectAttr "finger_middle_meta_L.jo" "HIKState2SK1.LeftInHandMiddlePreR";
connectAttr "finger_middle_meta_L.ssc" "HIKState2SK1.LeftInHandMiddleSC";
connectAttr "finger_middle_meta_L.is" "HIKState2SK1.LeftInHandMiddleIS";
connectAttr "finger_middle_meta_L.ro" "HIKState2SK1.LeftInHandMiddleROrder";
connectAttr "finger_middle_meta_L.ra" "HIKState2SK1.LeftInHandMiddlePostR";
connectAttr "finger_ring_meta_L.pm" "HIKState2SK1.LeftInHandRingPGX";
connectAttr "finger_ring_meta_L.jo" "HIKState2SK1.LeftInHandRingPreR";
connectAttr "finger_ring_meta_L.ssc" "HIKState2SK1.LeftInHandRingSC";
connectAttr "finger_ring_meta_L.is" "HIKState2SK1.LeftInHandRingIS";
connectAttr "finger_ring_meta_L.ro" "HIKState2SK1.LeftInHandRingROrder";
connectAttr "finger_ring_meta_L.ra" "HIKState2SK1.LeftInHandRingPostR";
connectAttr "finger_pinky_meta_L.pm" "HIKState2SK1.LeftInHandPinkyPGX";
connectAttr "finger_pinky_meta_L.jo" "HIKState2SK1.LeftInHandPinkyPreR";
connectAttr "finger_pinky_meta_L.ssc" "HIKState2SK1.LeftInHandPinkySC";
connectAttr "finger_pinky_meta_L.is" "HIKState2SK1.LeftInHandPinkyIS";
connectAttr "finger_pinky_meta_L.ro" "HIKState2SK1.LeftInHandPinkyROrder";
connectAttr "finger_pinky_meta_L.ra" "HIKState2SK1.LeftInHandPinkyPostR";
connectAttr "finger_index_meta_R.pm" "HIKState2SK1.RightInHandIndexPGX";
connectAttr "finger_index_meta_R.jo" "HIKState2SK1.RightInHandIndexPreR";
connectAttr "finger_index_meta_R.ssc" "HIKState2SK1.RightInHandIndexSC";
connectAttr "finger_index_meta_R.is" "HIKState2SK1.RightInHandIndexIS";
connectAttr "finger_index_meta_R.ro" "HIKState2SK1.RightInHandIndexROrder";
connectAttr "finger_index_meta_R.ra" "HIKState2SK1.RightInHandIndexPostR";
connectAttr "finger_middle_meta_R.pm" "HIKState2SK1.RightInHandMiddlePGX";
connectAttr "finger_middle_meta_R.jo" "HIKState2SK1.RightInHandMiddlePreR";
connectAttr "finger_middle_meta_R.ssc" "HIKState2SK1.RightInHandMiddleSC";
connectAttr "finger_middle_meta_R.is" "HIKState2SK1.RightInHandMiddleIS";
connectAttr "finger_middle_meta_R.ro" "HIKState2SK1.RightInHandMiddleROrder";
connectAttr "finger_middle_meta_R.ra" "HIKState2SK1.RightInHandMiddlePostR";
connectAttr "finger_ring_meta_R.pm" "HIKState2SK1.RightInHandRingPGX";
connectAttr "finger_ring_meta_R.jo" "HIKState2SK1.RightInHandRingPreR";
connectAttr "finger_ring_meta_R.ssc" "HIKState2SK1.RightInHandRingSC";
connectAttr "finger_ring_meta_R.is" "HIKState2SK1.RightInHandRingIS";
connectAttr "finger_ring_meta_R.ro" "HIKState2SK1.RightInHandRingROrder";
connectAttr "finger_ring_meta_R.ra" "HIKState2SK1.RightInHandRingPostR";
connectAttr "finger_pinky_meta_R.pm" "HIKState2SK1.RightInHandPinkyPGX";
connectAttr "finger_pinky_meta_R.jo" "HIKState2SK1.RightInHandPinkyPreR";
connectAttr "finger_pinky_meta_R.ssc" "HIKState2SK1.RightInHandPinkySC";
connectAttr "finger_pinky_meta_R.is" "HIKState2SK1.RightInHandPinkyIS";
connectAttr "finger_pinky_meta_R.ro" "HIKState2SK1.RightInHandPinkyROrder";
connectAttr "finger_pinky_meta_R.ra" "HIKState2SK1.RightInHandPinkyPostR";
connectAttr "pelvis.msg" "biped_standard_model_exportNode.ei[0].objects[0]";
connectAttr "root_motion.msg" "biped_standard_model_exportNode.ei[0].objects[1]"
		;
connectAttr "finger_index_2_L_InfGEOMSG.pa" ":renderPartition.st" -na;
connectAttr "gray_50.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "gray_50File.msg" ":defaultTextureList1.tx" -na;
connectAttr "gray_50_bumpMap_file.msg" ":defaultTextureList1.tx" -na;
// End of biped_standard_model.ma
