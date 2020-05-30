//Maya ASCII 2018ff09 scene
//Name: walke.ma
//Last modified: Wed, May 20, 2020 10:28:05 AM
//Codeset: 1252
file -rdi 1 -ns "RIG" -rfn "RIGRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_rig.ma";
file -rdi 2 -ns "MDL" -rfn "RIG:MDLRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_model.ma";
file -rdi 1 -ns "MCP1" -rfn "MCP1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/animations/walke.ma";
file -rdi 2 -ns "ANM1" -rfn "MCP1:ANM1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_model.ma";
file -r -ns "RIG" -dr 1 -rfn "RIGRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_rig.ma";
file -r -ns "MCP1" -dr 1 -rfn "MCP1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/animations/walke.ma";
requires maya "2018ff09";
requires -nodeType "HIKRetargeterNode" -nodeType "HIKSK2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2016.5";
requires -nodeType "vstExportNode" "PVstExportNode.py" "2.1.0";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" "matrixNodes" "1.0";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2018.0.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" "quatNodes" "1.0";
requires "PVstRigLocators.py" "Unknown";
requires "vsMaster" "1.0";
requires "vstUtils" "1.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201811122215-49253d42f6";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "C6309AD2-4637-9A76-8D0D-46A2F98CC091";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 65.164939307039973 186.34099995590086 267.21312688303067 ;
	setAttr ".r" -type "double3" -27.938352729606333 11.000000000003604 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA1BD692-4DBA-E741-4CC8-1E86A64239DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 303.75162582562734;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FEE6E220-4B26-158D-E356-B395533757D0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BA7315B8-4E8E-4307-AC94-74838207C0D5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "2428C62B-4A18-EB31-A44C-639DC27ED0C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CDB70D9E-4A9C-952B-FEC1-AD9540477FD4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "A70DFAFF-4768-C097-B1A0-07B6AC740589";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E3ABDFB6-4C59-B9B6-9FB2-309616055265";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "65BCB57A-4A48-B300-FDE3-3FA58D037D64";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B1DBF4CA-4C8B-57F1-B045-DCB8DE379FD9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6038867B-4194-E4A8-304D-D680596AF375";
createNode displayLayerManager -n "layerManager";
	rename -uid "77B7880E-4BBB-0500-F0D1-ABB60114232B";
createNode displayLayer -n "defaultLayer";
	rename -uid "5A16310C-4349-467E-4292-F8956478A955";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AF8E0FAF-444F-D83C-EAD5-00B62756B0BC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BFB9FA2A-4785-AC21-8585-309C86166199";
	setAttr ".g" yes;
createNode reference -n "RIGRN";
	rename -uid "1021DC30-42B9-1684-7449-54AA01A48BED";
	setAttr ".fn[0]" -type "string" "d:/dev/source2/main/content/hlvr/models/characters/gen_man/maya/gen_man_rig.ma";
	setAttr -s 118 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RIGRN"
		"RIGRN" 0
		"RIG:MDLRN" 0
		"RIGRN" 171
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpinePelvis_CTRL_HmNUL|RIG:SpinePelvis_CTRL_SpaceNUL|RIG:SpinePelvis_CTRL_AnimNUL|RIG:SpinePelvis_CTRL|RIG:SpinePelvisTwist_CTRL_HmNUL|RIG:SpinePelvisTwist_CTRL_SpaceNUL|RIG:SpinePelvisTwist_CTRL_AnimNUL|RIG:SpinePelvisTwist_CTRL|RIG:Root_staleSharedShapeParent_SHP" 
		"spineMode" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpinePelvis_CTRL_HmNUL|RIG:SpinePelvis_CTRL_SpaceNUL|RIG:SpinePelvis_CTRL_AnimNUL|RIG:SpinePelvis_CTRL|RIG:SpinePelvisTwist_CTRL_HmNUL|RIG:SpinePelvisTwist_CTRL_SpaceNUL|RIG:SpinePelvisTwist_CTRL_AnimNUL|RIG:SpinePelvisTwist_CTRL|RIG:Root_staleSharedShapeParent_SHP" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpinePelvis_CTRL_HmNUL|RIG:SpinePelvis_CTRL_SpaceNUL|RIG:SpinePelvis_CTRL_AnimNUL|RIG:SpinePelvis_CTRL|RIG:SpinePelvisTwist_CTRL_HmNUL|RIG:SpinePelvisTwist_CTRL_SpaceNUL|RIG:SpinePelvisTwist_CTRL_AnimNUL|RIG:SpinePelvisTwist_CTRL|RIG:Root_staleSharedShapeParent_SHP" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineInnerChest_CTRL_HmNUL|RIG:SpineInnerChest_CTRL_SpaceNUL|RIG:SpineInnerChest_CTRL_AnimNUL|RIG:SpineInnerChest_CTRL|RIG:__NeckHead|RIG:NeckIK_CTRL_HmNUL|RIG:NeckIK_CTRL_SpaceNUL|RIG:NeckIK_CTRL_AnimNUL|RIG:NeckIK_CTRL|RIG:NeckTwistBase_CTRL_HmNUL|RIG:NeckTwistBase_CTRL_SpaceNUL|RIG:NeckTwistBase_CTRL_AnimNUL|RIG:NeckTwistBase_CTRL|RIG:NeckHead_CTRL_ATTRIBUTES" 
		"neckMode" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineInnerChest_CTRL_HmNUL|RIG:SpineInnerChest_CTRL_SpaceNUL|RIG:SpineInnerChest_CTRL_AnimNUL|RIG:SpineInnerChest_CTRL|RIG:__NeckHead|RIG:NeckIK_CTRL_HmNUL|RIG:NeckIK_CTRL_SpaceNUL|RIG:NeckIK_CTRL_AnimNUL|RIG:NeckIK_CTRL|RIG:NeckTwistBase_CTRL_HmNUL|RIG:NeckTwistBase_CTRL_SpaceNUL|RIG:NeckTwistBase_CTRL_AnimNUL|RIG:NeckTwistBase_CTRL|RIG:NeckHead_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineInnerChest_CTRL_HmNUL|RIG:SpineInnerChest_CTRL_SpaceNUL|RIG:SpineInnerChest_CTRL_AnimNUL|RIG:SpineInnerChest_CTRL|RIG:__NeckHead|RIG:NeckIK_CTRL_HmNUL|RIG:NeckIK_CTRL_SpaceNUL|RIG:NeckIK_CTRL_AnimNUL|RIG:NeckIK_CTRL|RIG:NeckTwistBase_CTRL_HmNUL|RIG:NeckTwistBase_CTRL_SpaceNUL|RIG:NeckTwistBase_CTRL_AnimNUL|RIG:NeckTwistBase_CTRL|RIG:NeckHead_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL|RIG:LegFkchildParent_R_NUL|RIG:__RightFoot|RIG:FootFK_0_R_CTRL_HmNUL|RIG:FootFK_0_R_CTRL_SpaceNUL|RIG:FootFK_0_R_CTRL_AnimNUL|RIG:FootFK_0_R_CTRL|RIG:FootFK_1_R_CTRL_HmNUL|RIG:FootFK_1_R_CTRL_SpaceNUL|RIG:FootFK_1_R_CTRL_AnimNUL|RIG:FootFK_1_R_CTRL|RIG:Foot_R_staleSharedShapeParent_SHP" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL|RIG:LegFkchildParent_R_NUL|RIG:__RightFoot|RIG:FootFK_0_R_CTRL_HmNUL|RIG:FootFK_0_R_CTRL_SpaceNUL|RIG:FootFK_0_R_CTRL_AnimNUL|RIG:FootFK_0_R_CTRL|RIG:FootFK_1_R_CTRL_HmNUL|RIG:FootFK_1_R_CTRL_SpaceNUL|RIG:FootFK_1_R_CTRL_AnimNUL|RIG:FootFK_1_R_CTRL|RIG:Foot_R_staleSharedShapeParent_SHP" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL|RIG:LegFkchildParent_R_NUL|RIG:__RightFoot|RIG:FootFK_0_R_CTRL_HmNUL|RIG:FootFK_0_R_CTRL_SpaceNUL|RIG:FootFK_0_R_CTRL_AnimNUL|RIG:FootFK_0_R_CTRL|RIG:FootFK_1_R_CTRL_HmNUL|RIG:FootFK_1_R_CTRL_SpaceNUL|RIG:FootFK_1_R_CTRL_AnimNUL|RIG:FootFK_1_R_CTRL|RIG:Foot_R_staleSharedShapeParent_SHP" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL|RIG:LegFkchildParent_L_NUL|RIG:__LeftFoot|RIG:FootFK_0_L_CTRL_HmNUL|RIG:FootFK_0_L_CTRL_SpaceNUL|RIG:FootFK_0_L_CTRL_AnimNUL|RIG:FootFK_0_L_CTRL|RIG:FootFK_1_L_CTRL_HmNUL|RIG:FootFK_1_L_CTRL_SpaceNUL|RIG:FootFK_1_L_CTRL_AnimNUL|RIG:FootFK_1_L_CTRL|RIG:Foot_L_staleSharedShapeParent_SHP" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL|RIG:LegFkchildParent_L_NUL|RIG:__LeftFoot|RIG:FootFK_0_L_CTRL_HmNUL|RIG:FootFK_0_L_CTRL_SpaceNUL|RIG:FootFK_0_L_CTRL_AnimNUL|RIG:FootFK_0_L_CTRL|RIG:FootFK_1_L_CTRL_HmNUL|RIG:FootFK_1_L_CTRL_SpaceNUL|RIG:FootFK_1_L_CTRL_AnimNUL|RIG:FootFK_1_L_CTRL|RIG:Foot_L_staleSharedShapeParent_SHP" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL|RIG:LegFkchildParent_L_NUL|RIG:__LeftFoot|RIG:FootFK_0_L_CTRL_HmNUL|RIG:FootFK_0_L_CTRL_SpaceNUL|RIG:FootFK_0_L_CTRL_AnimNUL|RIG:FootFK_0_L_CTRL|RIG:FootFK_1_L_CTRL_HmNUL|RIG:FootFK_1_L_CTRL_SpaceNUL|RIG:FootFK_1_L_CTRL_AnimNUL|RIG:FootFK_1_L_CTRL|RIG:Foot_L_staleSharedShapeParent_SHP" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightThumb|RIG:Thumb_rig_HmNUL|RIG:ThumbRevIK_R_CTRL_HmNUL|RIG:ThumbRevIK_R_CTRL_SpaceNUL|RIG:ThumbRevIK_R_CTRL_AnimNUL|RIG:ThumbRevIK_R_CTRL|RIG:Thumb_R_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightThumb|RIG:Thumb_rig_HmNUL|RIG:ThumbRevIK_R_CTRL_HmNUL|RIG:ThumbRevIK_R_CTRL_SpaceNUL|RIG:ThumbRevIK_R_CTRL_AnimNUL|RIG:ThumbRevIK_R_CTRL|RIG:Thumb_R_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightThumb|RIG:Thumb_rig_HmNUL|RIG:ThumbRevIK_R_CTRL_HmNUL|RIG:ThumbRevIK_R_CTRL_SpaceNUL|RIG:ThumbRevIK_R_CTRL_AnimNUL|RIG:ThumbRevIK_R_CTRL|RIG:Thumb_R_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightRing|RIG:Ring_rig_HmNUL|RIG:RingRevIK_R_CTRL_HmNUL|RIG:RingRevIK_R_CTRL_SpaceNUL|RIG:RingRevIK_R_CTRL_AnimNUL|RIG:RingRevIK_R_CTRL|RIG:Ring_R_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightRing|RIG:Ring_rig_HmNUL|RIG:RingRevIK_R_CTRL_HmNUL|RIG:RingRevIK_R_CTRL_SpaceNUL|RIG:RingRevIK_R_CTRL_AnimNUL|RIG:RingRevIK_R_CTRL|RIG:Ring_R_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightRing|RIG:Ring_rig_HmNUL|RIG:RingRevIK_R_CTRL_HmNUL|RIG:RingRevIK_R_CTRL_SpaceNUL|RIG:RingRevIK_R_CTRL_AnimNUL|RIG:RingRevIK_R_CTRL|RIG:Ring_R_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightPinky|RIG:Pinky_rig_HmNUL|RIG:PinkyRevIK_R_CTRL_HmNUL|RIG:PinkyRevIK_R_CTRL_SpaceNUL|RIG:PinkyRevIK_R_CTRL_AnimNUL|RIG:PinkyRevIK_R_CTRL|RIG:Pinky_R_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightPinky|RIG:Pinky_rig_HmNUL|RIG:PinkyRevIK_R_CTRL_HmNUL|RIG:PinkyRevIK_R_CTRL_SpaceNUL|RIG:PinkyRevIK_R_CTRL_AnimNUL|RIG:PinkyRevIK_R_CTRL|RIG:Pinky_R_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightPinky|RIG:Pinky_rig_HmNUL|RIG:PinkyRevIK_R_CTRL_HmNUL|RIG:PinkyRevIK_R_CTRL_SpaceNUL|RIG:PinkyRevIK_R_CTRL_AnimNUL|RIG:PinkyRevIK_R_CTRL|RIG:Pinky_R_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightMiddle|RIG:Middle_rig_HmNUL|RIG:MiddleRevIK_R_CTRL_HmNUL|RIG:MiddleRevIK_R_CTRL_SpaceNUL|RIG:MiddleRevIK_R_CTRL_AnimNUL|RIG:MiddleRevIK_R_CTRL|RIG:Middle_R_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightMiddle|RIG:Middle_rig_HmNUL|RIG:MiddleRevIK_R_CTRL_HmNUL|RIG:MiddleRevIK_R_CTRL_SpaceNUL|RIG:MiddleRevIK_R_CTRL_AnimNUL|RIG:MiddleRevIK_R_CTRL|RIG:Middle_R_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightMiddle|RIG:Middle_rig_HmNUL|RIG:MiddleRevIK_R_CTRL_HmNUL|RIG:MiddleRevIK_R_CTRL_SpaceNUL|RIG:MiddleRevIK_R_CTRL_AnimNUL|RIG:MiddleRevIK_R_CTRL|RIG:Middle_R_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightIndex|RIG:Index_rig_HmNUL|RIG:IndexRevIK_R_CTRL_HmNUL|RIG:IndexRevIK_R_CTRL_SpaceNUL|RIG:IndexRevIK_R_CTRL_AnimNUL|RIG:IndexRevIK_R_CTRL|RIG:Index_R_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightIndex|RIG:Index_rig_HmNUL|RIG:IndexRevIK_R_CTRL_HmNUL|RIG:IndexRevIK_R_CTRL_SpaceNUL|RIG:IndexRevIK_R_CTRL_AnimNUL|RIG:IndexRevIK_R_CTRL|RIG:Index_R_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_JNT|RIG:ArmFK_1_R_JNT|RIG:ArmFK_2_R_JNT|RIG:ArmChildPartParent_R_NUL|RIG:__RightIndex|RIG:Index_rig_HmNUL|RIG:IndexRevIK_R_CTRL_HmNUL|RIG:IndexRevIK_R_CTRL_SpaceNUL|RIG:IndexRevIK_R_CTRL_AnimNUL|RIG:IndexRevIK_R_CTRL|RIG:Index_R_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL|RIG:Arm_R_SharedShape_transform_SHP" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL|RIG:Arm_R_SharedShape_transform_SHP" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL|RIG:Arm_R_SharedShape_transform_SHP" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftThumb|RIG:Thumb_rig_HmNUL|RIG:ThumbRevIK_L_CTRL_HmNUL|RIG:ThumbRevIK_L_CTRL_SpaceNUL|RIG:ThumbRevIK_L_CTRL_AnimNUL|RIG:ThumbRevIK_L_CTRL|RIG:Thumb_L_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftThumb|RIG:Thumb_rig_HmNUL|RIG:ThumbRevIK_L_CTRL_HmNUL|RIG:ThumbRevIK_L_CTRL_SpaceNUL|RIG:ThumbRevIK_L_CTRL_AnimNUL|RIG:ThumbRevIK_L_CTRL|RIG:Thumb_L_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftThumb|RIG:Thumb_rig_HmNUL|RIG:ThumbRevIK_L_CTRL_HmNUL|RIG:ThumbRevIK_L_CTRL_SpaceNUL|RIG:ThumbRevIK_L_CTRL_AnimNUL|RIG:ThumbRevIK_L_CTRL|RIG:Thumb_L_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftRing|RIG:Ring_rig_HmNUL|RIG:RingRevIK_L_CTRL_HmNUL|RIG:RingRevIK_L_CTRL_SpaceNUL|RIG:RingRevIK_L_CTRL_AnimNUL|RIG:RingRevIK_L_CTRL|RIG:Ring_L_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftRing|RIG:Ring_rig_HmNUL|RIG:RingRevIK_L_CTRL_HmNUL|RIG:RingRevIK_L_CTRL_SpaceNUL|RIG:RingRevIK_L_CTRL_AnimNUL|RIG:RingRevIK_L_CTRL|RIG:Ring_L_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftRing|RIG:Ring_rig_HmNUL|RIG:RingRevIK_L_CTRL_HmNUL|RIG:RingRevIK_L_CTRL_SpaceNUL|RIG:RingRevIK_L_CTRL_AnimNUL|RIG:RingRevIK_L_CTRL|RIG:Ring_L_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftPinky|RIG:Pinky_rig_HmNUL|RIG:PinkyRevIK_L_CTRL_HmNUL|RIG:PinkyRevIK_L_CTRL_SpaceNUL|RIG:PinkyRevIK_L_CTRL_AnimNUL|RIG:PinkyRevIK_L_CTRL|RIG:Pinky_L_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftPinky|RIG:Pinky_rig_HmNUL|RIG:PinkyRevIK_L_CTRL_HmNUL|RIG:PinkyRevIK_L_CTRL_SpaceNUL|RIG:PinkyRevIK_L_CTRL_AnimNUL|RIG:PinkyRevIK_L_CTRL|RIG:Pinky_L_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftPinky|RIG:Pinky_rig_HmNUL|RIG:PinkyRevIK_L_CTRL_HmNUL|RIG:PinkyRevIK_L_CTRL_SpaceNUL|RIG:PinkyRevIK_L_CTRL_AnimNUL|RIG:PinkyRevIK_L_CTRL|RIG:Pinky_L_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftMiddle|RIG:Middle_rig_HmNUL|RIG:MiddleRevIK_L_CTRL_HmNUL|RIG:MiddleRevIK_L_CTRL_SpaceNUL|RIG:MiddleRevIK_L_CTRL_AnimNUL|RIG:MiddleRevIK_L_CTRL|RIG:Middle_L_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftMiddle|RIG:Middle_rig_HmNUL|RIG:MiddleRevIK_L_CTRL_HmNUL|RIG:MiddleRevIK_L_CTRL_SpaceNUL|RIG:MiddleRevIK_L_CTRL_AnimNUL|RIG:MiddleRevIK_L_CTRL|RIG:Middle_L_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftMiddle|RIG:Middle_rig_HmNUL|RIG:MiddleRevIK_L_CTRL_HmNUL|RIG:MiddleRevIK_L_CTRL_SpaceNUL|RIG:MiddleRevIK_L_CTRL_AnimNUL|RIG:MiddleRevIK_L_CTRL|RIG:Middle_L_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftIndex|RIG:Index_rig_HmNUL|RIG:IndexRevIK_L_CTRL_HmNUL|RIG:IndexRevIK_L_CTRL_SpaceNUL|RIG:IndexRevIK_L_CTRL_AnimNUL|RIG:IndexRevIK_L_CTRL|RIG:Index_L_CTRL_ATTRIBUTES" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftIndex|RIG:Index_rig_HmNUL|RIG:IndexRevIK_L_CTRL_HmNUL|RIG:IndexRevIK_L_CTRL_SpaceNUL|RIG:IndexRevIK_L_CTRL_AnimNUL|RIG:IndexRevIK_L_CTRL|RIG:Index_L_CTRL_ATTRIBUTES" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_JNT|RIG:ArmFK_1_L_JNT|RIG:ArmFK_2_L_JNT|RIG:ArmChildPartParent_L_NUL|RIG:__LeftIndex|RIG:Index_rig_HmNUL|RIG:IndexRevIK_L_CTRL_HmNUL|RIG:IndexRevIK_L_CTRL_SpaceNUL|RIG:IndexRevIK_L_CTRL_AnimNUL|RIG:IndexRevIK_L_CTRL|RIG:Index_L_CTRL_ATTRIBUTES" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL|RIG:Clavicle_L_SharedShape_transform_SHP" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL|RIG:Clavicle_L_SharedShape_transform_SHP" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL|RIG:Clavicle_L_SharedShape_transform_SHP" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:ExportRelativeAllTranslate|RIG:ExportRelative_CTRL_HmNUL|RIG:ExportRelative_CTRL_SpaceNUL|RIG:ExportRelative_CTRL_AnimNUL|RIG:ExportRelative_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|RIG:GEN_MAN|RIG:ExportRelativeAllTranslate|RIG:ExportRelative_CTRL_HmNUL|RIG:ExportRelative_CTRL_SpaceNUL|RIG:ExportRelative_CTRL_AnimNUL|RIG:ExportRelative_CTRL" 
		"track" " -k 1 2"
		2 "RIG:HIKSolverNode1" "InputStance" " 1"
		2 "RIG:CustomRigRetargeterNode1" "connected" " 1"
		2 "RIG:CustomRigRetargeterNode1" "pythonVar" " -type \"string\" \"HIKRetargeter_9528222019e74714b5674da139e2c843\""
		
		3 "RIG:HIKSolverNode1.OutputCharacterState" "RIG:HIKState2SK1.InputCharacterState" 
		""
		3 "RIG:HIKSolverNode1.OutputCharacterState" "RIG:HIKState2GlobalSK1.InputCharacterState" 
		""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.translate" 
		"RIGRN.placeHolderList[3]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[4]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotate" 
		"RIGRN.placeHolderList[5]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[6]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[7]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[8]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotate" 
		"RIGRN.placeHolderList[9]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.translate" 
		"RIGRN.placeHolderList[10]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[11]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[12]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[13]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[14]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotate" 
		"RIGRN.placeHolderList[15]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.translate" 
		"RIGRN.placeHolderList[16]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[17]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[18]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[19]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[20]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotate" 
		"RIGRN.placeHolderList[21]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.translate" 
		"RIGRN.placeHolderList[22]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[23]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[24]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[25]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[26]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotate" 
		"RIGRN.placeHolderList[27]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.translate" 
		"RIGRN.placeHolderList[28]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[29]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[30]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[31]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[32]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.rotate" 
		"RIGRN.placeHolderList[33]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[34]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[35]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.rotate" 
		"RIGRN.placeHolderList[36]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[37]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[38]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.rotate" 
		"RIGRN.placeHolderList[39]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[40]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[41]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.rotate" 
		"RIGRN.placeHolderList[42]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[43]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[44]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.rotate" 
		"RIGRN.placeHolderList[45]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[46]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[47]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.rotate" 
		"RIGRN.placeHolderList[48]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[49]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[50]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.translate" 
		"RIGRN.placeHolderList[51]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[52]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotate" 
		"RIGRN.placeHolderList[53]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[54]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[55]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[56]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.rotate" 
		"RIGRN.placeHolderList[57]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[58]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[59]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.rotate" 
		"RIGRN.placeHolderList[60]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[61]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[62]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.rotate" 
		"RIGRN.placeHolderList[63]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[64]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[65]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.rotate" 
		"RIGRN.placeHolderList[66]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[67]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[68]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotate" 
		"RIGRN.placeHolderList[69]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.translate" 
		"RIGRN.placeHolderList[70]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[71]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[72]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[73]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[74]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.rotate" 
		"RIGRN.placeHolderList[75]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[76]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[77]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.rotate" 
		"RIGRN.placeHolderList[78]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[79]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[80]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.rotate" 
		"RIGRN.placeHolderList[81]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[82]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[83]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.rotate" 
		"RIGRN.placeHolderList[84]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[85]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[86]" ""
		5 3 "RIGRN" "RIG:GEN_MAN_CHAR.OutputCharacterDefinition" "RIGRN.placeHolderList[87]" 
		""
		5 3 "RIGRN" "RIG:HIKproperties1.OutputPropertySetState" "RIGRN.placeHolderList[88]" 
		""
		5 4 "RIGRN" "RIG:HIKState2SK1.InputCharacterState" "RIGRN.placeHolderList[89]" 
		""
		5 4 "RIGRN" "RIG:HIKState2GlobalSK1.InputCharacterState" "RIGRN.placeHolderList[90]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.HipsGX" "RIGRN.placeHolderList[91]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.HipsGX" "RIGRN.placeHolderList[92]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.SpineGX" "RIGRN.placeHolderList[93]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.SpineGX" "RIGRN.placeHolderList[94]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine1GX" "RIGRN.placeHolderList[95]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine1GX" "RIGRN.placeHolderList[96]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine2GX" "RIGRN.placeHolderList[97]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine2GX" "RIGRN.placeHolderList[98]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.HeadGX" "RIGRN.placeHolderList[99]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.HeadGX" "RIGRN.placeHolderList[100]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftShoulderGX" "RIGRN.placeHolderList[101]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftArmGX" "RIGRN.placeHolderList[102]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftForeArmGX" "RIGRN.placeHolderList[103]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftHandGX" "RIGRN.placeHolderList[104]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftUpLegGX" "RIGRN.placeHolderList[105]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftLegGX" "RIGRN.placeHolderList[106]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftFootGX" "RIGRN.placeHolderList[107]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightShoulderGX" "RIGRN.placeHolderList[108]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightArmGX" "RIGRN.placeHolderList[109]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightForeArmGX" "RIGRN.placeHolderList[110]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightHandGX" "RIGRN.placeHolderList[111]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightUpLegGX" "RIGRN.placeHolderList[112]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightLegGX" "RIGRN.placeHolderList[113]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightFootGX" "RIGRN.placeHolderList[114]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.NeckGX" "RIGRN.placeHolderList[115]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.NeckGX" "RIGRN.placeHolderList[116]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine3GX" "RIGRN.placeHolderList[117]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine3GX" "RIGRN.placeHolderList[118]" 
		""
		"RIG:MDLRN" 62
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0" "drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1" "drawStyle" 
		" 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_index_meta_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_index_meta_L|RIG:MDL:finger_index_0_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_index_meta_L|RIG:MDL:finger_index_0_L|RIG:MDL:finger_index_1_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_index_meta_L|RIG:MDL:finger_index_0_L|RIG:MDL:finger_index_1_L|RIG:MDL:finger_index_2_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_pinky_meta_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_pinky_meta_L|RIG:MDL:finger_pinky_0_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_pinky_meta_L|RIG:MDL:finger_pinky_0_L|RIG:MDL:finger_pinky_1_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_pinky_meta_L|RIG:MDL:finger_pinky_0_L|RIG:MDL:finger_pinky_1_L|RIG:MDL:finger_pinky_2_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_middle_meta_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_middle_meta_L|RIG:MDL:finger_middle_0_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_middle_meta_L|RIG:MDL:finger_middle_0_L|RIG:MDL:finger_middle_1_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_middle_meta_L|RIG:MDL:finger_middle_0_L|RIG:MDL:finger_middle_1_L|RIG:MDL:finger_middle_2_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_ring_meta_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_ring_meta_L|RIG:MDL:finger_ring_0_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_ring_meta_L|RIG:MDL:finger_ring_0_L|RIG:MDL:finger_ring_1_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_ring_meta_L|RIG:MDL:finger_ring_0_L|RIG:MDL:finger_ring_1_L|RIG:MDL:finger_ring_2_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_thumb_0_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_thumb_0_L|RIG:MDL:finger_thumb_1_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_L|RIG:MDL:arm_upper_L|RIG:MDL:arm_lower_L|RIG:MDL:hand_L|RIG:MDL:finger_thumb_0_L|RIG:MDL:finger_thumb_1_L|RIG:MDL:finger_thumb_2_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:neck_0" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:neck_0|RIG:MDL:head" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_thumb_0_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_thumb_0_R|RIG:MDL:finger_thumb_1_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_thumb_0_R|RIG:MDL:finger_thumb_1_R|RIG:MDL:finger_thumb_2_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_ring_meta_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_ring_meta_R|RIG:MDL:finger_ring_0_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_ring_meta_R|RIG:MDL:finger_ring_0_R|RIG:MDL:finger_ring_1_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_ring_meta_R|RIG:MDL:finger_ring_0_R|RIG:MDL:finger_ring_1_R|RIG:MDL:finger_ring_2_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_middle_meta_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_middle_meta_R|RIG:MDL:finger_middle_0_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_middle_meta_R|RIG:MDL:finger_middle_0_R|RIG:MDL:finger_middle_1_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_middle_meta_R|RIG:MDL:finger_middle_0_R|RIG:MDL:finger_middle_1_R|RIG:MDL:finger_middle_2_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_pinky_meta_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_pinky_meta_R|RIG:MDL:finger_pinky_0_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_pinky_meta_R|RIG:MDL:finger_pinky_0_R|RIG:MDL:finger_pinky_1_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_pinky_meta_R|RIG:MDL:finger_pinky_0_R|RIG:MDL:finger_pinky_1_R|RIG:MDL:finger_pinky_2_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_index_meta_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_index_meta_R|RIG:MDL:finger_index_0_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_index_meta_R|RIG:MDL:finger_index_0_R|RIG:MDL:finger_index_1_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:spine_0|RIG:MDL:spine_1|RIG:MDL:spine_2|RIG:MDL:spine_3|RIG:MDL:clavicle_R|RIG:MDL:arm_upper_R|RIG:MDL:arm_lower_R|RIG:MDL:hand_R|RIG:MDL:finger_index_meta_R|RIG:MDL:finger_index_0_R|RIG:MDL:finger_index_1_R|RIG:MDL:finger_index_2_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:leg_upper_R" "drawStyle" " 0"
		
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:leg_upper_R|RIG:MDL:leg_lower_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:leg_upper_R|RIG:MDL:leg_lower_R|RIG:MDL:ankle_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:leg_upper_R|RIG:MDL:leg_lower_R|RIG:MDL:ankle_R|RIG:MDL:ball_R" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:leg_upper_L" "drawStyle" " 0"
		
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:leg_upper_L|RIG:MDL:leg_lower_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:leg_upper_L|RIG:MDL:leg_lower_L|RIG:MDL:ankle_L" 
		"drawStyle" " 0"
		2 "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis|RIG:MDL:leg_upper_L|RIG:MDL:leg_lower_L|RIG:MDL:ankle_L|RIG:MDL:ball_L" 
		"drawStyle" " 0"
		5 3 "RIGRN" "|RIG:MDL:__GEN_MAN__|RIG:MDL:pelvis.message" "RIGRN.placeHolderList[1]" 
		""
		5 3 "RIGRN" "|RIG:MDL:__GEN_MAN__|RIG:MDL:root_motion.message" "RIGRN.placeHolderList[2]" 
		"";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A319D136-421F-4727-25DD-34846135B293";
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
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 0\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 1\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2224\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"vPlanarDisplay\" 0 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 0 \n            -pluginObjects \"vChainDisplay\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 1\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2224\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2224\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "423FBE93-4A21-4C2D-F83F-FAAD3C38F3B6";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 26 -ast 0 -aet 26 ";
	setAttr ".st" 6;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "A57452F7-4B2D-1CE1-2320-50A7331ECF15";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "BAF45CD4-47CE-1485-66AB-2991920C6E2A";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "335A7C57-4795-AAF8-2AB9-86BC371A48E2";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "99F6771C-4B57-E986-BD82-33BB9E07F459";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "53601865-410A-DD45-EC44-2C99A6E0C64B";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode reference -n "MCP1RN";
	rename -uid "C32532D3-4242-10EF-972C-97971029AB53";
	setAttr ".fn[0]" -type "string" "d:/dev/source2/main/content/hlvr_addons/custom_character/models/biped_standard/maya/animations/walkn.ma";
	setAttr -s 1597 ".phl";
	setAttr ".phl[1603]" 0;
	setAttr ".phl[1604]" 0;
	setAttr ".phl[1605]" 0;
	setAttr ".phl[1606]" 0;
	setAttr ".phl[1607]" 0;
	setAttr ".phl[1608]" 0;
	setAttr ".phl[1609]" 0;
	setAttr ".phl[1610]" 0;
	setAttr ".phl[1611]" 0;
	setAttr ".phl[1612]" 0;
	setAttr ".phl[1613]" 0;
	setAttr ".phl[1614]" 0;
	setAttr ".phl[1615]" 0;
	setAttr ".phl[1616]" 0;
	setAttr ".phl[1617]" 0;
	setAttr ".phl[1618]" 0;
	setAttr ".phl[1619]" 0;
	setAttr ".phl[1620]" 0;
	setAttr ".phl[1621]" 0;
	setAttr ".phl[1622]" 0;
	setAttr ".phl[1623]" 0;
	setAttr ".phl[1624]" 0;
	setAttr ".phl[1625]" 0;
	setAttr ".phl[1626]" 0;
	setAttr ".phl[1627]" 0;
	setAttr ".phl[1628]" 0;
	setAttr ".phl[1629]" 0;
	setAttr ".phl[1630]" 0;
	setAttr ".phl[1631]" 0;
	setAttr ".phl[1632]" 0;
	setAttr ".phl[1633]" 0;
	setAttr ".phl[1634]" 0;
	setAttr ".phl[1635]" 0;
	setAttr ".phl[1636]" 0;
	setAttr ".phl[1637]" 0;
	setAttr ".phl[1638]" 0;
	setAttr ".phl[1639]" 0;
	setAttr ".phl[1640]" 0;
	setAttr ".phl[1641]" 0;
	setAttr ".phl[1642]" 0;
	setAttr ".phl[1643]" 0;
	setAttr ".phl[1644]" 0;
	setAttr ".phl[1645]" 0;
	setAttr ".phl[1646]" 0;
	setAttr ".phl[1647]" 0;
	setAttr ".phl[1648]" 0;
	setAttr ".phl[1649]" 0;
	setAttr ".phl[1650]" 0;
	setAttr ".phl[1651]" 0;
	setAttr ".phl[1652]" 0;
	setAttr ".phl[1653]" 0;
	setAttr ".phl[1654]" 0;
	setAttr ".phl[1655]" 0;
	setAttr ".phl[1656]" 0;
	setAttr ".phl[1657]" 0;
	setAttr ".phl[1658]" 0;
	setAttr ".phl[1659]" 0;
	setAttr ".phl[1660]" 0;
	setAttr ".phl[1661]" 0;
	setAttr ".phl[1662]" 0;
	setAttr ".phl[1663]" 0;
	setAttr ".phl[1664]" 0;
	setAttr ".phl[1665]" 0;
	setAttr ".phl[1666]" 0;
	setAttr ".phl[1667]" 0;
	setAttr ".phl[1668]" 0;
	setAttr ".phl[1669]" 0;
	setAttr ".phl[1670]" 0;
	setAttr ".phl[1671]" 0;
	setAttr ".phl[1672]" 0;
	setAttr ".phl[1673]" 0;
	setAttr ".phl[1674]" 0;
	setAttr ".phl[1675]" 0;
	setAttr ".phl[1676]" 0;
	setAttr ".phl[1677]" 0;
	setAttr ".phl[1678]" 0;
	setAttr ".phl[1679]" 0;
	setAttr ".phl[1680]" 0;
	setAttr ".phl[1681]" 0;
	setAttr ".phl[1682]" 0;
	setAttr ".phl[1683]" 0;
	setAttr ".phl[1684]" 0;
	setAttr ".phl[1685]" 0;
	setAttr ".phl[1686]" 0;
	setAttr ".phl[1687]" 0;
	setAttr ".phl[1688]" 0;
	setAttr ".phl[1689]" 0;
	setAttr ".phl[1690]" 0;
	setAttr ".phl[1691]" 0;
	setAttr ".phl[1692]" 0;
	setAttr ".phl[1693]" 0;
	setAttr ".phl[1694]" 0;
	setAttr ".phl[1695]" 0;
	setAttr ".phl[1696]" 0;
	setAttr ".phl[1697]" 0;
	setAttr ".phl[1698]" 0;
	setAttr ".phl[1699]" 0;
	setAttr ".phl[1700]" 0;
	setAttr ".phl[1701]" 0;
	setAttr ".phl[1702]" 0;
	setAttr ".phl[1703]" 0;
	setAttr ".phl[1704]" 0;
	setAttr ".phl[1705]" 0;
	setAttr ".phl[1706]" 0;
	setAttr ".phl[1707]" 0;
	setAttr ".phl[1708]" 0;
	setAttr ".phl[1709]" 0;
	setAttr ".phl[1710]" 0;
	setAttr ".phl[1711]" 0;
	setAttr ".phl[1712]" 0;
	setAttr ".phl[1713]" 0;
	setAttr ".phl[1714]" 0;
	setAttr ".phl[1715]" 0;
	setAttr ".phl[1716]" 0;
	setAttr ".phl[1717]" 0;
	setAttr ".phl[1718]" 0;
	setAttr ".phl[1719]" 0;
	setAttr ".phl[1720]" 0;
	setAttr ".phl[1721]" 0;
	setAttr ".phl[1722]" 0;
	setAttr ".phl[1723]" 0;
	setAttr ".phl[1724]" 0;
	setAttr ".phl[1725]" 0;
	setAttr ".phl[1726]" 0;
	setAttr ".phl[1727]" 0;
	setAttr ".phl[1728]" 0;
	setAttr ".phl[1729]" 0;
	setAttr ".phl[1730]" 0;
	setAttr ".phl[1731]" 0;
	setAttr ".phl[1732]" 0;
	setAttr ".phl[1733]" 0;
	setAttr ".phl[1734]" 0;
	setAttr ".phl[1735]" 0;
	setAttr ".phl[1736]" 0;
	setAttr ".phl[1737]" 0;
	setAttr ".phl[1738]" 0;
	setAttr ".phl[1739]" 0;
	setAttr ".phl[1740]" 0;
	setAttr ".phl[1741]" 0;
	setAttr ".phl[1742]" 0;
	setAttr ".phl[1743]" 0;
	setAttr ".phl[1744]" 0;
	setAttr ".phl[1745]" 0;
	setAttr ".phl[1746]" 0;
	setAttr ".phl[1747]" 0;
	setAttr ".phl[1748]" 0;
	setAttr ".phl[1749]" 0;
	setAttr ".phl[1750]" 0;
	setAttr ".phl[1751]" 0;
	setAttr ".phl[1752]" 0;
	setAttr ".phl[1753]" 0;
	setAttr ".phl[1754]" 0;
	setAttr ".phl[1755]" 0;
	setAttr ".phl[1756]" 0;
	setAttr ".phl[1757]" 0;
	setAttr ".phl[1758]" 0;
	setAttr ".phl[1759]" 0;
	setAttr ".phl[1760]" 0;
	setAttr ".phl[1761]" 0;
	setAttr ".phl[1762]" 0;
	setAttr ".phl[1763]" 0;
	setAttr ".phl[1764]" 0;
	setAttr ".phl[1765]" 0;
	setAttr ".phl[1766]" 0;
	setAttr ".phl[1767]" 0;
	setAttr ".phl[1768]" 0;
	setAttr ".phl[1769]" 0;
	setAttr ".phl[1770]" 0;
	setAttr ".phl[1771]" 0;
	setAttr ".phl[1772]" 0;
	setAttr ".phl[1773]" 0;
	setAttr ".phl[1774]" 0;
	setAttr ".phl[1775]" 0;
	setAttr ".phl[1776]" 0;
	setAttr ".phl[1777]" 0;
	setAttr ".phl[1778]" 0;
	setAttr ".phl[1779]" 0;
	setAttr ".phl[1780]" 0;
	setAttr ".phl[1781]" 0;
	setAttr ".phl[1782]" 0;
	setAttr ".phl[1783]" 0;
	setAttr ".phl[1784]" 0;
	setAttr ".phl[1785]" 0;
	setAttr ".phl[1786]" 0;
	setAttr ".phl[1787]" 0;
	setAttr ".phl[1788]" 0;
	setAttr ".phl[1789]" 0;
	setAttr ".phl[1790]" 0;
	setAttr ".phl[1791]" 0;
	setAttr ".phl[1792]" 0;
	setAttr ".phl[1793]" 0;
	setAttr ".phl[1794]" 0;
	setAttr ".phl[1795]" 0;
	setAttr ".phl[1796]" 0;
	setAttr ".phl[1797]" 0;
	setAttr ".phl[1798]" 0;
	setAttr ".phl[1799]" 0;
	setAttr ".phl[1800]" 0;
	setAttr ".phl[1801]" 0;
	setAttr ".phl[1802]" 0;
	setAttr ".phl[1803]" 0;
	setAttr ".phl[1804]" 0;
	setAttr ".phl[1805]" 0;
	setAttr ".phl[1806]" 0;
	setAttr ".phl[1807]" 0;
	setAttr ".phl[1808]" 0;
	setAttr ".phl[1809]" 0;
	setAttr ".phl[1810]" 0;
	setAttr ".phl[1811]" 0;
	setAttr ".phl[1812]" 0;
	setAttr ".phl[1813]" 0;
	setAttr ".phl[1814]" 0;
	setAttr ".phl[1815]" 0;
	setAttr ".phl[1816]" 0;
	setAttr ".phl[1817]" 0;
	setAttr ".phl[1818]" 0;
	setAttr ".phl[1819]" 0;
	setAttr ".phl[1820]" 0;
	setAttr ".phl[1821]" 0;
	setAttr ".phl[1822]" 0;
	setAttr ".phl[1823]" 0;
	setAttr ".phl[1824]" 0;
	setAttr ".phl[1825]" 0;
	setAttr ".phl[1826]" 0;
	setAttr ".phl[1827]" 0;
	setAttr ".phl[1828]" 0;
	setAttr ".phl[1829]" 0;
	setAttr ".phl[1830]" 0;
	setAttr ".phl[1831]" 0;
	setAttr ".phl[1832]" 0;
	setAttr ".phl[1833]" 0;
	setAttr ".phl[1834]" 0;
	setAttr ".phl[1835]" 0;
	setAttr ".phl[1836]" 0;
	setAttr ".phl[1837]" 0;
	setAttr ".phl[1838]" 0;
	setAttr ".phl[1839]" 0;
	setAttr ".phl[1840]" 0;
	setAttr ".phl[1841]" 0;
	setAttr ".phl[1842]" 0;
	setAttr ".phl[1843]" 0;
	setAttr ".phl[1844]" 0;
	setAttr ".phl[1845]" 0;
	setAttr ".phl[1846]" 0;
	setAttr ".phl[1847]" 0;
	setAttr ".phl[1848]" 0;
	setAttr ".phl[1849]" 0;
	setAttr ".phl[1850]" 0;
	setAttr ".phl[1851]" 0;
	setAttr ".phl[1852]" 0;
	setAttr ".phl[1853]" 0;
	setAttr ".phl[1854]" 0;
	setAttr ".phl[1855]" 0;
	setAttr ".phl[1856]" 0;
	setAttr ".phl[1857]" 0;
	setAttr ".phl[1858]" 0;
	setAttr ".phl[1859]" 0;
	setAttr ".phl[1860]" 0;
	setAttr ".phl[1861]" 0;
	setAttr ".phl[1862]" 0;
	setAttr ".phl[1863]" 0;
	setAttr ".phl[1864]" 0;
	setAttr ".phl[1865]" 0;
	setAttr ".phl[1866]" 0;
	setAttr ".phl[1867]" 0;
	setAttr ".phl[1868]" 0;
	setAttr ".phl[1869]" 0;
	setAttr ".phl[1870]" 0;
	setAttr ".phl[1871]" 0;
	setAttr ".phl[1872]" 0;
	setAttr ".phl[1873]" 0;
	setAttr ".phl[1874]" 0;
	setAttr ".phl[1875]" 0;
	setAttr ".phl[1876]" 0;
	setAttr ".phl[1877]" 0;
	setAttr ".phl[1878]" 0;
	setAttr ".phl[1879]" 0;
	setAttr ".phl[1880]" 0;
	setAttr ".phl[1881]" 0;
	setAttr ".phl[1882]" 0;
	setAttr ".phl[1883]" 0;
	setAttr ".phl[1884]" 0;
	setAttr ".phl[1885]" 0;
	setAttr ".phl[1886]" 0;
	setAttr ".phl[1887]" 0;
	setAttr ".phl[1888]" 0;
	setAttr ".phl[1889]" 0;
	setAttr ".phl[1890]" 0;
	setAttr ".phl[1891]" 0;
	setAttr ".phl[1892]" 0;
	setAttr ".phl[1893]" 0;
	setAttr ".phl[1894]" 0;
	setAttr ".phl[1895]" 0;
	setAttr ".phl[1896]" 0;
	setAttr ".phl[1897]" 0;
	setAttr ".phl[1898]" 0;
	setAttr ".phl[1899]" 0;
	setAttr ".phl[1900]" 0;
	setAttr ".phl[1901]" 0;
	setAttr ".phl[1902]" 0;
	setAttr ".phl[1903]" 0;
	setAttr ".phl[1904]" 0;
	setAttr ".phl[1905]" 0;
	setAttr ".phl[1906]" 0;
	setAttr ".phl[1907]" 0;
	setAttr ".phl[1908]" 0;
	setAttr ".phl[1909]" 0;
	setAttr ".phl[1910]" 0;
	setAttr ".phl[1911]" 0;
	setAttr ".phl[1912]" 0;
	setAttr ".phl[1913]" 0;
	setAttr ".phl[1914]" 0;
	setAttr ".phl[1915]" 0;
	setAttr ".phl[1916]" 0;
	setAttr ".phl[1917]" 0;
	setAttr ".phl[1918]" 0;
	setAttr ".phl[1919]" 0;
	setAttr ".phl[1920]" 0;
	setAttr ".phl[1921]" 0;
	setAttr ".phl[1922]" 0;
	setAttr ".phl[1923]" 0;
	setAttr ".phl[1924]" 0;
	setAttr ".phl[1925]" 0;
	setAttr ".phl[1926]" 0;
	setAttr ".phl[1927]" 0;
	setAttr ".phl[1928]" 0;
	setAttr ".phl[1929]" 0;
	setAttr ".phl[1930]" 0;
	setAttr ".phl[1931]" 0;
	setAttr ".phl[1932]" 0;
	setAttr ".phl[1933]" 0;
	setAttr ".phl[1934]" 0;
	setAttr ".phl[1935]" 0;
	setAttr ".phl[1936]" 0;
	setAttr ".phl[1937]" 0;
	setAttr ".phl[1938]" 0;
	setAttr ".phl[1939]" 0;
	setAttr ".phl[1940]" 0;
	setAttr ".phl[1941]" 0;
	setAttr ".phl[1942]" 0;
	setAttr ".phl[1943]" 0;
	setAttr ".phl[1944]" 0;
	setAttr ".phl[1945]" 0;
	setAttr ".phl[1946]" 0;
	setAttr ".phl[1947]" 0;
	setAttr ".phl[1948]" 0;
	setAttr ".phl[1949]" 0;
	setAttr ".phl[1950]" 0;
	setAttr ".phl[1951]" 0;
	setAttr ".phl[1952]" 0;
	setAttr ".phl[1953]" 0;
	setAttr ".phl[1954]" 0;
	setAttr ".phl[1955]" 0;
	setAttr ".phl[1956]" 0;
	setAttr ".phl[1957]" 0;
	setAttr ".phl[1958]" 0;
	setAttr ".phl[1959]" 0;
	setAttr ".phl[1960]" 0;
	setAttr ".phl[1961]" 0;
	setAttr ".phl[1962]" 0;
	setAttr ".phl[1963]" 0;
	setAttr ".phl[1964]" 0;
	setAttr ".phl[1965]" 0;
	setAttr ".phl[1966]" 0;
	setAttr ".phl[1967]" 0;
	setAttr ".phl[1968]" 0;
	setAttr ".phl[1969]" 0;
	setAttr ".phl[1970]" 0;
	setAttr ".phl[1971]" 0;
	setAttr ".phl[1972]" 0;
	setAttr ".phl[1973]" 0;
	setAttr ".phl[1974]" 0;
	setAttr ".phl[1975]" 0;
	setAttr ".phl[1976]" 0;
	setAttr ".phl[1977]" 0;
	setAttr ".phl[1978]" 0;
	setAttr ".phl[1979]" 0;
	setAttr ".phl[1980]" 0;
	setAttr ".phl[1981]" 0;
	setAttr ".phl[1982]" 0;
	setAttr ".phl[1983]" 0;
	setAttr ".phl[1984]" 0;
	setAttr ".phl[1985]" 0;
	setAttr ".phl[1986]" 0;
	setAttr ".phl[1987]" 0;
	setAttr ".phl[1988]" 0;
	setAttr ".phl[1989]" 0;
	setAttr ".phl[1990]" 0;
	setAttr ".phl[1991]" 0;
	setAttr ".phl[1992]" 0;
	setAttr ".phl[1993]" 0;
	setAttr ".phl[1994]" 0;
	setAttr ".phl[1995]" 0;
	setAttr ".phl[1996]" 0;
	setAttr ".phl[1997]" 0;
	setAttr ".phl[1998]" 0;
	setAttr ".phl[1999]" 0;
	setAttr ".phl[2000]" 0;
	setAttr ".phl[2001]" 0;
	setAttr ".phl[2002]" 0;
	setAttr ".phl[2003]" 0;
	setAttr ".phl[2004]" 0;
	setAttr ".phl[2005]" 0;
	setAttr ".phl[2006]" 0;
	setAttr ".phl[2007]" 0;
	setAttr ".phl[2008]" 0;
	setAttr ".phl[2009]" 0;
	setAttr ".phl[2010]" 0;
	setAttr ".phl[2011]" 0;
	setAttr ".phl[2012]" 0;
	setAttr ".phl[2013]" 0;
	setAttr ".phl[2014]" 0;
	setAttr ".phl[2015]" 0;
	setAttr ".phl[2016]" 0;
	setAttr ".phl[2017]" 0;
	setAttr ".phl[2018]" 0;
	setAttr ".phl[2019]" 0;
	setAttr ".phl[2020]" 0;
	setAttr ".phl[2021]" 0;
	setAttr ".phl[2022]" 0;
	setAttr ".phl[2023]" 0;
	setAttr ".phl[2024]" 0;
	setAttr ".phl[2025]" 0;
	setAttr ".phl[2026]" 0;
	setAttr ".phl[2027]" 0;
	setAttr ".phl[2028]" 0;
	setAttr ".phl[2029]" 0;
	setAttr ".phl[2030]" 0;
	setAttr ".phl[2031]" 0;
	setAttr ".phl[2032]" 0;
	setAttr ".phl[2033]" 0;
	setAttr ".phl[2034]" 0;
	setAttr ".phl[2035]" 0;
	setAttr ".phl[2036]" 0;
	setAttr ".phl[2037]" 0;
	setAttr ".phl[2038]" 0;
	setAttr ".phl[2039]" 0;
	setAttr ".phl[2040]" 0;
	setAttr ".phl[2041]" 0;
	setAttr ".phl[2042]" 0;
	setAttr ".phl[2043]" 0;
	setAttr ".phl[2044]" 0;
	setAttr ".phl[2045]" 0;
	setAttr ".phl[2046]" 0;
	setAttr ".phl[2047]" 0;
	setAttr ".phl[2048]" 0;
	setAttr ".phl[2049]" 0;
	setAttr ".phl[2050]" 0;
	setAttr ".phl[2051]" 0;
	setAttr ".phl[2052]" 0;
	setAttr ".phl[2053]" 0;
	setAttr ".phl[2054]" 0;
	setAttr ".phl[2055]" 0;
	setAttr ".phl[2056]" 0;
	setAttr ".phl[2057]" 0;
	setAttr ".phl[2058]" 0;
	setAttr ".phl[2059]" 0;
	setAttr ".phl[2060]" 0;
	setAttr ".phl[2061]" 0;
	setAttr ".phl[2062]" 0;
	setAttr ".phl[2063]" 0;
	setAttr ".phl[2064]" 0;
	setAttr ".phl[2065]" 0;
	setAttr ".phl[2066]" 0;
	setAttr ".phl[2067]" 0;
	setAttr ".phl[2068]" 0;
	setAttr ".phl[2069]" 0;
	setAttr ".phl[2070]" 0;
	setAttr ".phl[2071]" 0;
	setAttr ".phl[2072]" 0;
	setAttr ".phl[2073]" 0;
	setAttr ".phl[2074]" 0;
	setAttr ".phl[2075]" 0;
	setAttr ".phl[2076]" 0;
	setAttr ".phl[2077]" 0;
	setAttr ".phl[2078]" 0;
	setAttr ".phl[2079]" 0;
	setAttr ".phl[2080]" 0;
	setAttr ".phl[2081]" 0;
	setAttr ".phl[2082]" 0;
	setAttr ".phl[2083]" 0;
	setAttr ".phl[2084]" 0;
	setAttr ".phl[2085]" 0;
	setAttr ".phl[2086]" 0;
	setAttr ".phl[2087]" 0;
	setAttr ".phl[2088]" 0;
	setAttr ".phl[2089]" 0;
	setAttr ".phl[2090]" 0;
	setAttr ".phl[2091]" 0;
	setAttr ".phl[2092]" 0;
	setAttr ".phl[2093]" 0;
	setAttr ".phl[2094]" 0;
	setAttr ".phl[2095]" 0;
	setAttr ".phl[2096]" 0;
	setAttr ".phl[2097]" 0;
	setAttr ".phl[2098]" 0;
	setAttr ".phl[2099]" 0;
	setAttr ".phl[2100]" 0;
	setAttr ".phl[2101]" 0;
	setAttr ".phl[2102]" 0;
	setAttr ".phl[2103]" 0;
	setAttr ".phl[2104]" 0;
	setAttr ".phl[2105]" 0;
	setAttr ".phl[2106]" 0;
	setAttr ".phl[2107]" 0;
	setAttr ".phl[2108]" 0;
	setAttr ".phl[2109]" 0;
	setAttr ".phl[2110]" 0;
	setAttr ".phl[2111]" 0;
	setAttr ".phl[2112]" 0;
	setAttr ".phl[2113]" 0;
	setAttr ".phl[2114]" 0;
	setAttr ".phl[2115]" 0;
	setAttr ".phl[2116]" 0;
	setAttr ".phl[2117]" 0;
	setAttr ".phl[2118]" 0;
	setAttr ".phl[2119]" 0;
	setAttr ".phl[2120]" 0;
	setAttr ".phl[2121]" 0;
	setAttr ".phl[2122]" 0;
	setAttr ".phl[2123]" 0;
	setAttr ".phl[2124]" 0;
	setAttr ".phl[2125]" 0;
	setAttr ".phl[2126]" 0;
	setAttr ".phl[2127]" 0;
	setAttr ".phl[2128]" 0;
	setAttr ".phl[2129]" 0;
	setAttr ".phl[2130]" 0;
	setAttr ".phl[2131]" 0;
	setAttr ".phl[2132]" 0;
	setAttr ".phl[2133]" 0;
	setAttr ".phl[2134]" 0;
	setAttr ".phl[2135]" 0;
	setAttr ".phl[2136]" 0;
	setAttr ".phl[2137]" 0;
	setAttr ".phl[2138]" 0;
	setAttr ".phl[2139]" 0;
	setAttr ".phl[2140]" 0;
	setAttr ".phl[2141]" 0;
	setAttr ".phl[2142]" 0;
	setAttr ".phl[2143]" 0;
	setAttr ".phl[2144]" 0;
	setAttr ".phl[2145]" 0;
	setAttr ".phl[2146]" 0;
	setAttr ".phl[2147]" 0;
	setAttr ".phl[2148]" 0;
	setAttr ".phl[2149]" 0;
	setAttr ".phl[2150]" 0;
	setAttr ".phl[2151]" 0;
	setAttr ".phl[2152]" 0;
	setAttr ".phl[2153]" 0;
	setAttr ".phl[2154]" 0;
	setAttr ".phl[2155]" 0;
	setAttr ".phl[2156]" 0;
	setAttr ".phl[2157]" 0;
	setAttr ".phl[2158]" 0;
	setAttr ".phl[2159]" 0;
	setAttr ".phl[2160]" 0;
	setAttr ".phl[2161]" 0;
	setAttr ".phl[2162]" 0;
	setAttr ".phl[2163]" 0;
	setAttr ".phl[2164]" 0;
	setAttr ".phl[2165]" 0;
	setAttr ".phl[2166]" 0;
	setAttr ".phl[2167]" 0;
	setAttr ".phl[2168]" 0;
	setAttr ".phl[2169]" 0;
	setAttr ".phl[2170]" 0;
	setAttr ".phl[2171]" 0;
	setAttr ".phl[2172]" 0;
	setAttr ".phl[2173]" 0;
	setAttr ".phl[2174]" 0;
	setAttr ".phl[2175]" 0;
	setAttr ".phl[2176]" 0;
	setAttr ".phl[2177]" 0;
	setAttr ".phl[2178]" 0;
	setAttr ".phl[2179]" 0;
	setAttr ".phl[2180]" 0;
	setAttr ".phl[2181]" 0;
	setAttr ".phl[2182]" 0;
	setAttr ".phl[2183]" 0;
	setAttr ".phl[2184]" 0;
	setAttr ".phl[2185]" 0;
	setAttr ".phl[2186]" 0;
	setAttr ".phl[2187]" 0;
	setAttr ".phl[2188]" 0;
	setAttr ".phl[2189]" 0;
	setAttr ".phl[2190]" 0;
	setAttr ".phl[2191]" 0;
	setAttr ".phl[2192]" 0;
	setAttr ".phl[2193]" 0;
	setAttr ".phl[2194]" 0;
	setAttr ".phl[2195]" 0;
	setAttr ".phl[2196]" 0;
	setAttr ".phl[2197]" 0;
	setAttr ".phl[2198]" 0;
	setAttr ".phl[2199]" 0;
	setAttr ".phl[2200]" 0;
	setAttr ".phl[2201]" 0;
	setAttr ".phl[2202]" 0;
	setAttr ".phl[2203]" 0;
	setAttr ".phl[2204]" 0;
	setAttr ".phl[2205]" 0;
	setAttr ".phl[2206]" 0;
	setAttr ".phl[2207]" 0;
	setAttr ".phl[2208]" 0;
	setAttr ".phl[2209]" 0;
	setAttr ".phl[2210]" 0;
	setAttr ".phl[2211]" 0;
	setAttr ".phl[2212]" 0;
	setAttr ".phl[2213]" 0;
	setAttr ".phl[2214]" 0;
	setAttr ".phl[2215]" 0;
	setAttr ".phl[2216]" 0;
	setAttr ".phl[2217]" 0;
	setAttr ".phl[2218]" 0;
	setAttr ".phl[2219]" 0;
	setAttr ".phl[2220]" 0;
	setAttr ".phl[2221]" 0;
	setAttr ".phl[2222]" 0;
	setAttr ".phl[2223]" 0;
	setAttr ".phl[2224]" 0;
	setAttr ".phl[2225]" 0;
	setAttr ".phl[2226]" 0;
	setAttr ".phl[2227]" 0;
	setAttr ".phl[2228]" 0;
	setAttr ".phl[2229]" 0;
	setAttr ".phl[2230]" 0;
	setAttr ".phl[2231]" 0;
	setAttr ".phl[2232]" 0;
	setAttr ".phl[2233]" 0;
	setAttr ".phl[2234]" 0;
	setAttr ".phl[2235]" 0;
	setAttr ".phl[2236]" 0;
	setAttr ".phl[2237]" 0;
	setAttr ".phl[2238]" 0;
	setAttr ".phl[2239]" 0;
	setAttr ".phl[2240]" 0;
	setAttr ".phl[2241]" 0;
	setAttr ".phl[2242]" 0;
	setAttr ".phl[2243]" 0;
	setAttr ".phl[2244]" 0;
	setAttr ".phl[2245]" 0;
	setAttr ".phl[2246]" 0;
	setAttr ".phl[2247]" 0;
	setAttr ".phl[2248]" 0;
	setAttr ".phl[2249]" 0;
	setAttr ".phl[2250]" 0;
	setAttr ".phl[2251]" 0;
	setAttr ".phl[2252]" 0;
	setAttr ".phl[2253]" 0;
	setAttr ".phl[2254]" 0;
	setAttr ".phl[2255]" 0;
	setAttr ".phl[2256]" 0;
	setAttr ".phl[2257]" 0;
	setAttr ".phl[2258]" 0;
	setAttr ".phl[2259]" 0;
	setAttr ".phl[2260]" 0;
	setAttr ".phl[2261]" 0;
	setAttr ".phl[2262]" 0;
	setAttr ".phl[2263]" 0;
	setAttr ".phl[2264]" 0;
	setAttr ".phl[2265]" 0;
	setAttr ".phl[2266]" 0;
	setAttr ".phl[2267]" 0;
	setAttr ".phl[2268]" 0;
	setAttr ".phl[2269]" 0;
	setAttr ".phl[2270]" 0;
	setAttr ".phl[2271]" 0;
	setAttr ".phl[2272]" 0;
	setAttr ".phl[2273]" 0;
	setAttr ".phl[2274]" 0;
	setAttr ".phl[2275]" 0;
	setAttr ".phl[2276]" 0;
	setAttr ".phl[2277]" 0;
	setAttr ".phl[2278]" 0;
	setAttr ".phl[2279]" 0;
	setAttr ".phl[2280]" 0;
	setAttr ".phl[2281]" 0;
	setAttr ".phl[2282]" 0;
	setAttr ".phl[2283]" 0;
	setAttr ".phl[2284]" 0;
	setAttr ".phl[2285]" 0;
	setAttr ".phl[2286]" 0;
	setAttr ".phl[2287]" 0;
	setAttr ".phl[2288]" 0;
	setAttr ".phl[2289]" 0;
	setAttr ".phl[2290]" 0;
	setAttr ".phl[2291]" 0;
	setAttr ".phl[2292]" 0;
	setAttr ".phl[2293]" 0;
	setAttr ".phl[2294]" 0;
	setAttr ".phl[2295]" 0;
	setAttr ".phl[2296]" 0;
	setAttr ".phl[2297]" 0;
	setAttr ".phl[2298]" 0;
	setAttr ".phl[2299]" 0;
	setAttr ".phl[2300]" 0;
	setAttr ".phl[2301]" 0;
	setAttr ".phl[2302]" 0;
	setAttr ".phl[2303]" 0;
	setAttr ".phl[2304]" 0;
	setAttr ".phl[2305]" 0;
	setAttr ".phl[2306]" 0;
	setAttr ".phl[2307]" 0;
	setAttr ".phl[2308]" 0;
	setAttr ".phl[2309]" 0;
	setAttr ".phl[2310]" 0;
	setAttr ".phl[2311]" 0;
	setAttr ".phl[2312]" 0;
	setAttr ".phl[2313]" 0;
	setAttr ".phl[2314]" 0;
	setAttr ".phl[2315]" 0;
	setAttr ".phl[2316]" 0;
	setAttr ".phl[2317]" 0;
	setAttr ".phl[2318]" 0;
	setAttr ".phl[2319]" 0;
	setAttr ".phl[2320]" 0;
	setAttr ".phl[2321]" 0;
	setAttr ".phl[2322]" 0;
	setAttr ".phl[2323]" 0;
	setAttr ".phl[2324]" 0;
	setAttr ".phl[2325]" 0;
	setAttr ".phl[2326]" 0;
	setAttr ".phl[2327]" 0;
	setAttr ".phl[2328]" 0;
	setAttr ".phl[2329]" 0;
	setAttr ".phl[2330]" 0;
	setAttr ".phl[2331]" 0;
	setAttr ".phl[2332]" 0;
	setAttr ".phl[2333]" 0;
	setAttr ".phl[2334]" 0;
	setAttr ".phl[2335]" 0;
	setAttr ".phl[2336]" 0;
	setAttr ".phl[2337]" 0;
	setAttr ".phl[2338]" 0;
	setAttr ".phl[2339]" 0;
	setAttr ".phl[2340]" 0;
	setAttr ".phl[2341]" 0;
	setAttr ".phl[2342]" 0;
	setAttr ".phl[2343]" 0;
	setAttr ".phl[2344]" 0;
	setAttr ".phl[2345]" 0;
	setAttr ".phl[2346]" 0;
	setAttr ".phl[2347]" 0;
	setAttr ".phl[2348]" 0;
	setAttr ".phl[2349]" 0;
	setAttr ".phl[2350]" 0;
	setAttr ".phl[2351]" 0;
	setAttr ".phl[2352]" 0;
	setAttr ".phl[2353]" 0;
	setAttr ".phl[2354]" 0;
	setAttr ".phl[2355]" 0;
	setAttr ".phl[2356]" 0;
	setAttr ".phl[2357]" 0;
	setAttr ".phl[2358]" 0;
	setAttr ".phl[2359]" 0;
	setAttr ".phl[2360]" 0;
	setAttr ".phl[2361]" 0;
	setAttr ".phl[2362]" 0;
	setAttr ".phl[2363]" 0;
	setAttr ".phl[2364]" 0;
	setAttr ".phl[2365]" 0;
	setAttr ".phl[2366]" 0;
	setAttr ".phl[2367]" 0;
	setAttr ".phl[2368]" 0;
	setAttr ".phl[2369]" 0;
	setAttr ".phl[2370]" 0;
	setAttr ".phl[2371]" 0;
	setAttr ".phl[2372]" 0;
	setAttr ".phl[2373]" 0;
	setAttr ".phl[2374]" 0;
	setAttr ".phl[2375]" 0;
	setAttr ".phl[2376]" 0;
	setAttr ".phl[2377]" 0;
	setAttr ".phl[2378]" 0;
	setAttr ".phl[2379]" 0;
	setAttr ".phl[2380]" 0;
	setAttr ".phl[2381]" 0;
	setAttr ".phl[2382]" 0;
	setAttr ".phl[2383]" 0;
	setAttr ".phl[2384]" 0;
	setAttr ".phl[2385]" 0;
	setAttr ".phl[2386]" 0;
	setAttr ".phl[2387]" 0;
	setAttr ".phl[2388]" 0;
	setAttr ".phl[2389]" 0;
	setAttr ".phl[2390]" 0;
	setAttr ".phl[2391]" 0;
	setAttr ".phl[2392]" 0;
	setAttr ".phl[2393]" 0;
	setAttr ".phl[2394]" 0;
	setAttr ".phl[2395]" 0;
	setAttr ".phl[2396]" 0;
	setAttr ".phl[2397]" 0;
	setAttr ".phl[2398]" 0;
	setAttr ".phl[2399]" 0;
	setAttr ".phl[2400]" 0;
	setAttr ".phl[2401]" 0;
	setAttr ".phl[2402]" 0;
	setAttr ".phl[2403]" 0;
	setAttr ".phl[2404]" 0;
	setAttr ".phl[2405]" 0;
	setAttr ".phl[2406]" 0;
	setAttr ".phl[2407]" 0;
	setAttr ".phl[2408]" 0;
	setAttr ".phl[2409]" 0;
	setAttr ".phl[2410]" 0;
	setAttr ".phl[2411]" 0;
	setAttr ".phl[2412]" 0;
	setAttr ".phl[2413]" 0;
	setAttr ".phl[2414]" 0;
	setAttr ".phl[2415]" 0;
	setAttr ".phl[2416]" 0;
	setAttr ".phl[2417]" 0;
	setAttr ".phl[2418]" 0;
	setAttr ".phl[2419]" 0;
	setAttr ".phl[2420]" 0;
	setAttr ".phl[2421]" 0;
	setAttr ".phl[2422]" 0;
	setAttr ".phl[2423]" 0;
	setAttr ".phl[2424]" 0;
	setAttr ".phl[2425]" 0;
	setAttr ".phl[2426]" 0;
	setAttr ".phl[2427]" 0;
	setAttr ".phl[2428]" 0;
	setAttr ".phl[2429]" 0;
	setAttr ".phl[2430]" 0;
	setAttr ".phl[2431]" 0;
	setAttr ".phl[2432]" 0;
	setAttr ".phl[2433]" 0;
	setAttr ".phl[2434]" 0;
	setAttr ".phl[2435]" 0;
	setAttr ".phl[2436]" 0;
	setAttr ".phl[2437]" 0;
	setAttr ".phl[2438]" 0;
	setAttr ".phl[2439]" 0;
	setAttr ".phl[2440]" 0;
	setAttr ".phl[2441]" 0;
	setAttr ".phl[2442]" 0;
	setAttr ".phl[2443]" 0;
	setAttr ".phl[2444]" 0;
	setAttr ".phl[2445]" 0;
	setAttr ".phl[2446]" 0;
	setAttr ".phl[2447]" 0;
	setAttr ".phl[2448]" 0;
	setAttr ".phl[2449]" 0;
	setAttr ".phl[2450]" 0;
	setAttr ".phl[2451]" 0;
	setAttr ".phl[2452]" 0;
	setAttr ".phl[2453]" 0;
	setAttr ".phl[2454]" 0;
	setAttr ".phl[2455]" 0;
	setAttr ".phl[2456]" 0;
	setAttr ".phl[2457]" 0;
	setAttr ".phl[2458]" 0;
	setAttr ".phl[2459]" 0;
	setAttr ".phl[2460]" 0;
	setAttr ".phl[2461]" 0;
	setAttr ".phl[2462]" 0;
	setAttr ".phl[2463]" 0;
	setAttr ".phl[2464]" 0;
	setAttr ".phl[2465]" 0;
	setAttr ".phl[2466]" 0;
	setAttr ".phl[2467]" 0;
	setAttr ".phl[2468]" 0;
	setAttr ".phl[2469]" 0;
	setAttr ".phl[2470]" 0;
	setAttr ".phl[2471]" 0;
	setAttr ".phl[2472]" 0;
	setAttr ".phl[2473]" 0;
	setAttr ".phl[2474]" 0;
	setAttr ".phl[2475]" 0;
	setAttr ".phl[2476]" 0;
	setAttr ".phl[2477]" 0;
	setAttr ".phl[2478]" 0;
	setAttr ".phl[2479]" 0;
	setAttr ".phl[2480]" 0;
	setAttr ".phl[2481]" 0;
	setAttr ".phl[2482]" 0;
	setAttr ".phl[2483]" 0;
	setAttr ".phl[2484]" 0;
	setAttr ".phl[2485]" 0;
	setAttr ".phl[2486]" 0;
	setAttr ".phl[2487]" 0;
	setAttr ".phl[2488]" 0;
	setAttr ".phl[2489]" 0;
	setAttr ".phl[2490]" 0;
	setAttr ".phl[2491]" 0;
	setAttr ".phl[2492]" 0;
	setAttr ".phl[2493]" 0;
	setAttr ".phl[2494]" 0;
	setAttr ".phl[2495]" 0;
	setAttr ".phl[2496]" 0;
	setAttr ".phl[2497]" 0;
	setAttr ".phl[2498]" 0;
	setAttr ".phl[2499]" 0;
	setAttr ".phl[2500]" 0;
	setAttr ".phl[2501]" 0;
	setAttr ".phl[2502]" 0;
	setAttr ".phl[2503]" 0;
	setAttr ".phl[2504]" 0;
	setAttr ".phl[2505]" 0;
	setAttr ".phl[2506]" 0;
	setAttr ".phl[2507]" 0;
	setAttr ".phl[2508]" 0;
	setAttr ".phl[2509]" 0;
	setAttr ".phl[2510]" 0;
	setAttr ".phl[2511]" 0;
	setAttr ".phl[2512]" 0;
	setAttr ".phl[2513]" 0;
	setAttr ".phl[2514]" 0;
	setAttr ".phl[2515]" 0;
	setAttr ".phl[2516]" 0;
	setAttr ".phl[2517]" 0;
	setAttr ".phl[2518]" 0;
	setAttr ".phl[2519]" 0;
	setAttr ".phl[2520]" 0;
	setAttr ".phl[2521]" 0;
	setAttr ".phl[2522]" 0;
	setAttr ".phl[2523]" 0;
	setAttr ".phl[2524]" 0;
	setAttr ".phl[2525]" 0;
	setAttr ".phl[2526]" 0;
	setAttr ".phl[2527]" 0;
	setAttr ".phl[2528]" 0;
	setAttr ".phl[2529]" 0;
	setAttr ".phl[2530]" 0;
	setAttr ".phl[2531]" 0;
	setAttr ".phl[2532]" 0;
	setAttr ".phl[2533]" 0;
	setAttr ".phl[2534]" 0;
	setAttr ".phl[2535]" 0;
	setAttr ".phl[2536]" 0;
	setAttr ".phl[2537]" 0;
	setAttr ".phl[2538]" 0;
	setAttr ".phl[2539]" 0;
	setAttr ".phl[2540]" 0;
	setAttr ".phl[2541]" 0;
	setAttr ".phl[2542]" 0;
	setAttr ".phl[2543]" 0;
	setAttr ".phl[2544]" 0;
	setAttr ".phl[2545]" 0;
	setAttr ".phl[2546]" 0;
	setAttr ".phl[2547]" 0;
	setAttr ".phl[2548]" 0;
	setAttr ".phl[2549]" 0;
	setAttr ".phl[2550]" 0;
	setAttr ".phl[2551]" 0;
	setAttr ".phl[2552]" 0;
	setAttr ".phl[2553]" 0;
	setAttr ".phl[2554]" 0;
	setAttr ".phl[2555]" 0;
	setAttr ".phl[2556]" 0;
	setAttr ".phl[2557]" 0;
	setAttr ".phl[2558]" 0;
	setAttr ".phl[2559]" 0;
	setAttr ".phl[2560]" 0;
	setAttr ".phl[2561]" 0;
	setAttr ".phl[2562]" 0;
	setAttr ".phl[2563]" 0;
	setAttr ".phl[2564]" 0;
	setAttr ".phl[2565]" 0;
	setAttr ".phl[2566]" 0;
	setAttr ".phl[2567]" 0;
	setAttr ".phl[2568]" 0;
	setAttr ".phl[2569]" 0;
	setAttr ".phl[2570]" 0;
	setAttr ".phl[2571]" 0;
	setAttr ".phl[2572]" 0;
	setAttr ".phl[2573]" 0;
	setAttr ".phl[2574]" 0;
	setAttr ".phl[2575]" 0;
	setAttr ".phl[2576]" 0;
	setAttr ".phl[2577]" 0;
	setAttr ".phl[2578]" 0;
	setAttr ".phl[2579]" 0;
	setAttr ".phl[2580]" 0;
	setAttr ".phl[2581]" 0;
	setAttr ".phl[2582]" 0;
	setAttr ".phl[2583]" 0;
	setAttr ".phl[2584]" 0;
	setAttr ".phl[2585]" 0;
	setAttr ".phl[2586]" 0;
	setAttr ".phl[2587]" 0;
	setAttr ".phl[2588]" 0;
	setAttr ".phl[2589]" 0;
	setAttr ".phl[2590]" 0;
	setAttr ".phl[2591]" 0;
	setAttr ".phl[2592]" 0;
	setAttr ".phl[2593]" 0;
	setAttr ".phl[2594]" 0;
	setAttr ".phl[2595]" 0;
	setAttr ".phl[2596]" 0;
	setAttr ".phl[2597]" 0;
	setAttr ".phl[2598]" 0;
	setAttr ".phl[2599]" 0;
	setAttr ".phl[2600]" 0;
	setAttr ".phl[2601]" 0;
	setAttr ".phl[2602]" 0;
	setAttr ".phl[2603]" 0;
	setAttr ".phl[2604]" 0;
	setAttr ".phl[2605]" 0;
	setAttr ".phl[2606]" 0;
	setAttr ".phl[2607]" 0;
	setAttr ".phl[2608]" 0;
	setAttr ".phl[2609]" 0;
	setAttr ".phl[2610]" 0;
	setAttr ".phl[2611]" 0;
	setAttr ".phl[2612]" 0;
	setAttr ".phl[2613]" 0;
	setAttr ".phl[2614]" 0;
	setAttr ".phl[2615]" 0;
	setAttr ".phl[2616]" 0;
	setAttr ".phl[2617]" 0;
	setAttr ".phl[2618]" 0;
	setAttr ".phl[2619]" 0;
	setAttr ".phl[2620]" 0;
	setAttr ".phl[2621]" 0;
	setAttr ".phl[2622]" 0;
	setAttr ".phl[2623]" 0;
	setAttr ".phl[2624]" 0;
	setAttr ".phl[2625]" 0;
	setAttr ".phl[2626]" 0;
	setAttr ".phl[2627]" 0;
	setAttr ".phl[2628]" 0;
	setAttr ".phl[2629]" 0;
	setAttr ".phl[2630]" 0;
	setAttr ".phl[2631]" 0;
	setAttr ".phl[2632]" 0;
	setAttr ".phl[2633]" 0;
	setAttr ".phl[2634]" 0;
	setAttr ".phl[2635]" 0;
	setAttr ".phl[2636]" 0;
	setAttr ".phl[2637]" 0;
	setAttr ".phl[2638]" 0;
	setAttr ".phl[2639]" 0;
	setAttr ".phl[2640]" 0;
	setAttr ".phl[2641]" 0;
	setAttr ".phl[2642]" 0;
	setAttr ".phl[2643]" 0;
	setAttr ".phl[2644]" 0;
	setAttr ".phl[2645]" 0;
	setAttr ".phl[2646]" 0;
	setAttr ".phl[2647]" 0;
	setAttr ".phl[2648]" 0;
	setAttr ".phl[2649]" 0;
	setAttr ".phl[2650]" 0;
	setAttr ".phl[2651]" 0;
	setAttr ".phl[2652]" 0;
	setAttr ".phl[2653]" 0;
	setAttr ".phl[2654]" 0;
	setAttr ".phl[2655]" 0;
	setAttr ".phl[2656]" 0;
	setAttr ".phl[2657]" 0;
	setAttr ".phl[2658]" 0;
	setAttr ".phl[2659]" 0;
	setAttr ".phl[2660]" 0;
	setAttr ".phl[2661]" 0;
	setAttr ".phl[2662]" 0;
	setAttr ".phl[2663]" 0;
	setAttr ".phl[2664]" 0;
	setAttr ".phl[2665]" 0;
	setAttr ".phl[2666]" 0;
	setAttr ".phl[2667]" 0;
	setAttr ".phl[2668]" 0;
	setAttr ".phl[2669]" 0;
	setAttr ".phl[2670]" 0;
	setAttr ".phl[2671]" 0;
	setAttr ".phl[2672]" 0;
	setAttr ".phl[2673]" 0;
	setAttr ".phl[2674]" 0;
	setAttr ".phl[2675]" 0;
	setAttr ".phl[2676]" 0;
	setAttr ".phl[2677]" 0;
	setAttr ".phl[2678]" 0;
	setAttr ".phl[2679]" 0;
	setAttr ".phl[2680]" 0;
	setAttr ".phl[2681]" 0;
	setAttr ".phl[2682]" 0;
	setAttr ".phl[2683]" 0;
	setAttr ".phl[2684]" 0;
	setAttr ".phl[2685]" 0;
	setAttr ".phl[2686]" 0;
	setAttr ".phl[2687]" 0;
	setAttr ".phl[2688]" 0;
	setAttr ".phl[2689]" 0;
	setAttr ".phl[2690]" 0;
	setAttr ".phl[2691]" 0;
	setAttr ".phl[2692]" 0;
	setAttr ".phl[2693]" 0;
	setAttr ".phl[2694]" 0;
	setAttr ".phl[2695]" 0;
	setAttr ".phl[2696]" 0;
	setAttr ".phl[2697]" 0;
	setAttr ".phl[2698]" 0;
	setAttr ".phl[2699]" 0;
	setAttr ".phl[2700]" 0;
	setAttr ".phl[2701]" 0;
	setAttr ".phl[2702]" 0;
	setAttr ".phl[2703]" 0;
	setAttr ".phl[2704]" 0;
	setAttr ".phl[2705]" 0;
	setAttr ".phl[2706]" 0;
	setAttr ".phl[2707]" 0;
	setAttr ".phl[2708]" 0;
	setAttr ".phl[2709]" 0;
	setAttr ".phl[2710]" 0;
	setAttr ".phl[2711]" 0;
	setAttr ".phl[2712]" 0;
	setAttr ".phl[2713]" 0;
	setAttr ".phl[2714]" 0;
	setAttr ".phl[2715]" 0;
	setAttr ".phl[2716]" 0;
	setAttr ".phl[2717]" 0;
	setAttr ".phl[2718]" 0;
	setAttr ".phl[2719]" 0;
	setAttr ".phl[2720]" 0;
	setAttr ".phl[2721]" 0;
	setAttr ".phl[2722]" 0;
	setAttr ".phl[2723]" 0;
	setAttr ".phl[2724]" 0;
	setAttr ".phl[2725]" 0;
	setAttr ".phl[2726]" 0;
	setAttr ".phl[2727]" 0;
	setAttr ".phl[2728]" 0;
	setAttr ".phl[2729]" 0;
	setAttr ".phl[2730]" 0;
	setAttr ".phl[2731]" 0;
	setAttr ".phl[2732]" 0;
	setAttr ".phl[2733]" 0;
	setAttr ".phl[2734]" 0;
	setAttr ".phl[2735]" 0;
	setAttr ".phl[2736]" 0;
	setAttr ".phl[2737]" 0;
	setAttr ".phl[2738]" 0;
	setAttr ".phl[2739]" 0;
	setAttr ".phl[2740]" 0;
	setAttr ".phl[2741]" 0;
	setAttr ".phl[2742]" 0;
	setAttr ".phl[2743]" 0;
	setAttr ".phl[2744]" 0;
	setAttr ".phl[2745]" 0;
	setAttr ".phl[2746]" 0;
	setAttr ".phl[2747]" 0;
	setAttr ".phl[2748]" 0;
	setAttr ".phl[2749]" 0;
	setAttr ".phl[2750]" 0;
	setAttr ".phl[2751]" 0;
	setAttr ".phl[2752]" 0;
	setAttr ".phl[2753]" 0;
	setAttr ".phl[2754]" 0;
	setAttr ".phl[2755]" 0;
	setAttr ".phl[2756]" 0;
	setAttr ".phl[2757]" 0;
	setAttr ".phl[2758]" 0;
	setAttr ".phl[2759]" 0;
	setAttr ".phl[2760]" 0;
	setAttr ".phl[2761]" 0;
	setAttr ".phl[2762]" 0;
	setAttr ".phl[2763]" 0;
	setAttr ".phl[2764]" 0;
	setAttr ".phl[2765]" 0;
	setAttr ".phl[2766]" 0;
	setAttr ".phl[2767]" 0;
	setAttr ".phl[2768]" 0;
	setAttr ".phl[2769]" 0;
	setAttr ".phl[2770]" 0;
	setAttr ".phl[2771]" 0;
	setAttr ".phl[2772]" 0;
	setAttr ".phl[2773]" 0;
	setAttr ".phl[2774]" 0;
	setAttr ".phl[2775]" 0;
	setAttr ".phl[2776]" 0;
	setAttr ".phl[2777]" 0;
	setAttr ".phl[2778]" 0;
	setAttr ".phl[2779]" 0;
	setAttr ".phl[2780]" 0;
	setAttr ".phl[2781]" 0;
	setAttr ".phl[2782]" 0;
	setAttr ".phl[2783]" 0;
	setAttr ".phl[2784]" 0;
	setAttr ".phl[2785]" 0;
	setAttr ".phl[2786]" 0;
	setAttr ".phl[2787]" 0;
	setAttr ".phl[2788]" 0;
	setAttr ".phl[2789]" 0;
	setAttr ".phl[2790]" 0;
	setAttr ".phl[2791]" 0;
	setAttr ".phl[2792]" 0;
	setAttr ".phl[2793]" 0;
	setAttr ".phl[2794]" 0;
	setAttr ".phl[2795]" 0;
	setAttr ".phl[2796]" 0;
	setAttr ".phl[2797]" 0;
	setAttr ".phl[2798]" 0;
	setAttr ".phl[2799]" 0;
	setAttr ".phl[2800]" 0;
	setAttr ".phl[2801]" 0;
	setAttr ".phl[2802]" 0;
	setAttr ".phl[2803]" 0;
	setAttr ".phl[2804]" 0;
	setAttr ".phl[2805]" 0;
	setAttr ".phl[2806]" 0;
	setAttr ".phl[2807]" 0;
	setAttr ".phl[2808]" 0;
	setAttr ".phl[2809]" 0;
	setAttr ".phl[2810]" 0;
	setAttr ".phl[2811]" 0;
	setAttr ".phl[2812]" 0;
	setAttr ".phl[2813]" 0;
	setAttr ".phl[2814]" 0;
	setAttr ".phl[2815]" 0;
	setAttr ".phl[2816]" 0;
	setAttr ".phl[2817]" 0;
	setAttr ".phl[2818]" 0;
	setAttr ".phl[2819]" 0;
	setAttr ".phl[2820]" 0;
	setAttr ".phl[2821]" 0;
	setAttr ".phl[2822]" 0;
	setAttr ".phl[2823]" 0;
	setAttr ".phl[2824]" 0;
	setAttr ".phl[2825]" 0;
	setAttr ".phl[2826]" 0;
	setAttr ".phl[2827]" 0;
	setAttr ".phl[2828]" 0;
	setAttr ".phl[2829]" 0;
	setAttr ".phl[2830]" 0;
	setAttr ".phl[2831]" 0;
	setAttr ".phl[2832]" 0;
	setAttr ".phl[2833]" 0;
	setAttr ".phl[2834]" 0;
	setAttr ".phl[2835]" 0;
	setAttr ".phl[2836]" 0;
	setAttr ".phl[2837]" 0;
	setAttr ".phl[2838]" 0;
	setAttr ".phl[2839]" 0;
	setAttr ".phl[2840]" 0;
	setAttr ".phl[2841]" 0;
	setAttr ".phl[2842]" 0;
	setAttr ".phl[2843]" 0;
	setAttr ".phl[2844]" 0;
	setAttr ".phl[2845]" 0;
	setAttr ".phl[2846]" 0;
	setAttr ".phl[2847]" 0;
	setAttr ".phl[2848]" 0;
	setAttr ".phl[2849]" 0;
	setAttr ".phl[2850]" 0;
	setAttr ".phl[2851]" 0;
	setAttr ".phl[2852]" 0;
	setAttr ".phl[2853]" 0;
	setAttr ".phl[2854]" 0;
	setAttr ".phl[2855]" 0;
	setAttr ".phl[2856]" 0;
	setAttr ".phl[2857]" 0;
	setAttr ".phl[2858]" 0;
	setAttr ".phl[2859]" 0;
	setAttr ".phl[2860]" 0;
	setAttr ".phl[2861]" 0;
	setAttr ".phl[2862]" 0;
	setAttr ".phl[2863]" 0;
	setAttr ".phl[2864]" 0;
	setAttr ".phl[2865]" 0;
	setAttr ".phl[2866]" 0;
	setAttr ".phl[2867]" 0;
	setAttr ".phl[2868]" 0;
	setAttr ".phl[2869]" 0;
	setAttr ".phl[2870]" 0;
	setAttr ".phl[2871]" 0;
	setAttr ".phl[2872]" 0;
	setAttr ".phl[2873]" 0;
	setAttr ".phl[2874]" 0;
	setAttr ".phl[2875]" 0;
	setAttr ".phl[2876]" 0;
	setAttr ".phl[2877]" 0;
	setAttr ".phl[2878]" 0;
	setAttr ".phl[2879]" 0;
	setAttr ".phl[2880]" 0;
	setAttr ".phl[2881]" 0;
	setAttr ".phl[2882]" 0;
	setAttr ".phl[2883]" 0;
	setAttr ".phl[2884]" 0;
	setAttr ".phl[2885]" 0;
	setAttr ".phl[2886]" 0;
	setAttr ".phl[2887]" 0;
	setAttr ".phl[2888]" 0;
	setAttr ".phl[2889]" 0;
	setAttr ".phl[2890]" 0;
	setAttr ".phl[2891]" 0;
	setAttr ".phl[2892]" 0;
	setAttr ".phl[2893]" 0;
	setAttr ".phl[2894]" 0;
	setAttr ".phl[2895]" 0;
	setAttr ".phl[2896]" 0;
	setAttr ".phl[2897]" 0;
	setAttr ".phl[2898]" 0;
	setAttr ".phl[2899]" 0;
	setAttr ".phl[2900]" 0;
	setAttr ".phl[2901]" 0;
	setAttr ".phl[2902]" 0;
	setAttr ".phl[2903]" 0;
	setAttr ".phl[2904]" 0;
	setAttr ".phl[2905]" 0;
	setAttr ".phl[2906]" 0;
	setAttr ".phl[2907]" 0;
	setAttr ".phl[2908]" 0;
	setAttr ".phl[2909]" 0;
	setAttr ".phl[2910]" 0;
	setAttr ".phl[2911]" 0;
	setAttr ".phl[2912]" 0;
	setAttr ".phl[2913]" 0;
	setAttr ".phl[2914]" 0;
	setAttr ".phl[2915]" 0;
	setAttr ".phl[2916]" 0;
	setAttr ".phl[2917]" 0;
	setAttr ".phl[2918]" 0;
	setAttr ".phl[2919]" 0;
	setAttr ".phl[2920]" 0;
	setAttr ".phl[2921]" 0;
	setAttr ".phl[2922]" 0;
	setAttr ".phl[2923]" 0;
	setAttr ".phl[2924]" 0;
	setAttr ".phl[2925]" 0;
	setAttr ".phl[2926]" 0;
	setAttr ".phl[2927]" 0;
	setAttr ".phl[2928]" 0;
	setAttr ".phl[2929]" 0;
	setAttr ".phl[2930]" 0;
	setAttr ".phl[2931]" 0;
	setAttr ".phl[2932]" 0;
	setAttr ".phl[2933]" 0;
	setAttr ".phl[2934]" 0;
	setAttr ".phl[2935]" 0;
	setAttr ".phl[2936]" 0;
	setAttr ".phl[2937]" 0;
	setAttr ".phl[2938]" 0;
	setAttr ".phl[2939]" 0;
	setAttr ".phl[2940]" 0;
	setAttr ".phl[2941]" 0;
	setAttr ".phl[2942]" 0;
	setAttr ".phl[2943]" 0;
	setAttr ".phl[2944]" 0;
	setAttr ".phl[2945]" 0;
	setAttr ".phl[2946]" 0;
	setAttr ".phl[2947]" 0;
	setAttr ".phl[2948]" 0;
	setAttr ".phl[2949]" 0;
	setAttr ".phl[2950]" 0;
	setAttr ".phl[2951]" 0;
	setAttr ".phl[2952]" 0;
	setAttr ".phl[2953]" 0;
	setAttr ".phl[2954]" 0;
	setAttr ".phl[2955]" 0;
	setAttr ".phl[2956]" 0;
	setAttr ".phl[2957]" 0;
	setAttr ".phl[2958]" 0;
	setAttr ".phl[2959]" 0;
	setAttr ".phl[2960]" 0;
	setAttr ".phl[2961]" 0;
	setAttr ".phl[2962]" 0;
	setAttr ".phl[2963]" 0;
	setAttr ".phl[2964]" 0;
	setAttr ".phl[2965]" 0;
	setAttr ".phl[2966]" 0;
	setAttr ".phl[2967]" 0;
	setAttr ".phl[2968]" 0;
	setAttr ".phl[2969]" 0;
	setAttr ".phl[2970]" 0;
	setAttr ".phl[2971]" 0;
	setAttr ".phl[2972]" 0;
	setAttr ".phl[2973]" 0;
	setAttr ".phl[2974]" 0;
	setAttr ".phl[2975]" 0;
	setAttr ".phl[2976]" 0;
	setAttr ".phl[2977]" 0;
	setAttr ".phl[2978]" 0;
	setAttr ".phl[2979]" 0;
	setAttr ".phl[2980]" 0;
	setAttr ".phl[2981]" 0;
	setAttr ".phl[2982]" 0;
	setAttr ".phl[2983]" 0;
	setAttr ".phl[2984]" 0;
	setAttr ".phl[2985]" 0;
	setAttr ".phl[2986]" 0;
	setAttr ".phl[2987]" 0;
	setAttr ".phl[2988]" 0;
	setAttr ".phl[2989]" 0;
	setAttr ".phl[2990]" 0;
	setAttr ".phl[2991]" 0;
	setAttr ".phl[2992]" 0;
	setAttr ".phl[2993]" 0;
	setAttr ".phl[2994]" 0;
	setAttr ".phl[2995]" 0;
	setAttr ".phl[2996]" 0;
	setAttr ".phl[2997]" 0;
	setAttr ".phl[2998]" 0;
	setAttr ".phl[2999]" 0;
	setAttr ".phl[3000]" 0;
	setAttr ".phl[3001]" 0;
	setAttr ".phl[3002]" 0;
	setAttr ".phl[3003]" 0;
	setAttr ".phl[3004]" 0;
	setAttr ".phl[3005]" 0;
	setAttr ".phl[3006]" 0;
	setAttr ".phl[3007]" 0;
	setAttr ".phl[3008]" 0;
	setAttr ".phl[3009]" 0;
	setAttr ".phl[3010]" 0;
	setAttr ".phl[3011]" 0;
	setAttr ".phl[3012]" 0;
	setAttr ".phl[3013]" 0;
	setAttr ".phl[3014]" 0;
	setAttr ".phl[3015]" 0;
	setAttr ".phl[3016]" 0;
	setAttr ".phl[3017]" 0;
	setAttr ".phl[3018]" 0;
	setAttr ".phl[3019]" 0;
	setAttr ".phl[3020]" 0;
	setAttr ".phl[3021]" 0;
	setAttr ".phl[3022]" 0;
	setAttr ".phl[3023]" 0;
	setAttr ".phl[3024]" 0;
	setAttr ".phl[3025]" 0;
	setAttr ".phl[3026]" 0;
	setAttr ".phl[3027]" 0;
	setAttr ".phl[3028]" 0;
	setAttr ".phl[3029]" 0;
	setAttr ".phl[3030]" 0;
	setAttr ".phl[3031]" 0;
	setAttr ".phl[3032]" 0;
	setAttr ".phl[3033]" 0;
	setAttr ".phl[3034]" 0;
	setAttr ".phl[3035]" 0;
	setAttr ".phl[3036]" 0;
	setAttr ".phl[3037]" 0;
	setAttr ".phl[3038]" 0;
	setAttr ".phl[3039]" 0;
	setAttr ".phl[3040]" 0;
	setAttr ".phl[3041]" 0;
	setAttr ".phl[3042]" 0;
	setAttr ".phl[3043]" 0;
	setAttr ".phl[3044]" 0;
	setAttr ".phl[3045]" 0;
	setAttr ".phl[3046]" 0;
	setAttr ".phl[3047]" 0;
	setAttr ".phl[3048]" 0;
	setAttr ".phl[3049]" 0;
	setAttr ".phl[3050]" 0;
	setAttr ".phl[3051]" 0;
	setAttr ".phl[3052]" 0;
	setAttr ".phl[3053]" 0;
	setAttr ".phl[3054]" 0;
	setAttr ".phl[3055]" 0;
	setAttr ".phl[3056]" 0;
	setAttr ".phl[3057]" 0;
	setAttr ".phl[3058]" 0;
	setAttr ".phl[3059]" 0;
	setAttr ".phl[3060]" 0;
	setAttr ".phl[3061]" 0;
	setAttr ".phl[3062]" 0;
	setAttr ".phl[3063]" 0;
	setAttr ".phl[3064]" 0;
	setAttr ".phl[3065]" 0;
	setAttr ".phl[3066]" 0;
	setAttr ".phl[3067]" 0;
	setAttr ".phl[3068]" 0;
	setAttr ".phl[3069]" 0;
	setAttr ".phl[3070]" 0;
	setAttr ".phl[3071]" 0;
	setAttr ".phl[3072]" 0;
	setAttr ".phl[3073]" 0;
	setAttr ".phl[3074]" 0;
	setAttr ".phl[3075]" 0;
	setAttr ".phl[3076]" 0;
	setAttr ".phl[3077]" 0;
	setAttr ".phl[3078]" 0;
	setAttr ".phl[3079]" 0;
	setAttr ".phl[3080]" 0;
	setAttr ".phl[3081]" 0;
	setAttr ".phl[3082]" 0;
	setAttr ".phl[3083]" 0;
	setAttr ".phl[3084]" 0;
	setAttr ".phl[3085]" 0;
	setAttr ".phl[3086]" 0;
	setAttr ".phl[3087]" 0;
	setAttr ".phl[3088]" 0;
	setAttr ".phl[3089]" 0;
	setAttr ".phl[3090]" 0;
	setAttr ".phl[3091]" 0;
	setAttr ".phl[3092]" 0;
	setAttr ".phl[3093]" 0;
	setAttr ".phl[3094]" 0;
	setAttr ".phl[3095]" 0;
	setAttr ".phl[3096]" 0;
	setAttr ".phl[3097]" 0;
	setAttr ".phl[3098]" 0;
	setAttr ".phl[3099]" 0;
	setAttr ".phl[3100]" 0;
	setAttr ".phl[3101]" 0;
	setAttr ".phl[3102]" 0;
	setAttr ".phl[3103]" 0;
	setAttr ".phl[3104]" 0;
	setAttr ".phl[3105]" 0;
	setAttr ".phl[3106]" 0;
	setAttr ".phl[3107]" 0;
	setAttr ".phl[3108]" 0;
	setAttr ".phl[3109]" 0;
	setAttr ".phl[3110]" 0;
	setAttr ".phl[3111]" 0;
	setAttr ".phl[3112]" 0;
	setAttr ".phl[3113]" 0;
	setAttr ".phl[3114]" 0;
	setAttr ".phl[3115]" 0;
	setAttr ".phl[3116]" 0;
	setAttr ".phl[3117]" 0;
	setAttr ".phl[3118]" 0;
	setAttr ".phl[3119]" 0;
	setAttr ".phl[3120]" 0;
	setAttr ".phl[3121]" 0;
	setAttr ".phl[3122]" 0;
	setAttr ".phl[3123]" 0;
	setAttr ".phl[3124]" 0;
	setAttr ".phl[3125]" 0;
	setAttr ".phl[3126]" 0;
	setAttr ".phl[3127]" 0;
	setAttr ".phl[3128]" 0;
	setAttr ".phl[3129]" 0;
	setAttr ".phl[3130]" 0;
	setAttr ".phl[3131]" 0;
	setAttr ".phl[3132]" 0;
	setAttr ".phl[3133]" 0;
	setAttr ".phl[3134]" 0;
	setAttr ".phl[3135]" 0;
	setAttr ".phl[3136]" 0;
	setAttr ".phl[3137]" 0;
	setAttr ".phl[3138]" 0;
	setAttr ".phl[3139]" 0;
	setAttr ".phl[3140]" 0;
	setAttr ".phl[3141]" 0;
	setAttr ".phl[3142]" 0;
	setAttr ".phl[3143]" 0;
	setAttr ".phl[3144]" 0;
	setAttr ".phl[3145]" 0;
	setAttr ".phl[3146]" 0;
	setAttr ".phl[3147]" 0;
	setAttr ".phl[3148]" 0;
	setAttr ".phl[3149]" 0;
	setAttr ".phl[3150]" 0;
	setAttr ".phl[3151]" 0;
	setAttr ".phl[3152]" 0;
	setAttr ".phl[3153]" 0;
	setAttr ".phl[3154]" 0;
	setAttr ".phl[3155]" 0;
	setAttr ".phl[3156]" 0;
	setAttr ".phl[3157]" 0;
	setAttr ".phl[3158]" 0;
	setAttr ".phl[3159]" 0;
	setAttr ".phl[3160]" 0;
	setAttr ".phl[3161]" 0;
	setAttr ".phl[3162]" 0;
	setAttr ".phl[3163]" 0;
	setAttr ".phl[3164]" 0;
	setAttr ".phl[3165]" 0;
	setAttr ".phl[3166]" 0;
	setAttr ".phl[3167]" 0;
	setAttr ".phl[3168]" 0;
	setAttr ".phl[3169]" 0;
	setAttr ".phl[3170]" 0;
	setAttr ".phl[3171]" 0;
	setAttr ".phl[3172]" 0;
	setAttr ".phl[3173]" 0;
	setAttr ".phl[3174]" 0;
	setAttr ".phl[3175]" 0;
	setAttr ".phl[3176]" 0;
	setAttr ".phl[3177]" 0;
	setAttr ".phl[3178]" 0;
	setAttr ".phl[3179]" 0;
	setAttr ".phl[3180]" 0;
	setAttr ".phl[3181]" 0;
	setAttr ".phl[3182]" 0;
	setAttr ".phl[3183]" 0;
	setAttr ".phl[3184]" 0;
	setAttr ".phl[3185]" 0;
	setAttr ".phl[3186]" 0;
	setAttr ".phl[3187]" 0;
	setAttr ".phl[3188]" 0;
	setAttr ".phl[3189]" 0;
	setAttr ".phl[3190]" 0;
	setAttr ".phl[3191]" 0;
	setAttr ".phl[3192]" 0;
	setAttr ".phl[3193]" 0;
	setAttr ".phl[3194]" 0;
	setAttr ".phl[3195]" 0;
	setAttr ".phl[3196]" 0;
	setAttr ".phl[3197]" 0;
	setAttr ".phl[3198]" 0;
	setAttr ".phl[3199]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"MCP1RN"
		"MCP1:ANM1RN" 0
		"MCP1RN" 1
		5 3 "MCP1RN" "MCP1:walkn_exportNode.message" "MCP1RN.placeHolderList[1603]" 
		""
		"MCP1:ANM1RN" 1161
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis" "scale" " -type \"double3\" 1 1 1"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis" "drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0" "scale" " -type \"double3\" 1 1 1"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0" "drawStyle" 
		" 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L" 
		"scale" " -type \"double3\" 1.0000008022275666 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L" 
		"scale" " -type \"double3\" 1.00000114729494438 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L" 
		"scale" " -type \"double3\" 1.00000088205819337 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R" 
		"scale" " -type \"double3\" 1.00000053292330682 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R" 
		"scale" " -type \"double3\" 1 1.00000101971199928 1.00000092127370244"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R" 
		"scale" " -type \"double3\" 1.00000094698677011 1.0000009169647881 1.00000130324366499"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R" 
		"scale" " -type \"double3\" 1.00000086164222846 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R" "scale" 
		" -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R" "drawStyle" 
		" 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L" "scale" 
		" -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L" "drawStyle" 
		" 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L" 
		"drawStyle" " 0"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translate" " -type \"double3\" -47.24957275390625 0 7.05938339233398438"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateX" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateY" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateZ" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateX" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateY" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateZ" " -av"
		2 "MCP1:ANM1:HIKSolverNode1" "InputStance" " 1"
		3 "MCP1:finger_thumb_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateX" 
		""
		3 "MCP1:finger_thumb_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateY" 
		""
		3 "MCP1:finger_thumb_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateZ" 
		""
		3 "MCP1:finger_thumb_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateX" 
		""
		3 "MCP1:finger_thumb_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateY" 
		""
		3 "MCP1:finger_thumb_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateZ" 
		""
		3 "MCP1:finger_ring_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateX" 
		""
		3 "MCP1:finger_ring_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateY" 
		""
		3 "MCP1:finger_ring_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateZ" 
		""
		3 "MCP1:finger_ring_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateX" 
		""
		3 "MCP1:finger_ring_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateY" 
		""
		3 "MCP1:finger_ring_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateZ" 
		""
		3 "MCP1:finger_pinky_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateX" 
		""
		3 "MCP1:finger_pinky_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateY" 
		""
		3 "MCP1:finger_pinky_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateZ" 
		""
		3 "MCP1:finger_pinky_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateX" 
		""
		3 "MCP1:finger_pinky_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateY" 
		""
		3 "MCP1:finger_pinky_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateZ" 
		""
		3 "MCP1:finger_middle_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateX" 
		""
		3 "MCP1:finger_middle_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateY" 
		""
		3 "MCP1:finger_middle_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateZ" 
		""
		3 "MCP1:finger_middle_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateX" 
		""
		3 "MCP1:finger_middle_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateY" 
		""
		3 "MCP1:finger_middle_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateZ" 
		""
		3 "MCP1:finger_ring_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateX" 
		""
		3 "MCP1:finger_ring_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateY" 
		""
		3 "MCP1:finger_ring_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateZ" 
		""
		3 "MCP1:finger_ring_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateX" 
		""
		3 "MCP1:finger_ring_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateY" 
		""
		3 "MCP1:finger_ring_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateZ" 
		""
		3 "MCP1:finger_pinky_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateX" 
		""
		3 "MCP1:finger_pinky_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateY" 
		""
		3 "MCP1:finger_pinky_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateZ" 
		""
		3 "MCP1:finger_pinky_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateX" 
		""
		3 "MCP1:finger_pinky_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateY" 
		""
		3 "MCP1:finger_pinky_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateZ" 
		""
		3 "MCP1:finger_index_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateX" 
		""
		3 "MCP1:finger_index_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateY" 
		""
		3 "MCP1:finger_index_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateZ" 
		""
		3 "MCP1:finger_index_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateX" 
		""
		3 "MCP1:finger_index_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateY" 
		""
		3 "MCP1:finger_index_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateZ" 
		""
		3 "MCP1:finger_ring_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateX" 
		""
		3 "MCP1:finger_ring_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateY" 
		""
		3 "MCP1:finger_ring_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateZ" 
		""
		3 "MCP1:finger_ring_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateX" 
		""
		3 "MCP1:finger_ring_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateY" 
		""
		3 "MCP1:finger_ring_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateZ" 
		""
		3 "MCP1:finger_middle_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateX" 
		""
		3 "MCP1:finger_middle_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateY" 
		""
		3 "MCP1:finger_middle_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateZ" 
		""
		3 "MCP1:finger_middle_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateX" 
		""
		3 "MCP1:finger_middle_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateY" 
		""
		3 "MCP1:finger_middle_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateZ" 
		""
		3 "MCP1:clavicle_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateX" 
		""
		3 "MCP1:clavicle_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateY" 
		""
		3 "MCP1:clavicle_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateZ" 
		""
		3 "MCP1:clavicle_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateX" 
		""
		3 "MCP1:clavicle_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateY" 
		""
		3 "MCP1:clavicle_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateZ" 
		""
		3 "MCP1:finger_thumb_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateX" 
		""
		3 "MCP1:finger_thumb_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateY" 
		""
		3 "MCP1:finger_thumb_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateZ" 
		""
		3 "MCP1:finger_thumb_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateX" 
		""
		3 "MCP1:finger_thumb_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateY" 
		""
		3 "MCP1:finger_thumb_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateZ" 
		""
		3 "MCP1:finger_index_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateX" 
		""
		3 "MCP1:finger_index_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateY" 
		""
		3 "MCP1:finger_index_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateZ" 
		""
		3 "MCP1:finger_index_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateX" 
		""
		3 "MCP1:finger_index_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateY" 
		""
		3 "MCP1:finger_index_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateZ" 
		""
		3 "MCP1:spine_3_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateX" 
		""
		3 "MCP1:spine_3_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateY" 
		""
		3 "MCP1:spine_3_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateZ" 
		""
		3 "MCP1:spine_3_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateX" 
		""
		3 "MCP1:spine_3_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateY" 
		""
		3 "MCP1:spine_3_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateZ" 
		""
		3 "MCP1:finger_middle_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateX" 
		""
		3 "MCP1:finger_middle_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateY" 
		""
		3 "MCP1:finger_middle_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateZ" 
		""
		3 "MCP1:finger_middle_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateX" 
		""
		3 "MCP1:finger_middle_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateY" 
		""
		3 "MCP1:finger_middle_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateZ" 
		""
		3 "MCP1:finger_index_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateX" 
		""
		3 "MCP1:finger_index_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateY" 
		""
		3 "MCP1:finger_index_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateZ" 
		""
		3 "MCP1:finger_index_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateX" 
		""
		3 "MCP1:finger_index_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateY" 
		""
		3 "MCP1:finger_index_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateZ" 
		""
		3 "MCP1:ankle_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateX" 
		""
		3 "MCP1:ankle_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateY" 
		""
		3 "MCP1:ankle_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateZ" 
		""
		3 "MCP1:ankle_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateX" 
		""
		3 "MCP1:ankle_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateY" 
		""
		3 "MCP1:ankle_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateZ" 
		""
		3 "MCP1:hand_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateX" 
		""
		3 "MCP1:hand_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateY" 
		""
		3 "MCP1:hand_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateZ" 
		""
		3 "MCP1:hand_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateX" 
		""
		3 "MCP1:hand_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateY" 
		""
		3 "MCP1:hand_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateZ" 
		""
		3 "MCP1:arm_lower_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateX" 
		""
		3 "MCP1:arm_lower_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateY" 
		""
		3 "MCP1:arm_lower_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateZ" 
		""
		3 "MCP1:arm_lower_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateX" 
		""
		3 "MCP1:arm_lower_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateY" 
		""
		3 "MCP1:arm_lower_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateZ" 
		""
		3 "MCP1:finger_ring_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateX" 
		""
		3 "MCP1:finger_ring_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateY" 
		""
		3 "MCP1:finger_ring_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateZ" 
		""
		3 "MCP1:finger_ring_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateX" 
		""
		3 "MCP1:finger_ring_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateY" 
		""
		3 "MCP1:finger_ring_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateZ" 
		""
		3 "MCP1:spine_0_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateX" 
		""
		3 "MCP1:spine_0_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateY" 
		""
		3 "MCP1:spine_0_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateZ" 
		""
		3 "MCP1:spine_0_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateX" 
		""
		3 "MCP1:spine_0_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateY" 
		""
		3 "MCP1:spine_0_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateZ" 
		""
		3 "MCP1:pelvis_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateX" 
		""
		3 "MCP1:pelvis_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateY" 
		""
		3 "MCP1:pelvis_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateZ" 
		""
		3 "MCP1:pelvis_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateX" 
		""
		3 "MCP1:pelvis_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateY" 
		""
		3 "MCP1:pelvis_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateZ" 
		""
		3 "MCP1:finger_pinky_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateX" 
		""
		3 "MCP1:finger_pinky_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateY" 
		""
		3 "MCP1:finger_pinky_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateZ" 
		""
		3 "MCP1:finger_pinky_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateX" 
		""
		3 "MCP1:finger_pinky_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateY" 
		""
		3 "MCP1:finger_pinky_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateZ" 
		""
		3 "MCP1:finger_ring_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateX" 
		""
		3 "MCP1:finger_ring_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateY" 
		""
		3 "MCP1:finger_ring_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateZ" 
		""
		3 "MCP1:finger_ring_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateX" 
		""
		3 "MCP1:finger_ring_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateY" 
		""
		3 "MCP1:finger_ring_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateZ" 
		""
		3 "MCP1:head_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateX" 
		""
		3 "MCP1:head_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateY" 
		""
		3 "MCP1:head_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateZ" 
		""
		3 "MCP1:head_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateX" 
		""
		3 "MCP1:head_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateY" 
		""
		3 "MCP1:head_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateZ" 
		""
		3 "MCP1:leg_lower_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateX" 
		""
		3 "MCP1:leg_lower_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateY" 
		""
		3 "MCP1:leg_lower_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateZ" 
		""
		3 "MCP1:leg_lower_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateX" 
		""
		3 "MCP1:leg_lower_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateY" 
		""
		3 "MCP1:leg_lower_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateZ" 
		""
		3 "MCP1:finger_middle_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateX" 
		""
		3 "MCP1:finger_middle_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateY" 
		""
		3 "MCP1:finger_middle_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateZ" 
		""
		3 "MCP1:finger_middle_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateX" 
		""
		3 "MCP1:finger_middle_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateY" 
		""
		3 "MCP1:finger_middle_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateZ" 
		""
		3 "MCP1:finger_ring_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateX" 
		""
		3 "MCP1:finger_ring_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateY" 
		""
		3 "MCP1:finger_ring_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateZ" 
		""
		3 "MCP1:finger_ring_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateX" 
		""
		3 "MCP1:finger_ring_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateY" 
		""
		3 "MCP1:finger_ring_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateZ" 
		""
		3 "MCP1:spine_1_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateX" 
		""
		3 "MCP1:spine_1_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateY" 
		""
		3 "MCP1:spine_1_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateZ" 
		""
		3 "MCP1:spine_1_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateX" 
		""
		3 "MCP1:spine_1_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateY" 
		""
		3 "MCP1:spine_1_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateZ" 
		""
		3 "MCP1:finger_thumb_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateX" 
		""
		3 "MCP1:finger_thumb_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateY" 
		""
		3 "MCP1:finger_thumb_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateZ" 
		""
		3 "MCP1:finger_thumb_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateX" 
		""
		3 "MCP1:finger_thumb_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateY" 
		""
		3 "MCP1:finger_thumb_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateZ" 
		""
		3 "MCP1:ANM1:HIKSolverNode1.OutputCharacterState" "MCP1:ANM1:HIKState2SK1.InputCharacterState" 
		""
		3 "MCP1:finger_middle_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateX" 
		""
		3 "MCP1:finger_middle_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateY" 
		""
		3 "MCP1:finger_middle_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateZ" 
		""
		3 "MCP1:finger_middle_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateX" 
		""
		3 "MCP1:finger_middle_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateY" 
		""
		3 "MCP1:finger_middle_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateZ" 
		""
		3 "MCP1:leg_upper_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateX" 
		""
		3 "MCP1:leg_upper_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateY" 
		""
		3 "MCP1:leg_upper_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateZ" 
		""
		3 "MCP1:leg_upper_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateX" 
		""
		3 "MCP1:leg_upper_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateY" 
		""
		3 "MCP1:leg_upper_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateZ" 
		""
		3 "MCP1:finger_index_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateX" 
		""
		3 "MCP1:finger_index_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateY" 
		""
		3 "MCP1:finger_index_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateZ" 
		""
		3 "MCP1:finger_index_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateX" 
		""
		3 "MCP1:finger_index_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateY" 
		""
		3 "MCP1:finger_index_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateZ" 
		""
		3 "MCP1:finger_middle_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateX" 
		""
		3 "MCP1:finger_middle_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateY" 
		""
		3 "MCP1:finger_middle_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateZ" 
		""
		3 "MCP1:finger_middle_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateX" 
		""
		3 "MCP1:finger_middle_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateY" 
		""
		3 "MCP1:finger_middle_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateZ" 
		""
		3 "MCP1:spine_2_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateX" 
		""
		3 "MCP1:spine_2_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateY" 
		""
		3 "MCP1:spine_2_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateZ" 
		""
		3 "MCP1:spine_2_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateX" 
		""
		3 "MCP1:spine_2_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateY" 
		""
		3 "MCP1:spine_2_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateZ" 
		""
		3 "MCP1:leg_lower_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateX" 
		""
		3 "MCP1:leg_lower_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateY" 
		""
		3 "MCP1:leg_lower_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateZ" 
		""
		3 "MCP1:leg_lower_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateX" 
		""
		3 "MCP1:leg_lower_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateY" 
		""
		3 "MCP1:leg_lower_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateZ" 
		""
		3 "MCP1:finger_pinky_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateX" 
		""
		3 "MCP1:finger_pinky_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateY" 
		""
		3 "MCP1:finger_pinky_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateZ" 
		""
		3 "MCP1:finger_pinky_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateX" 
		""
		3 "MCP1:finger_pinky_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateY" 
		""
		3 "MCP1:finger_pinky_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateZ" 
		""
		3 "MCP1:finger_ring_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateX" 
		""
		3 "MCP1:finger_ring_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateY" 
		""
		3 "MCP1:finger_ring_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateZ" 
		""
		3 "MCP1:finger_ring_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateX" 
		""
		3 "MCP1:finger_ring_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateY" 
		""
		3 "MCP1:finger_ring_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateZ" 
		""
		3 "MCP1:finger_thumb_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateX" 
		""
		3 "MCP1:finger_thumb_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateY" 
		""
		3 "MCP1:finger_thumb_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateZ" 
		""
		3 "MCP1:finger_thumb_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateX" 
		""
		3 "MCP1:finger_thumb_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateY" 
		""
		3 "MCP1:finger_thumb_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateZ" 
		""
		3 "MCP1:ball_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateX" 
		""
		3 "MCP1:ball_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateY" 
		""
		3 "MCP1:ball_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateZ" 
		""
		3 "MCP1:ball_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateX" 
		""
		3 "MCP1:ball_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateY" 
		""
		3 "MCP1:ball_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateZ" 
		""
		3 "MCP1:ball_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateX" 
		""
		3 "MCP1:ball_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateY" 
		""
		3 "MCP1:ball_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateZ" 
		""
		3 "MCP1:ball_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateX" 
		""
		3 "MCP1:ball_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateY" 
		""
		3 "MCP1:ball_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateZ" 
		""
		3 "MCP1:finger_thumb_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateX" 
		""
		3 "MCP1:finger_thumb_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateY" 
		""
		3 "MCP1:finger_thumb_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateZ" 
		""
		3 "MCP1:finger_thumb_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateX" 
		""
		3 "MCP1:finger_thumb_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateY" 
		""
		3 "MCP1:finger_thumb_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateZ" 
		""
		3 "MCP1:arm_upper_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateX" 
		""
		3 "MCP1:arm_upper_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateY" 
		""
		3 "MCP1:arm_upper_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateZ" 
		""
		3 "MCP1:arm_upper_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateX" 
		""
		3 "MCP1:arm_upper_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateY" 
		""
		3 "MCP1:arm_upper_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateZ" 
		""
		3 "MCP1:ankle_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateX" 
		""
		3 "MCP1:ankle_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateY" 
		""
		3 "MCP1:ankle_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateZ" 
		""
		3 "MCP1:ankle_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateX" 
		""
		3 "MCP1:ankle_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateY" 
		""
		3 "MCP1:ankle_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateZ" 
		""
		3 "MCP1:arm_lower_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateX" 
		""
		3 "MCP1:arm_lower_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateY" 
		""
		3 "MCP1:arm_lower_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateZ" 
		""
		3 "MCP1:arm_lower_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateX" 
		""
		3 "MCP1:arm_lower_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateY" 
		""
		3 "MCP1:arm_lower_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateZ" 
		""
		3 "MCP1:finger_pinky_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateX" 
		""
		3 "MCP1:finger_pinky_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateY" 
		""
		3 "MCP1:finger_pinky_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateZ" 
		""
		3 "MCP1:finger_pinky_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateX" 
		""
		3 "MCP1:finger_pinky_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateY" 
		""
		3 "MCP1:finger_pinky_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateZ" 
		""
		3 "MCP1:finger_middle_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateX" 
		""
		3 "MCP1:finger_middle_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateY" 
		""
		3 "MCP1:finger_middle_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateZ" 
		""
		3 "MCP1:finger_middle_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateX" 
		""
		3 "MCP1:finger_middle_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateY" 
		""
		3 "MCP1:finger_middle_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateZ" 
		""
		3 "MCP1:leg_upper_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateX" 
		""
		3 "MCP1:leg_upper_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateY" 
		""
		3 "MCP1:leg_upper_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateZ" 
		""
		3 "MCP1:leg_upper_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateX" 
		""
		3 "MCP1:leg_upper_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateY" 
		""
		3 "MCP1:leg_upper_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateZ" 
		""
		3 "MCP1:finger_ring_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateX" 
		""
		3 "MCP1:finger_ring_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateY" 
		""
		3 "MCP1:finger_ring_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateZ" 
		""
		3 "MCP1:finger_ring_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateX" 
		""
		3 "MCP1:finger_ring_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateY" 
		""
		3 "MCP1:finger_ring_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateZ" 
		""
		3 "MCP1:finger_pinky_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateX" 
		""
		3 "MCP1:finger_pinky_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateY" 
		""
		3 "MCP1:finger_pinky_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateZ" 
		""
		3 "MCP1:finger_pinky_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateX" 
		""
		3 "MCP1:finger_pinky_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateY" 
		""
		3 "MCP1:finger_pinky_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateZ" 
		""
		3 "MCP1:finger_middle_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateX" 
		""
		3 "MCP1:finger_middle_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateY" 
		""
		3 "MCP1:finger_middle_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateZ" 
		""
		3 "MCP1:finger_middle_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateX" 
		""
		3 "MCP1:finger_middle_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateY" 
		""
		3 "MCP1:finger_middle_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateZ" 
		""
		3 "MCP1:finger_index_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateX" 
		""
		3 "MCP1:finger_index_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateY" 
		""
		3 "MCP1:finger_index_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateZ" 
		""
		3 "MCP1:finger_index_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateX" 
		""
		3 "MCP1:finger_index_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateY" 
		""
		3 "MCP1:finger_index_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateZ" 
		""
		3 "MCP1:finger_pinky_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateX" 
		""
		3 "MCP1:finger_pinky_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateY" 
		""
		3 "MCP1:finger_pinky_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateZ" 
		""
		3 "MCP1:finger_pinky_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateX" 
		""
		3 "MCP1:finger_pinky_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateY" 
		""
		3 "MCP1:finger_pinky_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateZ" 
		""
		3 "MCP1:finger_index_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateX" 
		""
		3 "MCP1:finger_index_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateY" 
		""
		3 "MCP1:finger_index_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateZ" 
		""
		3 "MCP1:finger_index_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateX" 
		""
		3 "MCP1:finger_index_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateY" 
		""
		3 "MCP1:finger_index_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateZ" 
		""
		3 "MCP1:neck_0_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateX" 
		""
		3 "MCP1:neck_0_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateY" 
		""
		3 "MCP1:neck_0_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateZ" 
		""
		3 "MCP1:neck_0_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateX" 
		""
		3 "MCP1:neck_0_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateY" 
		""
		3 "MCP1:neck_0_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateZ" 
		""
		3 "MCP1:finger_index_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateX" 
		""
		3 "MCP1:finger_index_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateY" 
		""
		3 "MCP1:finger_index_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateZ" 
		""
		3 "MCP1:finger_index_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateX" 
		""
		3 "MCP1:finger_index_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateY" 
		""
		3 "MCP1:finger_index_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateZ" 
		""
		3 "MCP1:clavicle_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateX" 
		""
		3 "MCP1:clavicle_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateY" 
		""
		3 "MCP1:clavicle_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateZ" 
		""
		3 "MCP1:clavicle_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateX" 
		""
		3 "MCP1:clavicle_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateY" 
		""
		3 "MCP1:clavicle_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateZ" 
		""
		3 "MCP1:finger_thumb_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateX" 
		""
		3 "MCP1:finger_thumb_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateY" 
		""
		3 "MCP1:finger_thumb_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateZ" 
		""
		3 "MCP1:finger_thumb_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateX" 
		""
		3 "MCP1:finger_thumb_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateY" 
		""
		3 "MCP1:finger_thumb_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateZ" 
		""
		3 "MCP1:arm_upper_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateX" 
		""
		3 "MCP1:arm_upper_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateY" 
		""
		3 "MCP1:arm_upper_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateZ" 
		""
		3 "MCP1:arm_upper_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateX" 
		""
		3 "MCP1:arm_upper_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateY" 
		""
		3 "MCP1:arm_upper_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateZ" 
		""
		3 "MCP1:hand_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateX" 
		""
		3 "MCP1:hand_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateY" 
		""
		3 "MCP1:hand_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateZ" 
		""
		3 "MCP1:hand_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateX" 
		""
		3 "MCP1:hand_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateY" 
		""
		3 "MCP1:hand_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateZ" 
		""
		3 "MCP1:finger_index_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateX" 
		""
		3 "MCP1:finger_index_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateY" 
		""
		3 "MCP1:finger_index_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateZ" 
		""
		3 "MCP1:finger_index_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateX" 
		""
		3 "MCP1:finger_index_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateY" 
		""
		3 "MCP1:finger_index_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateZ" 
		""
		3 "MCP1:finger_pinky_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateX" 
		""
		3 "MCP1:finger_pinky_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateY" 
		""
		3 "MCP1:finger_pinky_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateZ" 
		""
		3 "MCP1:finger_pinky_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateX" 
		""
		3 "MCP1:finger_pinky_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateY" 
		""
		3 "MCP1:finger_pinky_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateZ" 
		""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__.message" "MCP1RN.placeHolderList[1604]" 
		""
		5 0 "MCP1RN" "MCP1:pelvis_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateX" 
		"MCP1RN.placeHolderList[1605]" "MCP1RN.placeHolderList[1606]" "MCP1:ANM1:pelvis.tx"
		
		5 0 "MCP1RN" "MCP1:pelvis_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateY" 
		"MCP1RN.placeHolderList[1607]" "MCP1RN.placeHolderList[1608]" "MCP1:ANM1:pelvis.ty"
		
		5 0 "MCP1RN" "MCP1:pelvis_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateZ" 
		"MCP1RN.placeHolderList[1609]" "MCP1RN.placeHolderList[1610]" "MCP1:ANM1:pelvis.tz"
		
		5 0 "MCP1RN" "MCP1:pelvis_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateX" 
		"MCP1RN.placeHolderList[1611]" "MCP1RN.placeHolderList[1612]" "MCP1:ANM1:pelvis.rx"
		
		5 0 "MCP1RN" "MCP1:pelvis_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateY" 
		"MCP1RN.placeHolderList[1613]" "MCP1RN.placeHolderList[1614]" "MCP1:ANM1:pelvis.ry"
		
		5 0 "MCP1RN" "MCP1:pelvis_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateZ" 
		"MCP1RN.placeHolderList[1615]" "MCP1RN.placeHolderList[1616]" "MCP1:ANM1:pelvis.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.worldMatrix" "MCP1RN.placeHolderList[1617]" 
		""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.message" "MCP1RN.placeHolderList[1618]" 
		""
		5 0 "MCP1RN" "MCP1:spine_0_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateX" 
		"MCP1RN.placeHolderList[1619]" "MCP1RN.placeHolderList[1620]" "MCP1:ANM1:spine_0.tx"
		
		5 0 "MCP1RN" "MCP1:spine_0_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateY" 
		"MCP1RN.placeHolderList[1621]" "MCP1RN.placeHolderList[1622]" "MCP1:ANM1:spine_0.ty"
		
		5 0 "MCP1RN" "MCP1:spine_0_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateZ" 
		"MCP1RN.placeHolderList[1623]" "MCP1RN.placeHolderList[1624]" "MCP1:ANM1:spine_0.tz"
		
		5 0 "MCP1RN" "MCP1:spine_0_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateX" 
		"MCP1RN.placeHolderList[1625]" "MCP1RN.placeHolderList[1626]" "MCP1:ANM1:spine_0.rx"
		
		5 0 "MCP1RN" "MCP1:spine_0_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateY" 
		"MCP1RN.placeHolderList[1627]" "MCP1RN.placeHolderList[1628]" "MCP1:ANM1:spine_0.ry"
		
		5 0 "MCP1RN" "MCP1:spine_0_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateZ" 
		"MCP1RN.placeHolderList[1629]" "MCP1RN.placeHolderList[1630]" "MCP1:ANM1:spine_0.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.worldMatrix" 
		"MCP1RN.placeHolderList[1631]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.message" 
		"MCP1RN.placeHolderList[1632]" ""
		5 0 "MCP1RN" "MCP1:spine_1_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateX" 
		"MCP1RN.placeHolderList[1633]" "MCP1RN.placeHolderList[1634]" "MCP1:ANM1:spine_1.tx"
		
		5 0 "MCP1RN" "MCP1:spine_1_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateY" 
		"MCP1RN.placeHolderList[1635]" "MCP1RN.placeHolderList[1636]" "MCP1:ANM1:spine_1.ty"
		
		5 0 "MCP1RN" "MCP1:spine_1_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateZ" 
		"MCP1RN.placeHolderList[1637]" "MCP1RN.placeHolderList[1638]" "MCP1:ANM1:spine_1.tz"
		
		5 0 "MCP1RN" "MCP1:spine_1_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateX" 
		"MCP1RN.placeHolderList[1639]" "MCP1RN.placeHolderList[1640]" "MCP1:ANM1:spine_1.rx"
		
		5 0 "MCP1RN" "MCP1:spine_1_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateY" 
		"MCP1RN.placeHolderList[1641]" "MCP1RN.placeHolderList[1642]" "MCP1:ANM1:spine_1.ry"
		
		5 0 "MCP1RN" "MCP1:spine_1_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateZ" 
		"MCP1RN.placeHolderList[1643]" "MCP1RN.placeHolderList[1644]" "MCP1:ANM1:spine_1.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.worldMatrix" 
		"MCP1RN.placeHolderList[1645]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.message" 
		"MCP1RN.placeHolderList[1646]" ""
		5 0 "MCP1RN" "MCP1:spine_2_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateX" 
		"MCP1RN.placeHolderList[1647]" "MCP1RN.placeHolderList[1648]" "MCP1:ANM1:spine_2.tx"
		
		5 0 "MCP1RN" "MCP1:spine_2_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateY" 
		"MCP1RN.placeHolderList[1649]" "MCP1RN.placeHolderList[1650]" "MCP1:ANM1:spine_2.ty"
		
		5 0 "MCP1RN" "MCP1:spine_2_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateZ" 
		"MCP1RN.placeHolderList[1651]" "MCP1RN.placeHolderList[1652]" "MCP1:ANM1:spine_2.tz"
		
		5 0 "MCP1RN" "MCP1:spine_2_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateX" 
		"MCP1RN.placeHolderList[1653]" "MCP1RN.placeHolderList[1654]" "MCP1:ANM1:spine_2.rx"
		
		5 0 "MCP1RN" "MCP1:spine_2_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateY" 
		"MCP1RN.placeHolderList[1655]" "MCP1RN.placeHolderList[1656]" "MCP1:ANM1:spine_2.ry"
		
		5 0 "MCP1RN" "MCP1:spine_2_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateZ" 
		"MCP1RN.placeHolderList[1657]" "MCP1RN.placeHolderList[1658]" "MCP1:ANM1:spine_2.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.worldMatrix" 
		"MCP1RN.placeHolderList[1659]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.message" 
		"MCP1RN.placeHolderList[1660]" ""
		5 0 "MCP1RN" "MCP1:spine_3_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateX" 
		"MCP1RN.placeHolderList[1661]" "MCP1RN.placeHolderList[1662]" "MCP1:ANM1:spine_3.tx"
		
		5 0 "MCP1RN" "MCP1:spine_3_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateY" 
		"MCP1RN.placeHolderList[1663]" "MCP1RN.placeHolderList[1664]" "MCP1:ANM1:spine_3.ty"
		
		5 0 "MCP1RN" "MCP1:spine_3_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateZ" 
		"MCP1RN.placeHolderList[1665]" "MCP1RN.placeHolderList[1666]" "MCP1:ANM1:spine_3.tz"
		
		5 0 "MCP1RN" "MCP1:spine_3_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateX" 
		"MCP1RN.placeHolderList[1667]" "MCP1RN.placeHolderList[1668]" "MCP1:ANM1:spine_3.rx"
		
		5 0 "MCP1RN" "MCP1:spine_3_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateY" 
		"MCP1RN.placeHolderList[1669]" "MCP1RN.placeHolderList[1670]" "MCP1:ANM1:spine_3.ry"
		
		5 0 "MCP1RN" "MCP1:spine_3_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateZ" 
		"MCP1RN.placeHolderList[1671]" "MCP1RN.placeHolderList[1672]" "MCP1:ANM1:spine_3.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.worldMatrix" 
		"MCP1RN.placeHolderList[1673]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.message" 
		"MCP1RN.placeHolderList[1674]" ""
		5 0 "MCP1RN" "MCP1:clavicle_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateX" 
		"MCP1RN.placeHolderList[1675]" "MCP1RN.placeHolderList[1676]" "MCP1:ANM1:clavicle_L.tx"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateY" 
		"MCP1RN.placeHolderList[1677]" "MCP1RN.placeHolderList[1678]" "MCP1:ANM1:clavicle_L.ty"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateZ" 
		"MCP1RN.placeHolderList[1679]" "MCP1RN.placeHolderList[1680]" "MCP1:ANM1:clavicle_L.tz"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateX" 
		"MCP1RN.placeHolderList[1681]" "MCP1RN.placeHolderList[1682]" "MCP1:ANM1:clavicle_L.rx"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateY" 
		"MCP1RN.placeHolderList[1683]" "MCP1RN.placeHolderList[1684]" "MCP1:ANM1:clavicle_L.ry"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateZ" 
		"MCP1RN.placeHolderList[1685]" "MCP1RN.placeHolderList[1686]" "MCP1:ANM1:clavicle_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.worldMatrix" 
		"MCP1RN.placeHolderList[1687]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.message" 
		"MCP1RN.placeHolderList[1688]" ""
		5 0 "MCP1RN" "MCP1:arm_upper_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateX" 
		"MCP1RN.placeHolderList[1689]" "MCP1RN.placeHolderList[1690]" "MCP1:ANM1:arm_upper_L.tx"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateY" 
		"MCP1RN.placeHolderList[1691]" "MCP1RN.placeHolderList[1692]" "MCP1:ANM1:arm_upper_L.ty"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateZ" 
		"MCP1RN.placeHolderList[1693]" "MCP1RN.placeHolderList[1694]" "MCP1:ANM1:arm_upper_L.tz"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateX" 
		"MCP1RN.placeHolderList[1695]" "MCP1RN.placeHolderList[1696]" "MCP1:ANM1:arm_upper_L.rx"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateY" 
		"MCP1RN.placeHolderList[1697]" "MCP1RN.placeHolderList[1698]" "MCP1:ANM1:arm_upper_L.ry"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateZ" 
		"MCP1RN.placeHolderList[1699]" "MCP1RN.placeHolderList[1700]" "MCP1:ANM1:arm_upper_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.worldMatrix" 
		"MCP1RN.placeHolderList[1701]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.message" 
		"MCP1RN.placeHolderList[1702]" ""
		5 0 "MCP1RN" "MCP1:arm_lower_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateX" 
		"MCP1RN.placeHolderList[1703]" "MCP1RN.placeHolderList[1704]" "MCP1:ANM1:arm_lower_L.tx"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateY" 
		"MCP1RN.placeHolderList[1705]" "MCP1RN.placeHolderList[1706]" "MCP1:ANM1:arm_lower_L.ty"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateZ" 
		"MCP1RN.placeHolderList[1707]" "MCP1RN.placeHolderList[1708]" "MCP1:ANM1:arm_lower_L.tz"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateX" 
		"MCP1RN.placeHolderList[1709]" "MCP1RN.placeHolderList[1710]" "MCP1:ANM1:arm_lower_L.rx"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateY" 
		"MCP1RN.placeHolderList[1711]" "MCP1RN.placeHolderList[1712]" "MCP1:ANM1:arm_lower_L.ry"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateZ" 
		"MCP1RN.placeHolderList[1713]" "MCP1RN.placeHolderList[1714]" "MCP1:ANM1:arm_lower_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.worldMatrix" 
		"MCP1RN.placeHolderList[1715]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.message" 
		"MCP1RN.placeHolderList[1716]" ""
		5 0 "MCP1RN" "MCP1:hand_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateX" 
		"MCP1RN.placeHolderList[1717]" "MCP1RN.placeHolderList[1718]" "MCP1:ANM1:hand_L.tx"
		
		5 0 "MCP1RN" "MCP1:hand_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateY" 
		"MCP1RN.placeHolderList[1719]" "MCP1RN.placeHolderList[1720]" "MCP1:ANM1:hand_L.ty"
		
		5 0 "MCP1RN" "MCP1:hand_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateZ" 
		"MCP1RN.placeHolderList[1721]" "MCP1RN.placeHolderList[1722]" "MCP1:ANM1:hand_L.tz"
		
		5 0 "MCP1RN" "MCP1:hand_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateX" 
		"MCP1RN.placeHolderList[1723]" "MCP1RN.placeHolderList[1724]" "MCP1:ANM1:hand_L.rx"
		
		5 0 "MCP1RN" "MCP1:hand_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateY" 
		"MCP1RN.placeHolderList[1725]" "MCP1RN.placeHolderList[1726]" "MCP1:ANM1:hand_L.ry"
		
		5 0 "MCP1RN" "MCP1:hand_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateZ" 
		"MCP1RN.placeHolderList[1727]" "MCP1RN.placeHolderList[1728]" "MCP1:ANM1:hand_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.worldMatrix" 
		"MCP1RN.placeHolderList[1729]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.message" 
		"MCP1RN.placeHolderList[1730]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:hand_end_L.message" 
		"MCP1RN.placeHolderList[1731]" ""
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateX" 
		"MCP1RN.placeHolderList[1732]" "MCP1RN.placeHolderList[1733]" "MCP1:ANM1:finger_index_meta_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateY" 
		"MCP1RN.placeHolderList[1734]" "MCP1RN.placeHolderList[1735]" "MCP1:ANM1:finger_index_meta_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateZ" 
		"MCP1RN.placeHolderList[1736]" "MCP1RN.placeHolderList[1737]" "MCP1:ANM1:finger_index_meta_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateX" 
		"MCP1RN.placeHolderList[1738]" "MCP1RN.placeHolderList[1739]" "MCP1:ANM1:finger_index_meta_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateY" 
		"MCP1RN.placeHolderList[1740]" "MCP1RN.placeHolderList[1741]" "MCP1:ANM1:finger_index_meta_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateZ" 
		"MCP1RN.placeHolderList[1742]" "MCP1RN.placeHolderList[1743]" "MCP1:ANM1:finger_index_meta_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.worldMatrix" 
		"MCP1RN.placeHolderList[1744]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.message" 
		"MCP1RN.placeHolderList[1745]" ""
		5 0 "MCP1RN" "MCP1:finger_index_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateX" 
		"MCP1RN.placeHolderList[1746]" "MCP1RN.placeHolderList[1747]" "MCP1:ANM1:finger_index_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateY" 
		"MCP1RN.placeHolderList[1748]" "MCP1RN.placeHolderList[1749]" "MCP1:ANM1:finger_index_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateZ" 
		"MCP1RN.placeHolderList[1750]" "MCP1RN.placeHolderList[1751]" "MCP1:ANM1:finger_index_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateX" 
		"MCP1RN.placeHolderList[1752]" "MCP1RN.placeHolderList[1753]" "MCP1:ANM1:finger_index_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateY" 
		"MCP1RN.placeHolderList[1754]" "MCP1RN.placeHolderList[1755]" "MCP1:ANM1:finger_index_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateZ" 
		"MCP1RN.placeHolderList[1756]" "MCP1RN.placeHolderList[1757]" "MCP1:ANM1:finger_index_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[1758]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.message" 
		"MCP1RN.placeHolderList[1759]" ""
		5 0 "MCP1RN" "MCP1:finger_index_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateX" 
		"MCP1RN.placeHolderList[1760]" "MCP1RN.placeHolderList[1761]" "MCP1:ANM1:finger_index_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateY" 
		"MCP1RN.placeHolderList[1762]" "MCP1RN.placeHolderList[1763]" "MCP1:ANM1:finger_index_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateZ" 
		"MCP1RN.placeHolderList[1764]" "MCP1RN.placeHolderList[1765]" "MCP1:ANM1:finger_index_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateX" 
		"MCP1RN.placeHolderList[1766]" "MCP1RN.placeHolderList[1767]" "MCP1:ANM1:finger_index_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateY" 
		"MCP1RN.placeHolderList[1768]" "MCP1RN.placeHolderList[1769]" "MCP1:ANM1:finger_index_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateZ" 
		"MCP1RN.placeHolderList[1770]" "MCP1RN.placeHolderList[1771]" "MCP1:ANM1:finger_index_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[1772]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.message" 
		"MCP1RN.placeHolderList[1773]" ""
		5 0 "MCP1RN" "MCP1:finger_index_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateX" 
		"MCP1RN.placeHolderList[1774]" "MCP1RN.placeHolderList[1775]" "MCP1:ANM1:finger_index_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateY" 
		"MCP1RN.placeHolderList[1776]" "MCP1RN.placeHolderList[1777]" "MCP1:ANM1:finger_index_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateZ" 
		"MCP1RN.placeHolderList[1778]" "MCP1RN.placeHolderList[1779]" "MCP1:ANM1:finger_index_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateX" 
		"MCP1RN.placeHolderList[1780]" "MCP1RN.placeHolderList[1781]" "MCP1:ANM1:finger_index_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateY" 
		"MCP1RN.placeHolderList[1782]" "MCP1RN.placeHolderList[1783]" "MCP1:ANM1:finger_index_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateZ" 
		"MCP1RN.placeHolderList[1784]" "MCP1RN.placeHolderList[1785]" "MCP1:ANM1:finger_index_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[1786]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.message" 
		"MCP1RN.placeHolderList[1787]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L|MCP1:ANM1:finger_index_end_L.message" 
		"MCP1RN.placeHolderList[1788]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L|MCP1:ANM1:finger_index_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1789]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L|MCP1:ANM1:finger_index_2_L_InfGEOM|MCP1:ANM1:finger_index_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1790]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1791]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_1_L_InfGEOM|MCP1:ANM1:finger_index_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1792]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1793]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_0_L_InfGEOM|MCP1:ANM1:finger_index_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1794]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_meta_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1795]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_meta_L_InfGEOM|MCP1:ANM1:finger_index_meta_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1796]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateX" 
		"MCP1RN.placeHolderList[1797]" "MCP1RN.placeHolderList[1798]" "MCP1:ANM1:finger_pinky_meta_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateY" 
		"MCP1RN.placeHolderList[1799]" "MCP1RN.placeHolderList[1800]" "MCP1:ANM1:finger_pinky_meta_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateZ" 
		"MCP1RN.placeHolderList[1801]" "MCP1RN.placeHolderList[1802]" "MCP1:ANM1:finger_pinky_meta_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateX" 
		"MCP1RN.placeHolderList[1803]" "MCP1RN.placeHolderList[1804]" "MCP1:ANM1:finger_pinky_meta_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateY" 
		"MCP1RN.placeHolderList[1805]" "MCP1RN.placeHolderList[1806]" "MCP1:ANM1:finger_pinky_meta_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateZ" 
		"MCP1RN.placeHolderList[1807]" "MCP1RN.placeHolderList[1808]" "MCP1:ANM1:finger_pinky_meta_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.worldMatrix" 
		"MCP1RN.placeHolderList[1809]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.message" 
		"MCP1RN.placeHolderList[1810]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateX" 
		"MCP1RN.placeHolderList[1811]" "MCP1RN.placeHolderList[1812]" "MCP1:ANM1:finger_pinky_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateY" 
		"MCP1RN.placeHolderList[1813]" "MCP1RN.placeHolderList[1814]" "MCP1:ANM1:finger_pinky_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateZ" 
		"MCP1RN.placeHolderList[1815]" "MCP1RN.placeHolderList[1816]" "MCP1:ANM1:finger_pinky_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateX" 
		"MCP1RN.placeHolderList[1817]" "MCP1RN.placeHolderList[1818]" "MCP1:ANM1:finger_pinky_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateY" 
		"MCP1RN.placeHolderList[1819]" "MCP1RN.placeHolderList[1820]" "MCP1:ANM1:finger_pinky_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateZ" 
		"MCP1RN.placeHolderList[1821]" "MCP1RN.placeHolderList[1822]" "MCP1:ANM1:finger_pinky_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[1823]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.message" 
		"MCP1RN.placeHolderList[1824]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateX" 
		"MCP1RN.placeHolderList[1825]" "MCP1RN.placeHolderList[1826]" "MCP1:ANM1:finger_pinky_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateY" 
		"MCP1RN.placeHolderList[1827]" "MCP1RN.placeHolderList[1828]" "MCP1:ANM1:finger_pinky_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateZ" 
		"MCP1RN.placeHolderList[1829]" "MCP1RN.placeHolderList[1830]" "MCP1:ANM1:finger_pinky_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateX" 
		"MCP1RN.placeHolderList[1831]" "MCP1RN.placeHolderList[1832]" "MCP1:ANM1:finger_pinky_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateY" 
		"MCP1RN.placeHolderList[1833]" "MCP1RN.placeHolderList[1834]" "MCP1:ANM1:finger_pinky_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateZ" 
		"MCP1RN.placeHolderList[1835]" "MCP1RN.placeHolderList[1836]" "MCP1:ANM1:finger_pinky_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[1837]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.message" 
		"MCP1RN.placeHolderList[1838]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateX" 
		"MCP1RN.placeHolderList[1839]" "MCP1RN.placeHolderList[1840]" "MCP1:ANM1:finger_pinky_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateY" 
		"MCP1RN.placeHolderList[1841]" "MCP1RN.placeHolderList[1842]" "MCP1:ANM1:finger_pinky_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateZ" 
		"MCP1RN.placeHolderList[1843]" "MCP1RN.placeHolderList[1844]" "MCP1:ANM1:finger_pinky_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateX" 
		"MCP1RN.placeHolderList[1845]" "MCP1RN.placeHolderList[1846]" "MCP1:ANM1:finger_pinky_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateY" 
		"MCP1RN.placeHolderList[1847]" "MCP1RN.placeHolderList[1848]" "MCP1:ANM1:finger_pinky_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateZ" 
		"MCP1RN.placeHolderList[1849]" "MCP1RN.placeHolderList[1850]" "MCP1:ANM1:finger_pinky_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[1851]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.message" 
		"MCP1RN.placeHolderList[1852]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L|MCP1:ANM1:finger_pinky_end_L.message" 
		"MCP1RN.placeHolderList[1853]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L|MCP1:ANM1:finger_pinky_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1854]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L|MCP1:ANM1:finger_pinky_2_L_InfGEOM|MCP1:ANM1:finger_pinky_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1855]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1856]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_1_L_InfGEOM|MCP1:ANM1:finger_pinky_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1857]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1858]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_0_L_InfGEOM|MCP1:ANM1:finger_pinky_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1859]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_meta_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1860]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_meta_L_InfGEOM|MCP1:ANM1:finger_pinky_meta_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1861]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateX" 
		"MCP1RN.placeHolderList[1862]" "MCP1RN.placeHolderList[1863]" "MCP1:ANM1:finger_middle_meta_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateY" 
		"MCP1RN.placeHolderList[1864]" "MCP1RN.placeHolderList[1865]" "MCP1:ANM1:finger_middle_meta_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateZ" 
		"MCP1RN.placeHolderList[1866]" "MCP1RN.placeHolderList[1867]" "MCP1:ANM1:finger_middle_meta_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateX" 
		"MCP1RN.placeHolderList[1868]" "MCP1RN.placeHolderList[1869]" "MCP1:ANM1:finger_middle_meta_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateY" 
		"MCP1RN.placeHolderList[1870]" "MCP1RN.placeHolderList[1871]" "MCP1:ANM1:finger_middle_meta_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateZ" 
		"MCP1RN.placeHolderList[1872]" "MCP1RN.placeHolderList[1873]" "MCP1:ANM1:finger_middle_meta_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.worldMatrix" 
		"MCP1RN.placeHolderList[1874]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.message" 
		"MCP1RN.placeHolderList[1875]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateX" 
		"MCP1RN.placeHolderList[1876]" "MCP1RN.placeHolderList[1877]" "MCP1:ANM1:finger_middle_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateY" 
		"MCP1RN.placeHolderList[1878]" "MCP1RN.placeHolderList[1879]" "MCP1:ANM1:finger_middle_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateZ" 
		"MCP1RN.placeHolderList[1880]" "MCP1RN.placeHolderList[1881]" "MCP1:ANM1:finger_middle_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateX" 
		"MCP1RN.placeHolderList[1882]" "MCP1RN.placeHolderList[1883]" "MCP1:ANM1:finger_middle_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateY" 
		"MCP1RN.placeHolderList[1884]" "MCP1RN.placeHolderList[1885]" "MCP1:ANM1:finger_middle_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateZ" 
		"MCP1RN.placeHolderList[1886]" "MCP1RN.placeHolderList[1887]" "MCP1:ANM1:finger_middle_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[1888]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.message" 
		"MCP1RN.placeHolderList[1889]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateX" 
		"MCP1RN.placeHolderList[1890]" "MCP1RN.placeHolderList[1891]" "MCP1:ANM1:finger_middle_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateY" 
		"MCP1RN.placeHolderList[1892]" "MCP1RN.placeHolderList[1893]" "MCP1:ANM1:finger_middle_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateZ" 
		"MCP1RN.placeHolderList[1894]" "MCP1RN.placeHolderList[1895]" "MCP1:ANM1:finger_middle_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateX" 
		"MCP1RN.placeHolderList[1896]" "MCP1RN.placeHolderList[1897]" "MCP1:ANM1:finger_middle_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateY" 
		"MCP1RN.placeHolderList[1898]" "MCP1RN.placeHolderList[1899]" "MCP1:ANM1:finger_middle_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateZ" 
		"MCP1RN.placeHolderList[1900]" "MCP1RN.placeHolderList[1901]" "MCP1:ANM1:finger_middle_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[1902]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.message" 
		"MCP1RN.placeHolderList[1903]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateX" 
		"MCP1RN.placeHolderList[1904]" "MCP1RN.placeHolderList[1905]" "MCP1:ANM1:finger_middle_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateY" 
		"MCP1RN.placeHolderList[1906]" "MCP1RN.placeHolderList[1907]" "MCP1:ANM1:finger_middle_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateZ" 
		"MCP1RN.placeHolderList[1908]" "MCP1RN.placeHolderList[1909]" "MCP1:ANM1:finger_middle_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateX" 
		"MCP1RN.placeHolderList[1910]" "MCP1RN.placeHolderList[1911]" "MCP1:ANM1:finger_middle_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateY" 
		"MCP1RN.placeHolderList[1912]" "MCP1RN.placeHolderList[1913]" "MCP1:ANM1:finger_middle_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateZ" 
		"MCP1RN.placeHolderList[1914]" "MCP1RN.placeHolderList[1915]" "MCP1:ANM1:finger_middle_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[1916]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.message" 
		"MCP1RN.placeHolderList[1917]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L|MCP1:ANM1:finger_middle_end_L.message" 
		"MCP1RN.placeHolderList[1918]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L|MCP1:ANM1:finger_middle_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1919]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L|MCP1:ANM1:finger_middle_2_L_InfGEOM|MCP1:ANM1:finger_middle_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1920]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1921]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_1_L_InfGEOM|MCP1:ANM1:finger_middle_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1922]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1923]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_0_L_InfGEOM|MCP1:ANM1:finger_middle_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1924]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_meta_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1925]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_meta_L_InfGEOM|MCP1:ANM1:finger_middle_meta_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1926]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateX" 
		"MCP1RN.placeHolderList[1927]" "MCP1RN.placeHolderList[1928]" "MCP1:ANM1:finger_ring_meta_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateY" 
		"MCP1RN.placeHolderList[1929]" "MCP1RN.placeHolderList[1930]" "MCP1:ANM1:finger_ring_meta_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateZ" 
		"MCP1RN.placeHolderList[1931]" "MCP1RN.placeHolderList[1932]" "MCP1:ANM1:finger_ring_meta_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateX" 
		"MCP1RN.placeHolderList[1933]" "MCP1RN.placeHolderList[1934]" "MCP1:ANM1:finger_ring_meta_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateY" 
		"MCP1RN.placeHolderList[1935]" "MCP1RN.placeHolderList[1936]" "MCP1:ANM1:finger_ring_meta_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateZ" 
		"MCP1RN.placeHolderList[1937]" "MCP1RN.placeHolderList[1938]" "MCP1:ANM1:finger_ring_meta_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.worldMatrix" 
		"MCP1RN.placeHolderList[1939]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.message" 
		"MCP1RN.placeHolderList[1940]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateX" 
		"MCP1RN.placeHolderList[1941]" "MCP1RN.placeHolderList[1942]" "MCP1:ANM1:finger_ring_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateY" 
		"MCP1RN.placeHolderList[1943]" "MCP1RN.placeHolderList[1944]" "MCP1:ANM1:finger_ring_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateZ" 
		"MCP1RN.placeHolderList[1945]" "MCP1RN.placeHolderList[1946]" "MCP1:ANM1:finger_ring_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateX" 
		"MCP1RN.placeHolderList[1947]" "MCP1RN.placeHolderList[1948]" "MCP1:ANM1:finger_ring_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateY" 
		"MCP1RN.placeHolderList[1949]" "MCP1RN.placeHolderList[1950]" "MCP1:ANM1:finger_ring_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateZ" 
		"MCP1RN.placeHolderList[1951]" "MCP1RN.placeHolderList[1952]" "MCP1:ANM1:finger_ring_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[1953]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.message" 
		"MCP1RN.placeHolderList[1954]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateX" 
		"MCP1RN.placeHolderList[1955]" "MCP1RN.placeHolderList[1956]" "MCP1:ANM1:finger_ring_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateY" 
		"MCP1RN.placeHolderList[1957]" "MCP1RN.placeHolderList[1958]" "MCP1:ANM1:finger_ring_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateZ" 
		"MCP1RN.placeHolderList[1959]" "MCP1RN.placeHolderList[1960]" "MCP1:ANM1:finger_ring_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateX" 
		"MCP1RN.placeHolderList[1961]" "MCP1RN.placeHolderList[1962]" "MCP1:ANM1:finger_ring_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateY" 
		"MCP1RN.placeHolderList[1963]" "MCP1RN.placeHolderList[1964]" "MCP1:ANM1:finger_ring_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateZ" 
		"MCP1RN.placeHolderList[1965]" "MCP1RN.placeHolderList[1966]" "MCP1:ANM1:finger_ring_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[1967]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.message" 
		"MCP1RN.placeHolderList[1968]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateX" 
		"MCP1RN.placeHolderList[1969]" "MCP1RN.placeHolderList[1970]" "MCP1:ANM1:finger_ring_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateY" 
		"MCP1RN.placeHolderList[1971]" "MCP1RN.placeHolderList[1972]" "MCP1:ANM1:finger_ring_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateZ" 
		"MCP1RN.placeHolderList[1973]" "MCP1RN.placeHolderList[1974]" "MCP1:ANM1:finger_ring_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateX" 
		"MCP1RN.placeHolderList[1975]" "MCP1RN.placeHolderList[1976]" "MCP1:ANM1:finger_ring_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateY" 
		"MCP1RN.placeHolderList[1977]" "MCP1RN.placeHolderList[1978]" "MCP1:ANM1:finger_ring_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateZ" 
		"MCP1RN.placeHolderList[1979]" "MCP1RN.placeHolderList[1980]" "MCP1:ANM1:finger_ring_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[1981]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.message" 
		"MCP1RN.placeHolderList[1982]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L|MCP1:ANM1:finger_ring_end_L.message" 
		"MCP1RN.placeHolderList[1983]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L|MCP1:ANM1:finger_ring_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1984]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L|MCP1:ANM1:finger_ring_2_L_InfGEOM|MCP1:ANM1:finger_ring_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1985]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1986]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_1_L_InfGEOM|MCP1:ANM1:finger_ring_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1987]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1988]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_0_L_InfGEOM|MCP1:ANM1:finger_ring_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1989]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_meta_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[1990]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_meta_L_InfGEOM|MCP1:ANM1:finger_ring_meta_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1991]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateX" 
		"MCP1RN.placeHolderList[1992]" "MCP1RN.placeHolderList[1993]" "MCP1:ANM1:finger_thumb_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateY" 
		"MCP1RN.placeHolderList[1994]" "MCP1RN.placeHolderList[1995]" "MCP1:ANM1:finger_thumb_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateZ" 
		"MCP1RN.placeHolderList[1996]" "MCP1RN.placeHolderList[1997]" "MCP1:ANM1:finger_thumb_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateX" 
		"MCP1RN.placeHolderList[1998]" "MCP1RN.placeHolderList[1999]" "MCP1:ANM1:finger_thumb_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateY" 
		"MCP1RN.placeHolderList[2000]" "MCP1RN.placeHolderList[2001]" "MCP1:ANM1:finger_thumb_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateZ" 
		"MCP1RN.placeHolderList[2002]" "MCP1RN.placeHolderList[2003]" "MCP1:ANM1:finger_thumb_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[2004]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.message" 
		"MCP1RN.placeHolderList[2005]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateX" 
		"MCP1RN.placeHolderList[2006]" "MCP1RN.placeHolderList[2007]" "MCP1:ANM1:finger_thumb_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateY" 
		"MCP1RN.placeHolderList[2008]" "MCP1RN.placeHolderList[2009]" "MCP1:ANM1:finger_thumb_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateZ" 
		"MCP1RN.placeHolderList[2010]" "MCP1RN.placeHolderList[2011]" "MCP1:ANM1:finger_thumb_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateX" 
		"MCP1RN.placeHolderList[2012]" "MCP1RN.placeHolderList[2013]" "MCP1:ANM1:finger_thumb_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateY" 
		"MCP1RN.placeHolderList[2014]" "MCP1RN.placeHolderList[2015]" "MCP1:ANM1:finger_thumb_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateZ" 
		"MCP1RN.placeHolderList[2016]" "MCP1RN.placeHolderList[2017]" "MCP1:ANM1:finger_thumb_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[2018]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.message" 
		"MCP1RN.placeHolderList[2019]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateX" 
		"MCP1RN.placeHolderList[2020]" "MCP1RN.placeHolderList[2021]" "MCP1:ANM1:finger_thumb_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateY" 
		"MCP1RN.placeHolderList[2022]" "MCP1RN.placeHolderList[2023]" "MCP1:ANM1:finger_thumb_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateZ" 
		"MCP1RN.placeHolderList[2024]" "MCP1RN.placeHolderList[2025]" "MCP1:ANM1:finger_thumb_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateX" 
		"MCP1RN.placeHolderList[2026]" "MCP1RN.placeHolderList[2027]" "MCP1:ANM1:finger_thumb_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateY" 
		"MCP1RN.placeHolderList[2028]" "MCP1RN.placeHolderList[2029]" "MCP1:ANM1:finger_thumb_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateZ" 
		"MCP1RN.placeHolderList[2030]" "MCP1RN.placeHolderList[2031]" "MCP1:ANM1:finger_thumb_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[2032]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.message" 
		"MCP1RN.placeHolderList[2033]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L|MCP1:ANM1:finger_thumb_end_L.message" 
		"MCP1RN.placeHolderList[2034]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L|MCP1:ANM1:finger_thumb_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2035]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L|MCP1:ANM1:finger_thumb_2_L_InfGEOM|MCP1:ANM1:finger_thumb_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2036]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2037]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_1_L_InfGEOM|MCP1:ANM1:finger_thumb_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2038]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2039]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_0_L_InfGEOM|MCP1:ANM1:finger_thumb_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2040]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:hand_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2041]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:hand_L_InfGEOM|MCP1:ANM1:hand_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2042]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:object_hand_L.message" 
		"MCP1RN.placeHolderList[2043]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:weapon_hand_L.message" 
		"MCP1RN.placeHolderList[2044]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:arm_lower_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2045]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:arm_lower_L_InfGEOM|MCP1:ANM1:arm_lower_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2046]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_upper_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2047]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_upper_L_InfGEOM|MCP1:ANM1:arm_upper_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2048]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:clavicle_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2049]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:clavicle_L_InfGEOM|MCP1:ANM1:clavicle_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2050]" ""
		5 0 "MCP1RN" "MCP1:neck_0_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateX" 
		"MCP1RN.placeHolderList[2051]" "MCP1RN.placeHolderList[2052]" "MCP1:ANM1:neck_0.tx"
		
		5 0 "MCP1RN" "MCP1:neck_0_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateY" 
		"MCP1RN.placeHolderList[2053]" "MCP1RN.placeHolderList[2054]" "MCP1:ANM1:neck_0.ty"
		
		5 0 "MCP1RN" "MCP1:neck_0_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateZ" 
		"MCP1RN.placeHolderList[2055]" "MCP1RN.placeHolderList[2056]" "MCP1:ANM1:neck_0.tz"
		
		5 0 "MCP1RN" "MCP1:neck_0_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateX" 
		"MCP1RN.placeHolderList[2057]" "MCP1RN.placeHolderList[2058]" "MCP1:ANM1:neck_0.rx"
		
		5 0 "MCP1RN" "MCP1:neck_0_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateY" 
		"MCP1RN.placeHolderList[2059]" "MCP1RN.placeHolderList[2060]" "MCP1:ANM1:neck_0.ry"
		
		5 0 "MCP1RN" "MCP1:neck_0_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateZ" 
		"MCP1RN.placeHolderList[2061]" "MCP1RN.placeHolderList[2062]" "MCP1:ANM1:neck_0.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.worldMatrix" 
		"MCP1RN.placeHolderList[2063]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.message" 
		"MCP1RN.placeHolderList[2064]" ""
		5 0 "MCP1RN" "MCP1:head_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateX" 
		"MCP1RN.placeHolderList[2065]" "MCP1RN.placeHolderList[2066]" "MCP1:ANM1:head.tx"
		
		5 0 "MCP1RN" "MCP1:head_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateY" 
		"MCP1RN.placeHolderList[2067]" "MCP1RN.placeHolderList[2068]" "MCP1:ANM1:head.ty"
		
		5 0 "MCP1RN" "MCP1:head_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateZ" 
		"MCP1RN.placeHolderList[2069]" "MCP1RN.placeHolderList[2070]" "MCP1:ANM1:head.tz"
		
		5 0 "MCP1RN" "MCP1:head_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateX" 
		"MCP1RN.placeHolderList[2071]" "MCP1RN.placeHolderList[2072]" "MCP1:ANM1:head.rx"
		
		5 0 "MCP1RN" "MCP1:head_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateY" 
		"MCP1RN.placeHolderList[2073]" "MCP1RN.placeHolderList[2074]" "MCP1:ANM1:head.ry"
		
		5 0 "MCP1RN" "MCP1:head_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateZ" 
		"MCP1RN.placeHolderList[2075]" "MCP1RN.placeHolderList[2076]" "MCP1:ANM1:head.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.worldMatrix" 
		"MCP1RN.placeHolderList[2077]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.message" 
		"MCP1RN.placeHolderList[2078]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:eye_R.message" 
		"MCP1RN.placeHolderList[2079]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:eye_R|MCP1:ANM1:eye_end_R.message" 
		"MCP1RN.placeHolderList[2080]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:head_end.message" 
		"MCP1RN.placeHolderList[2081]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:eye_L.message" 
		"MCP1RN.placeHolderList[2082]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:eye_L|MCP1:ANM1:eye_end_L.message" 
		"MCP1RN.placeHolderList[2083]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:head_InfGEOM.message" 
		"MCP1RN.placeHolderList[2084]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:head_InfGEOM|MCP1:ANM1:head_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2085]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:neck_0_InfGEOM.message" 
		"MCP1RN.placeHolderList[2086]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:neck_0_InfGEOM|MCP1:ANM1:neck_0_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2087]" ""
		5 0 "MCP1RN" "MCP1:clavicle_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateX" 
		"MCP1RN.placeHolderList[2088]" "MCP1RN.placeHolderList[2089]" "MCP1:ANM1:clavicle_R.tx"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateY" 
		"MCP1RN.placeHolderList[2090]" "MCP1RN.placeHolderList[2091]" "MCP1:ANM1:clavicle_R.ty"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateZ" 
		"MCP1RN.placeHolderList[2092]" "MCP1RN.placeHolderList[2093]" "MCP1:ANM1:clavicle_R.tz"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateX" 
		"MCP1RN.placeHolderList[2094]" "MCP1RN.placeHolderList[2095]" "MCP1:ANM1:clavicle_R.rx"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateY" 
		"MCP1RN.placeHolderList[2096]" "MCP1RN.placeHolderList[2097]" "MCP1:ANM1:clavicle_R.ry"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateZ" 
		"MCP1RN.placeHolderList[2098]" "MCP1RN.placeHolderList[2099]" "MCP1:ANM1:clavicle_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.worldMatrix" 
		"MCP1RN.placeHolderList[2100]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.message" 
		"MCP1RN.placeHolderList[2101]" ""
		5 0 "MCP1RN" "MCP1:arm_upper_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateX" 
		"MCP1RN.placeHolderList[2102]" "MCP1RN.placeHolderList[2103]" "MCP1:ANM1:arm_upper_R.tx"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateY" 
		"MCP1RN.placeHolderList[2104]" "MCP1RN.placeHolderList[2105]" "MCP1:ANM1:arm_upper_R.ty"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateZ" 
		"MCP1RN.placeHolderList[2106]" "MCP1RN.placeHolderList[2107]" "MCP1:ANM1:arm_upper_R.tz"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateX" 
		"MCP1RN.placeHolderList[2108]" "MCP1RN.placeHolderList[2109]" "MCP1:ANM1:arm_upper_R.rx"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateY" 
		"MCP1RN.placeHolderList[2110]" "MCP1RN.placeHolderList[2111]" "MCP1:ANM1:arm_upper_R.ry"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateZ" 
		"MCP1RN.placeHolderList[2112]" "MCP1RN.placeHolderList[2113]" "MCP1:ANM1:arm_upper_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.worldMatrix" 
		"MCP1RN.placeHolderList[2114]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.message" 
		"MCP1RN.placeHolderList[2115]" ""
		5 0 "MCP1RN" "MCP1:arm_lower_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateX" 
		"MCP1RN.placeHolderList[2116]" "MCP1RN.placeHolderList[2117]" "MCP1:ANM1:arm_lower_R.tx"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateY" 
		"MCP1RN.placeHolderList[2118]" "MCP1RN.placeHolderList[2119]" "MCP1:ANM1:arm_lower_R.ty"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateZ" 
		"MCP1RN.placeHolderList[2120]" "MCP1RN.placeHolderList[2121]" "MCP1:ANM1:arm_lower_R.tz"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateX" 
		"MCP1RN.placeHolderList[2122]" "MCP1RN.placeHolderList[2123]" "MCP1:ANM1:arm_lower_R.rx"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateY" 
		"MCP1RN.placeHolderList[2124]" "MCP1RN.placeHolderList[2125]" "MCP1:ANM1:arm_lower_R.ry"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateZ" 
		"MCP1RN.placeHolderList[2126]" "MCP1RN.placeHolderList[2127]" "MCP1:ANM1:arm_lower_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.worldMatrix" 
		"MCP1RN.placeHolderList[2128]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.message" 
		"MCP1RN.placeHolderList[2129]" ""
		5 0 "MCP1RN" "MCP1:hand_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateX" 
		"MCP1RN.placeHolderList[2130]" "MCP1RN.placeHolderList[2131]" "MCP1:ANM1:hand_R.tx"
		
		5 0 "MCP1RN" "MCP1:hand_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateY" 
		"MCP1RN.placeHolderList[2132]" "MCP1RN.placeHolderList[2133]" "MCP1:ANM1:hand_R.ty"
		
		5 0 "MCP1RN" "MCP1:hand_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateZ" 
		"MCP1RN.placeHolderList[2134]" "MCP1RN.placeHolderList[2135]" "MCP1:ANM1:hand_R.tz"
		
		5 0 "MCP1RN" "MCP1:hand_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateX" 
		"MCP1RN.placeHolderList[2136]" "MCP1RN.placeHolderList[2137]" "MCP1:ANM1:hand_R.rx"
		
		5 0 "MCP1RN" "MCP1:hand_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateY" 
		"MCP1RN.placeHolderList[2138]" "MCP1RN.placeHolderList[2139]" "MCP1:ANM1:hand_R.ry"
		
		5 0 "MCP1RN" "MCP1:hand_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateZ" 
		"MCP1RN.placeHolderList[2140]" "MCP1RN.placeHolderList[2141]" "MCP1:ANM1:hand_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.worldMatrix" 
		"MCP1RN.placeHolderList[2142]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.message" 
		"MCP1RN.placeHolderList[2143]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateX" 
		"MCP1RN.placeHolderList[2144]" "MCP1RN.placeHolderList[2145]" "MCP1:ANM1:finger_thumb_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateY" 
		"MCP1RN.placeHolderList[2146]" "MCP1RN.placeHolderList[2147]" "MCP1:ANM1:finger_thumb_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateZ" 
		"MCP1RN.placeHolderList[2148]" "MCP1RN.placeHolderList[2149]" "MCP1:ANM1:finger_thumb_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateX" 
		"MCP1RN.placeHolderList[2150]" "MCP1RN.placeHolderList[2151]" "MCP1:ANM1:finger_thumb_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateY" 
		"MCP1RN.placeHolderList[2152]" "MCP1RN.placeHolderList[2153]" "MCP1:ANM1:finger_thumb_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateZ" 
		"MCP1RN.placeHolderList[2154]" "MCP1RN.placeHolderList[2155]" "MCP1:ANM1:finger_thumb_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[2156]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.message" 
		"MCP1RN.placeHolderList[2157]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateX" 
		"MCP1RN.placeHolderList[2158]" "MCP1RN.placeHolderList[2159]" "MCP1:ANM1:finger_thumb_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateY" 
		"MCP1RN.placeHolderList[2160]" "MCP1RN.placeHolderList[2161]" "MCP1:ANM1:finger_thumb_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateZ" 
		"MCP1RN.placeHolderList[2162]" "MCP1RN.placeHolderList[2163]" "MCP1:ANM1:finger_thumb_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateX" 
		"MCP1RN.placeHolderList[2164]" "MCP1RN.placeHolderList[2165]" "MCP1:ANM1:finger_thumb_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateY" 
		"MCP1RN.placeHolderList[2166]" "MCP1RN.placeHolderList[2167]" "MCP1:ANM1:finger_thumb_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateZ" 
		"MCP1RN.placeHolderList[2168]" "MCP1RN.placeHolderList[2169]" "MCP1:ANM1:finger_thumb_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[2170]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.message" 
		"MCP1RN.placeHolderList[2171]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateX" 
		"MCP1RN.placeHolderList[2172]" "MCP1RN.placeHolderList[2173]" "MCP1:ANM1:finger_thumb_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateY" 
		"MCP1RN.placeHolderList[2174]" "MCP1RN.placeHolderList[2175]" "MCP1:ANM1:finger_thumb_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateZ" 
		"MCP1RN.placeHolderList[2176]" "MCP1RN.placeHolderList[2177]" "MCP1:ANM1:finger_thumb_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateX" 
		"MCP1RN.placeHolderList[2178]" "MCP1RN.placeHolderList[2179]" "MCP1:ANM1:finger_thumb_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateY" 
		"MCP1RN.placeHolderList[2180]" "MCP1RN.placeHolderList[2181]" "MCP1:ANM1:finger_thumb_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateZ" 
		"MCP1RN.placeHolderList[2182]" "MCP1RN.placeHolderList[2183]" "MCP1:ANM1:finger_thumb_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[2184]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.message" 
		"MCP1RN.placeHolderList[2185]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R|MCP1:ANM1:finger_thumb_end_R.message" 
		"MCP1RN.placeHolderList[2186]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R|MCP1:ANM1:finger_thumb_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2187]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R|MCP1:ANM1:finger_thumb_2_R_InfGEOM|MCP1:ANM1:finger_thumb_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2188]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2189]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_1_R_InfGEOM|MCP1:ANM1:finger_thumb_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2190]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2191]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_0_R_InfGEOM|MCP1:ANM1:finger_thumb_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2192]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateX" 
		"MCP1RN.placeHolderList[2193]" "MCP1RN.placeHolderList[2194]" "MCP1:ANM1:finger_ring_meta_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateY" 
		"MCP1RN.placeHolderList[2195]" "MCP1RN.placeHolderList[2196]" "MCP1:ANM1:finger_ring_meta_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateZ" 
		"MCP1RN.placeHolderList[2197]" "MCP1RN.placeHolderList[2198]" "MCP1:ANM1:finger_ring_meta_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateX" 
		"MCP1RN.placeHolderList[2199]" "MCP1RN.placeHolderList[2200]" "MCP1:ANM1:finger_ring_meta_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateY" 
		"MCP1RN.placeHolderList[2201]" "MCP1RN.placeHolderList[2202]" "MCP1:ANM1:finger_ring_meta_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateZ" 
		"MCP1RN.placeHolderList[2203]" "MCP1RN.placeHolderList[2204]" "MCP1:ANM1:finger_ring_meta_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.worldMatrix" 
		"MCP1RN.placeHolderList[2205]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.message" 
		"MCP1RN.placeHolderList[2206]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateX" 
		"MCP1RN.placeHolderList[2207]" "MCP1RN.placeHolderList[2208]" "MCP1:ANM1:finger_ring_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateY" 
		"MCP1RN.placeHolderList[2209]" "MCP1RN.placeHolderList[2210]" "MCP1:ANM1:finger_ring_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateZ" 
		"MCP1RN.placeHolderList[2211]" "MCP1RN.placeHolderList[2212]" "MCP1:ANM1:finger_ring_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateX" 
		"MCP1RN.placeHolderList[2213]" "MCP1RN.placeHolderList[2214]" "MCP1:ANM1:finger_ring_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateY" 
		"MCP1RN.placeHolderList[2215]" "MCP1RN.placeHolderList[2216]" "MCP1:ANM1:finger_ring_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateZ" 
		"MCP1RN.placeHolderList[2217]" "MCP1RN.placeHolderList[2218]" "MCP1:ANM1:finger_ring_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[2219]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.message" 
		"MCP1RN.placeHolderList[2220]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateX" 
		"MCP1RN.placeHolderList[2221]" "MCP1RN.placeHolderList[2222]" "MCP1:ANM1:finger_ring_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateY" 
		"MCP1RN.placeHolderList[2223]" "MCP1RN.placeHolderList[2224]" "MCP1:ANM1:finger_ring_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateZ" 
		"MCP1RN.placeHolderList[2225]" "MCP1RN.placeHolderList[2226]" "MCP1:ANM1:finger_ring_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateX" 
		"MCP1RN.placeHolderList[2227]" "MCP1RN.placeHolderList[2228]" "MCP1:ANM1:finger_ring_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateY" 
		"MCP1RN.placeHolderList[2229]" "MCP1RN.placeHolderList[2230]" "MCP1:ANM1:finger_ring_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateZ" 
		"MCP1RN.placeHolderList[2231]" "MCP1RN.placeHolderList[2232]" "MCP1:ANM1:finger_ring_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[2233]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.message" 
		"MCP1RN.placeHolderList[2234]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateX" 
		"MCP1RN.placeHolderList[2235]" "MCP1RN.placeHolderList[2236]" "MCP1:ANM1:finger_ring_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateY" 
		"MCP1RN.placeHolderList[2237]" "MCP1RN.placeHolderList[2238]" "MCP1:ANM1:finger_ring_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateZ" 
		"MCP1RN.placeHolderList[2239]" "MCP1RN.placeHolderList[2240]" "MCP1:ANM1:finger_ring_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateX" 
		"MCP1RN.placeHolderList[2241]" "MCP1RN.placeHolderList[2242]" "MCP1:ANM1:finger_ring_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateY" 
		"MCP1RN.placeHolderList[2243]" "MCP1RN.placeHolderList[2244]" "MCP1:ANM1:finger_ring_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateZ" 
		"MCP1RN.placeHolderList[2245]" "MCP1RN.placeHolderList[2246]" "MCP1:ANM1:finger_ring_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[2247]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.message" 
		"MCP1RN.placeHolderList[2248]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R|MCP1:ANM1:finger_ring_end_R.message" 
		"MCP1RN.placeHolderList[2249]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R|MCP1:ANM1:finger_ring_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2250]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R|MCP1:ANM1:finger_ring_2_R_InfGEOM|MCP1:ANM1:finger_ring_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2251]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2252]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_1_R_InfGEOM|MCP1:ANM1:finger_ring_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2253]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2254]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_0_R_InfGEOM|MCP1:ANM1:finger_ring_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2255]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_meta_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2256]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_meta_R_InfGEOM|MCP1:ANM1:finger_ring_meta_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2257]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateX" 
		"MCP1RN.placeHolderList[2258]" "MCP1RN.placeHolderList[2259]" "MCP1:ANM1:finger_middle_meta_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateY" 
		"MCP1RN.placeHolderList[2260]" "MCP1RN.placeHolderList[2261]" "MCP1:ANM1:finger_middle_meta_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateZ" 
		"MCP1RN.placeHolderList[2262]" "MCP1RN.placeHolderList[2263]" "MCP1:ANM1:finger_middle_meta_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateX" 
		"MCP1RN.placeHolderList[2264]" "MCP1RN.placeHolderList[2265]" "MCP1:ANM1:finger_middle_meta_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateY" 
		"MCP1RN.placeHolderList[2266]" "MCP1RN.placeHolderList[2267]" "MCP1:ANM1:finger_middle_meta_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateZ" 
		"MCP1RN.placeHolderList[2268]" "MCP1RN.placeHolderList[2269]" "MCP1:ANM1:finger_middle_meta_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.worldMatrix" 
		"MCP1RN.placeHolderList[2270]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.message" 
		"MCP1RN.placeHolderList[2271]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateX" 
		"MCP1RN.placeHolderList[2272]" "MCP1RN.placeHolderList[2273]" "MCP1:ANM1:finger_middle_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateY" 
		"MCP1RN.placeHolderList[2274]" "MCP1RN.placeHolderList[2275]" "MCP1:ANM1:finger_middle_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateZ" 
		"MCP1RN.placeHolderList[2276]" "MCP1RN.placeHolderList[2277]" "MCP1:ANM1:finger_middle_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateX" 
		"MCP1RN.placeHolderList[2278]" "MCP1RN.placeHolderList[2279]" "MCP1:ANM1:finger_middle_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateY" 
		"MCP1RN.placeHolderList[2280]" "MCP1RN.placeHolderList[2281]" "MCP1:ANM1:finger_middle_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateZ" 
		"MCP1RN.placeHolderList[2282]" "MCP1RN.placeHolderList[2283]" "MCP1:ANM1:finger_middle_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[2284]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.message" 
		"MCP1RN.placeHolderList[2285]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateX" 
		"MCP1RN.placeHolderList[2286]" "MCP1RN.placeHolderList[2287]" "MCP1:ANM1:finger_middle_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateY" 
		"MCP1RN.placeHolderList[2288]" "MCP1RN.placeHolderList[2289]" "MCP1:ANM1:finger_middle_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateZ" 
		"MCP1RN.placeHolderList[2290]" "MCP1RN.placeHolderList[2291]" "MCP1:ANM1:finger_middle_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateX" 
		"MCP1RN.placeHolderList[2292]" "MCP1RN.placeHolderList[2293]" "MCP1:ANM1:finger_middle_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateY" 
		"MCP1RN.placeHolderList[2294]" "MCP1RN.placeHolderList[2295]" "MCP1:ANM1:finger_middle_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateZ" 
		"MCP1RN.placeHolderList[2296]" "MCP1RN.placeHolderList[2297]" "MCP1:ANM1:finger_middle_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[2298]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.message" 
		"MCP1RN.placeHolderList[2299]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateX" 
		"MCP1RN.placeHolderList[2300]" "MCP1RN.placeHolderList[2301]" "MCP1:ANM1:finger_middle_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateY" 
		"MCP1RN.placeHolderList[2302]" "MCP1RN.placeHolderList[2303]" "MCP1:ANM1:finger_middle_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateZ" 
		"MCP1RN.placeHolderList[2304]" "MCP1RN.placeHolderList[2305]" "MCP1:ANM1:finger_middle_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateX" 
		"MCP1RN.placeHolderList[2306]" "MCP1RN.placeHolderList[2307]" "MCP1:ANM1:finger_middle_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateY" 
		"MCP1RN.placeHolderList[2308]" "MCP1RN.placeHolderList[2309]" "MCP1:ANM1:finger_middle_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateZ" 
		"MCP1RN.placeHolderList[2310]" "MCP1RN.placeHolderList[2311]" "MCP1:ANM1:finger_middle_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[2312]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.message" 
		"MCP1RN.placeHolderList[2313]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R|MCP1:ANM1:finger_middle_end_R.message" 
		"MCP1RN.placeHolderList[2314]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R|MCP1:ANM1:finger_middle_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2315]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R|MCP1:ANM1:finger_middle_2_R_InfGEOM|MCP1:ANM1:finger_middle_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2316]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2317]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_1_R_InfGEOM|MCP1:ANM1:finger_middle_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2318]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2319]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_0_R_InfGEOM|MCP1:ANM1:finger_middle_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2320]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_meta_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2321]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_meta_R_InfGEOM|MCP1:ANM1:finger_middle_meta_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2322]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateX" 
		"MCP1RN.placeHolderList[2323]" "MCP1RN.placeHolderList[2324]" "MCP1:ANM1:finger_pinky_meta_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateY" 
		"MCP1RN.placeHolderList[2325]" "MCP1RN.placeHolderList[2326]" "MCP1:ANM1:finger_pinky_meta_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateZ" 
		"MCP1RN.placeHolderList[2327]" "MCP1RN.placeHolderList[2328]" "MCP1:ANM1:finger_pinky_meta_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateX" 
		"MCP1RN.placeHolderList[2329]" "MCP1RN.placeHolderList[2330]" "MCP1:ANM1:finger_pinky_meta_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateY" 
		"MCP1RN.placeHolderList[2331]" "MCP1RN.placeHolderList[2332]" "MCP1:ANM1:finger_pinky_meta_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateZ" 
		"MCP1RN.placeHolderList[2333]" "MCP1RN.placeHolderList[2334]" "MCP1:ANM1:finger_pinky_meta_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.worldMatrix" 
		"MCP1RN.placeHolderList[2335]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.message" 
		"MCP1RN.placeHolderList[2336]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateX" 
		"MCP1RN.placeHolderList[2337]" "MCP1RN.placeHolderList[2338]" "MCP1:ANM1:finger_pinky_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateY" 
		"MCP1RN.placeHolderList[2339]" "MCP1RN.placeHolderList[2340]" "MCP1:ANM1:finger_pinky_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateZ" 
		"MCP1RN.placeHolderList[2341]" "MCP1RN.placeHolderList[2342]" "MCP1:ANM1:finger_pinky_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateX" 
		"MCP1RN.placeHolderList[2343]" "MCP1RN.placeHolderList[2344]" "MCP1:ANM1:finger_pinky_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateY" 
		"MCP1RN.placeHolderList[2345]" "MCP1RN.placeHolderList[2346]" "MCP1:ANM1:finger_pinky_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateZ" 
		"MCP1RN.placeHolderList[2347]" "MCP1RN.placeHolderList[2348]" "MCP1:ANM1:finger_pinky_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[2349]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.message" 
		"MCP1RN.placeHolderList[2350]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateX" 
		"MCP1RN.placeHolderList[2351]" "MCP1RN.placeHolderList[2352]" "MCP1:ANM1:finger_pinky_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateY" 
		"MCP1RN.placeHolderList[2353]" "MCP1RN.placeHolderList[2354]" "MCP1:ANM1:finger_pinky_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateZ" 
		"MCP1RN.placeHolderList[2355]" "MCP1RN.placeHolderList[2356]" "MCP1:ANM1:finger_pinky_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateX" 
		"MCP1RN.placeHolderList[2357]" "MCP1RN.placeHolderList[2358]" "MCP1:ANM1:finger_pinky_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateY" 
		"MCP1RN.placeHolderList[2359]" "MCP1RN.placeHolderList[2360]" "MCP1:ANM1:finger_pinky_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateZ" 
		"MCP1RN.placeHolderList[2361]" "MCP1RN.placeHolderList[2362]" "MCP1:ANM1:finger_pinky_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[2363]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.message" 
		"MCP1RN.placeHolderList[2364]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateX" 
		"MCP1RN.placeHolderList[2365]" "MCP1RN.placeHolderList[2366]" "MCP1:ANM1:finger_pinky_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateY" 
		"MCP1RN.placeHolderList[2367]" "MCP1RN.placeHolderList[2368]" "MCP1:ANM1:finger_pinky_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateZ" 
		"MCP1RN.placeHolderList[2369]" "MCP1RN.placeHolderList[2370]" "MCP1:ANM1:finger_pinky_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateX" 
		"MCP1RN.placeHolderList[2371]" "MCP1RN.placeHolderList[2372]" "MCP1:ANM1:finger_pinky_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateY" 
		"MCP1RN.placeHolderList[2373]" "MCP1RN.placeHolderList[2374]" "MCP1:ANM1:finger_pinky_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateZ" 
		"MCP1RN.placeHolderList[2375]" "MCP1RN.placeHolderList[2376]" "MCP1:ANM1:finger_pinky_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[2377]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.message" 
		"MCP1RN.placeHolderList[2378]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R|MCP1:ANM1:finger_pinky_end_R.message" 
		"MCP1RN.placeHolderList[2379]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R|MCP1:ANM1:finger_pinky_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2380]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R|MCP1:ANM1:finger_pinky_2_R_InfGEOM|MCP1:ANM1:finger_pinky_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2381]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2382]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_1_R_InfGEOM|MCP1:ANM1:finger_pinky_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2383]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2384]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_0_R_InfGEOM|MCP1:ANM1:finger_pinky_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2385]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_meta_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2386]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_meta_R_InfGEOM|MCP1:ANM1:finger_pinky_meta_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2387]" ""
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateX" 
		"MCP1RN.placeHolderList[2388]" "MCP1RN.placeHolderList[2389]" "MCP1:ANM1:finger_index_meta_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateY" 
		"MCP1RN.placeHolderList[2390]" "MCP1RN.placeHolderList[2391]" "MCP1:ANM1:finger_index_meta_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateZ" 
		"MCP1RN.placeHolderList[2392]" "MCP1RN.placeHolderList[2393]" "MCP1:ANM1:finger_index_meta_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateX" 
		"MCP1RN.placeHolderList[2394]" "MCP1RN.placeHolderList[2395]" "MCP1:ANM1:finger_index_meta_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateY" 
		"MCP1RN.placeHolderList[2396]" "MCP1RN.placeHolderList[2397]" "MCP1:ANM1:finger_index_meta_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateZ" 
		"MCP1RN.placeHolderList[2398]" "MCP1RN.placeHolderList[2399]" "MCP1:ANM1:finger_index_meta_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.worldMatrix" 
		"MCP1RN.placeHolderList[2400]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.message" 
		"MCP1RN.placeHolderList[2401]" ""
		5 0 "MCP1RN" "MCP1:finger_index_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateX" 
		"MCP1RN.placeHolderList[2402]" "MCP1RN.placeHolderList[2403]" "MCP1:ANM1:finger_index_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateY" 
		"MCP1RN.placeHolderList[2404]" "MCP1RN.placeHolderList[2405]" "MCP1:ANM1:finger_index_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateZ" 
		"MCP1RN.placeHolderList[2406]" "MCP1RN.placeHolderList[2407]" "MCP1:ANM1:finger_index_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateX" 
		"MCP1RN.placeHolderList[2408]" "MCP1RN.placeHolderList[2409]" "MCP1:ANM1:finger_index_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateY" 
		"MCP1RN.placeHolderList[2410]" "MCP1RN.placeHolderList[2411]" "MCP1:ANM1:finger_index_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateZ" 
		"MCP1RN.placeHolderList[2412]" "MCP1RN.placeHolderList[2413]" "MCP1:ANM1:finger_index_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[2414]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.message" 
		"MCP1RN.placeHolderList[2415]" ""
		5 0 "MCP1RN" "MCP1:finger_index_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateX" 
		"MCP1RN.placeHolderList[2416]" "MCP1RN.placeHolderList[2417]" "MCP1:ANM1:finger_index_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateY" 
		"MCP1RN.placeHolderList[2418]" "MCP1RN.placeHolderList[2419]" "MCP1:ANM1:finger_index_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateZ" 
		"MCP1RN.placeHolderList[2420]" "MCP1RN.placeHolderList[2421]" "MCP1:ANM1:finger_index_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateX" 
		"MCP1RN.placeHolderList[2422]" "MCP1RN.placeHolderList[2423]" "MCP1:ANM1:finger_index_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateY" 
		"MCP1RN.placeHolderList[2424]" "MCP1RN.placeHolderList[2425]" "MCP1:ANM1:finger_index_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateZ" 
		"MCP1RN.placeHolderList[2426]" "MCP1RN.placeHolderList[2427]" "MCP1:ANM1:finger_index_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[2428]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.message" 
		"MCP1RN.placeHolderList[2429]" ""
		5 0 "MCP1RN" "MCP1:finger_index_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateX" 
		"MCP1RN.placeHolderList[2430]" "MCP1RN.placeHolderList[2431]" "MCP1:ANM1:finger_index_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateY" 
		"MCP1RN.placeHolderList[2432]" "MCP1RN.placeHolderList[2433]" "MCP1:ANM1:finger_index_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateZ" 
		"MCP1RN.placeHolderList[2434]" "MCP1RN.placeHolderList[2435]" "MCP1:ANM1:finger_index_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateX" 
		"MCP1RN.placeHolderList[2436]" "MCP1RN.placeHolderList[2437]" "MCP1:ANM1:finger_index_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateY" 
		"MCP1RN.placeHolderList[2438]" "MCP1RN.placeHolderList[2439]" "MCP1:ANM1:finger_index_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateZ" 
		"MCP1RN.placeHolderList[2440]" "MCP1RN.placeHolderList[2441]" "MCP1:ANM1:finger_index_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[2442]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.message" 
		"MCP1RN.placeHolderList[2443]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R|MCP1:ANM1:finger_index_end_R.message" 
		"MCP1RN.placeHolderList[2444]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R|MCP1:ANM1:finger_index_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2445]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R|MCP1:ANM1:finger_index_2_R_InfGEOM|MCP1:ANM1:finger_index_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2446]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2447]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_1_R_InfGEOM|MCP1:ANM1:finger_index_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2448]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2449]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_0_R_InfGEOM|MCP1:ANM1:finger_index_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2450]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_meta_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2451]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_meta_R_InfGEOM|MCP1:ANM1:finger_index_meta_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2452]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:hand_end_R.message" 
		"MCP1RN.placeHolderList[2453]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:hand_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2454]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:hand_R_InfGEOM|MCP1:ANM1:hand_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2455]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:object_hand_R.message" 
		"MCP1RN.placeHolderList[2456]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:weapon_hand_R.message" 
		"MCP1RN.placeHolderList[2457]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:arm_lower_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2458]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:arm_lower_R_InfGEOM|MCP1:ANM1:arm_lower_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2459]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_upper_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2460]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_upper_R_InfGEOM|MCP1:ANM1:arm_upper_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2461]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:clavicle_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2462]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:clavicle_R_InfGEOM|MCP1:ANM1:clavicle_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2463]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:spine_3_InfGEOM.message" 
		"MCP1RN.placeHolderList[2464]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:spine_3_InfGEOM|MCP1:ANM1:spine_3_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2465]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_2_InfGEOM.message" 
		"MCP1RN.placeHolderList[2466]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_2_InfGEOM|MCP1:ANM1:spine_2_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2467]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_1_InfGEOM.message" 
		"MCP1RN.placeHolderList[2468]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_1_InfGEOM|MCP1:ANM1:spine_1_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2469]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_0_InfGEOM.message" 
		"MCP1RN.placeHolderList[2470]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_0_InfGEOM|MCP1:ANM1:spine_0_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2471]" ""
		5 0 "MCP1RN" "MCP1:leg_upper_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateX" 
		"MCP1RN.placeHolderList[2472]" "MCP1RN.placeHolderList[2473]" "MCP1:ANM1:leg_upper_R.tx"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateY" 
		"MCP1RN.placeHolderList[2474]" "MCP1RN.placeHolderList[2475]" "MCP1:ANM1:leg_upper_R.ty"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateZ" 
		"MCP1RN.placeHolderList[2476]" "MCP1RN.placeHolderList[2477]" "MCP1:ANM1:leg_upper_R.tz"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateX" 
		"MCP1RN.placeHolderList[2478]" "MCP1RN.placeHolderList[2479]" "MCP1:ANM1:leg_upper_R.rx"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateY" 
		"MCP1RN.placeHolderList[2480]" "MCP1RN.placeHolderList[2481]" "MCP1:ANM1:leg_upper_R.ry"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateZ" 
		"MCP1RN.placeHolderList[2482]" "MCP1RN.placeHolderList[2483]" "MCP1:ANM1:leg_upper_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.worldMatrix" 
		"MCP1RN.placeHolderList[2484]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.message" 
		"MCP1RN.placeHolderList[2485]" ""
		5 0 "MCP1RN" "MCP1:leg_lower_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateX" 
		"MCP1RN.placeHolderList[2486]" "MCP1RN.placeHolderList[2487]" "MCP1:ANM1:leg_lower_R.tx"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateY" 
		"MCP1RN.placeHolderList[2488]" "MCP1RN.placeHolderList[2489]" "MCP1:ANM1:leg_lower_R.ty"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateZ" 
		"MCP1RN.placeHolderList[2490]" "MCP1RN.placeHolderList[2491]" "MCP1:ANM1:leg_lower_R.tz"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateX" 
		"MCP1RN.placeHolderList[2492]" "MCP1RN.placeHolderList[2493]" "MCP1:ANM1:leg_lower_R.rx"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateY" 
		"MCP1RN.placeHolderList[2494]" "MCP1RN.placeHolderList[2495]" "MCP1:ANM1:leg_lower_R.ry"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateZ" 
		"MCP1RN.placeHolderList[2496]" "MCP1RN.placeHolderList[2497]" "MCP1:ANM1:leg_lower_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.worldMatrix" 
		"MCP1RN.placeHolderList[2498]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.message" 
		"MCP1RN.placeHolderList[2499]" ""
		5 0 "MCP1RN" "MCP1:ankle_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateX" 
		"MCP1RN.placeHolderList[2500]" "MCP1RN.placeHolderList[2501]" "MCP1:ANM1:ankle_R.tx"
		
		5 0 "MCP1RN" "MCP1:ankle_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateY" 
		"MCP1RN.placeHolderList[2502]" "MCP1RN.placeHolderList[2503]" "MCP1:ANM1:ankle_R.ty"
		
		5 0 "MCP1RN" "MCP1:ankle_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateZ" 
		"MCP1RN.placeHolderList[2504]" "MCP1RN.placeHolderList[2505]" "MCP1:ANM1:ankle_R.tz"
		
		5 0 "MCP1RN" "MCP1:ankle_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateX" 
		"MCP1RN.placeHolderList[2506]" "MCP1RN.placeHolderList[2507]" "MCP1:ANM1:ankle_R.rx"
		
		5 0 "MCP1RN" "MCP1:ankle_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateY" 
		"MCP1RN.placeHolderList[2508]" "MCP1RN.placeHolderList[2509]" "MCP1:ANM1:ankle_R.ry"
		
		5 0 "MCP1RN" "MCP1:ankle_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateZ" 
		"MCP1RN.placeHolderList[2510]" "MCP1RN.placeHolderList[2511]" "MCP1:ANM1:ankle_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.worldMatrix" 
		"MCP1RN.placeHolderList[2512]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.message" 
		"MCP1RN.placeHolderList[2513]" ""
		5 0 "MCP1RN" "MCP1:ball_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateX" 
		"MCP1RN.placeHolderList[2514]" "MCP1RN.placeHolderList[2515]" "MCP1:ANM1:ball_R.tx"
		
		5 0 "MCP1RN" "MCP1:ball_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateY" 
		"MCP1RN.placeHolderList[2516]" "MCP1RN.placeHolderList[2517]" "MCP1:ANM1:ball_R.ty"
		
		5 0 "MCP1RN" "MCP1:ball_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateZ" 
		"MCP1RN.placeHolderList[2518]" "MCP1RN.placeHolderList[2519]" "MCP1:ANM1:ball_R.tz"
		
		5 0 "MCP1RN" "MCP1:ball_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateX" 
		"MCP1RN.placeHolderList[2520]" "MCP1RN.placeHolderList[2521]" "MCP1:ANM1:ball_R.rx"
		
		5 0 "MCP1RN" "MCP1:ball_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateY" 
		"MCP1RN.placeHolderList[2522]" "MCP1RN.placeHolderList[2523]" "MCP1:ANM1:ball_R.ry"
		
		5 0 "MCP1RN" "MCP1:ball_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateZ" 
		"MCP1RN.placeHolderList[2524]" "MCP1RN.placeHolderList[2525]" "MCP1:ANM1:ball_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.worldMatrix" 
		"MCP1RN.placeHolderList[2526]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.message" 
		"MCP1RN.placeHolderList[2527]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R|MCP1:ANM1:ball_end_R.message" 
		"MCP1RN.placeHolderList[2528]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R|MCP1:ANM1:ball_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2529]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R|MCP1:ANM1:ball_R_InfGEOM|MCP1:ANM1:ball_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2530]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ankle_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2531]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ankle_R_InfGEOM|MCP1:ANM1:ankle_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2532]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:leg_lower_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2533]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:leg_lower_R_InfGEOM|MCP1:ANM1:leg_lower_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2534]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_upper_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[2535]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_upper_R_InfGEOM|MCP1:ANM1:leg_upper_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2536]" ""
		5 0 "MCP1RN" "MCP1:leg_upper_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateX" 
		"MCP1RN.placeHolderList[2537]" "MCP1RN.placeHolderList[2538]" "MCP1:ANM1:leg_upper_L.tx"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateY" 
		"MCP1RN.placeHolderList[2539]" "MCP1RN.placeHolderList[2540]" "MCP1:ANM1:leg_upper_L.ty"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateZ" 
		"MCP1RN.placeHolderList[2541]" "MCP1RN.placeHolderList[2542]" "MCP1:ANM1:leg_upper_L.tz"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateX" 
		"MCP1RN.placeHolderList[2543]" "MCP1RN.placeHolderList[2544]" "MCP1:ANM1:leg_upper_L.rx"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateY" 
		"MCP1RN.placeHolderList[2545]" "MCP1RN.placeHolderList[2546]" "MCP1:ANM1:leg_upper_L.ry"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateZ" 
		"MCP1RN.placeHolderList[2547]" "MCP1RN.placeHolderList[2548]" "MCP1:ANM1:leg_upper_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.worldMatrix" 
		"MCP1RN.placeHolderList[2549]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.message" 
		"MCP1RN.placeHolderList[2550]" ""
		5 0 "MCP1RN" "MCP1:leg_lower_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateX" 
		"MCP1RN.placeHolderList[2551]" "MCP1RN.placeHolderList[2552]" "MCP1:ANM1:leg_lower_L.tx"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateY" 
		"MCP1RN.placeHolderList[2553]" "MCP1RN.placeHolderList[2554]" "MCP1:ANM1:leg_lower_L.ty"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateZ" 
		"MCP1RN.placeHolderList[2555]" "MCP1RN.placeHolderList[2556]" "MCP1:ANM1:leg_lower_L.tz"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateX" 
		"MCP1RN.placeHolderList[2557]" "MCP1RN.placeHolderList[2558]" "MCP1:ANM1:leg_lower_L.rx"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateY" 
		"MCP1RN.placeHolderList[2559]" "MCP1RN.placeHolderList[2560]" "MCP1:ANM1:leg_lower_L.ry"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateZ" 
		"MCP1RN.placeHolderList[2561]" "MCP1RN.placeHolderList[2562]" "MCP1:ANM1:leg_lower_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.worldMatrix" 
		"MCP1RN.placeHolderList[2563]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.message" 
		"MCP1RN.placeHolderList[2564]" ""
		5 0 "MCP1RN" "MCP1:ankle_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateX" 
		"MCP1RN.placeHolderList[2565]" "MCP1RN.placeHolderList[2566]" "MCP1:ANM1:ankle_L.tx"
		
		5 0 "MCP1RN" "MCP1:ankle_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateY" 
		"MCP1RN.placeHolderList[2567]" "MCP1RN.placeHolderList[2568]" "MCP1:ANM1:ankle_L.ty"
		
		5 0 "MCP1RN" "MCP1:ankle_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateZ" 
		"MCP1RN.placeHolderList[2569]" "MCP1RN.placeHolderList[2570]" "MCP1:ANM1:ankle_L.tz"
		
		5 0 "MCP1RN" "MCP1:ankle_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateX" 
		"MCP1RN.placeHolderList[2571]" "MCP1RN.placeHolderList[2572]" "MCP1:ANM1:ankle_L.rx"
		
		5 0 "MCP1RN" "MCP1:ankle_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateY" 
		"MCP1RN.placeHolderList[2573]" "MCP1RN.placeHolderList[2574]" "MCP1:ANM1:ankle_L.ry"
		
		5 0 "MCP1RN" "MCP1:ankle_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateZ" 
		"MCP1RN.placeHolderList[2575]" "MCP1RN.placeHolderList[2576]" "MCP1:ANM1:ankle_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.worldMatrix" 
		"MCP1RN.placeHolderList[2577]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.message" 
		"MCP1RN.placeHolderList[2578]" ""
		5 0 "MCP1RN" "MCP1:ball_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateX" 
		"MCP1RN.placeHolderList[2579]" "MCP1RN.placeHolderList[2580]" "MCP1:ANM1:ball_L.tx"
		
		5 0 "MCP1RN" "MCP1:ball_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateY" 
		"MCP1RN.placeHolderList[2581]" "MCP1RN.placeHolderList[2582]" "MCP1:ANM1:ball_L.ty"
		
		5 0 "MCP1RN" "MCP1:ball_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateZ" 
		"MCP1RN.placeHolderList[2583]" "MCP1RN.placeHolderList[2584]" "MCP1:ANM1:ball_L.tz"
		
		5 0 "MCP1RN" "MCP1:ball_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateX" 
		"MCP1RN.placeHolderList[2585]" "MCP1RN.placeHolderList[2586]" "MCP1:ANM1:ball_L.rx"
		
		5 0 "MCP1RN" "MCP1:ball_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateY" 
		"MCP1RN.placeHolderList[2587]" "MCP1RN.placeHolderList[2588]" "MCP1:ANM1:ball_L.ry"
		
		5 0 "MCP1RN" "MCP1:ball_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateZ" 
		"MCP1RN.placeHolderList[2589]" "MCP1RN.placeHolderList[2590]" "MCP1:ANM1:ball_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.worldMatrix" 
		"MCP1RN.placeHolderList[2591]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.message" 
		"MCP1RN.placeHolderList[2592]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L|MCP1:ANM1:ball_end_L.message" 
		"MCP1RN.placeHolderList[2593]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L|MCP1:ANM1:ball_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2594]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L|MCP1:ANM1:ball_L_InfGEOM|MCP1:ANM1:ball_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2595]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ankle_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2596]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ankle_L_InfGEOM|MCP1:ANM1:ankle_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2597]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:leg_lower_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2598]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:leg_lower_L_InfGEOM|MCP1:ANM1:leg_lower_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2599]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_upper_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[2600]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_upper_L_InfGEOM|MCP1:ANM1:leg_upper_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2601]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:pelvis_InfGEOM.message" 
		"MCP1RN.placeHolderList[2602]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:pelvis_InfGEOM|MCP1:ANM1:pelvis_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[2603]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion.worldMatrix" 
		"MCP1RN.placeHolderList[2604]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion.message" 
		"MCP1RN.placeHolderList[2605]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion|MCP1:ANM1:hand_L_IK_target.message" 
		"MCP1RN.placeHolderList[2606]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion|MCP1:ANM1:hand_R_IK_target.message" 
		"MCP1RN.placeHolderList[2607]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion|MCP1:ANM1:foot_L_IK_target.message" 
		"MCP1RN.placeHolderList[2608]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion|MCP1:ANM1:foot_R_IK_target.message" 
		"MCP1RN.placeHolderList[2609]" ""
		5 3 "MCP1RN" "MCP1:ANM1:shapeEditorManager.message" "MCP1RN.placeHolderList[2610]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:poseInterpolatorManager.message" "MCP1RN.placeHolderList[2611]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:layerManager.message" "MCP1RN.placeHolderList[2612]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:defaultLayer.message" "MCP1RN.placeHolderList[2613]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:gray_50.message" "MCP1RN.placeHolderList[2614]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:finger_index_2_L_InfGEOMSG.message" "MCP1RN.placeHolderList[2615]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:gray_50File.message" "MCP1RN.placeHolderList[2616]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:place2dTexture1.message" "MCP1RN.placeHolderList[2617]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:bump2d1.message" "MCP1RN.placeHolderList[2618]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:gray_50_bumpMap_file.message" "MCP1RN.placeHolderList[2619]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:place2dTexture2.message" "MCP1RN.placeHolderList[2620]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:SKEL.message" "MCP1RN.placeHolderList[2621]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:uiConfigurationScriptNode.message" "MCP1RN.placeHolderList[2622]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:sceneConfigurationScriptNode.message" "MCP1RN.placeHolderList[2623]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:GEOM.message" "MCP1RN.placeHolderList[2624]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:BIPED_STANDARD_MDL.OutputCharacterDefinition" 
		"MCP1RN.placeHolderList[2625]" ""
		5 3 "MCP1RN" "MCP1:ANM1:BIPED_STANDARD_MDL.OutputCharacterDefinition" 
		"MCP1RN.placeHolderList[2626]" ""
		5 3 "MCP1RN" "MCP1:ANM1:BIPED_STANDARD_MDL.message" "MCP1RN.placeHolderList[2627]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:HIKproperties1.message" "MCP1RN.placeHolderList[2628]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:HIKproperties1.OutputPropertySetState" "MCP1RN.placeHolderList[2629]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:HIKSolverNode1.message" "MCP1RN.placeHolderList[2630]" 
		""
		5 0 "MCP1RN" "MCP1:ANM1:HIKSolverNode1.OutputCharacterState" "MCP1:ANM1:HIKState2SK1.InputCharacterState" 
		"MCP1RN.placeHolderList[2631]" "MCP1RN.placeHolderList[2632]" "MCP1:ANM1:HIKState2SK1.InputCharacterState"
		
		5 3 "MCP1RN" "MCP1:ANM1:HIKState2SK1.message" "MCP1RN.placeHolderList[2633]" 
		""
		"MCP1RN" 566
		5 3 "MCP1RN" "MCP1:shapeEditorManager.message" "MCP1RN.placeHolderList[2634]" 
		""
		5 3 "MCP1RN" "MCP1:poseInterpolatorManager.message" "MCP1RN.placeHolderList[2635]" 
		""
		5 3 "MCP1RN" "MCP1:layerManager.message" "MCP1RN.placeHolderList[2636]" 
		""
		5 3 "MCP1RN" "MCP1:defaultLayer.message" "MCP1RN.placeHolderList[2637]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1RN.message" "MCP1RN.placeHolderList[2638]" ""
		
		5 3 "MCP1RN" "MCP1:uiConfigurationScriptNode.message" "MCP1RN.placeHolderList[2639]" 
		""
		5 3 "MCP1RN" "MCP1:sceneConfigurationScriptNode.message" "MCP1RN.placeHolderList[2640]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_translateX.message" "MCP1RN.placeHolderList[2641]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_translateY.message" "MCP1RN.placeHolderList[2642]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_translateZ.message" "MCP1RN.placeHolderList[2643]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_rotateX.message" "MCP1RN.placeHolderList[2644]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_rotateY.message" "MCP1RN.placeHolderList[2645]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_rotateZ.message" "MCP1RN.placeHolderList[2646]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_translateX.message" "MCP1RN.placeHolderList[2647]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_translateY.message" "MCP1RN.placeHolderList[2648]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_translateZ.message" "MCP1RN.placeHolderList[2649]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_rotateX.message" "MCP1RN.placeHolderList[2650]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_rotateY.message" "MCP1RN.placeHolderList[2651]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_rotateZ.message" "MCP1RN.placeHolderList[2652]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_translateX.message" "MCP1RN.placeHolderList[2653]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_translateY.message" "MCP1RN.placeHolderList[2654]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_translateZ.message" "MCP1RN.placeHolderList[2655]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_rotateX.message" "MCP1RN.placeHolderList[2656]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_rotateY.message" "MCP1RN.placeHolderList[2657]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_rotateZ.message" "MCP1RN.placeHolderList[2658]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_translateX.message" "MCP1RN.placeHolderList[2659]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_translateY.message" "MCP1RN.placeHolderList[2660]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_translateZ.message" "MCP1RN.placeHolderList[2661]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_rotateX.message" "MCP1RN.placeHolderList[2662]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_rotateY.message" "MCP1RN.placeHolderList[2663]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_rotateZ.message" "MCP1RN.placeHolderList[2664]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_translateX.message" "MCP1RN.placeHolderList[2665]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_translateY.message" "MCP1RN.placeHolderList[2666]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_translateZ.message" "MCP1RN.placeHolderList[2667]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_rotateX.message" "MCP1RN.placeHolderList[2668]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_rotateY.message" "MCP1RN.placeHolderList[2669]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_rotateZ.message" "MCP1RN.placeHolderList[2670]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_translateX.message" "MCP1RN.placeHolderList[2671]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_translateY.message" "MCP1RN.placeHolderList[2672]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_translateZ.message" "MCP1RN.placeHolderList[2673]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_rotateX.message" "MCP1RN.placeHolderList[2674]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_rotateY.message" "MCP1RN.placeHolderList[2675]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_rotateZ.message" "MCP1RN.placeHolderList[2676]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_translateX.message" "MCP1RN.placeHolderList[2677]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_translateY.message" "MCP1RN.placeHolderList[2678]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_translateZ.message" "MCP1RN.placeHolderList[2679]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_rotateX.message" "MCP1RN.placeHolderList[2680]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_rotateY.message" "MCP1RN.placeHolderList[2681]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_rotateZ.message" "MCP1RN.placeHolderList[2682]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_translateX.message" "MCP1RN.placeHolderList[2683]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_translateY.message" "MCP1RN.placeHolderList[2684]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_translateZ.message" "MCP1RN.placeHolderList[2685]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_rotateX.message" "MCP1RN.placeHolderList[2686]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_rotateY.message" "MCP1RN.placeHolderList[2687]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_rotateZ.message" "MCP1RN.placeHolderList[2688]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_translateX.message" "MCP1RN.placeHolderList[2689]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_translateY.message" "MCP1RN.placeHolderList[2690]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_translateZ.message" "MCP1RN.placeHolderList[2691]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_rotateX.message" "MCP1RN.placeHolderList[2692]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_rotateY.message" "MCP1RN.placeHolderList[2693]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_rotateZ.message" "MCP1RN.placeHolderList[2694]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_translateX.message" "MCP1RN.placeHolderList[2695]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_translateY.message" "MCP1RN.placeHolderList[2696]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_translateZ.message" "MCP1RN.placeHolderList[2697]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_rotateX.message" "MCP1RN.placeHolderList[2698]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_rotateY.message" "MCP1RN.placeHolderList[2699]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_rotateZ.message" "MCP1RN.placeHolderList[2700]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_translateX.message" "MCP1RN.placeHolderList[2701]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_translateY.message" "MCP1RN.placeHolderList[2702]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_translateZ.message" "MCP1RN.placeHolderList[2703]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_rotateX.message" "MCP1RN.placeHolderList[2704]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_rotateY.message" "MCP1RN.placeHolderList[2705]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_rotateZ.message" "MCP1RN.placeHolderList[2706]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_translateX.message" "MCP1RN.placeHolderList[2707]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_translateY.message" "MCP1RN.placeHolderList[2708]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_translateZ.message" "MCP1RN.placeHolderList[2709]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_rotateX.message" "MCP1RN.placeHolderList[2710]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_rotateY.message" "MCP1RN.placeHolderList[2711]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_rotateZ.message" "MCP1RN.placeHolderList[2712]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_translateX.message" "MCP1RN.placeHolderList[2713]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_translateY.message" "MCP1RN.placeHolderList[2714]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_translateZ.message" "MCP1RN.placeHolderList[2715]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_rotateX.message" "MCP1RN.placeHolderList[2716]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_rotateY.message" "MCP1RN.placeHolderList[2717]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_rotateZ.message" "MCP1RN.placeHolderList[2718]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_translateX.message" "MCP1RN.placeHolderList[2719]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_translateY.message" "MCP1RN.placeHolderList[2720]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_translateZ.message" "MCP1RN.placeHolderList[2721]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_rotateX.message" "MCP1RN.placeHolderList[2722]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_rotateY.message" "MCP1RN.placeHolderList[2723]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_rotateZ.message" "MCP1RN.placeHolderList[2724]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_translateX.message" "MCP1RN.placeHolderList[2725]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_translateY.message" "MCP1RN.placeHolderList[2726]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_translateZ.message" "MCP1RN.placeHolderList[2727]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_rotateX.message" "MCP1RN.placeHolderList[2728]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_rotateY.message" "MCP1RN.placeHolderList[2729]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_rotateZ.message" "MCP1RN.placeHolderList[2730]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_translateX.message" "MCP1RN.placeHolderList[2731]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_translateY.message" "MCP1RN.placeHolderList[2732]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_translateZ.message" "MCP1RN.placeHolderList[2733]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateX.message" "MCP1RN.placeHolderList[2734]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateY.message" "MCP1RN.placeHolderList[2735]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateZ.message" "MCP1RN.placeHolderList[2736]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_translateX.message" "MCP1RN.placeHolderList[2737]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_translateY.message" "MCP1RN.placeHolderList[2738]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_translateZ.message" "MCP1RN.placeHolderList[2739]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_rotateX.message" "MCP1RN.placeHolderList[2740]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_rotateY.message" "MCP1RN.placeHolderList[2741]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_rotateZ.message" "MCP1RN.placeHolderList[2742]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_translateX.message" "MCP1RN.placeHolderList[2743]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_translateY.message" "MCP1RN.placeHolderList[2744]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_translateZ.message" "MCP1RN.placeHolderList[2745]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_rotateX.message" "MCP1RN.placeHolderList[2746]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_rotateY.message" "MCP1RN.placeHolderList[2747]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_rotateZ.message" "MCP1RN.placeHolderList[2748]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_translateX.message" "MCP1RN.placeHolderList[2749]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_translateY.message" "MCP1RN.placeHolderList[2750]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_translateZ.message" "MCP1RN.placeHolderList[2751]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_rotateX.message" "MCP1RN.placeHolderList[2752]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_rotateY.message" "MCP1RN.placeHolderList[2753]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_rotateZ.message" "MCP1RN.placeHolderList[2754]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_translateX.message" "MCP1RN.placeHolderList[2755]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_translateY.message" "MCP1RN.placeHolderList[2756]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_translateZ.message" "MCP1RN.placeHolderList[2757]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_rotateX.message" "MCP1RN.placeHolderList[2758]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_rotateY.message" "MCP1RN.placeHolderList[2759]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_rotateZ.message" "MCP1RN.placeHolderList[2760]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_translateX.message" "MCP1RN.placeHolderList[2761]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_translateY.message" "MCP1RN.placeHolderList[2762]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_translateZ.message" "MCP1RN.placeHolderList[2763]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_rotateX.message" "MCP1RN.placeHolderList[2764]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_rotateY.message" "MCP1RN.placeHolderList[2765]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_rotateZ.message" "MCP1RN.placeHolderList[2766]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_translateX.message" "MCP1RN.placeHolderList[2767]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_translateY.message" "MCP1RN.placeHolderList[2768]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_translateZ.message" "MCP1RN.placeHolderList[2769]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_rotateX.message" "MCP1RN.placeHolderList[2770]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_rotateY.message" "MCP1RN.placeHolderList[2771]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_rotateZ.message" "MCP1RN.placeHolderList[2772]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_translateX.message" "MCP1RN.placeHolderList[2773]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_translateY.message" "MCP1RN.placeHolderList[2774]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_translateZ.message" "MCP1RN.placeHolderList[2775]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_rotateX.message" "MCP1RN.placeHolderList[2776]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_rotateY.message" "MCP1RN.placeHolderList[2777]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_rotateZ.message" "MCP1RN.placeHolderList[2778]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_translateX.message" "MCP1RN.placeHolderList[2779]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_translateY.message" "MCP1RN.placeHolderList[2780]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_translateZ.message" "MCP1RN.placeHolderList[2781]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_rotateX.message" "MCP1RN.placeHolderList[2782]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_rotateY.message" "MCP1RN.placeHolderList[2783]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_rotateZ.message" "MCP1RN.placeHolderList[2784]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_translateX.message" "MCP1RN.placeHolderList[2785]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_translateY.message" "MCP1RN.placeHolderList[2786]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_translateZ.message" "MCP1RN.placeHolderList[2787]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_rotateX.message" "MCP1RN.placeHolderList[2788]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_rotateY.message" "MCP1RN.placeHolderList[2789]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_rotateZ.message" "MCP1RN.placeHolderList[2790]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_translateX.message" "MCP1RN.placeHolderList[2791]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_translateY.message" "MCP1RN.placeHolderList[2792]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_translateZ.message" "MCP1RN.placeHolderList[2793]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_rotateX.message" "MCP1RN.placeHolderList[2794]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_rotateY.message" "MCP1RN.placeHolderList[2795]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_rotateZ.message" "MCP1RN.placeHolderList[2796]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_translateX.message" "MCP1RN.placeHolderList[2797]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_translateY.message" "MCP1RN.placeHolderList[2798]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_translateZ.message" "MCP1RN.placeHolderList[2799]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_rotateX.message" "MCP1RN.placeHolderList[2800]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_rotateY.message" "MCP1RN.placeHolderList[2801]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_rotateZ.message" "MCP1RN.placeHolderList[2802]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_translateX.message" "MCP1RN.placeHolderList[2803]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_translateY.message" "MCP1RN.placeHolderList[2804]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_translateZ.message" "MCP1RN.placeHolderList[2805]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_rotateX.message" "MCP1RN.placeHolderList[2806]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_rotateY.message" "MCP1RN.placeHolderList[2807]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_rotateZ.message" "MCP1RN.placeHolderList[2808]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_translateX.message" "MCP1RN.placeHolderList[2809]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_translateY.message" "MCP1RN.placeHolderList[2810]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_translateZ.message" "MCP1RN.placeHolderList[2811]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_rotateX.message" "MCP1RN.placeHolderList[2812]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_rotateY.message" "MCP1RN.placeHolderList[2813]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_rotateZ.message" "MCP1RN.placeHolderList[2814]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_translateX.message" "MCP1RN.placeHolderList[2815]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_translateY.message" "MCP1RN.placeHolderList[2816]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_translateZ.message" "MCP1RN.placeHolderList[2817]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_rotateX.message" "MCP1RN.placeHolderList[2818]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_rotateY.message" "MCP1RN.placeHolderList[2819]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_rotateZ.message" "MCP1RN.placeHolderList[2820]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_translateX.message" "MCP1RN.placeHolderList[2821]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_translateY.message" "MCP1RN.placeHolderList[2822]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_translateZ.message" "MCP1RN.placeHolderList[2823]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_rotateX.message" "MCP1RN.placeHolderList[2824]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_rotateY.message" "MCP1RN.placeHolderList[2825]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_rotateZ.message" "MCP1RN.placeHolderList[2826]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_translateX.message" "MCP1RN.placeHolderList[2827]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_translateY.message" "MCP1RN.placeHolderList[2828]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_translateZ.message" "MCP1RN.placeHolderList[2829]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_rotateX.message" "MCP1RN.placeHolderList[2830]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_rotateY.message" "MCP1RN.placeHolderList[2831]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_rotateZ.message" "MCP1RN.placeHolderList[2832]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_translateX.message" "MCP1RN.placeHolderList[2833]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_translateY.message" "MCP1RN.placeHolderList[2834]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_translateZ.message" "MCP1RN.placeHolderList[2835]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_rotateX.message" "MCP1RN.placeHolderList[2836]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_rotateY.message" "MCP1RN.placeHolderList[2837]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_rotateZ.message" "MCP1RN.placeHolderList[2838]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_translateX.message" "MCP1RN.placeHolderList[2839]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_translateY.message" "MCP1RN.placeHolderList[2840]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_translateZ.message" "MCP1RN.placeHolderList[2841]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_rotateX.message" "MCP1RN.placeHolderList[2842]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_rotateY.message" "MCP1RN.placeHolderList[2843]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_rotateZ.message" "MCP1RN.placeHolderList[2844]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_translateX.message" "MCP1RN.placeHolderList[2845]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_translateY.message" "MCP1RN.placeHolderList[2846]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_translateZ.message" "MCP1RN.placeHolderList[2847]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_rotateX.message" "MCP1RN.placeHolderList[2848]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_rotateY.message" "MCP1RN.placeHolderList[2849]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_rotateZ.message" "MCP1RN.placeHolderList[2850]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_translateX.message" "MCP1RN.placeHolderList[2851]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_translateY.message" "MCP1RN.placeHolderList[2852]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_translateZ.message" "MCP1RN.placeHolderList[2853]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_rotateX.message" "MCP1RN.placeHolderList[2854]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_rotateY.message" "MCP1RN.placeHolderList[2855]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_rotateZ.message" "MCP1RN.placeHolderList[2856]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_translateX.message" "MCP1RN.placeHolderList[2857]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_translateY.message" "MCP1RN.placeHolderList[2858]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_translateZ.message" "MCP1RN.placeHolderList[2859]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_rotateX.message" "MCP1RN.placeHolderList[2860]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_rotateY.message" "MCP1RN.placeHolderList[2861]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_rotateZ.message" "MCP1RN.placeHolderList[2862]" 
		""
		5 3 "MCP1RN" "MCP1:head_translateX.message" "MCP1RN.placeHolderList[2863]" 
		""
		5 3 "MCP1RN" "MCP1:head_translateY.message" "MCP1RN.placeHolderList[2864]" 
		""
		5 3 "MCP1RN" "MCP1:head_translateZ.message" "MCP1RN.placeHolderList[2865]" 
		""
		5 3 "MCP1RN" "MCP1:head_rotateX.message" "MCP1RN.placeHolderList[2866]" 
		""
		5 3 "MCP1RN" "MCP1:head_rotateY.message" "MCP1RN.placeHolderList[2867]" 
		""
		5 3 "MCP1RN" "MCP1:head_rotateZ.message" "MCP1RN.placeHolderList[2868]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_translateX.message" "MCP1RN.placeHolderList[2869]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_translateY.message" "MCP1RN.placeHolderList[2870]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_translateZ.message" "MCP1RN.placeHolderList[2871]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_rotateX.message" "MCP1RN.placeHolderList[2872]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_rotateY.message" "MCP1RN.placeHolderList[2873]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_rotateZ.message" "MCP1RN.placeHolderList[2874]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_translateX.message" "MCP1RN.placeHolderList[2875]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_translateY.message" "MCP1RN.placeHolderList[2876]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_translateZ.message" "MCP1RN.placeHolderList[2877]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_rotateX.message" "MCP1RN.placeHolderList[2878]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_rotateY.message" "MCP1RN.placeHolderList[2879]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_rotateZ.message" "MCP1RN.placeHolderList[2880]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_translateX.message" "MCP1RN.placeHolderList[2881]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_translateY.message" "MCP1RN.placeHolderList[2882]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_translateZ.message" "MCP1RN.placeHolderList[2883]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_rotateX.message" "MCP1RN.placeHolderList[2884]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_rotateY.message" "MCP1RN.placeHolderList[2885]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_rotateZ.message" "MCP1RN.placeHolderList[2886]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_translateX.message" "MCP1RN.placeHolderList[2887]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_translateY.message" "MCP1RN.placeHolderList[2888]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_translateZ.message" "MCP1RN.placeHolderList[2889]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_rotateX.message" "MCP1RN.placeHolderList[2890]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_rotateY.message" "MCP1RN.placeHolderList[2891]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_rotateZ.message" "MCP1RN.placeHolderList[2892]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_translateX.message" "MCP1RN.placeHolderList[2893]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_translateY.message" "MCP1RN.placeHolderList[2894]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_translateZ.message" "MCP1RN.placeHolderList[2895]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_rotateX.message" "MCP1RN.placeHolderList[2896]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_rotateY.message" "MCP1RN.placeHolderList[2897]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_rotateZ.message" "MCP1RN.placeHolderList[2898]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_translateX.message" "MCP1RN.placeHolderList[2899]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_translateY.message" "MCP1RN.placeHolderList[2900]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_translateZ.message" "MCP1RN.placeHolderList[2901]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_rotateX.message" "MCP1RN.placeHolderList[2902]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_rotateY.message" "MCP1RN.placeHolderList[2903]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_rotateZ.message" "MCP1RN.placeHolderList[2904]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_translateX.message" "MCP1RN.placeHolderList[2905]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_translateY.message" "MCP1RN.placeHolderList[2906]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_translateZ.message" "MCP1RN.placeHolderList[2907]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_rotateX.message" "MCP1RN.placeHolderList[2908]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_rotateY.message" "MCP1RN.placeHolderList[2909]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_rotateZ.message" "MCP1RN.placeHolderList[2910]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_translateX.message" "MCP1RN.placeHolderList[2911]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_translateY.message" "MCP1RN.placeHolderList[2912]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_translateZ.message" "MCP1RN.placeHolderList[2913]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_rotateX.message" "MCP1RN.placeHolderList[2914]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_rotateY.message" "MCP1RN.placeHolderList[2915]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_rotateZ.message" "MCP1RN.placeHolderList[2916]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_translateX.message" "MCP1RN.placeHolderList[2917]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_translateY.message" "MCP1RN.placeHolderList[2918]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_translateZ.message" "MCP1RN.placeHolderList[2919]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_rotateX.message" "MCP1RN.placeHolderList[2920]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_rotateY.message" "MCP1RN.placeHolderList[2921]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_rotateZ.message" "MCP1RN.placeHolderList[2922]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_translateX.message" "MCP1RN.placeHolderList[2923]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_translateY.message" "MCP1RN.placeHolderList[2924]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_translateZ.message" "MCP1RN.placeHolderList[2925]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_rotateX.message" "MCP1RN.placeHolderList[2926]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_rotateY.message" "MCP1RN.placeHolderList[2927]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_rotateZ.message" "MCP1RN.placeHolderList[2928]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_translateX.message" "MCP1RN.placeHolderList[2929]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_translateY.message" "MCP1RN.placeHolderList[2930]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_translateZ.message" "MCP1RN.placeHolderList[2931]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_rotateX.message" "MCP1RN.placeHolderList[2932]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_rotateY.message" "MCP1RN.placeHolderList[2933]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_rotateZ.message" "MCP1RN.placeHolderList[2934]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_translateX.message" "MCP1RN.placeHolderList[2935]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_translateY.message" "MCP1RN.placeHolderList[2936]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_translateZ.message" "MCP1RN.placeHolderList[2937]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_rotateX.message" "MCP1RN.placeHolderList[2938]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_rotateY.message" "MCP1RN.placeHolderList[2939]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_rotateZ.message" "MCP1RN.placeHolderList[2940]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_translateX.message" "MCP1RN.placeHolderList[2941]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_translateY.message" "MCP1RN.placeHolderList[2942]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_translateZ.message" "MCP1RN.placeHolderList[2943]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_rotateX.message" "MCP1RN.placeHolderList[2944]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_rotateY.message" "MCP1RN.placeHolderList[2945]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_rotateZ.message" "MCP1RN.placeHolderList[2946]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_translateX.message" "MCP1RN.placeHolderList[2947]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_translateY.message" "MCP1RN.placeHolderList[2948]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_translateZ.message" "MCP1RN.placeHolderList[2949]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_rotateX.message" "MCP1RN.placeHolderList[2950]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_rotateY.message" "MCP1RN.placeHolderList[2951]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_rotateZ.message" "MCP1RN.placeHolderList[2952]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_translateX.message" "MCP1RN.placeHolderList[2953]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_translateY.message" "MCP1RN.placeHolderList[2954]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_translateZ.message" "MCP1RN.placeHolderList[2955]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_rotateX.message" "MCP1RN.placeHolderList[2956]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_rotateY.message" "MCP1RN.placeHolderList[2957]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_rotateZ.message" "MCP1RN.placeHolderList[2958]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_translateX.message" "MCP1RN.placeHolderList[2959]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_translateY.message" "MCP1RN.placeHolderList[2960]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_translateZ.message" "MCP1RN.placeHolderList[2961]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_rotateX.message" "MCP1RN.placeHolderList[2962]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_rotateY.message" "MCP1RN.placeHolderList[2963]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_rotateZ.message" "MCP1RN.placeHolderList[2964]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_translateX.message" "MCP1RN.placeHolderList[2965]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_translateY.message" "MCP1RN.placeHolderList[2966]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_translateZ.message" "MCP1RN.placeHolderList[2967]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_rotateX.message" "MCP1RN.placeHolderList[2968]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_rotateY.message" "MCP1RN.placeHolderList[2969]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_rotateZ.message" "MCP1RN.placeHolderList[2970]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_translateX.message" "MCP1RN.placeHolderList[2971]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_translateY.message" "MCP1RN.placeHolderList[2972]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_translateZ.message" "MCP1RN.placeHolderList[2973]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_rotateX.message" "MCP1RN.placeHolderList[2974]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_rotateY.message" "MCP1RN.placeHolderList[2975]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_rotateZ.message" "MCP1RN.placeHolderList[2976]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_translateX.message" "MCP1RN.placeHolderList[2977]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_translateY.message" "MCP1RN.placeHolderList[2978]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_translateZ.message" "MCP1RN.placeHolderList[2979]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_rotateX.message" "MCP1RN.placeHolderList[2980]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_rotateY.message" "MCP1RN.placeHolderList[2981]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_rotateZ.message" "MCP1RN.placeHolderList[2982]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_translateX.message" "MCP1RN.placeHolderList[2983]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_translateY.message" "MCP1RN.placeHolderList[2984]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_translateZ.message" "MCP1RN.placeHolderList[2985]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_rotateX.message" "MCP1RN.placeHolderList[2986]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_rotateY.message" "MCP1RN.placeHolderList[2987]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_rotateZ.message" "MCP1RN.placeHolderList[2988]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_translateX.message" "MCP1RN.placeHolderList[2989]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_translateY.message" "MCP1RN.placeHolderList[2990]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_translateZ.message" "MCP1RN.placeHolderList[2991]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_rotateX.message" "MCP1RN.placeHolderList[2992]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_rotateY.message" "MCP1RN.placeHolderList[2993]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_rotateZ.message" "MCP1RN.placeHolderList[2994]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_translateX.message" "MCP1RN.placeHolderList[2995]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_translateY.message" "MCP1RN.placeHolderList[2996]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_translateZ.message" "MCP1RN.placeHolderList[2997]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_rotateX.message" "MCP1RN.placeHolderList[2998]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_rotateY.message" "MCP1RN.placeHolderList[2999]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_rotateZ.message" "MCP1RN.placeHolderList[3000]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_translateX.message" "MCP1RN.placeHolderList[3001]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_translateY.message" "MCP1RN.placeHolderList[3002]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_translateZ.message" "MCP1RN.placeHolderList[3003]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_rotateX.message" "MCP1RN.placeHolderList[3004]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_rotateY.message" "MCP1RN.placeHolderList[3005]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_rotateZ.message" "MCP1RN.placeHolderList[3006]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_translateX.message" "MCP1RN.placeHolderList[3007]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_translateY.message" "MCP1RN.placeHolderList[3008]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_translateZ.message" "MCP1RN.placeHolderList[3009]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateX.message" "MCP1RN.placeHolderList[3010]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateY.message" "MCP1RN.placeHolderList[3011]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateZ.message" "MCP1RN.placeHolderList[3012]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_translateX.message" "MCP1RN.placeHolderList[3013]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_translateY.message" "MCP1RN.placeHolderList[3014]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_translateZ.message" "MCP1RN.placeHolderList[3015]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_rotateX.message" "MCP1RN.placeHolderList[3016]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_rotateY.message" "MCP1RN.placeHolderList[3017]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_rotateZ.message" "MCP1RN.placeHolderList[3018]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_translateX.message" "MCP1RN.placeHolderList[3019]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_translateY.message" "MCP1RN.placeHolderList[3020]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_translateZ.message" "MCP1RN.placeHolderList[3021]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_rotateX.message" "MCP1RN.placeHolderList[3022]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_rotateY.message" "MCP1RN.placeHolderList[3023]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_rotateZ.message" "MCP1RN.placeHolderList[3024]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_translateX.message" "MCP1RN.placeHolderList[3025]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_translateY.message" "MCP1RN.placeHolderList[3026]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_translateZ.message" "MCP1RN.placeHolderList[3027]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_rotateX.message" "MCP1RN.placeHolderList[3028]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_rotateY.message" "MCP1RN.placeHolderList[3029]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_rotateZ.message" "MCP1RN.placeHolderList[3030]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_translateX.message" "MCP1RN.placeHolderList[3031]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_translateY.message" "MCP1RN.placeHolderList[3032]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_translateZ.message" "MCP1RN.placeHolderList[3033]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_rotateX.message" "MCP1RN.placeHolderList[3034]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_rotateY.message" "MCP1RN.placeHolderList[3035]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_rotateZ.message" "MCP1RN.placeHolderList[3036]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_translateX.message" "MCP1RN.placeHolderList[3037]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_translateY.message" "MCP1RN.placeHolderList[3038]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_translateZ.message" "MCP1RN.placeHolderList[3039]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_rotateX.message" "MCP1RN.placeHolderList[3040]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_rotateY.message" "MCP1RN.placeHolderList[3041]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_rotateZ.message" "MCP1RN.placeHolderList[3042]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_translateX.message" "MCP1RN.placeHolderList[3043]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_translateY.message" "MCP1RN.placeHolderList[3044]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_translateZ.message" "MCP1RN.placeHolderList[3045]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_rotateX.message" "MCP1RN.placeHolderList[3046]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_rotateY.message" "MCP1RN.placeHolderList[3047]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_rotateZ.message" "MCP1RN.placeHolderList[3048]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_translateX.message" "MCP1RN.placeHolderList[3049]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_translateY.message" "MCP1RN.placeHolderList[3050]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_translateZ.message" "MCP1RN.placeHolderList[3051]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_rotateX.message" "MCP1RN.placeHolderList[3052]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_rotateY.message" "MCP1RN.placeHolderList[3053]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_rotateZ.message" "MCP1RN.placeHolderList[3054]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_translateX.message" "MCP1RN.placeHolderList[3055]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_translateY.message" "MCP1RN.placeHolderList[3056]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_translateZ.message" "MCP1RN.placeHolderList[3057]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_rotateX.message" "MCP1RN.placeHolderList[3058]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_rotateY.message" "MCP1RN.placeHolderList[3059]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_rotateZ.message" "MCP1RN.placeHolderList[3060]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_translateX.message" "MCP1RN.placeHolderList[3061]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_translateY.message" "MCP1RN.placeHolderList[3062]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_translateZ.message" "MCP1RN.placeHolderList[3063]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_rotateX.message" "MCP1RN.placeHolderList[3064]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_rotateY.message" "MCP1RN.placeHolderList[3065]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_rotateZ.message" "MCP1RN.placeHolderList[3066]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_translateX.message" "MCP1RN.placeHolderList[3067]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_translateY.message" "MCP1RN.placeHolderList[3068]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_translateZ.message" "MCP1RN.placeHolderList[3069]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_rotateX.message" "MCP1RN.placeHolderList[3070]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_rotateY.message" "MCP1RN.placeHolderList[3071]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_rotateZ.message" "MCP1RN.placeHolderList[3072]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_translateX.message" "MCP1RN.placeHolderList[3073]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_translateY.message" "MCP1RN.placeHolderList[3074]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_translateZ.message" "MCP1RN.placeHolderList[3075]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_rotateX.message" "MCP1RN.placeHolderList[3076]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_rotateY.message" "MCP1RN.placeHolderList[3077]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_rotateZ.message" "MCP1RN.placeHolderList[3078]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_translateX.message" "MCP1RN.placeHolderList[3079]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_translateY.message" "MCP1RN.placeHolderList[3080]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_translateZ.message" "MCP1RN.placeHolderList[3081]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_rotateX.message" "MCP1RN.placeHolderList[3082]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_rotateY.message" "MCP1RN.placeHolderList[3083]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_rotateZ.message" "MCP1RN.placeHolderList[3084]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_translateX.message" "MCP1RN.placeHolderList[3085]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_translateY.message" "MCP1RN.placeHolderList[3086]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_translateZ.message" "MCP1RN.placeHolderList[3087]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_rotateX.message" "MCP1RN.placeHolderList[3088]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_rotateY.message" "MCP1RN.placeHolderList[3089]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_rotateZ.message" "MCP1RN.placeHolderList[3090]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_translateX.message" "MCP1RN.placeHolderList[3091]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_translateY.message" "MCP1RN.placeHolderList[3092]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_translateZ.message" "MCP1RN.placeHolderList[3093]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_rotateX.message" "MCP1RN.placeHolderList[3094]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_rotateY.message" "MCP1RN.placeHolderList[3095]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_rotateZ.message" "MCP1RN.placeHolderList[3096]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_translateX.message" "MCP1RN.placeHolderList[3097]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_translateY.message" "MCP1RN.placeHolderList[3098]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_translateZ.message" "MCP1RN.placeHolderList[3099]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_rotateX.message" "MCP1RN.placeHolderList[3100]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_rotateY.message" "MCP1RN.placeHolderList[3101]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_rotateZ.message" "MCP1RN.placeHolderList[3102]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_translateX.message" "MCP1RN.placeHolderList[3103]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_translateY.message" "MCP1RN.placeHolderList[3104]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_translateZ.message" "MCP1RN.placeHolderList[3105]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_rotateX.message" "MCP1RN.placeHolderList[3106]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_rotateY.message" "MCP1RN.placeHolderList[3107]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_rotateZ.message" "MCP1RN.placeHolderList[3108]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_translateX.message" "MCP1RN.placeHolderList[3109]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_translateY.message" "MCP1RN.placeHolderList[3110]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_translateZ.message" "MCP1RN.placeHolderList[3111]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_rotateX.message" "MCP1RN.placeHolderList[3112]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_rotateY.message" "MCP1RN.placeHolderList[3113]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_rotateZ.message" "MCP1RN.placeHolderList[3114]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_translateX.message" "MCP1RN.placeHolderList[3115]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_translateY.message" "MCP1RN.placeHolderList[3116]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_translateZ.message" "MCP1RN.placeHolderList[3117]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_rotateX.message" "MCP1RN.placeHolderList[3118]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_rotateY.message" "MCP1RN.placeHolderList[3119]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_rotateZ.message" "MCP1RN.placeHolderList[3120]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_translateX.message" "MCP1RN.placeHolderList[3121]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_translateY.message" "MCP1RN.placeHolderList[3122]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_translateZ.message" "MCP1RN.placeHolderList[3123]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_rotateX.message" "MCP1RN.placeHolderList[3124]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_rotateY.message" "MCP1RN.placeHolderList[3125]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_rotateZ.message" "MCP1RN.placeHolderList[3126]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_translateX.message" "MCP1RN.placeHolderList[3127]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_translateY.message" "MCP1RN.placeHolderList[3128]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_translateZ.message" "MCP1RN.placeHolderList[3129]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_rotateX.message" "MCP1RN.placeHolderList[3130]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_rotateY.message" "MCP1RN.placeHolderList[3131]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_rotateZ.message" "MCP1RN.placeHolderList[3132]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_translateX.message" "MCP1RN.placeHolderList[3133]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_translateY.message" "MCP1RN.placeHolderList[3134]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_translateZ.message" "MCP1RN.placeHolderList[3135]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_rotateX.message" "MCP1RN.placeHolderList[3136]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_rotateY.message" "MCP1RN.placeHolderList[3137]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_rotateZ.message" "MCP1RN.placeHolderList[3138]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_translateX.message" "MCP1RN.placeHolderList[3139]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_translateY.message" "MCP1RN.placeHolderList[3140]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_translateZ.message" "MCP1RN.placeHolderList[3141]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_rotateX.message" "MCP1RN.placeHolderList[3142]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_rotateY.message" "MCP1RN.placeHolderList[3143]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_rotateZ.message" "MCP1RN.placeHolderList[3144]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_scaleX.message" "MCP1RN.placeHolderList[3145]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_scaleY.message" "MCP1RN.placeHolderList[3146]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_scaleZ.message" "MCP1RN.placeHolderList[3147]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_visibility.message" "MCP1RN.placeHolderList[3148]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_lockInfluenceWeights.message" "MCP1RN.placeHolderList[3149]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_translateX.message" "MCP1RN.placeHolderList[3150]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_translateY.message" "MCP1RN.placeHolderList[3151]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_translateZ.message" "MCP1RN.placeHolderList[3152]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_scaleX.message" "MCP1RN.placeHolderList[3153]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_scaleY.message" "MCP1RN.placeHolderList[3154]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_scaleZ.message" "MCP1RN.placeHolderList[3155]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_rotateX.message" "MCP1RN.placeHolderList[3156]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_rotateY.message" "MCP1RN.placeHolderList[3157]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_rotateZ.message" "MCP1RN.placeHolderList[3158]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_visibility.message" "MCP1RN.placeHolderList[3159]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_lockInfluenceWeights.message" "MCP1RN.placeHolderList[3160]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_translateX.message" "MCP1RN.placeHolderList[3161]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_translateY.message" "MCP1RN.placeHolderList[3162]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_translateZ.message" "MCP1RN.placeHolderList[3163]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_scaleX.message" "MCP1RN.placeHolderList[3164]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_scaleY.message" "MCP1RN.placeHolderList[3165]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_scaleZ.message" "MCP1RN.placeHolderList[3166]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_rotateX.message" "MCP1RN.placeHolderList[3167]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_rotateY.message" "MCP1RN.placeHolderList[3168]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_rotateZ.message" "MCP1RN.placeHolderList[3169]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_visibility.message" "MCP1RN.placeHolderList[3170]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_lockInfluenceWeights.message" "MCP1RN.placeHolderList[3171]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_translateX.message" "MCP1RN.placeHolderList[3172]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_translateY.message" "MCP1RN.placeHolderList[3173]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_translateZ.message" "MCP1RN.placeHolderList[3174]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_scaleX.message" "MCP1RN.placeHolderList[3175]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_scaleY.message" "MCP1RN.placeHolderList[3176]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_scaleZ.message" "MCP1RN.placeHolderList[3177]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_rotateX.message" "MCP1RN.placeHolderList[3178]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_rotateY.message" "MCP1RN.placeHolderList[3179]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_rotateZ.message" "MCP1RN.placeHolderList[3180]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_visibility.message" "MCP1RN.placeHolderList[3181]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_lockInfluenceWeights.message" "MCP1RN.placeHolderList[3182]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_translateX.message" "MCP1RN.placeHolderList[3183]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_translateY.message" "MCP1RN.placeHolderList[3184]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_translateZ.message" "MCP1RN.placeHolderList[3185]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_scaleX.message" "MCP1RN.placeHolderList[3186]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_scaleY.message" "MCP1RN.placeHolderList[3187]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_scaleZ.message" "MCP1RN.placeHolderList[3188]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_rotateX.message" "MCP1RN.placeHolderList[3189]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_rotateY.message" "MCP1RN.placeHolderList[3190]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_rotateZ.message" "MCP1RN.placeHolderList[3191]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_visibility.message" "MCP1RN.placeHolderList[3192]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_lockInfluenceWeights.message" "MCP1RN.placeHolderList[3193]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_translateX.message" "MCP1RN.placeHolderList[3194]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_translateY.message" "MCP1RN.placeHolderList[3195]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_translateZ.message" "MCP1RN.placeHolderList[3196]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_rotateX.message" "MCP1RN.placeHolderList[3197]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_rotateY.message" "MCP1RN.placeHolderList[3198]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_rotateZ.message" "MCP1RN.placeHolderList[3199]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode composeMatrix -n "composeMatrix1";
	rename -uid "DB737ACC-40D0-B03E-D74D-10854EBF9644";
	setAttr ".ir" -type "double3" -1.8668729353521487e-06 0 1.4054888197279071e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999996991 2.4530407504220762e-07 7.8886090522101181e-31 0
		 -2.4530407504220751e-07 0.99999999999996936 -3.2583079438266232e-08 0 -7.9927621636306729e-15 3.2583079438265253e-08 0.99999999999999944 0
		 0 0 0 1;
createNode composeMatrix -n "composeMatrix2";
	rename -uid "15CB7190-407F-4307-A736-4DB84AB11838";
	setAttr ".ir" -type "double3" -1.6932376638578717e-06 0 -1.4874164662614932e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999996625 -2.5960314684641911e-07 0 0 2.5960314684641901e-07 0.99999999999996592 -2.9552572253096849e-08 0
		 7.6719407543101132e-15 2.9552572253095856e-08 0.99999999999999956 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix3";
	rename -uid "B9C9A60C-404A-EC84-F9F1-DD811840DBCA";
	setAttr ".ir" -type "double3" -179.99998474121097 0 0 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 -0.99999999999996447 -2.6631610884375994e-07 0
		 0 2.6631610884375994e-07 -0.99999999999996447 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix4";
	rename -uid "2C69F8D9-4E02-148E-D591-E1B9FDE3EB90";
	setAttr ".ir" -type "double3" -1.866872707978473e-06 -4.5198401019625725e-29 1.39768771987292e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997025 2.4394252626474391e-07 7.8886090522101181e-31 0
		 -2.439425262647438e-07 0.99999999999996969 -3.2583075469846961e-08 0 -7.9483977435892776e-15 3.2583075469845995e-08 0.99999999999999944 0
		 0 0 0 1;
createNode composeMatrix -n "composeMatrix5";
	rename -uid "FD2F5100-47E4-6851-97A2-87BA1CAF1082";
	setAttr ".ir" -type "double3" -1.6932374364841962e-06 4.5198401019625725e-29 -1.4952180208638309e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999996592 -2.6096477499226822e-07 0 0 2.6096477499226811e-07 0.99999999999996547 -2.9552568284677587e-08 0
		 7.7121793328545278e-15 2.9552568284676581e-08 0.99999999999999956 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix6";
	rename -uid "3DEE16A5-41EE-7373-4023-8192C861CDA6";
createNode composeMatrix -n "composeMatrix7";
	rename -uid "5740CF56-425E-6C18-284E-D99B49A5406D";
	setAttr ".ir" -type "double3" 0 0 1.2863396477769129e-05 ;
	setAttr ".omat" -type "matrix" 0.9999999999999748 2.2450862152651101e-07 0 0 -2.2450862152651101e-07 0.9999999999999748 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix8";
	rename -uid "3647A40E-4DC7-CBE5-D9ED-6A87445D00B2";
	setAttr ".ir" -type "double3" 0 0 -1.282386074308306e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997491 -2.2381859278404417e-07 0 0 2.2381859278404417e-07 0.99999999999997491 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix9";
	rename -uid "ADB55B44-4AFA-F971-AB07-22854DF66E8A";
createNode composeMatrix -n "composeMatrix10";
	rename -uid "3734E836-4D01-3D97-6C86-FB95E5F32C63";
	setAttr ".ir" -type "double3" -179.99998474121097 0 0 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 -0.99999999999996447 -2.6631610884375994e-07 0
		 0 2.6631610884375994e-07 -0.99999999999996447 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix11";
	rename -uid "440B55EC-4655-CFB4-5DA2-F688A8B1184F";
	setAttr ".ir" -type "double3" 0 0 1.274955957342172e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997524 2.2252179273537092e-07 0 0 -2.2252179273537092e-07 0.99999999999997524 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix12";
	rename -uid "486E27F5-4BA2-8231-5CAE-FC812E7B3EEF";
	setAttr ".ir" -type "double3" 0 0 -3.6432768411032157e-06 ;
	setAttr ".omat" -type "matrix" 0.999999999999998 -6.3587176438909354e-08 0 0 6.3587176438909354e-08 0.999999999999998 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix13";
	rename -uid "28D9EEB4-4AD7-CEA7-D5A7-FE9970324E5F";
createNode composeMatrix -n "composeMatrix14";
	rename -uid "94974D59-4B0F-09CE-DC4E-D19280BAF592";
	setAttr ".ir" -type "double3" 0 0 -1.2937699466419872e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997446 -2.258054533225384e-07 0 0 2.258054533225384e-07 0.99999999999997446 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix15";
	rename -uid "F5EBDAB0-4585-C9F4-583F-5AA2D112CB25";
createNode composeMatrix -n "composeMatrix16";
	rename -uid "84BC4624-4E85-1B79-334F-E697C97CD411";
createNode composeMatrix -n "composeMatrix17";
	rename -uid "6F46435C-4D8E-FF90-307A-5EB0ACFE9726";
createNode composeMatrix -n "composeMatrix18";
	rename -uid "BFE5F2C5-4418-0B6A-6FB0-F2B00741F46C";
createNode composeMatrix -n "composeMatrix19";
	rename -uid "B03EA3D4-43D6-AAA2-A8D0-E988D7B5C2F5";
createNode composeMatrix -n "composeMatrix20";
	rename -uid "44773132-45ED-F6B2-280B-4ABAB6D26465";
	setAttr ".ir" -type "double3" -90 -90 0 ;
	setAttr ".omat" -type "matrix" 2.2204460492503131e-16 0 1 0 1 2.2204460492503131e-16 -2.2204460492503131e-16 0
		 -2.2204460492503131e-16 1 0 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix21";
	rename -uid "08E2CD75-408A-BA8E-4962-5892EB440AC6";
	setAttr ".ir" -type "double3" -90 -90 0 ;
	setAttr ".omat" -type "matrix" 2.2204460492503131e-16 0 1 0 1 2.2204460492503131e-16 -2.2204460492503131e-16 0
		 -2.2204460492503131e-16 1 0 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix22";
	rename -uid "6A33DC7A-4BB8-C254-EBBC-5A8B60D24CBA";
	setAttr ".ir" -type "double3" -1.8668729353521487e-06 0 1.4054888197279071e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999996991 2.4530407504220762e-07 7.8886090522101181e-31 0
		 -2.4530407504220751e-07 0.99999999999996936 -3.2583079438266232e-08 0 -7.9927621636306729e-15 3.2583079438265253e-08 0.99999999999999944 0
		 0 0 0 1;
createNode multMatrix -n "multMatrix1";
	rename -uid "7E95A0FB-4A22-C689-E97B-08A85AF41157";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix2";
	rename -uid "597D93F4-4272-4A62-BEAA-E0ACA8199A42";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "4D6571FA-44D7-863D-11EF-9EB5D5836715";
createNode quatToEuler -n "quatToEuler1";
	rename -uid "257300E2-4B88-D968-5E01-20A3CF6C9534";
	setAttr ".ort" -type "double3" 14.425274044231204 -11.697269830332118 20.650955124818996 ;
createNode composeMatrix -n "composeMatrix23";
	rename -uid "E85DDC2E-4887-7C68-01D9-D581D7CF9720";
	setAttr ".ir" -type "double3" -1.6932376638578717e-06 0 -1.4874164662614932e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999996625 -2.5960314684641911e-07 0 0 2.5960314684641901e-07 0.99999999999996592 -2.9552572253096849e-08 0
		 7.6719407543101132e-15 2.9552572253095856e-08 0.99999999999999956 0 0 0 0 1;
createNode multMatrix -n "multMatrix3";
	rename -uid "F82431A6-44E7-4C53-8C90-319303A1240A";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "58DA1857-4AFA-DE4B-9A04-9FA2DAA4EDA2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "A80B182D-4869-EB09-1C06-3886DC5024D1";
createNode quatToEuler -n "quatToEuler2";
	rename -uid "90F25012-4418-9C66-7099-2C9475A8E053";
	setAttr ".ort" -type "double3" -1.2596189772452486 -3.4332462707296338 10.827377797723928 ;
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "061B9AC7-47A7-3C29-EF47-4992EE4ECD12";
createNode plusMinusAverage -n "plusMinusAverage1";
	rename -uid "62512D49-434A-F5CB-3750-D882187BC746";
	setAttr -s 2 ".i3[1]" -type "float3"  -7.8886091e-30 0 4.4408921e-16;
createNode pointMatrixMult -n "pointMatrixMult1";
	rename -uid "511507C4-4960-6591-D686-F3B18AD41830";
createNode plusMinusAverage -n "plusMinusAverage2";
	rename -uid "A3206276-4C0F-7DD5-67B6-5AA6B8BC6D97";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode composeMatrix -n "composeMatrix24";
	rename -uid "27F40C87-4321-5396-D8A7-DB8E33D210A1";
	setAttr ".ir" -type "double3" -179.99998474121097 0 0 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 -0.99999999999996447 -2.6631610884375994e-07 0
		 0 2.6631610884375994e-07 -0.99999999999996447 0 0 0 0 1;
createNode multMatrix -n "multMatrix5";
	rename -uid "FE6331B0-409E-C6CF-02CA-FD85CA621862";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix6";
	rename -uid "0D2D54D4-46E9-E7F2-DAB7-60B2598D8CEC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix4";
	rename -uid "9ABF8E68-4409-E980-B277-DDB74E88E158";
createNode quatToEuler -n "quatToEuler3";
	rename -uid "5B4E0FA0-42D1-CCEA-F00E-F6B4F85A7DE3";
	setAttr ".ort" -type "double3" 5.1103094101902702 9.1121855989786518 1.1816640433111216 ;
createNode composeMatrix -n "composeMatrix25";
	rename -uid "96774F28-4192-0137-78D3-768B251653CF";
	setAttr ".ir" -type "double3" -1.866872707978473e-06 -4.5198401019625725e-29 1.39768771987292e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997025 2.4394252626474391e-07 7.8886090522101181e-31 0
		 -2.439425262647438e-07 0.99999999999996969 -3.2583075469846961e-08 0 -7.9483977435892776e-15 3.2583075469845995e-08 0.99999999999999944 0
		 0 0 0 1;
createNode multMatrix -n "multMatrix7";
	rename -uid "1CC07C81-4C92-7440-F9BC-09AF90E48C95";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix8";
	rename -uid "D18520E0-4BA9-BB19-A94B-A1A0E307C8F5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix5";
	rename -uid "258C5AA5-4680-F793-655A-4EA56CF95FAE";
createNode quatToEuler -n "quatToEuler4";
	rename -uid "D9735D08-43DD-92D2-81C5-EA8CC083F318";
	setAttr ".ort" -type "double3" 14.507315057360172 -9.3427133535918099 5.993254263893915 ;
createNode composeMatrix -n "composeMatrix26";
	rename -uid "B7CC0941-4574-DC0F-1E50-0E9D205DF882";
	setAttr ".ir" -type "double3" -1.6932374364841962e-06 4.5198401019625725e-29 -1.4952180208638309e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999996592 -2.6096477499226822e-07 0 0 2.6096477499226811e-07 0.99999999999996547 -2.9552568284677587e-08 0
		 7.7121793328545278e-15 2.9552568284676581e-08 0.99999999999999956 0 0 0 0 1;
createNode multMatrix -n "multMatrix9";
	rename -uid "C1412A6C-4AE5-4349-8345-4FA75DA92E4A";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix10";
	rename -uid "2F267883-433B-1DB9-55FE-3489BA83AE7B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix6";
	rename -uid "7FA17ADC-4E59-5706-F1EC-6AAC659B679E";
createNode quatToEuler -n "quatToEuler5";
	rename -uid "6780E387-4340-8EEA-C0C2-429A0A5E2D4D";
	setAttr ".ort" -type "double3" -1.4238812774577549 -3.6477659995057539 11.83902638165449 ;
createNode composeMatrix -n "composeMatrix27";
	rename -uid "172B667F-4075-7C67-1887-768F020EC491";
createNode multMatrix -n "multMatrix11";
	rename -uid "1698C7B8-4B2E-060E-8CF6-26976C34B460";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix12";
	rename -uid "D93D291B-4B66-7ABD-687A-ED83944B9D51";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix7";
	rename -uid "9899D186-4988-ED6C-0183-B288F3E50CC3";
createNode quatToEuler -n "quatToEuler6";
	rename -uid "6205FC59-426A-DECE-949E-89B05EE119CD";
	setAttr ".ort" -type "double3" -0.51711777632402667 -9.1236056861634278 10.11065711935797 ;
createNode composeMatrix -n "composeMatrix28";
	rename -uid "D19F797D-46B8-CEE7-3269-D88956969BC5";
	setAttr ".ir" -type "double3" 0 0 1.2863396477769129e-05 ;
	setAttr ".omat" -type "matrix" 0.9999999999999748 2.2450862152651101e-07 0 0 -2.2450862152651101e-07 0.9999999999999748 0 0
		 0 0 1 0 0 0 0 1;
createNode multMatrix -n "multMatrix13";
	rename -uid "5C0D2333-4C29-BADF-629D-A59A01197CDF";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix14";
	rename -uid "077183D9-429F-D474-E904-748D1AC8243E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix8";
	rename -uid "51051234-4BAA-F07D-49B3-A38CD9DFFF98";
createNode quatToEuler -n "quatToEuler7";
	rename -uid "EA4EE59F-4EAB-0F56-8420-F7BF73208208";
	setAttr ".ort" -type "double3" 19.040825585627701 -3.5747395869723411 -32.394872989166444 ;
createNode composeMatrix -n "composeMatrix29";
	rename -uid "1D964329-4B4A-4D29-F716-A2B6FF5B7773";
	setAttr ".ir" -type "double3" 0 0 -1.282386074308306e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997491 -2.2381859278404417e-07 0 0 2.2381859278404417e-07 0.99999999999997491 0 0
		 0 0 1 0 0 0 0 1;
createNode multMatrix -n "multMatrix15";
	rename -uid "0642D9DB-4550-584A-7EA6-6E8F447FDCE4";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix16";
	rename -uid "02CAA173-4F99-C13B-929F-F39AFB51431C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix9";
	rename -uid "BA10C583-4EB7-70E5-FC58-94B20DFA2C64";
createNode quatToEuler -n "quatToEuler8";
	rename -uid "0C01DE84-4029-FE8D-A7B5-F491742E6715";
	setAttr ".ort" -type "double3" -0.00011495093998662314 -5.3902830860299323e-05 
		41.823391836306982 ;
createNode composeMatrix -n "composeMatrix30";
	rename -uid "B1B18614-47C3-AED9-9A7F-02B4146E518E";
createNode multMatrix -n "multMatrix17";
	rename -uid "535951C7-40A3-E1AB-814B-B9BC23CE6824";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix18";
	rename -uid "CD6665FE-4AB9-78AC-2116-F195DAA45981";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix10";
	rename -uid "467A6F3C-4E46-BC8F-1ED7-8A84194B4488";
createNode quatToEuler -n "quatToEuler9";
	rename -uid "4995F8F5-4BDE-1940-BAA9-4BB643DC329B";
	setAttr ".ort" -type "double3" -12.45837674001262 -9.2111859584782909 -25.436261323255337 ;
createNode composeMatrix -n "composeMatrix31";
	rename -uid "7AEA5263-4A46-225A-04D4-548BFE5DFE69";
	setAttr ".ir" -type "double3" -179.99998474121097 0 0 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 -0.99999999999996447 -2.6631610884375994e-07 0
		 0 2.6631610884375994e-07 -0.99999999999996447 0 0 0 0 1;
createNode multMatrix -n "multMatrix19";
	rename -uid "AD360ADA-4179-B128-DBF3-EF8709EBCE90";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix20";
	rename -uid "E76C3642-4A09-35BB-A5DC-799E4553B9A1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix11";
	rename -uid "07593F26-49C7-875A-18BA-61876829841E";
createNode quatToEuler -n "quatToEuler10";
	rename -uid "D870DABE-4C1F-8FCA-955F-7883D655BEEA";
	setAttr ".ort" -type "double3" 4.2058728382836366 8.2696029245026228 -0.52992302237261046 ;
createNode composeMatrix -n "composeMatrix32";
	rename -uid "BDC09800-4590-F984-A922-C69600444D21";
	setAttr ".ir" -type "double3" 0 0 1.274955957342172e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997524 2.2252179273537092e-07 0 0 -2.2252179273537092e-07 0.99999999999997524 0 0
		 0 0 1 0 0 0 0 1;
createNode multMatrix -n "multMatrix21";
	rename -uid "530872C7-4F32-8003-9BB3-D3AB37BBE4B6";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix22";
	rename -uid "E4CF5796-4D4F-3395-BD7E-C7BA6E41E3FE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix12";
	rename -uid "6A6AB928-4532-50F3-FE62-20AC670A2D20";
createNode quatToEuler -n "quatToEuler11";
	rename -uid "3CE83544-4AFA-AD6E-655F-A2B40E518ABD";
	setAttr ".ort" -type "double3" -18.243274005452616 -0.60649073091810501 5.1075686867195884 ;
createNode composeMatrix -n "composeMatrix33";
	rename -uid "190ACDE3-4E70-EE82-BA76-DABE61918A93";
	setAttr ".ir" -type "double3" 0 0 -3.6432768411032157e-06 ;
	setAttr ".omat" -type "matrix" 0.999999999999998 -6.3587176438909354e-08 0 0 6.3587176438909354e-08 0.999999999999998 0 0
		 0 0 1 0 0 0 0 1;
createNode multMatrix -n "multMatrix23";
	rename -uid "7854A1C1-4BB6-2815-94F6-4397F8134695";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix24";
	rename -uid "B4DB218F-4363-0740-858B-E5AE9734C9A7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix13";
	rename -uid "DB9C90DB-49BE-8B56-12D0-4F8D8F74F9E1";
createNode quatToEuler -n "quatToEuler12";
	rename -uid "D3824F3C-4C71-F272-5B3E-35BA99DCE7D1";
	setAttr ".ort" -type "double3" 9.8144181692490768 -4.404794869608998 9.6227594311386913 ;
createNode composeMatrix -n "composeMatrix34";
	rename -uid "1ACC1F33-4882-5C7C-9F73-FD82033F4A52";
createNode multMatrix -n "multMatrix25";
	rename -uid "78CE9B9A-4D3F-CCEC-585A-B382D0F9CECB";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix26";
	rename -uid "D66FEE01-45FC-35AA-15BD-5B9688AAA4F7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix14";
	rename -uid "8B35DE34-4FC4-6039-4503-2D906A8D76BA";
createNode quatToEuler -n "quatToEuler13";
	rename -uid "C851E5DB-4740-07E1-7909-A1AFF2E73DDA";
	setAttr ".ort" -type "double3" -2.2924177086056683 2.8307205051292206 6.1702972092928681 ;
createNode composeMatrix -n "composeMatrix35";
	rename -uid "DA73F834-4A21-1DE1-EFC6-9F9659F058D7";
	setAttr ".ir" -type "double3" 0 0 -1.2937699466419872e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997446 -2.258054533225384e-07 0 0 2.258054533225384e-07 0.99999999999997446 0 0
		 0 0 1 0 0 0 0 1;
createNode multMatrix -n "multMatrix27";
	rename -uid "56EFD0D2-4EF8-93AC-278B-20952BBF1158";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix28";
	rename -uid "4636EAEE-48F0-1194-4775-3C9068CA5980";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix15";
	rename -uid "5FE0C2BF-4FF3-5D4A-6691-A682FE2F1EEE";
createNode quatToEuler -n "quatToEuler14";
	rename -uid "A4625FF1-475A-90E0-5149-1AA8E62FED30";
	setAttr ".ort" -type "double3" 0.0018644174319605124 0.0052110435559985999 5.5983588295118576 ;
createNode composeMatrix -n "composeMatrix36";
	rename -uid "82110CCD-453C-C688-5274-E88D64F7B795";
createNode multMatrix -n "multMatrix29";
	rename -uid "33462314-4FF0-5E8F-EA51-AFBB6010F083";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix30";
	rename -uid "82E1432D-4A1D-A6C3-3BA0-42B5A32BD708";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix16";
	rename -uid "5AAFD690-4BA6-4A3D-4E09-8281E243400D";
createNode quatToEuler -n "quatToEuler15";
	rename -uid "D8356C8E-413B-14FE-30BB-D5A06CE2383F";
	setAttr ".ort" -type "double3" 0.036542898968572143 0.1685470967538063 2.805906283519783 ;
createNode composeMatrix -n "composeMatrix37";
	rename -uid "2A29AB1C-44A3-BA39-5B41-3495DD98731D";
createNode multMatrix -n "multMatrix31";
	rename -uid "F511722B-4210-0533-D746-4D82618B71F4";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix32";
	rename -uid "7ADE9268-4457-55E8-87C2-1FA585DEDCF6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix17";
	rename -uid "FCB2A623-4727-6568-87A6-C5A469803930";
createNode quatToEuler -n "quatToEuler16";
	rename -uid "A206A837-4A3F-09F5-BAF3-CA8C90EF1B2F";
	setAttr ".ort" -type "double3" -1.9084450190802248e-06 0 0.32261591353922958 ;
createNode composeMatrix -n "composeMatrix38";
	rename -uid "5EED54DE-47CA-6E87-3F01-01AFE463CA79";
createNode multMatrix -n "multMatrix33";
	rename -uid "48288CE9-4ABB-173B-8D65-F98A4D6A2A58";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix34";
	rename -uid "60F2EE45-4AAC-0D7A-375F-0EA062522CA1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix18";
	rename -uid "EA47C5CD-4FBE-A9AF-5C38-86ABCEAB63A4";
createNode quatToEuler -n "quatToEuler17";
	rename -uid "3F15D32F-404D-1DFF-1D80-73BC8C57074A";
	setAttr ".ort" -type "double3" 1.7432768238346745 -0.90928617168864601 -0.32482571449095493 ;
createNode decomposeMatrix -n "decomposeMatrix19";
	rename -uid "3CCA8110-4B74-B7AE-1087-16B93C9A3F25";
createNode plusMinusAverage -n "plusMinusAverage3";
	rename -uid "878D71BB-4DF1-D0DC-5088-B0943E588B2C";
	setAttr -s 2 ".i3[1]" -type "float3"  -5.0487098e-29 1.4210855e-14 4.4408921e-15;
createNode pointMatrixMult -n "pointMatrixMult2";
	rename -uid "C2DB3D4C-4BE7-044B-4612-EEB92F8A79F2";
createNode plusMinusAverage -n "plusMinusAverage4";
	rename -uid "AB8F7ED4-4809-7E13-27ED-D89FA6D47A66";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode composeMatrix -n "composeMatrix39";
	rename -uid "524F9AD3-48A4-50A7-D7E8-4788EEE9F8E2";
createNode multMatrix -n "multMatrix35";
	rename -uid "7E3587BA-4EAA-927A-71C9-A8838240EB73";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix36";
	rename -uid "82E79E01-4087-5313-93EB-E18EFDDAF1C8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix20";
	rename -uid "7465AC20-4DDE-D527-7530-CFB0E6809EC9";
createNode quatToEuler -n "quatToEuler18";
	rename -uid "3EEFF44A-48D1-DE29-2D36-6A996458A7D7";
	setAttr ".ort" -type "double3" 3.2345222923644936 2.969358036391081 3.7594244711079239 ;
createNode composeMatrix -n "composeMatrix40";
	rename -uid "DF1D2332-4F96-FEA4-1F58-848DE1E2E27C";
createNode multMatrix -n "multMatrix37";
	rename -uid "A55BB9C8-4D40-9B84-7887-2EB8FFA5B64B";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix38";
	rename -uid "72B2550B-46CA-5209-DB23-76BFA3C549F0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix21";
	rename -uid "4DDAEB69-4C4A-0ACF-10C6-E882EC201C4A";
createNode quatToEuler -n "quatToEuler19";
	rename -uid "5EC22232-4010-1399-F590-F0BB355909E9";
	setAttr ".ort" -type "double3" 3.1587557315543435 0.5267243664355763 3.8978003016636142 ;
createNode decomposeMatrix -n "decomposeMatrix22";
	rename -uid "0A8EE595-4BBC-4A79-3A21-C0A780C0A2F3";
createNode plusMinusAverage -n "plusMinusAverage5";
	rename -uid "5EE69670-48A2-0DB6-06F3-E1A145C7C53B";
	setAttr -s 2 ".i3[1]" -type "float3"  -7.1054274e-15 -2.74928284 0.51371241;
createNode pointMatrixMult -n "pointMatrixMult3";
	rename -uid "FF37651F-4F43-ECD7-D29D-9492EAEBA8C4";
createNode plusMinusAverage -n "plusMinusAverage6";
	rename -uid "3126DAB8-4927-ACF8-F864-FC80CEC5E06E";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "decomposeMatrix23";
	rename -uid "0F10AC16-4E17-1DA5-8444-35BDE104E960";
createNode plusMinusAverage -n "plusMinusAverage7";
	rename -uid "8B698CF4-42A7-7997-68C8-9F9A14A6520F";
	setAttr -s 2 ".i3[1]" -type "float3"  -8.0365205e-30 0 8.8817842e-16;
createNode pointMatrixMult -n "pointMatrixMult4";
	rename -uid "F2E7C4F0-4CC1-0C72-F4B8-0CB67C677351";
createNode plusMinusAverage -n "plusMinusAverage8";
	rename -uid "748A1D5C-43D1-91C7-8F7D-839EFA6EED1F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode composeMatrix -n "composeMatrix41";
	rename -uid "8A5FE72E-431F-E0D5-A1B4-92BAB47A7050";
	setAttr ".ir" -type "double3" -90 -90 0 ;
	setAttr ".omat" -type "matrix" 2.2204460492503131e-16 0 1 0 1 2.2204460492503131e-16 -2.2204460492503131e-16 0
		 -2.2204460492503131e-16 1 0 0 0 0 0 1;
createNode multMatrix -n "multMatrix39";
	rename -uid "9B5CEFB3-447C-603A-C614-E48A6DFCAB21";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix40";
	rename -uid "17581CAB-4E28-545D-27BB-8A81B12221B6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix24";
	rename -uid "8409AB3F-41BF-6698-E591-4CBA9E5E0543";
createNode quatToEuler -n "quatToEuler20";
	rename -uid "B334DF7B-4125-AA05-1D88-A18CDB125EA4";
	setAttr ".ort" -type "double3" -1.5194246070719502 -10.379242598082566 -1.047709586771004 ;
createNode decomposeMatrix -n "decomposeMatrix25";
	rename -uid "A2703920-46BB-2F46-60AD-7BBB76B95AF2";
createNode plusMinusAverage -n "plusMinusAverage9";
	rename -uid "45730A29-434A-F3DB-0A9D-E7A204CEC1E7";
	setAttr -s 2 ".i3[1]" -type "float3"  -9.8607613e-30 4.2632564e-14 0;
createNode pointMatrixMult -n "pointMatrixMult5";
	rename -uid "6FB6283E-4354-7730-D80F-E0AB9C137FFE";
createNode plusMinusAverage -n "plusMinusAverage10";
	rename -uid "CA83B2A4-4A67-B029-DD32-2AAFBF173594";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode decomposeMatrix -n "decomposeMatrix26";
	rename -uid "32798261-4C22-D798-B0DA-C997F3C71E58";
createNode plusMinusAverage -n "plusMinusAverage11";
	rename -uid "178C236E-4575-30E0-182B-AE94EF8CC2A3";
	setAttr -s 2 ".i3[1]" -type "float3"  -7.0997481e-30 1.4210855e-14 -1.3322676e-15;
createNode pointMatrixMult -n "pointMatrixMult6";
	rename -uid "24CC06DF-4C32-C451-655F-C5A2EF776679";
createNode plusMinusAverage -n "plusMinusAverage12";
	rename -uid "7BCEC558-43F4-EE0C-092D-D9990C4E00F5";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode composeMatrix -n "composeMatrix42";
	rename -uid "57EC2F14-46E5-25AE-A119-2A9DC02C3E1E";
	setAttr ".ir" -type "double3" -90 -90 0 ;
	setAttr ".omat" -type "matrix" 2.2204460492503131e-16 0 1 0 1 2.2204460492503131e-16 -2.2204460492503131e-16 0
		 -2.2204460492503131e-16 1 0 0 0 0 0 1;
createNode multMatrix -n "multMatrix41";
	rename -uid "7FECCD26-4DFB-1F59-58E8-18AE7072B4CE";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix42";
	rename -uid "194AB06B-4116-49A1-35D3-B7A0B133422D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix27";
	rename -uid "5362349A-4E33-7C24-60B4-45ABDD254480";
createNode quatToEuler -n "quatToEuler21";
	rename -uid "BF284B63-493E-943C-D81C-9D9BEF4376E1";
	setAttr ".ort" -type "double3" 3.349893800886703 -1.9721114871185546 -0.94273549118597655 ;
createNode decomposeMatrix -n "decomposeMatrix28";
	rename -uid "93625D37-4EB3-424B-E1DD-598B32516A44";
createNode plusMinusAverage -n "plusMinusAverage13";
	rename -uid "289A473C-414B-1B11-CF2F-D792CED913FE";
	setAttr -s 2 ".i3[1]" -type "float3"  2.8398993e-29 1.4210855e-14 -2.220446e-14;
createNode pointMatrixMult -n "pointMatrixMult7";
	rename -uid "1B5008D0-4403-6882-5201-6092BFF641FA";
createNode plusMinusAverage -n "plusMinusAverage14";
	rename -uid "3E7B96A0-413A-428F-6510-9F8E47D99BB7";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode HIKRetargeterNode -n "HIKRetargeterNode1";
	rename -uid "9E1BB13F-436C-A0D9-2164-F9AE94DCFBED";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKSK2State -n "HIKSK2State1";
	rename -uid "CC453916-4FED-B106-0DFB-BD9780E3E39B";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "71083D2B-4F10-33EC-416D-D6BFA3C0324E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -704.76187675718393 -514.28569384983689 ;
	setAttr ".tgi[0].vh" -type "double2" 704.76187675718393 514.28569384983689 ;
	setAttr -s 955 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -400;
	setAttr ".tgi[0].ni[0].y" -941.4285888671875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 2164.28564453125;
	setAttr ".tgi[0].ni[1].y" -18018.572265625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 2778.571533203125;
	setAttr ".tgi[0].ni[2].y" -17888.572265625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 2778.571533203125;
	setAttr ".tgi[0].ni[3].y" -17758.572265625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 2164.28564453125;
	setAttr ".tgi[0].ni[4].y" -17628.572265625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2471.428466796875;
	setAttr ".tgi[0].ni[5].y" -17628.572265625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2778.571533203125;
	setAttr ".tgi[0].ni[6].y" -17498.572265625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1857.142822265625;
	setAttr ".tgi[0].ni[7].y" -17498.572265625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 3085.71435546875;
	setAttr ".tgi[0].ni[8].y" -18018.572265625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1857.142822265625;
	setAttr ".tgi[0].ni[9].y" -18018.572265625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2778.571533203125;
	setAttr ".tgi[0].ni[10].y" -17628.572265625;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 3085.71435546875;
	setAttr ".tgi[0].ni[11].y" -17628.572265625;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1857.142822265625;
	setAttr ".tgi[0].ni[12].y" -17368.572265625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2164.28564453125;
	setAttr ".tgi[0].ni[13].y" -17368.572265625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 214.28572082519531;
	setAttr ".tgi[0].ni[14].y" -941.4285888671875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 2164.28564453125;
	setAttr ".tgi[0].ni[15].y" -17498.572265625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2471.428466796875;
	setAttr ".tgi[0].ni[16].y" -17498.572265625;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1857.142822265625;
	setAttr ".tgi[0].ni[17].y" -17888.572265625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 2164.28564453125;
	setAttr ".tgi[0].ni[18].y" -17888.572265625;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 3085.71435546875;
	setAttr ".tgi[0].ni[19].y" -17888.572265625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1857.142822265625;
	setAttr ".tgi[0].ni[20].y" -17758.572265625;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 2164.28564453125;
	setAttr ".tgi[0].ni[21].y" -17758.572265625;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 2471.428466796875;
	setAttr ".tgi[0].ni[22].y" -17888.572265625;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 2471.428466796875;
	setAttr ".tgi[0].ni[23].y" -17758.572265625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 3085.71435546875;
	setAttr ".tgi[0].ni[24].y" -17758.572265625;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -92.857139587402344;
	setAttr ".tgi[0].ni[25].y" -941.4285888671875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 521.4285888671875;
	setAttr ".tgi[0].ni[26].y" -941.4285888671875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 3085.71435546875;
	setAttr ".tgi[0].ni[27].y" -17498.572265625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 2471.428466796875;
	setAttr ".tgi[0].ni[28].y" -18018.572265625;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 2778.571533203125;
	setAttr ".tgi[0].ni[29].y" -18018.572265625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 1857.142822265625;
	setAttr ".tgi[0].ni[30].y" -17628.572265625;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -400;
	setAttr ".tgi[0].ni[31].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1857.142822265625;
	setAttr ".tgi[0].ni[32].y" -17238.572265625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -707.14288330078125;
	setAttr ".tgi[0].ni[33].y" -551.4285888671875;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2778.571533203125;
	setAttr ".tgi[0].ni[34].y" -17108.572265625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -92.857139587402344;
	setAttr ".tgi[0].ni[35].y" -1201.4285888671875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 3085.71435546875;
	setAttr ".tgi[0].ni[36].y" -17238.572265625;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -707.14288330078125;
	setAttr ".tgi[0].ni[37].y" -291.42855834960938;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 3085.71435546875;
	setAttr ".tgi[0].ni[38].y" -17108.572265625;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 2778.571533203125;
	setAttr ".tgi[0].ni[39].y" -17238.572265625;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 3085.71435546875;
	setAttr ".tgi[0].ni[40].y" -16978.572265625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -400;
	setAttr ".tgi[0].ni[41].y" -1331.4285888671875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 2778.571533203125;
	setAttr ".tgi[0].ni[42].y" -16848.572265625;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 3085.71435546875;
	setAttr ".tgi[0].ni[43].y" -16848.572265625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 521.4285888671875;
	setAttr ".tgi[0].ni[44].y" -1461.4285888671875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 521.4285888671875;
	setAttr ".tgi[0].ni[45].y" -1591.4285888671875;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 2778.571533203125;
	setAttr ".tgi[0].ni[46].y" -16978.572265625;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1857.142822265625;
	setAttr ".tgi[0].ni[47].y" -16978.572265625;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 2164.28564453125;
	setAttr ".tgi[0].ni[48].y" -17238.572265625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 2164.28564453125;
	setAttr ".tgi[0].ni[49].y" -16848.572265625;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" -707.14288330078125;
	setAttr ".tgi[0].ni[50].y" 98.571426391601563;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 2471.428466796875;
	setAttr ".tgi[0].ni[51].y" -17238.572265625;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -92.857139587402344;
	setAttr ".tgi[0].ni[52].y" -1331.4285888671875;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -92.857139587402344;
	setAttr ".tgi[0].ni[53].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 2471.428466796875;
	setAttr ".tgi[0].ni[54].y" -16718.572265625;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" -92.857139587402344;
	setAttr ".tgi[0].ni[55].y" -1721.4285888671875;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 214.28572082519531;
	setAttr ".tgi[0].ni[56].y" -1721.4285888671875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 1857.142822265625;
	setAttr ".tgi[0].ni[57].y" -16848.572265625;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 521.4285888671875;
	setAttr ".tgi[0].ni[58].y" -1721.4285888671875;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 2670;
	setAttr ".tgi[0].ni[59].y" -1495.7142333984375;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 521.4285888671875;
	setAttr ".tgi[0].ni[60].y" -1331.4285888671875;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" -707.14288330078125;
	setAttr ".tgi[0].ni[61].y" -681.4285888671875;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -400;
	setAttr ".tgi[0].ni[62].y" -1201.4285888671875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -707.14288330078125;
	setAttr ".tgi[0].ni[63].y" -421.42855834960938;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -92.857139587402344;
	setAttr ".tgi[0].ni[64].y" -1591.4285888671875;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 214.28572082519531;
	setAttr ".tgi[0].ni[65].y" -1591.4285888671875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 214.28572082519531;
	setAttr ".tgi[0].ni[66].y" -1331.4285888671875;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 2471.428466796875;
	setAttr ".tgi[0].ni[67].y" -16848.572265625;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -707.14288330078125;
	setAttr ".tgi[0].ni[68].y" -31.428571701049805;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 521.4285888671875;
	setAttr ".tgi[0].ni[69].y" -1201.4285888671875;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 2164.28564453125;
	setAttr ".tgi[0].ni[70].y" -16978.572265625;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -707.14288330078125;
	setAttr ".tgi[0].ni[71].y" -811.4285888671875;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" -400;
	setAttr ".tgi[0].ni[72].y" -1591.4285888671875;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 214.28572082519531;
	setAttr ".tgi[0].ni[73].y" -1201.4285888671875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 2471.428466796875;
	setAttr ".tgi[0].ni[74].y" -16978.572265625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 521.4285888671875;
	setAttr ".tgi[0].ni[75].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" -92.857139587402344;
	setAttr ".tgi[0].ni[76].y" -1461.4285888671875;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 214.28572082519531;
	setAttr ".tgi[0].ni[77].y" -1461.4285888671875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 2164.28564453125;
	setAttr ".tgi[0].ni[78].y" -16718.572265625;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 214.28572082519531;
	setAttr ".tgi[0].ni[79].y" -1071.4285888671875;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 2778.571533203125;
	setAttr ".tgi[0].ni[80].y" -16718.572265625;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 1857.142822265625;
	setAttr ".tgi[0].ni[81].y" -16718.572265625;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 3085.71435546875;
	setAttr ".tgi[0].ni[82].y" -16718.572265625;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -400;
	setAttr ".tgi[0].ni[83].y" -1721.4285888671875;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -707.14288330078125;
	setAttr ".tgi[0].ni[84].y" -161.42857360839844;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" -400;
	setAttr ".tgi[0].ni[85].y" -1461.4285888671875;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 3057.142822265625;
	setAttr ".tgi[0].ni[86].y" -1438.5714111328125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 412.85714721679688;
	setAttr ".tgi[0].ni[87].y" 10021.4287109375;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 1070;
	setAttr ".tgi[0].ni[88].y" -10052.857421875;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1070;
	setAttr ".tgi[0].ni[89].y" -10421.4287109375;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 754.28570556640625;
	setAttr ".tgi[0].ni[90].y" -60;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 2670;
	setAttr ".tgi[0].ni[91].y" 1975.7142333984375;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 1070;
	setAttr ".tgi[0].ni[92].y" -10175.7138671875;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[93].y" 2402.857177734375;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[94].y" 2157.142822265625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 2670;
	setAttr ".tgi[0].ni[95].y" 2098.571533203125;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[96].y" 4197.14306640625;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 412.85714721679688;
	setAttr ".tgi[0].ni[97].y" 8950;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 754.28570556640625;
	setAttr ".tgi[0].ni[98].y" -1214.2857666015625;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 412.85714721679688;
	setAttr ".tgi[0].ni[99].y" 10267.142578125;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 754.28570556640625;
	setAttr ".tgi[0].ni[100].y" -722.85711669921875;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 754.28570556640625;
	setAttr ".tgi[0].ni[101].y" 185.71427917480469;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 2670;
	setAttr ".tgi[0].ni[102].y" 2221.428466796875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 412.85714721679688;
	setAttr ".tgi[0].ni[103].y" 9072.857421875;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 412.85714721679688;
	setAttr ".tgi[0].ni[104].y" 8704.2861328125;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 754.28570556640625;
	setAttr ".tgi[0].ni[105].y" -182.85714721679688;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 754.28570556640625;
	setAttr ".tgi[0].ni[106].y" 62.857143402099609;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 412.85714721679688;
	setAttr ".tgi[0].ni[107].y" 8827.142578125;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 754.28570556640625;
	setAttr ".tgi[0].ni[108].y" -428.57144165039063;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1070;
	setAttr ".tgi[0].ni[109].y" -8424.2861328125;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 1070;
	setAttr ".tgi[0].ni[110].y" -8792.857421875;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[111].y" 4688.5712890625;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 412.85714721679688;
	setAttr ".tgi[0].ni[112].y" 9195.7138671875;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[113].y" 4565.71435546875;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 2670;
	setAttr ".tgi[0].ni[114].y" 3261.428466796875;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 2670;
	setAttr ".tgi[0].ni[115].y" 1852.857177734375;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 2670;
	setAttr ".tgi[0].ni[116].y" 3015.71435546875;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 2670;
	setAttr ".tgi[0].ni[117].y" 2647.142822265625;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 1070;
	setAttr ".tgi[0].ni[118].y" -8178.5712890625;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 754.28570556640625;
	setAttr ".tgi[0].ni[119].y" -305.71429443359375;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 2670;
	setAttr ".tgi[0].ni[120].y" 2892.857177734375;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 2670;
	setAttr ".tgi[0].ni[121].y" 2770;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 412.85714721679688;
	setAttr ".tgi[0].ni[122].y" 9898.5712890625;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 1070;
	setAttr ".tgi[0].ni[123].y" -8301.4287109375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 412.85714721679688;
	setAttr ".tgi[0].ni[124].y" 10144.2861328125;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 412.85714721679688;
	setAttr ".tgi[0].ni[125].y" 8581.4287109375;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 412.85714721679688;
	setAttr ".tgi[0].ni[126].y" 9775.7138671875;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 754.28570556640625;
	setAttr ".tgi[0].ni[127].y" -845.71429443359375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 1070;
	setAttr ".tgi[0].ni[128].y" -8547.142578125;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 754.28570556640625;
	setAttr ".tgi[0].ni[129].y" -968.5714111328125;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 754.28570556640625;
	setAttr ".tgi[0].ni[130].y" -1091.4285888671875;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[131].y" 4442.85693359375;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 2670;
	setAttr ".tgi[0].ni[132].y" 3138.571533203125;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 1070;
	setAttr ".tgi[0].ni[133].y" -8670;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[134].y" 4811.4287109375;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[135].y" 4320;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 412.85714721679688;
	setAttr ".tgi[0].ni[136].y" 10390;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 754.28570556640625;
	setAttr ".tgi[0].ni[137].y" -1337.142822265625;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1070;
	setAttr ".tgi[0].ni[138].y" -10298.5712890625;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 1070;
	setAttr ".tgi[0].ni[139].y" -10544.2861328125;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 1070;
	setAttr ".tgi[0].ni[140].y" -10667.142578125;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[141].y" 2648.571533203125;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[142].y" 2525.71435546875;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[143].y" 2280;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[144].y" 2034.2857666015625;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 2670;
	setAttr ".tgi[0].ni[145].y" -644.28570556640625;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 2670;
	setAttr ".tgi[0].ni[146].y" -767.14288330078125;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 2670;
	setAttr ".tgi[0].ni[147].y" -890;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 2670;
	setAttr ".tgi[0].ni[148].y" -1012.8571166992188;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 2670;
	setAttr ".tgi[0].ni[149].y" -1135.7142333984375;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 2670;
	setAttr ".tgi[0].ni[150].y" -1258.5714111328125;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 2670;
	setAttr ".tgi[0].ni[151].y" -1777.142822265625;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 2670;
	setAttr ".tgi[0].ni[152].y" -2514.28564453125;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 2670;
	setAttr ".tgi[0].ni[153].y" -4348.5712890625;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 2670;
	setAttr ".tgi[0].ni[154].y" -4594.28564453125;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 2670;
	setAttr ".tgi[0].ni[155].y" -5085.71435546875;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 2670;
	setAttr ".tgi[0].ni[156].y" -2145.71435546875;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 2670;
	setAttr ".tgi[0].ni[157].y" -2760;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 2670;
	setAttr ".tgi[0].ni[158].y" -2940;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 2670;
	setAttr ".tgi[0].ni[159].y" -2268.571533203125;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 2670;
	setAttr ".tgi[0].ni[160].y" -1900;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 2670;
	setAttr ".tgi[0].ni[161].y" -3185.71435546875;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 2670;
	setAttr ".tgi[0].ni[162].y" -3677.142822265625;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 2670;
	setAttr ".tgi[0].ni[163].y" -4045.71435546875;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 2670;
	setAttr ".tgi[0].ni[164].y" -2022.857177734375;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[165].y" 6202.85693359375;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 2670;
	setAttr ".tgi[0].ni[166].y" -4168.5712890625;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 2670;
	setAttr ".tgi[0].ni[167].y" -3308.571533203125;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 2670;
	setAttr ".tgi[0].ni[168].y" -4717.14306640625;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 2670;
	setAttr ".tgi[0].ni[169].y" -5757.14306640625;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[170].y" 5711.4287109375;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[171].y" 6325.71435546875;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[172].y" 6628.5712890625;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 2670;
	setAttr ".tgi[0].ni[173].y" -4471.4287109375;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 2670;
	setAttr ".tgi[0].ni[174].y" -3554.28564453125;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 2670;
	setAttr ".tgi[0].ni[175].y" -5331.4287109375;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 2670;
	setAttr ".tgi[0].ni[176].y" 821.4285888671875;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" -815.71429443359375;
	setAttr ".tgi[0].ni[177].y" 9524.2861328125;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[178].y" 6448.5712890625;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" -508.57144165039063;
	setAttr ".tgi[0].ni[179].y" 7095.71435546875;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 2670;
	setAttr ".tgi[0].ni[180].y" -161.42857360839844;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" -1430;
	setAttr ".tgi[0].ni[181].y" 13241.4287109375;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 2670;
	setAttr ".tgi[0].ni[182].y" 330;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 2670;
	setAttr ".tgi[0].ni[183].y" -3062.857177734375;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[184].y" 5957.14306640625;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 2670;
	setAttr ".tgi[0].ni[185].y" 575.71429443359375;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 2670;
	setAttr ".tgi[0].ni[186].y" 207.14285278320313;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 2670;
	setAttr ".tgi[0].ni[187].y" -284.28570556640625;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" -1122.857177734375;
	setAttr ".tgi[0].ni[188].y" 11070;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 2670;
	setAttr ".tgi[0].ni[189].y" -38.571430206298828;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" -201.42857360839844;
	setAttr ".tgi[0].ni[190].y" 14412.857421875;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 105.71428680419922;
	setAttr ".tgi[0].ni[191].y" 14075.7138671875;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[192].y" 5285.71435546875;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[193].y" 5408.5712890625;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 2670;
	setAttr ".tgi[0].ni[194].y" -2391.428466796875;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[195].y" 5834.28564453125;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[196].y" 5588.5712890625;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 2670;
	setAttr ".tgi[0].ni[197].y" -1654.2857666015625;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 2670;
	setAttr ".tgi[0].ni[198].y" -3431.428466796875;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2670;
	setAttr ".tgi[0].ni[199].y" -2637.142822265625;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[200].y" 6080;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 2670;
	setAttr ".tgi[0].ni[201].y" -3800;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 2670;
	setAttr ".tgi[0].ni[202].y" -3922.857177734375;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 2670;
	setAttr ".tgi[0].ni[203].y" -4840;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 2670;
	setAttr ".tgi[0].ni[204].y" -4962.85693359375;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 2670;
	setAttr ".tgi[0].ni[205].y" -5208.5712890625;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 2670;
	setAttr ".tgi[0].ni[206].y" -5454.28564453125;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 2670;
	setAttr ".tgi[0].ni[207].y" -5577.14306640625;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 2670;
	setAttr ".tgi[0].ni[208].y" 698.5714111328125;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 2670;
	setAttr ".tgi[0].ni[209].y" -464.28570556640625;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 3057.142822265625;
	setAttr ".tgi[0].ni[210].y" 18084.28515625;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" -2044.2857666015625;
	setAttr ".tgi[0].ni[211].y" 9747.142578125;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 2670;
	setAttr ".tgi[0].ni[212].y" 452.85714721679688;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 2670;
	setAttr ".tgi[0].ni[213].y" 84.285713195800781;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" -1737.142822265625;
	setAttr ".tgi[0].ni[214].y" 10712.857421875;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 3057.142822265625;
	setAttr ".tgi[0].ni[215].y" 16578.572265625;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 3057.142822265625;
	setAttr ".tgi[0].ni[216].y" 16434.28515625;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 2234.28564453125;
	setAttr ".tgi[0].ni[217].y" -8398.5712890625;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[218].y" 6640;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 3057.142822265625;
	setAttr ".tgi[0].ni[219].y" 16290;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 2234.28564453125;
	setAttr ".tgi[0].ni[220].y" -8975.7138671875;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 2234.28564453125;
	setAttr ".tgi[0].ni[221].y" -9120;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 3057.142822265625;
	setAttr ".tgi[0].ni[222].y" 16145.7138671875;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 2234.28564453125;
	setAttr ".tgi[0].ni[223].y" -7677.14306640625;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 3057.142822265625;
	setAttr ".tgi[0].ni[224].y" 16001.4287109375;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 3057.142822265625;
	setAttr ".tgi[0].ni[225].y" 14797.142578125;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[226].y" 3271.428466796875;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 3057.142822265625;
	setAttr ".tgi[0].ni[227].y" 14652.857421875;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 1070;
	setAttr ".tgi[0].ni[228].y" 7628.5712890625;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 2234.28564453125;
	setAttr ".tgi[0].ni[229].y" -8254.2861328125;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 2234.28564453125;
	setAttr ".tgi[0].ni[230].y" -9264.2861328125;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 2055.71435546875;
	setAttr ".tgi[0].ni[231].y" 5834.28564453125;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 2234.28564453125;
	setAttr ".tgi[0].ni[232].y" -7821.4287109375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 3057.142822265625;
	setAttr ".tgi[0].ni[233].y" 14508.5712890625;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 3057.142822265625;
	setAttr ".tgi[0].ni[234].y" 14364.2861328125;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 2234.28564453125;
	setAttr ".tgi[0].ni[235].y" -10130;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[236].y" 3798.571533203125;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[237].y" 6841.4287109375;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 2234.28564453125;
	setAttr ".tgi[0].ni[238].y" -8831.4287109375;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 3057.142822265625;
	setAttr ".tgi[0].ni[239].y" 14220;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 3057.142822265625;
	setAttr ".tgi[0].ni[240].y" 14075.7138671875;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 2234.28564453125;
	setAttr ".tgi[0].ni[241].y" -8687.142578125;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 2055.71435546875;
	setAttr ".tgi[0].ni[242].y" 5230;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 3057.142822265625;
	setAttr ".tgi[0].ni[243].y" 13931.4287109375;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 2234.28564453125;
	setAttr ".tgi[0].ni[244].y" -9697.142578125;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[245].y" 3012.857177734375;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 3057.142822265625;
	setAttr ".tgi[0].ni[246].y" 13787.142578125;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 1070;
	setAttr ".tgi[0].ni[247].y" 7211.4287109375;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 3057.142822265625;
	setAttr ".tgi[0].ni[248].y" 13642.857421875;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[249].y" 6495.71435546875;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 2234.28564453125;
	setAttr ".tgi[0].ni[250].y" -8110;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 2234.28564453125;
	setAttr ".tgi[0].ni[251].y" -7965.71435546875;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[252].y" 6351.4287109375;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 2055.71435546875;
	setAttr ".tgi[0].ni[253].y" 4270;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 3057.142822265625;
	setAttr ".tgi[0].ni[254].y" 13498.5712890625;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 412.85714721679688;
	setAttr ".tgi[0].ni[255].y" 12605.7138671875;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 3057.142822265625;
	setAttr ".tgi[0].ni[256].y" 13354.2861328125;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 2234.28564453125;
	setAttr ".tgi[0].ni[257].y" -8542.857421875;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 754.28570556640625;
	setAttr ".tgi[0].ni[258].y" 10947.142578125;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 3057.142822265625;
	setAttr ".tgi[0].ni[259].y" 13210;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 1070;
	setAttr ".tgi[0].ni[260].y" 6104.28564453125;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 3057.142822265625;
	setAttr ".tgi[0].ni[261].y" 13065.7138671875;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[262].y" 2224.28564453125;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 2055.71435546875;
	setAttr ".tgi[0].ni[263].y" 5575.71435546875;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 3057.142822265625;
	setAttr ".tgi[0].ni[264].y" 12921.4287109375;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 3057.142822265625;
	setAttr ".tgi[0].ni[265].y" 12777.142578125;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 1070;
	setAttr ".tgi[0].ni[266].y" 6305.71435546875;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[267].y" 1707.142822265625;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 2234.28564453125;
	setAttr ".tgi[0].ni[268].y" -9408.5712890625;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 3057.142822265625;
	setAttr ".tgi[0].ni[269].y" 12632.857421875;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 3057.142822265625;
	setAttr ".tgi[0].ni[270].y" 12488.5712890625;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[271].y" 6092.85693359375;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 2055.71435546875;
	setAttr ".tgi[0].ni[272].y" 5374.28564453125;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 3057.142822265625;
	setAttr ".tgi[0].ni[273].y" 12344.2861328125;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 3057.142822265625;
	setAttr ".tgi[0].ni[274].y" 12200;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 2234.28564453125;
	setAttr ".tgi[0].ni[275].y" -9985.7138671875;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 2234.28564453125;
	setAttr ".tgi[0].ni[276].y" -9552.857421875;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 2234.28564453125;
	setAttr ".tgi[0].ni[277].y" -9841.4287109375;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 3057.142822265625;
	setAttr ".tgi[0].ni[278].y" 12055.7138671875;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 3057.142822265625;
	setAttr ".tgi[0].ni[279].y" 11911.4287109375;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 3057.142822265625;
	setAttr ".tgi[0].ni[280].y" 11767.142578125;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 2234.28564453125;
	setAttr ".tgi[0].ni[281].y" -10562.857421875;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 3057.142822265625;
	setAttr ".tgi[0].ni[282].y" 11622.857421875;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 2234.28564453125;
	setAttr ".tgi[0].ni[283].y" -10418.5712890625;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 3057.142822265625;
	setAttr ".tgi[0].ni[284].y" 11478.5712890625;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 3057.142822265625;
	setAttr ".tgi[0].ni[285].y" 11334.2861328125;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[286].y" 2022.857177734375;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 2055.71435546875;
	setAttr ".tgi[0].ni[287].y" 6550;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 2234.28564453125;
	setAttr ".tgi[0].ni[288].y" -10851.4287109375;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 3057.142822265625;
	setAttr ".tgi[0].ni[289].y" 11190;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 3057.142822265625;
	setAttr ".tgi[0].ni[290].y" 11045.7138671875;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 2234.28564453125;
	setAttr ".tgi[0].ni[291].y" -10707.142578125;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 3057.142822265625;
	setAttr ".tgi[0].ni[292].y" 10901.4287109375;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 2055.71435546875;
	setAttr ".tgi[0].ni[293].y" 730;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 3057.142822265625;
	setAttr ".tgi[0].ni[294].y" 10757.142578125;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 2670;
	setAttr ".tgi[0].ni[295].y" 12124.2861328125;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 2234.28564453125;
	setAttr ".tgi[0].ni[296].y" -10995.7138671875;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 2234.28564453125;
	setAttr ".tgi[0].ni[297].y" -10274.2861328125;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" -2658.571533203125;
	setAttr ".tgi[0].ni[298].y" 9161.4287109375;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 754.28570556640625;
	setAttr ".tgi[0].ni[299].y" 8627.142578125;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 2055.71435546875;
	setAttr ".tgi[0].ni[300].y" 3282.857177734375;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[301].y" 745.71429443359375;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 3057.142822265625;
	setAttr ".tgi[0].ni[302].y" 10612.857421875;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 2670;
	setAttr ".tgi[0].ni[303].y" 11242.857421875;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 2234.28564453125;
	setAttr ".tgi[0].ni[304].y" -11140;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[305].y" 1854.2857666015625;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 3057.142822265625;
	setAttr ".tgi[0].ni[306].y" 10468.5712890625;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[307].y" 342.85714721679688;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 3057.142822265625;
	setAttr ".tgi[0].ni[308].y" 10324.2861328125;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 2234.28564453125;
	setAttr ".tgi[0].ni[309].y" -11284.2861328125;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 3057.142822265625;
	setAttr ".tgi[0].ni[310].y" 10180;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 3057.142822265625;
	setAttr ".tgi[0].ni[311].y" 10035.7138671875;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 2234.28564453125;
	setAttr ".tgi[0].ni[312].y" -11428.5712890625;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 3057.142822265625;
	setAttr ".tgi[0].ni[313].y" 9891.4287109375;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 2234.28564453125;
	setAttr ".tgi[0].ni[314].y" -11572.857421875;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 412.85714721679688;
	setAttr ".tgi[0].ni[315].y" -382.85714721679688;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 412.85714721679688;
	setAttr ".tgi[0].ni[316].y" -1757.142822265625;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 754.28570556640625;
	setAttr ".tgi[0].ni[317].y" -6172.85693359375;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 412.85714721679688;
	setAttr ".tgi[0].ni[318].y" -2002.857177734375;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 1070;
	setAttr ".tgi[0].ni[319].y" -12172.857421875;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 1070;
	setAttr ".tgi[0].ni[320].y" -12418.5712890625;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[321].y" -1511.4285888671875;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[322].y" -1142.857177734375;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 1070;
	setAttr ".tgi[0].ni[323].y" -12541.4287109375;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 754.28570556640625;
	setAttr ".tgi[0].ni[324].y" -3710;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 2670;
	setAttr ".tgi[0].ni[325].y" 6241.4287109375;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 412.85714721679688;
	setAttr ".tgi[0].ni[326].y" -1880;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 754.28570556640625;
	setAttr ".tgi[0].ni[327].y" -5804.28564453125;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[328].y" -840;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 2670;
	setAttr ".tgi[0].ni[329].y" 7605.71435546875;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 754.28570556640625;
	setAttr ".tgi[0].ni[330].y" -4078.571533203125;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 412.85714721679688;
	setAttr ".tgi[0].ni[331].y" -260;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 754.28570556640625;
	setAttr ".tgi[0].ni[332].y" -4201.4287109375;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 754.28570556640625;
	setAttr ".tgi[0].ni[333].y" -3832.857177734375;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[334].y" -1020;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[335].y" -1265.7142333984375;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 412.85714721679688;
	setAttr ".tgi[0].ni[336].y" -628.5714111328125;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 2670;
	setAttr ".tgi[0].ni[337].y" 6487.14306640625;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 754.28570556640625;
	setAttr ".tgi[0].ni[338].y" -6050;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 2670;
	setAttr ".tgi[0].ni[339].y" 6610;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" 1070;
	setAttr ".tgi[0].ni[340].y" -13081.4287109375;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 1070;
	setAttr ".tgi[0].ni[341].y" -13450;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 1070;
	setAttr ".tgi[0].ni[342].y" -11927.142578125;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 754.28570556640625;
	setAttr ".tgi[0].ni[343].y" -3587.142822265625;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 2670;
	setAttr ".tgi[0].ni[344].y" 5995.71435546875;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 1070;
	setAttr ".tgi[0].ni[345].y" -12295.7138671875;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 1070;
	setAttr ".tgi[0].ni[346].y" -12050;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 2670;
	setAttr ".tgi[0].ni[347].y" 6118.5712890625;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" 412.85714721679688;
	setAttr ".tgi[0].ni[348].y" -1388.5714111328125;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" 412.85714721679688;
	setAttr ".tgi[0].ni[349].y" -1511.4285888671875;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" 412.85714721679688;
	setAttr ".tgi[0].ni[350].y" -1634.2857666015625;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" 412.85714721679688;
	setAttr ".tgi[0].ni[351].y" -505.71429443359375;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" 412.85714721679688;
	setAttr ".tgi[0].ni[352].y" -751.4285888671875;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" 754.28570556640625;
	setAttr ".tgi[0].ni[353].y" -3955.71435546875;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[354].y" -1388.5714111328125;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" 2670;
	setAttr ".tgi[0].ni[355].y" 6364.28564453125;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" 754.28570556640625;
	setAttr ".tgi[0].ni[356].y" -5927.14306640625;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" 754.28570556640625;
	setAttr ".tgi[0].ni[357].y" -6418.5712890625;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" 1070;
	setAttr ".tgi[0].ni[358].y" -12958.5712890625;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" 1070;
	setAttr ".tgi[0].ni[359].y" -13204.2861328125;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" 1070;
	setAttr ".tgi[0].ni[360].y" -13327.142578125;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" 1070;
	setAttr ".tgi[0].ni[361].y" -12835.7138671875;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[362].y" 1538.5714111328125;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[363].y" 1415.7142333984375;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[364].y" 1292.857177734375;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[365].y" 1170;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[366].y" 1047.142822265625;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" 754.28570556640625;
	setAttr ".tgi[0].ni[367].y" -6295.71435546875;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[368].y" 924.28570556640625;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" 754.28570556640625;
	setAttr ".tgi[0].ni[369].y" -7652.85693359375;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" 754.28570556640625;
	setAttr ".tgi[0].ni[370].y" -7898.5712890625;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" 1070;
	setAttr ".tgi[0].ni[371].y" -13867.142578125;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" 1070;
	setAttr ".tgi[0].ni[372].y" -14112.857421875;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" 1070;
	setAttr ".tgi[0].ni[373].y" -15021.4287109375;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" 754.28570556640625;
	setAttr ".tgi[0].ni[374].y" -5018.5712890625;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" 754.28570556640625;
	setAttr ".tgi[0].ni[375].y" -5387.14306640625;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" 412.85714721679688;
	setAttr ".tgi[0].ni[376].y" -3802.857177734375;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[377].y" -3180;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" 412.85714721679688;
	setAttr ".tgi[0].ni[378].y" -2411.428466796875;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" 412.85714721679688;
	setAttr ".tgi[0].ni[379].y" -2534.28564453125;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" 1070;
	setAttr ".tgi[0].ni[380].y" -15144.2861328125;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" 2670;
	setAttr ".tgi[0].ni[381].y" 7360;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" 2670;
	setAttr ".tgi[0].ni[382].y" 6991.4287109375;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[383].y" -2754.28564453125;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[384].y" -2934.28564453125;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" 412.85714721679688;
	setAttr ".tgi[0].ni[385].y" -3025.71435546875;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" 2670;
	setAttr ".tgi[0].ni[386].y" 4538.5712890625;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" 2670;
	setAttr ".tgi[0].ni[387].y" 5390;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" 2670;
	setAttr ".tgi[0].ni[388].y" 5267.14306640625;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[389].y" -3057.142822265625;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" 2670;
	setAttr ".tgi[0].ni[390].y" 7237.14306640625;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[391].y" -3425.71435546875;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" 1070;
	setAttr ".tgi[0].ni[392].y" -15267.142578125;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" 2670;
	setAttr ".tgi[0].ni[393].y" 4415.71435546875;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" 412.85714721679688;
	setAttr ".tgi[0].ni[394].y" -2657.142822265625;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" 2670;
	setAttr ".tgi[0].ni[395].y" 4661.4287109375;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" 754.28570556640625;
	setAttr ".tgi[0].ni[396].y" -5141.4287109375;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" 2670;
	setAttr ".tgi[0].ni[397].y" 4784.28564453125;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" 412.85714721679688;
	setAttr ".tgi[0].ni[398].y" -3557.142822265625;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" 2670;
	setAttr ".tgi[0].ni[399].y" 4907.14306640625;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" 754.28570556640625;
	setAttr ".tgi[0].ni[400].y" -5264.28564453125;
	setAttr ".tgi[0].ni[400].nvs" 18304;
	setAttr ".tgi[0].ni[401].x" 2670;
	setAttr ".tgi[0].ni[401].y" 4292.85693359375;
	setAttr ".tgi[0].ni[401].nvs" 18304;
	setAttr ".tgi[0].ni[402].x" 1070;
	setAttr ".tgi[0].ni[402].y" -14898.5712890625;
	setAttr ".tgi[0].ni[402].nvs" 18304;
	setAttr ".tgi[0].ni[403].x" 2670;
	setAttr ".tgi[0].ni[403].y" 7482.85693359375;
	setAttr ".tgi[0].ni[403].nvs" 18304;
	setAttr ".tgi[0].ni[404].x" 412.85714721679688;
	setAttr ".tgi[0].ni[404].y" -3925.71435546875;
	setAttr ".tgi[0].ni[404].nvs" 18304;
	setAttr ".tgi[0].ni[405].x" 754.28570556640625;
	setAttr ".tgi[0].ni[405].y" -4895.71435546875;
	setAttr ".tgi[0].ni[405].nvs" 18304;
	setAttr ".tgi[0].ni[406].x" 2670;
	setAttr ".tgi[0].ni[406].y" 7114.28564453125;
	setAttr ".tgi[0].ni[406].nvs" 18304;
	setAttr ".tgi[0].ni[407].x" 754.28570556640625;
	setAttr ".tgi[0].ni[407].y" -7284.28564453125;
	setAttr ".tgi[0].ni[407].nvs" 18304;
	setAttr ".tgi[0].ni[408].x" 754.28570556640625;
	setAttr ".tgi[0].ni[408].y" -7407.14306640625;
	setAttr ".tgi[0].ni[408].nvs" 18304;
	setAttr ".tgi[0].ni[409].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[409].y" -3302.857177734375;
	setAttr ".tgi[0].ni[409].nvs" 18304;
	setAttr ".tgi[0].ni[410].x" 412.85714721679688;
	setAttr ".tgi[0].ni[410].y" -3434.28564453125;
	setAttr ".tgi[0].ni[410].nvs" 18304;
	setAttr ".tgi[0].ni[411].x" 412.85714721679688;
	setAttr ".tgi[0].ni[411].y" -2902.857177734375;
	setAttr ".tgi[0].ni[411].nvs" 18304;
	setAttr ".tgi[0].ni[412].x" 1070;
	setAttr ".tgi[0].ni[412].y" -14775.7138671875;
	setAttr ".tgi[0].ni[412].nvs" 18304;
	setAttr ".tgi[0].ni[413].x" 412.85714721679688;
	setAttr ".tgi[0].ni[413].y" -2780;
	setAttr ".tgi[0].ni[413].nvs" 18304;
	setAttr ".tgi[0].ni[414].x" 412.85714721679688;
	setAttr ".tgi[0].ni[414].y" -4048.571533203125;
	setAttr ".tgi[0].ni[414].nvs" 18304;
	setAttr ".tgi[0].ni[415].x" 412.85714721679688;
	setAttr ".tgi[0].ni[415].y" -3680;
	setAttr ".tgi[0].ni[415].nvs" 18304;
	setAttr ".tgi[0].ni[416].x" 754.28570556640625;
	setAttr ".tgi[0].ni[416].y" -7530;
	setAttr ".tgi[0].ni[416].nvs" 18304;
	setAttr ".tgi[0].ni[417].x" 1070;
	setAttr ".tgi[0].ni[417].y" -14652.857421875;
	setAttr ".tgi[0].ni[417].nvs" 18304;
	setAttr ".tgi[0].ni[418].x" 754.28570556640625;
	setAttr ".tgi[0].ni[418].y" -5510;
	setAttr ".tgi[0].ni[418].nvs" 18304;
	setAttr ".tgi[0].ni[419].x" 754.28570556640625;
	setAttr ".tgi[0].ni[419].y" -7775.71435546875;
	setAttr ".tgi[0].ni[419].nvs" 18304;
	setAttr ".tgi[0].ni[420].x" 1070;
	setAttr ".tgi[0].ni[420].y" -13744.2861328125;
	setAttr ".tgi[0].ni[420].nvs" 18304;
	setAttr ".tgi[0].ni[421].x" 1070;
	setAttr ".tgi[0].ni[421].y" -13990;
	setAttr ".tgi[0].ni[421].nvs" 18304;
	setAttr ".tgi[0].ni[422].x" 1070;
	setAttr ".tgi[0].ni[422].y" -14235.7138671875;
	setAttr ".tgi[0].ni[422].nvs" 18304;
	setAttr ".tgi[0].ni[423].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[423].y" 212.85714721679688;
	setAttr ".tgi[0].ni[423].nvs" 18304;
	setAttr ".tgi[0].ni[424].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[424].y" 90;
	setAttr ".tgi[0].ni[424].nvs" 18304;
	setAttr ".tgi[0].ni[425].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[425].y" -32.857143402099609;
	setAttr ".tgi[0].ni[425].nvs" 18304;
	setAttr ".tgi[0].ni[426].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[426].y" -278.57144165039063;
	setAttr ".tgi[0].ni[426].nvs" 18304;
	setAttr ".tgi[0].ni[427].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[427].y" -401.42855834960938;
	setAttr ".tgi[0].ni[427].nvs" 18304;
	setAttr ".tgi[0].ni[428].x" 1070;
	setAttr ".tgi[0].ni[428].y" -14358.5712890625;
	setAttr ".tgi[0].ni[428].nvs" 18304;
	setAttr ".tgi[0].ni[429].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[429].y" -155.71427917480469;
	setAttr ".tgi[0].ni[429].nvs" 18304;
	setAttr ".tgi[0].ni[430].x" 2670;
	setAttr ".tgi[0].ni[430].y" 5758.5712890625;
	setAttr ".tgi[0].ni[430].nvs" 18304;
	setAttr ".tgi[0].ni[431].x" 2670;
	setAttr ".tgi[0].ni[431].y" 5635.71435546875;
	setAttr ".tgi[0].ni[431].nvs" 18304;
	setAttr ".tgi[0].ni[432].x" 2670;
	setAttr ".tgi[0].ni[432].y" 5512.85693359375;
	setAttr ".tgi[0].ni[432].nvs" 18304;
	setAttr ".tgi[0].ni[433].x" 2670;
	setAttr ".tgi[0].ni[433].y" 4112.85693359375;
	setAttr ".tgi[0].ni[433].nvs" 18304;
	setAttr ".tgi[0].ni[434].x" 2670;
	setAttr ".tgi[0].ni[434].y" 3867.142822265625;
	setAttr ".tgi[0].ni[434].nvs" 18304;
	setAttr ".tgi[0].ni[435].x" 2670;
	setAttr ".tgi[0].ni[435].y" 1124.2857666015625;
	setAttr ".tgi[0].ni[435].nvs" 18304;
	setAttr ".tgi[0].ni[436].x" 2670;
	setAttr ".tgi[0].ni[436].y" 1492.857177734375;
	setAttr ".tgi[0].ni[436].nvs" 18304;
	setAttr ".tgi[0].ni[437].x" 2670;
	setAttr ".tgi[0].ni[437].y" 1247.142822265625;
	setAttr ".tgi[0].ni[437].nvs" 18304;
	setAttr ".tgi[0].ni[438].x" 2670;
	setAttr ".tgi[0].ni[438].y" 3744.28564453125;
	setAttr ".tgi[0].ni[438].nvs" 18304;
	setAttr ".tgi[0].ni[439].x" 2670;
	setAttr ".tgi[0].ni[439].y" 3621.428466796875;
	setAttr ".tgi[0].ni[439].nvs" 18304;
	setAttr ".tgi[0].ni[440].x" 2670;
	setAttr ".tgi[0].ni[440].y" 3990;
	setAttr ".tgi[0].ni[440].nvs" 18304;
	setAttr ".tgi[0].ni[441].x" 2670;
	setAttr ".tgi[0].ni[441].y" 1001.4285888671875;
	setAttr ".tgi[0].ni[441].nvs" 18304;
	setAttr ".tgi[0].ni[442].x" 2670;
	setAttr ".tgi[0].ni[442].y" 3498.571533203125;
	setAttr ".tgi[0].ni[442].nvs" 18304;
	setAttr ".tgi[0].ni[443].x" 2670;
	setAttr ".tgi[0].ni[443].y" 2467.142822265625;
	setAttr ".tgi[0].ni[443].nvs" 18304;
	setAttr ".tgi[0].ni[444].x" 2670;
	setAttr ".tgi[0].ni[444].y" 2344.28564453125;
	setAttr ".tgi[0].ni[444].nvs" 18304;
	setAttr ".tgi[0].ni[445].x" 2670;
	setAttr ".tgi[0].ni[445].y" 1615.7142333984375;
	setAttr ".tgi[0].ni[445].nvs" 18304;
	setAttr ".tgi[0].ni[446].x" 2670;
	setAttr ".tgi[0].ni[446].y" 1370;
	setAttr ".tgi[0].ni[446].nvs" 18304;
	setAttr ".tgi[0].ni[447].x" 2670;
	setAttr ".tgi[0].ni[447].y" 5144.28564453125;
	setAttr ".tgi[0].ni[447].nvs" 18304;
	setAttr ".tgi[0].ni[448].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[448].y" 744.28570556640625;
	setAttr ".tgi[0].ni[448].nvs" 18304;
	setAttr ".tgi[0].ni[449].x" 3057.142822265625;
	setAttr ".tgi[0].ni[449].y" 9747.142578125;
	setAttr ".tgi[0].ni[449].nvs" 18304;
	setAttr ".tgi[0].ni[450].x" 3057.142822265625;
	setAttr ".tgi[0].ni[450].y" 9602.857421875;
	setAttr ".tgi[0].ni[450].nvs" 18304;
	setAttr ".tgi[0].ni[451].x" 3057.142822265625;
	setAttr ".tgi[0].ni[451].y" 9458.5712890625;
	setAttr ".tgi[0].ni[451].nvs" 18304;
	setAttr ".tgi[0].ni[452].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[452].y" -638.5714111328125;
	setAttr ".tgi[0].ni[452].nvs" 18304;
	setAttr ".tgi[0].ni[453].x" 2234.28564453125;
	setAttr ".tgi[0].ni[453].y" -12005.7138671875;
	setAttr ".tgi[0].ni[453].nvs" 18304;
	setAttr ".tgi[0].ni[454].x" 2055.71435546875;
	setAttr ".tgi[0].ni[454].y" 2318.571533203125;
	setAttr ".tgi[0].ni[454].nvs" 18304;
	setAttr ".tgi[0].ni[455].x" 2234.28564453125;
	setAttr ".tgi[0].ni[455].y" -11861.4287109375;
	setAttr ".tgi[0].ni[455].nvs" 18304;
	setAttr ".tgi[0].ni[456].x" 3057.142822265625;
	setAttr ".tgi[0].ni[456].y" 9314.2861328125;
	setAttr ".tgi[0].ni[456].nvs" 18304;
	setAttr ".tgi[0].ni[457].x" 1070;
	setAttr ".tgi[0].ni[457].y" 3397.142822265625;
	setAttr ".tgi[0].ni[457].nvs" 18304;
	setAttr ".tgi[0].ni[458].x" 2055.71435546875;
	setAttr ".tgi[0].ni[458].y" 2520;
	setAttr ".tgi[0].ni[458].nvs" 18304;
	setAttr ".tgi[0].ni[459].x" 2055.71435546875;
	setAttr ".tgi[0].ni[459].y" 2865.71435546875;
	setAttr ".tgi[0].ni[459].nvs" 18304;
	setAttr ".tgi[0].ni[460].x" 2234.28564453125;
	setAttr ".tgi[0].ni[460].y" -12727.142578125;
	setAttr ".tgi[0].ni[460].nvs" 18304;
	setAttr ".tgi[0].ni[461].x" 3057.142822265625;
	setAttr ".tgi[0].ni[461].y" 9170;
	setAttr ".tgi[0].ni[461].nvs" 18304;
	setAttr ".tgi[0].ni[462].x" 2234.28564453125;
	setAttr ".tgi[0].ni[462].y" -12438.5712890625;
	setAttr ".tgi[0].ni[462].nvs" 18304;
	setAttr ".tgi[0].ni[463].x" 3057.142822265625;
	setAttr ".tgi[0].ni[463].y" 9025.7138671875;
	setAttr ".tgi[0].ni[463].nvs" 18304;
	setAttr ".tgi[0].ni[464].x" 2234.28564453125;
	setAttr ".tgi[0].ni[464].y" -12150;
	setAttr ".tgi[0].ni[464].nvs" 18304;
	setAttr ".tgi[0].ni[465].x" 3057.142822265625;
	setAttr ".tgi[0].ni[465].y" 8881.4287109375;
	setAttr ".tgi[0].ni[465].nvs" 18304;
	setAttr ".tgi[0].ni[466].x" 3057.142822265625;
	setAttr ".tgi[0].ni[466].y" 8737.142578125;
	setAttr ".tgi[0].ni[466].nvs" 18304;
	setAttr ".tgi[0].ni[467].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[467].y" -90;
	setAttr ".tgi[0].ni[467].nvs" 18304;
	setAttr ".tgi[0].ni[468].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[468].y" 198.57142639160156;
	setAttr ".tgi[0].ni[468].nvs" 18304;
	setAttr ".tgi[0].ni[469].x" 3057.142822265625;
	setAttr ".tgi[0].ni[469].y" 8592.857421875;
	setAttr ".tgi[0].ni[469].nvs" 18304;
	setAttr ".tgi[0].ni[470].x" 2234.28564453125;
	setAttr ".tgi[0].ni[470].y" -12582.857421875;
	setAttr ".tgi[0].ni[470].nvs" 18304;
	setAttr ".tgi[0].ni[471].x" 3057.142822265625;
	setAttr ".tgi[0].ni[471].y" 8448.5712890625;
	setAttr ".tgi[0].ni[471].nvs" 18304;
	setAttr ".tgi[0].ni[472].x" 3057.142822265625;
	setAttr ".tgi[0].ni[472].y" 8304.2861328125;
	setAttr ".tgi[0].ni[472].nvs" 18304;
	setAttr ".tgi[0].ni[473].x" 3057.142822265625;
	setAttr ".tgi[0].ni[473].y" 8160;
	setAttr ".tgi[0].ni[473].nvs" 18304;
	setAttr ".tgi[0].ni[474].x" 2234.28564453125;
	setAttr ".tgi[0].ni[474].y" -13448.5712890625;
	setAttr ".tgi[0].ni[474].nvs" 18304;
	setAttr ".tgi[0].ni[475].x" 3057.142822265625;
	setAttr ".tgi[0].ni[475].y" 8015.71435546875;
	setAttr ".tgi[0].ni[475].nvs" 18304;
	setAttr ".tgi[0].ni[476].x" 2234.28564453125;
	setAttr ".tgi[0].ni[476].y" -12294.2861328125;
	setAttr ".tgi[0].ni[476].nvs" 18304;
	setAttr ".tgi[0].ni[477].x" 2234.28564453125;
	setAttr ".tgi[0].ni[477].y" -13160;
	setAttr ".tgi[0].ni[477].nvs" 18304;
	setAttr ".tgi[0].ni[478].x" 2234.28564453125;
	setAttr ".tgi[0].ni[478].y" -13304.2861328125;
	setAttr ".tgi[0].ni[478].nvs" 18304;
	setAttr ".tgi[0].ni[479].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[479].y" -234.28572082519531;
	setAttr ".tgi[0].ni[479].nvs" 18304;
	setAttr ".tgi[0].ni[480].x" 1070;
	setAttr ".tgi[0].ni[480].y" 2764.28564453125;
	setAttr ".tgi[0].ni[480].nvs" 18304;
	setAttr ".tgi[0].ni[481].x" 2234.28564453125;
	setAttr ".tgi[0].ni[481].y" -11717.142578125;
	setAttr ".tgi[0].ni[481].nvs" 18304;
	setAttr ".tgi[0].ni[482].x" 3057.142822265625;
	setAttr ".tgi[0].ni[482].y" 7871.4287109375;
	setAttr ".tgi[0].ni[482].nvs" 18304;
	setAttr ".tgi[0].ni[483].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[483].y" -1691.4285888671875;
	setAttr ".tgi[0].ni[483].nvs" 18304;
	setAttr ".tgi[0].ni[484].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[484].y" 54.285713195800781;
	setAttr ".tgi[0].ni[484].nvs" 18304;
	setAttr ".tgi[0].ni[485].x" 1070;
	setAttr ".tgi[0].ni[485].y" 2562.857177734375;
	setAttr ".tgi[0].ni[485].nvs" 18304;
	setAttr ".tgi[0].ni[486].x" 2234.28564453125;
	setAttr ".tgi[0].ni[486].y" -12871.4287109375;
	setAttr ".tgi[0].ni[486].nvs" 18304;
	setAttr ".tgi[0].ni[487].x" 3057.142822265625;
	setAttr ".tgi[0].ni[487].y" 7727.14306640625;
	setAttr ".tgi[0].ni[487].nvs" 18304;
	setAttr ".tgi[0].ni[488].x" 2234.28564453125;
	setAttr ".tgi[0].ni[488].y" -13015.7138671875;
	setAttr ".tgi[0].ni[488].nvs" 18304;
	setAttr ".tgi[0].ni[489].x" 3057.142822265625;
	setAttr ".tgi[0].ni[489].y" 7582.85693359375;
	setAttr ".tgi[0].ni[489].nvs" 18304;
	setAttr ".tgi[0].ni[490].x" 1070;
	setAttr ".tgi[0].ni[490].y" 2304.28564453125;
	setAttr ".tgi[0].ni[490].nvs" 18304;
	setAttr ".tgi[0].ni[491].x" 2055.71435546875;
	setAttr ".tgi[0].ni[491].y" 2664.28564453125;
	setAttr ".tgi[0].ni[491].nvs" 18304;
	setAttr ".tgi[0].ni[492].x" 3057.142822265625;
	setAttr ".tgi[0].ni[492].y" 7438.5712890625;
	setAttr ".tgi[0].ni[492].nvs" 18304;
	setAttr ".tgi[0].ni[493].x" 2234.28564453125;
	setAttr ".tgi[0].ni[493].y" -13592.857421875;
	setAttr ".tgi[0].ni[493].nvs" 18304;
	setAttr ".tgi[0].ni[494].x" 2234.28564453125;
	setAttr ".tgi[0].ni[494].y" -13737.142578125;
	setAttr ".tgi[0].ni[494].nvs" 18304;
	setAttr ".tgi[0].ni[495].x" 3057.142822265625;
	setAttr ".tgi[0].ni[495].y" 7294.28564453125;
	setAttr ".tgi[0].ni[495].nvs" 18304;
	setAttr ".tgi[0].ni[496].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[496].y" -2552.857177734375;
	setAttr ".tgi[0].ni[496].nvs" 18304;
	setAttr ".tgi[0].ni[497].x" 3057.142822265625;
	setAttr ".tgi[0].ni[497].y" 7150;
	setAttr ".tgi[0].ni[497].nvs" 18304;
	setAttr ".tgi[0].ni[498].x" 1070;
	setAttr ".tgi[0].ni[498].y" 8945.7138671875;
	setAttr ".tgi[0].ni[498].nvs" 18304;
	setAttr ".tgi[0].ni[499].x" 3057.142822265625;
	setAttr ".tgi[0].ni[499].y" 7005.71435546875;
	setAttr ".tgi[0].ni[499].nvs" 18304;
	setAttr ".tgi[0].ni[500].x" 2234.28564453125;
	setAttr ".tgi[0].ni[500].y" -13881.4287109375;
	setAttr ".tgi[0].ni[500].nvs" 18304;
	setAttr ".tgi[0].ni[501].x" 3057.142822265625;
	setAttr ".tgi[0].ni[501].y" 6861.4287109375;
	setAttr ".tgi[0].ni[501].nvs" 18304;
	setAttr ".tgi[0].ni[502].x" 3057.142822265625;
	setAttr ".tgi[0].ni[502].y" 6717.14306640625;
	setAttr ".tgi[0].ni[502].nvs" 18304;
	setAttr ".tgi[0].ni[503].x" 2234.28564453125;
	setAttr ".tgi[0].ni[503].y" -14458.5712890625;
	setAttr ".tgi[0].ni[503].nvs" 18304;
	setAttr ".tgi[0].ni[504].x" 3057.142822265625;
	setAttr ".tgi[0].ni[504].y" 6572.85693359375;
	setAttr ".tgi[0].ni[504].nvs" 18304;
	setAttr ".tgi[0].ni[505].x" 2234.28564453125;
	setAttr ".tgi[0].ni[505].y" -14602.857421875;
	setAttr ".tgi[0].ni[505].nvs" 18304;
	setAttr ".tgi[0].ni[506].x" 3057.142822265625;
	setAttr ".tgi[0].ni[506].y" 6428.5712890625;
	setAttr ".tgi[0].ni[506].nvs" 18304;
	setAttr ".tgi[0].ni[507].x" 2234.28564453125;
	setAttr ".tgi[0].ni[507].y" -14891.4287109375;
	setAttr ".tgi[0].ni[507].nvs" 18304;
	setAttr ".tgi[0].ni[508].x" 2234.28564453125;
	setAttr ".tgi[0].ni[508].y" -15035.7138671875;
	setAttr ".tgi[0].ni[508].nvs" 18304;
	setAttr ".tgi[0].ni[509].x" 3057.142822265625;
	setAttr ".tgi[0].ni[509].y" 6284.28564453125;
	setAttr ".tgi[0].ni[509].nvs" 18304;
	setAttr ".tgi[0].ni[510].x" 1070;
	setAttr ".tgi[0].ni[510].y" 8687.142578125;
	setAttr ".tgi[0].ni[510].nvs" 18304;
	setAttr ".tgi[0].ni[511].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[511].y" 3845.71435546875;
	setAttr ".tgi[0].ni[511].nvs" 18304;
	setAttr ".tgi[0].ni[512].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[512].y" 947.14288330078125;
	setAttr ".tgi[0].ni[512].nvs" 18304;
	setAttr ".tgi[0].ni[513].x" 2055.71435546875;
	setAttr ".tgi[0].ni[513].y" 3484.28564453125;
	setAttr ".tgi[0].ni[513].nvs" 18304;
	setAttr ".tgi[0].ni[514].x" 2234.28564453125;
	setAttr ".tgi[0].ni[514].y" -15180;
	setAttr ".tgi[0].ni[514].nvs" 18304;
	setAttr ".tgi[0].ni[515].x" 3057.142822265625;
	setAttr ".tgi[0].ni[515].y" 6140;
	setAttr ".tgi[0].ni[515].nvs" 18304;
	setAttr ".tgi[0].ni[516].x" 2234.28564453125;
	setAttr ".tgi[0].ni[516].y" -15324.2861328125;
	setAttr ".tgi[0].ni[516].nvs" 18304;
	setAttr ".tgi[0].ni[517].x" 2234.28564453125;
	setAttr ".tgi[0].ni[517].y" -14314.2861328125;
	setAttr ".tgi[0].ni[517].nvs" 18304;
	setAttr ".tgi[0].ni[518].x" 3057.142822265625;
	setAttr ".tgi[0].ni[518].y" 5995.71435546875;
	setAttr ".tgi[0].ni[518].nvs" 18304;
	setAttr ".tgi[0].ni[519].x" 3057.142822265625;
	setAttr ".tgi[0].ni[519].y" 5851.4287109375;
	setAttr ".tgi[0].ni[519].nvs" 18304;
	setAttr ".tgi[0].ni[520].x" 3057.142822265625;
	setAttr ".tgi[0].ni[520].y" 5707.14306640625;
	setAttr ".tgi[0].ni[520].nvs" 18304;
	setAttr ".tgi[0].ni[521].x" 2234.28564453125;
	setAttr ".tgi[0].ni[521].y" -15612.857421875;
	setAttr ".tgi[0].ni[521].nvs" 18304;
	setAttr ".tgi[0].ni[522].x" 3057.142822265625;
	setAttr ".tgi[0].ni[522].y" 5562.85693359375;
	setAttr ".tgi[0].ni[522].nvs" 18304;
	setAttr ".tgi[0].ni[523].x" 3057.142822265625;
	setAttr ".tgi[0].ni[523].y" 4690;
	setAttr ".tgi[0].ni[523].nvs" 18304;
	setAttr ".tgi[0].ni[524].x" 2234.28564453125;
	setAttr ".tgi[0].ni[524].y" -14170;
	setAttr ".tgi[0].ni[524].nvs" 18304;
	setAttr ".tgi[0].ni[525].x" 3057.142822265625;
	setAttr ".tgi[0].ni[525].y" 4545.71435546875;
	setAttr ".tgi[0].ni[525].nvs" 18304;
	setAttr ".tgi[0].ni[526].x" 3057.142822265625;
	setAttr ".tgi[0].ni[526].y" 4401.4287109375;
	setAttr ".tgi[0].ni[526].nvs" 18304;
	setAttr ".tgi[0].ni[527].x" 3057.142822265625;
	setAttr ".tgi[0].ni[527].y" 4257.14306640625;
	setAttr ".tgi[0].ni[527].nvs" 18304;
	setAttr ".tgi[0].ni[528].x" 2234.28564453125;
	setAttr ".tgi[0].ni[528].y" -14025.7138671875;
	setAttr ".tgi[0].ni[528].nvs" 18304;
	setAttr ".tgi[0].ni[529].x" 3057.142822265625;
	setAttr ".tgi[0].ni[529].y" 4112.85693359375;
	setAttr ".tgi[0].ni[529].nvs" 18304;
	setAttr ".tgi[0].ni[530].x" 2234.28564453125;
	setAttr ".tgi[0].ni[530].y" -14747.142578125;
	setAttr ".tgi[0].ni[530].nvs" 18304;
	setAttr ".tgi[0].ni[531].x" 2234.28564453125;
	setAttr ".tgi[0].ni[531].y" -15468.5712890625;
	setAttr ".tgi[0].ni[531].nvs" 18304;
	setAttr ".tgi[0].ni[532].x" 3057.142822265625;
	setAttr ".tgi[0].ni[532].y" 3968.571533203125;
	setAttr ".tgi[0].ni[532].nvs" 18304;
	setAttr ".tgi[0].ni[533].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[533].y" 3578.571533203125;
	setAttr ".tgi[0].ni[533].nvs" 18304;
	setAttr ".tgi[0].ni[534].x" 2234.28564453125;
	setAttr ".tgi[0].ni[534].y" -15901.4287109375;
	setAttr ".tgi[0].ni[534].nvs" 18304;
	setAttr ".tgi[0].ni[535].x" 3057.142822265625;
	setAttr ".tgi[0].ni[535].y" 3824.28564453125;
	setAttr ".tgi[0].ni[535].nvs" 18304;
	setAttr ".tgi[0].ni[536].x" 3057.142822265625;
	setAttr ".tgi[0].ni[536].y" 3680;
	setAttr ".tgi[0].ni[536].nvs" 18304;
	setAttr ".tgi[0].ni[537].x" 3057.142822265625;
	setAttr ".tgi[0].ni[537].y" 3235.71435546875;
	setAttr ".tgi[0].ni[537].nvs" 18304;
	setAttr ".tgi[0].ni[538].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[538].y" 601.4285888671875;
	setAttr ".tgi[0].ni[538].nvs" 18304;
	setAttr ".tgi[0].ni[539].x" 2055.71435546875;
	setAttr ".tgi[0].ni[539].y" 3067.142822265625;
	setAttr ".tgi[0].ni[539].nvs" 18304;
	setAttr ".tgi[0].ni[540].x" 3057.142822265625;
	setAttr ".tgi[0].ni[540].y" 3091.428466796875;
	setAttr ".tgi[0].ni[540].nvs" 18304;
	setAttr ".tgi[0].ni[541].x" 2234.28564453125;
	setAttr ".tgi[0].ni[541].y" -15757.142578125;
	setAttr ".tgi[0].ni[541].nvs" 18304;
	setAttr ".tgi[0].ni[542].x" 3057.142822265625;
	setAttr ".tgi[0].ni[542].y" 2947.142822265625;
	setAttr ".tgi[0].ni[542].nvs" 18304;
	setAttr ".tgi[0].ni[543].x" 3057.142822265625;
	setAttr ".tgi[0].ni[543].y" 2802.857177734375;
	setAttr ".tgi[0].ni[543].nvs" 18304;
	setAttr ".tgi[0].ni[544].x" 2234.28564453125;
	setAttr ".tgi[0].ni[544].y" -16045.7138671875;
	setAttr ".tgi[0].ni[544].nvs" 18304;
	setAttr ".tgi[0].ni[545].x" 2234.28564453125;
	setAttr ".tgi[0].ni[545].y" -16334.2861328125;
	setAttr ".tgi[0].ni[545].nvs" 18304;
	setAttr ".tgi[0].ni[546].x" 3057.142822265625;
	setAttr ".tgi[0].ni[546].y" 2658.571533203125;
	setAttr ".tgi[0].ni[546].nvs" 18304;
	setAttr ".tgi[0].ni[547].x" 3057.142822265625;
	setAttr ".tgi[0].ni[547].y" -2227.142822265625;
	setAttr ".tgi[0].ni[547].nvs" 18304;
	setAttr ".tgi[0].ni[548].x" 3057.142822265625;
	setAttr ".tgi[0].ni[548].y" -3604.28564453125;
	setAttr ".tgi[0].ni[548].nvs" 18304;
	setAttr ".tgi[0].ni[549].x" 2234.28564453125;
	setAttr ".tgi[0].ni[549].y" -16190;
	setAttr ".tgi[0].ni[549].nvs" 18304;
	setAttr ".tgi[0].ni[550].x" 3057.142822265625;
	setAttr ".tgi[0].ni[550].y" -5024.28564453125;
	setAttr ".tgi[0].ni[550].nvs" 18304;
	setAttr ".tgi[0].ni[551].x" 2055.71435546875;
	setAttr ".tgi[0].ni[551].y" 4471.4287109375;
	setAttr ".tgi[0].ni[551].nvs" 18304;
	setAttr ".tgi[0].ni[552].x" 2621.428466796875;
	setAttr ".tgi[0].ni[552].y" -17328.572265625;
	setAttr ".tgi[0].ni[552].nvs" 18304;
	setAttr ".tgi[0].ni[553].x" 2621.428466796875;
	setAttr ".tgi[0].ni[553].y" -17155.71484375;
	setAttr ".tgi[0].ni[553].nvs" 18304;
	setAttr ".tgi[0].ni[554].x" -3272.857177734375;
	setAttr ".tgi[0].ni[554].y" 8411.4287109375;
	setAttr ".tgi[0].ni[554].nvs" 18304;
	setAttr ".tgi[0].ni[555].x" 3057.142822265625;
	setAttr ".tgi[0].ni[555].y" -5700;
	setAttr ".tgi[0].ni[555].nvs" 18304;
	setAttr ".tgi[0].ni[556].x" 2670;
	setAttr ".tgi[0].ni[556].y" 7864.28564453125;
	setAttr ".tgi[0].ni[556].nvs" 18304;
	setAttr ".tgi[0].ni[557].x" 2234.28564453125;
	setAttr ".tgi[0].ni[557].y" -7532.85693359375;
	setAttr ".tgi[0].ni[557].nvs" 18304;
	setAttr ".tgi[0].ni[558].x" 2612.857177734375;
	setAttr ".tgi[0].ni[558].y" -11932.857421875;
	setAttr ".tgi[0].ni[558].nvs" 18304;
	setAttr ".tgi[0].ni[559].x" 1927.142822265625;
	setAttr ".tgi[0].ni[559].y" -7582.85693359375;
	setAttr ".tgi[0].ni[559].nvs" 18304;
	setAttr ".tgi[0].ni[560].x" 1620;
	setAttr ".tgi[0].ni[560].y" -7460;
	setAttr ".tgi[0].ni[560].nvs" 18304;
	setAttr ".tgi[0].ni[561].x" 2055.71435546875;
	setAttr ".tgi[0].ni[561].y" 10698.5712890625;
	setAttr ".tgi[0].ni[561].nvs" 18304;
	setAttr ".tgi[0].ni[562].x" 2601.428466796875;
	setAttr ".tgi[0].ni[562].y" -16658.572265625;
	setAttr ".tgi[0].ni[562].nvs" 18304;
	setAttr ".tgi[0].ni[563].x" 2362.857177734375;
	setAttr ".tgi[0].ni[563].y" 5282.85693359375;
	setAttr ".tgi[0].ni[563].nvs" 18304;
	setAttr ".tgi[0].ni[564].x" 3085.71435546875;
	setAttr ".tgi[0].ni[564].y" -16588.572265625;
	setAttr ".tgi[0].ni[564].nvs" 18304;
	setAttr ".tgi[0].ni[565].x" 1927.142822265625;
	setAttr ".tgi[0].ni[565].y" -7481.4287109375;
	setAttr ".tgi[0].ni[565].nvs" 18304;
	setAttr ".tgi[0].ni[566].x" -2965.71435546875;
	setAttr ".tgi[0].ni[566].y" 8625.7138671875;
	setAttr ".tgi[0].ni[566].nvs" 18304;
	setAttr ".tgi[0].ni[567].x" 1620;
	setAttr ".tgi[0].ni[567].y" -7604.28564453125;
	setAttr ".tgi[0].ni[567].nvs" 18304;
	setAttr ".tgi[0].ni[568].x" 2670;
	setAttr ".tgi[0].ni[568].y" 6868.5712890625;
	setAttr ".tgi[0].ni[568].nvs" 18304;
	setAttr ".tgi[0].ni[569].x" 2621.428466796875;
	setAttr ".tgi[0].ni[569].y" -16982.857421875;
	setAttr ".tgi[0].ni[569].nvs" 18304;
	setAttr ".tgi[0].ni[570].x" 1312.857177734375;
	setAttr ".tgi[0].ni[570].y" -7604.28564453125;
	setAttr ".tgi[0].ni[570].nvs" 18304;
	setAttr ".tgi[0].ni[571].x" -2351.428466796875;
	setAttr ".tgi[0].ni[571].y" 7124.28564453125;
	setAttr ".tgi[0].ni[571].nvs" 18304;
	setAttr ".tgi[0].ni[572].x" 1857.142822265625;
	setAttr ".tgi[0].ni[572].y" -16458.572265625;
	setAttr ".tgi[0].ni[572].nvs" 18304;
	setAttr ".tgi[0].ni[573].x" 2471.428466796875;
	setAttr ".tgi[0].ni[573].y" -16328.5712890625;
	setAttr ".tgi[0].ni[573].nvs" 18304;
	setAttr ".tgi[0].ni[574].x" 2164.28564453125;
	setAttr ".tgi[0].ni[574].y" -16198.5712890625;
	setAttr ".tgi[0].ni[574].nvs" 18304;
	setAttr ".tgi[0].ni[575].x" 1857.142822265625;
	setAttr ".tgi[0].ni[575].y" -16068.5712890625;
	setAttr ".tgi[0].ni[575].nvs" 18304;
	setAttr ".tgi[0].ni[576].x" 2164.28564453125;
	setAttr ".tgi[0].ni[576].y" -16328.5712890625;
	setAttr ".tgi[0].ni[576].nvs" 18304;
	setAttr ".tgi[0].ni[577].x" -707.14288330078125;
	setAttr ".tgi[0].ni[577].y" 748.5714111328125;
	setAttr ".tgi[0].ni[577].nvs" 18304;
	setAttr ".tgi[0].ni[578].x" -707.14288330078125;
	setAttr ".tgi[0].ni[578].y" 878.5714111328125;
	setAttr ".tgi[0].ni[578].nvs" 18304;
	setAttr ".tgi[0].ni[579].x" 3085.71435546875;
	setAttr ".tgi[0].ni[579].y" -15938.5712890625;
	setAttr ".tgi[0].ni[579].nvs" 18304;
	setAttr ".tgi[0].ni[580].x" -707.14288330078125;
	setAttr ".tgi[0].ni[580].y" 488.57144165039063;
	setAttr ".tgi[0].ni[580].nvs" 18304;
	setAttr ".tgi[0].ni[581].x" 2778.571533203125;
	setAttr ".tgi[0].ni[581].y" -15808.5712890625;
	setAttr ".tgi[0].ni[581].nvs" 18304;
	setAttr ".tgi[0].ni[582].x" 2471.428466796875;
	setAttr ".tgi[0].ni[582].y" -16068.5712890625;
	setAttr ".tgi[0].ni[582].nvs" 18304;
	setAttr ".tgi[0].ni[583].x" -707.14288330078125;
	setAttr ".tgi[0].ni[583].y" 1268.5714111328125;
	setAttr ".tgi[0].ni[583].nvs" 18304;
	setAttr ".tgi[0].ni[584].x" 2778.571533203125;
	setAttr ".tgi[0].ni[584].y" -16458.572265625;
	setAttr ".tgi[0].ni[584].nvs" 18304;
	setAttr ".tgi[0].ni[585].x" 2164.28564453125;
	setAttr ".tgi[0].ni[585].y" -15678.5712890625;
	setAttr ".tgi[0].ni[585].nvs" 18304;
	setAttr ".tgi[0].ni[586].x" 1857.142822265625;
	setAttr ".tgi[0].ni[586].y" -15938.5712890625;
	setAttr ".tgi[0].ni[586].nvs" 18304;
	setAttr ".tgi[0].ni[587].x" 2778.571533203125;
	setAttr ".tgi[0].ni[587].y" -15938.5712890625;
	setAttr ".tgi[0].ni[587].nvs" 18304;
	setAttr ".tgi[0].ni[588].x" 3085.71435546875;
	setAttr ".tgi[0].ni[588].y" -15808.5712890625;
	setAttr ".tgi[0].ni[588].nvs" 18304;
	setAttr ".tgi[0].ni[589].x" 1857.142822265625;
	setAttr ".tgi[0].ni[589].y" -17108.572265625;
	setAttr ".tgi[0].ni[589].nvs" 18304;
	setAttr ".tgi[0].ni[590].x" 2778.571533203125;
	setAttr ".tgi[0].ni[590].y" -16068.5712890625;
	setAttr ".tgi[0].ni[590].nvs" 18304;
	setAttr ".tgi[0].ni[591].x" 2778.571533203125;
	setAttr ".tgi[0].ni[591].y" -16198.5712890625;
	setAttr ".tgi[0].ni[591].nvs" 18304;
	setAttr ".tgi[0].ni[592].x" 2471.428466796875;
	setAttr ".tgi[0].ni[592].y" -15808.5712890625;
	setAttr ".tgi[0].ni[592].nvs" 18304;
	setAttr ".tgi[0].ni[593].x" 2164.28564453125;
	setAttr ".tgi[0].ni[593].y" -17108.572265625;
	setAttr ".tgi[0].ni[593].nvs" 18304;
	setAttr ".tgi[0].ni[594].x" 2471.428466796875;
	setAttr ".tgi[0].ni[594].y" -17108.572265625;
	setAttr ".tgi[0].ni[594].nvs" 18304;
	setAttr ".tgi[0].ni[595].x" 3085.71435546875;
	setAttr ".tgi[0].ni[595].y" -16068.5712890625;
	setAttr ".tgi[0].ni[595].nvs" 18304;
	setAttr ".tgi[0].ni[596].x" -707.14288330078125;
	setAttr ".tgi[0].ni[596].y" 358.57144165039063;
	setAttr ".tgi[0].ni[596].nvs" 18304;
	setAttr ".tgi[0].ni[597].x" 3085.71435546875;
	setAttr ".tgi[0].ni[597].y" -16328.5712890625;
	setAttr ".tgi[0].ni[597].nvs" 18304;
	setAttr ".tgi[0].ni[598].x" 1857.142822265625;
	setAttr ".tgi[0].ni[598].y" -15808.5712890625;
	setAttr ".tgi[0].ni[598].nvs" 18304;
	setAttr ".tgi[0].ni[599].x" 2778.571533203125;
	setAttr ".tgi[0].ni[599].y" -16328.5712890625;
	setAttr ".tgi[0].ni[599].nvs" 18304;
	setAttr ".tgi[0].ni[600].x" 3085.71435546875;
	setAttr ".tgi[0].ni[600].y" -16458.572265625;
	setAttr ".tgi[0].ni[600].nvs" 18304;
	setAttr ".tgi[0].ni[601].x" 2164.28564453125;
	setAttr ".tgi[0].ni[601].y" -16068.5712890625;
	setAttr ".tgi[0].ni[601].nvs" 18304;
	setAttr ".tgi[0].ni[602].x" -707.14288330078125;
	setAttr ".tgi[0].ni[602].y" 1398.5714111328125;
	setAttr ".tgi[0].ni[602].nvs" 18304;
	setAttr ".tgi[0].ni[603].x" -707.14288330078125;
	setAttr ".tgi[0].ni[603].y" 1008.5714111328125;
	setAttr ".tgi[0].ni[603].nvs" 18304;
	setAttr ".tgi[0].ni[604].x" 1857.142822265625;
	setAttr ".tgi[0].ni[604].y" -16328.5712890625;
	setAttr ".tgi[0].ni[604].nvs" 18304;
	setAttr ".tgi[0].ni[605].x" 2164.28564453125;
	setAttr ".tgi[0].ni[605].y" -16458.572265625;
	setAttr ".tgi[0].ni[605].nvs" 18304;
	setAttr ".tgi[0].ni[606].x" -707.14288330078125;
	setAttr ".tgi[0].ni[606].y" 618.5714111328125;
	setAttr ".tgi[0].ni[606].nvs" 18304;
	setAttr ".tgi[0].ni[607].x" 2471.428466796875;
	setAttr ".tgi[0].ni[607].y" -16458.572265625;
	setAttr ".tgi[0].ni[607].nvs" 18304;
	setAttr ".tgi[0].ni[608].x" 1857.142822265625;
	setAttr ".tgi[0].ni[608].y" -16198.5712890625;
	setAttr ".tgi[0].ni[608].nvs" 18304;
	setAttr ".tgi[0].ni[609].x" -707.14288330078125;
	setAttr ".tgi[0].ni[609].y" 1138.5714111328125;
	setAttr ".tgi[0].ni[609].nvs" 18304;
	setAttr ".tgi[0].ni[610].x" 2471.428466796875;
	setAttr ".tgi[0].ni[610].y" -16198.5712890625;
	setAttr ".tgi[0].ni[610].nvs" 18304;
	setAttr ".tgi[0].ni[611].x" 3085.71435546875;
	setAttr ".tgi[0].ni[611].y" -16198.5712890625;
	setAttr ".tgi[0].ni[611].nvs" 18304;
	setAttr ".tgi[0].ni[612].x" 1857.142822265625;
	setAttr ".tgi[0].ni[612].y" -15678.5712890625;
	setAttr ".tgi[0].ni[612].nvs" 18304;
	setAttr ".tgi[0].ni[613].x" 2471.428466796875;
	setAttr ".tgi[0].ni[613].y" -15678.5712890625;
	setAttr ".tgi[0].ni[613].nvs" 18304;
	setAttr ".tgi[0].ni[614].x" 2778.571533203125;
	setAttr ".tgi[0].ni[614].y" -15678.5712890625;
	setAttr ".tgi[0].ni[614].nvs" 18304;
	setAttr ".tgi[0].ni[615].x" 3085.71435546875;
	setAttr ".tgi[0].ni[615].y" -15678.5712890625;
	setAttr ".tgi[0].ni[615].nvs" 18304;
	setAttr ".tgi[0].ni[616].x" 2164.28564453125;
	setAttr ".tgi[0].ni[616].y" -15938.5712890625;
	setAttr ".tgi[0].ni[616].nvs" 18304;
	setAttr ".tgi[0].ni[617].x" 2471.428466796875;
	setAttr ".tgi[0].ni[617].y" -15938.5712890625;
	setAttr ".tgi[0].ni[617].nvs" 18304;
	setAttr ".tgi[0].ni[618].x" 2164.28564453125;
	setAttr ".tgi[0].ni[618].y" -15808.5712890625;
	setAttr ".tgi[0].ni[618].nvs" 18304;
	setAttr ".tgi[0].ni[619].x" 1857.142822265625;
	setAttr ".tgi[0].ni[619].y" -15548.5712890625;
	setAttr ".tgi[0].ni[619].nvs" 18304;
	setAttr ".tgi[0].ni[620].x" 2471.428466796875;
	setAttr ".tgi[0].ni[620].y" -15548.5712890625;
	setAttr ".tgi[0].ni[620].nvs" 18304;
	setAttr ".tgi[0].ni[621].x" 2778.571533203125;
	setAttr ".tgi[0].ni[621].y" -15548.5712890625;
	setAttr ".tgi[0].ni[621].nvs" 18304;
	setAttr ".tgi[0].ni[622].x" 3085.71435546875;
	setAttr ".tgi[0].ni[622].y" -15548.5712890625;
	setAttr ".tgi[0].ni[622].nvs" 18304;
	setAttr ".tgi[0].ni[623].x" 1857.142822265625;
	setAttr ".tgi[0].ni[623].y" -16588.572265625;
	setAttr ".tgi[0].ni[623].nvs" 18304;
	setAttr ".tgi[0].ni[624].x" 3085.71435546875;
	setAttr ".tgi[0].ni[624].y" -17368.572265625;
	setAttr ".tgi[0].ni[624].nvs" 18304;
	setAttr ".tgi[0].ni[625].x" 2471.428466796875;
	setAttr ".tgi[0].ni[625].y" -16588.572265625;
	setAttr ".tgi[0].ni[625].nvs" 18304;
	setAttr ".tgi[0].ni[626].x" 2164.28564453125;
	setAttr ".tgi[0].ni[626].y" -16588.572265625;
	setAttr ".tgi[0].ni[626].nvs" 18304;
	setAttr ".tgi[0].ni[627].x" 2778.571533203125;
	setAttr ".tgi[0].ni[627].y" -16588.572265625;
	setAttr ".tgi[0].ni[627].nvs" 18304;
	setAttr ".tgi[0].ni[628].x" 1857.142822265625;
	setAttr ".tgi[0].ni[628].y" -15418.5712890625;
	setAttr ".tgi[0].ni[628].nvs" 18304;
	setAttr ".tgi[0].ni[629].x" -707.14288330078125;
	setAttr ".tgi[0].ni[629].y" 228.57142639160156;
	setAttr ".tgi[0].ni[629].nvs" 18304;
	setAttr ".tgi[0].ni[630].x" 2164.28564453125;
	setAttr ".tgi[0].ni[630].y" -15418.5712890625;
	setAttr ".tgi[0].ni[630].nvs" 18304;
	setAttr ".tgi[0].ni[631].x" -707.14288330078125;
	setAttr ".tgi[0].ni[631].y" 1528.5714111328125;
	setAttr ".tgi[0].ni[631].nvs" 18304;
	setAttr ".tgi[0].ni[632].x" -707.14288330078125;
	setAttr ".tgi[0].ni[632].y" 1658.5714111328125;
	setAttr ".tgi[0].ni[632].nvs" 18304;
	setAttr ".tgi[0].ni[633].x" 2778.571533203125;
	setAttr ".tgi[0].ni[633].y" -17368.572265625;
	setAttr ".tgi[0].ni[633].nvs" 18304;
	setAttr ".tgi[0].ni[634].x" 2778.571533203125;
	setAttr ".tgi[0].ni[634].y" -15418.5712890625;
	setAttr ".tgi[0].ni[634].nvs" 18304;
	setAttr ".tgi[0].ni[635].x" -707.14288330078125;
	setAttr ".tgi[0].ni[635].y" 1788.5714111328125;
	setAttr ".tgi[0].ni[635].nvs" 18304;
	setAttr ".tgi[0].ni[636].x" 2471.428466796875;
	setAttr ".tgi[0].ni[636].y" -17368.572265625;
	setAttr ".tgi[0].ni[636].nvs" 18304;
	setAttr ".tgi[0].ni[637].x" 2471.428466796875;
	setAttr ".tgi[0].ni[637].y" -15418.5712890625;
	setAttr ".tgi[0].ni[637].nvs" 18304;
	setAttr ".tgi[0].ni[638].x" 2164.28564453125;
	setAttr ".tgi[0].ni[638].y" -15548.5712890625;
	setAttr ".tgi[0].ni[638].nvs" 18304;
	setAttr ".tgi[0].ni[639].x" 3085.71435546875;
	setAttr ".tgi[0].ni[639].y" -15418.5712890625;
	setAttr ".tgi[0].ni[639].nvs" 18304;
	setAttr ".tgi[0].ni[640].x" 2362.857177734375;
	setAttr ".tgi[0].ni[640].y" 11371.4287109375;
	setAttr ".tgi[0].ni[640].nvs" 18304;
	setAttr ".tgi[0].ni[641].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[641].y" 12004.2861328125;
	setAttr ".tgi[0].ni[641].nvs" 18304;
	setAttr ".tgi[0].ni[642].x" 1070;
	setAttr ".tgi[0].ni[642].y" -6501.4287109375;
	setAttr ".tgi[0].ni[642].nvs" 18304;
	setAttr ".tgi[0].ni[643].x" 2362.857177734375;
	setAttr ".tgi[0].ni[643].y" 11805.7138671875;
	setAttr ".tgi[0].ni[643].nvs" 18304;
	setAttr ".tgi[0].ni[644].x" 2670;
	setAttr ".tgi[0].ni[644].y" 9330;
	setAttr ".tgi[0].ni[644].nvs" 18304;
	setAttr ".tgi[0].ni[645].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[645].y" 12127.142578125;
	setAttr ".tgi[0].ni[645].nvs" 18304;
	setAttr ".tgi[0].ni[646].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[646].y" 11635.7138671875;
	setAttr ".tgi[0].ni[646].nvs" 18304;
	setAttr ".tgi[0].ni[647].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[647].y" -5267.14306640625;
	setAttr ".tgi[0].ni[647].nvs" 18304;
	setAttr ".tgi[0].ni[648].x" 2362.857177734375;
	setAttr ".tgi[0].ni[648].y" 10757.142578125;
	setAttr ".tgi[0].ni[648].nvs" 18304;
	setAttr ".tgi[0].ni[649].x" 2670;
	setAttr ".tgi[0].ni[649].y" 10484.2861328125;
	setAttr ".tgi[0].ni[649].nvs" 18304;
	setAttr ".tgi[0].ni[650].x" 2362.857177734375;
	setAttr ".tgi[0].ni[650].y" 12174.2861328125;
	setAttr ".tgi[0].ni[650].nvs" 18304;
	setAttr ".tgi[0].ni[651].x" 2670;
	setAttr ".tgi[0].ni[651].y" 11980;
	setAttr ".tgi[0].ni[651].nvs" 18304;
	setAttr ".tgi[0].ni[652].x" 2670;
	setAttr ".tgi[0].ni[652].y" 10975.7138671875;
	setAttr ".tgi[0].ni[652].nvs" 18304;
	setAttr ".tgi[0].ni[653].x" 2670;
	setAttr ".tgi[0].ni[653].y" 10852.857421875;
	setAttr ".tgi[0].ni[653].nvs" 18304;
	setAttr ".tgi[0].ni[654].x" 1070;
	setAttr ".tgi[0].ni[654].y" -9144.2861328125;
	setAttr ".tgi[0].ni[654].nvs" 18304;
	setAttr ".tgi[0].ni[655].x" 1070;
	setAttr ".tgi[0].ni[655].y" -9512.857421875;
	setAttr ".tgi[0].ni[655].nvs" 18304;
	setAttr ".tgi[0].ni[656].x" 1070;
	setAttr ".tgi[0].ni[656].y" -6624.28564453125;
	setAttr ".tgi[0].ni[656].nvs" 18304;
	setAttr ".tgi[0].ni[657].x" 1070;
	setAttr ".tgi[0].ni[657].y" -6132.85693359375;
	setAttr ".tgi[0].ni[657].nvs" 18304;
	setAttr ".tgi[0].ni[658].x" 2670;
	setAttr ".tgi[0].ni[658].y" 10730;
	setAttr ".tgi[0].ni[658].nvs" 18304;
	setAttr ".tgi[0].ni[659].x" 2670;
	setAttr ".tgi[0].ni[659].y" 9207.142578125;
	setAttr ".tgi[0].ni[659].nvs" 18304;
	setAttr ".tgi[0].ni[660].x" 2362.857177734375;
	setAttr ".tgi[0].ni[660].y" 11928.5712890625;
	setAttr ".tgi[0].ni[660].nvs" 18304;
	setAttr ".tgi[0].ni[661].x" 2362.857177734375;
	setAttr ".tgi[0].ni[661].y" 12420;
	setAttr ".tgi[0].ni[661].nvs" 18304;
	setAttr ".tgi[0].ni[662].x" 2670;
	setAttr ".tgi[0].ni[662].y" 11488.5712890625;
	setAttr ".tgi[0].ni[662].nvs" 18304;
	setAttr ".tgi[0].ni[663].x" 1070;
	setAttr ".tgi[0].ni[663].y" -6747.14306640625;
	setAttr ".tgi[0].ni[663].nvs" 18304;
	setAttr ".tgi[0].ni[664].x" 2670;
	setAttr ".tgi[0].ni[664].y" 11734.2861328125;
	setAttr ".tgi[0].ni[664].nvs" 18304;
	setAttr ".tgi[0].ni[665].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[665].y" 11881.4287109375;
	setAttr ".tgi[0].ni[665].nvs" 18304;
	setAttr ".tgi[0].ni[666].x" 2670;
	setAttr ".tgi[0].ni[666].y" 10607.142578125;
	setAttr ".tgi[0].ni[666].nvs" 18304;
	setAttr ".tgi[0].ni[667].x" 1070;
	setAttr ".tgi[0].ni[667].y" -9758.5712890625;
	setAttr ".tgi[0].ni[667].nvs" 18304;
	setAttr ".tgi[0].ni[668].x" 2362.857177734375;
	setAttr ".tgi[0].ni[668].y" 11002.857421875;
	setAttr ".tgi[0].ni[668].nvs" 18304;
	setAttr ".tgi[0].ni[669].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[669].y" -4775.71435546875;
	setAttr ".tgi[0].ni[669].nvs" 18304;
	setAttr ".tgi[0].ni[670].x" 2670;
	setAttr ".tgi[0].ni[670].y" 9690;
	setAttr ".tgi[0].ni[670].nvs" 18304;
	setAttr ".tgi[0].ni[671].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[671].y" 11512.857421875;
	setAttr ".tgi[0].ni[671].nvs" 18304;
	setAttr ".tgi[0].ni[672].x" 2670;
	setAttr ".tgi[0].ni[672].y" 9812.857421875;
	setAttr ".tgi[0].ni[672].nvs" 18304;
	setAttr ".tgi[0].ni[673].x" 1070;
	setAttr ".tgi[0].ni[673].y" -6255.71435546875;
	setAttr ".tgi[0].ni[673].nvs" 18304;
	setAttr ".tgi[0].ni[674].x" 2670;
	setAttr ".tgi[0].ni[674].y" 11857.142578125;
	setAttr ".tgi[0].ni[674].nvs" 18304;
	setAttr ".tgi[0].ni[675].x" 2670;
	setAttr ".tgi[0].ni[675].y" 9452.857421875;
	setAttr ".tgi[0].ni[675].nvs" 18304;
	setAttr ".tgi[0].ni[676].x" 2362.857177734375;
	setAttr ".tgi[0].ni[676].y" 12297.142578125;
	setAttr ".tgi[0].ni[676].nvs" 18304;
	setAttr ".tgi[0].ni[677].x" 2670;
	setAttr ".tgi[0].ni[677].y" 9084.2861328125;
	setAttr ".tgi[0].ni[677].nvs" 18304;
	setAttr ".tgi[0].ni[678].x" 2670;
	setAttr ".tgi[0].ni[678].y" 8838.5712890625;
	setAttr ".tgi[0].ni[678].nvs" 18304;
	setAttr ".tgi[0].ni[679].x" 2362.857177734375;
	setAttr ".tgi[0].ni[679].y" 11125.7138671875;
	setAttr ".tgi[0].ni[679].nvs" 18304;
	setAttr ".tgi[0].ni[680].x" 1070;
	setAttr ".tgi[0].ni[680].y" -6378.5712890625;
	setAttr ".tgi[0].ni[680].nvs" 18304;
	setAttr ".tgi[0].ni[681].x" 2362.857177734375;
	setAttr ".tgi[0].ni[681].y" 11248.5712890625;
	setAttr ".tgi[0].ni[681].nvs" 18304;
	setAttr ".tgi[0].ni[682].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[682].y" 11758.5712890625;
	setAttr ".tgi[0].ni[682].nvs" 18304;
	setAttr ".tgi[0].ni[683].x" 2362.857177734375;
	setAttr ".tgi[0].ni[683].y" 12051.4287109375;
	setAttr ".tgi[0].ni[683].nvs" 18304;
	setAttr ".tgi[0].ni[684].x" 2670;
	setAttr ".tgi[0].ni[684].y" 11365.7138671875;
	setAttr ".tgi[0].ni[684].nvs" 18304;
	setAttr ".tgi[0].ni[685].x" 2670;
	setAttr ".tgi[0].ni[685].y" 8961.4287109375;
	setAttr ".tgi[0].ni[685].nvs" 18304;
	setAttr ".tgi[0].ni[686].x" 1070;
	setAttr ".tgi[0].ni[686].y" -9267.142578125;
	setAttr ".tgi[0].ni[686].nvs" 18304;
	setAttr ".tgi[0].ni[687].x" 1070;
	setAttr ".tgi[0].ni[687].y" -9390;
	setAttr ".tgi[0].ni[687].nvs" 18304;
	setAttr ".tgi[0].ni[688].x" 2670;
	setAttr ".tgi[0].ni[688].y" 11611.4287109375;
	setAttr ".tgi[0].ni[688].nvs" 18304;
	setAttr ".tgi[0].ni[689].x" 1070;
	setAttr ".tgi[0].ni[689].y" -9635.7138671875;
	setAttr ".tgi[0].ni[689].nvs" 18304;
	setAttr ".tgi[0].ni[690].x" 2362.857177734375;
	setAttr ".tgi[0].ni[690].y" 10880;
	setAttr ".tgi[0].ni[690].nvs" 18304;
	setAttr ".tgi[0].ni[691].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[691].y" -4898.5712890625;
	setAttr ".tgi[0].ni[691].nvs" 18304;
	setAttr ".tgi[0].ni[692].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[692].y" -4652.85693359375;
	setAttr ".tgi[0].ni[692].nvs" 18304;
	setAttr ".tgi[0].ni[693].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[693].y" -5021.4287109375;
	setAttr ".tgi[0].ni[693].nvs" 18304;
	setAttr ".tgi[0].ni[694].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[694].y" -5144.28564453125;
	setAttr ".tgi[0].ni[694].nvs" 18304;
	setAttr ".tgi[0].ni[695].x" 2670;
	setAttr ".tgi[0].ni[695].y" 11098.5712890625;
	setAttr ".tgi[0].ni[695].nvs" 18304;
	setAttr ".tgi[0].ni[696].x" -3272.857177734375;
	setAttr ".tgi[0].ni[696].y" 9722.857421875;
	setAttr ".tgi[0].ni[696].nvs" 18304;
	setAttr ".tgi[0].ni[697].x" -3272.857177734375;
	setAttr ".tgi[0].ni[697].y" 9600;
	setAttr ".tgi[0].ni[697].nvs" 18304;
	setAttr ".tgi[0].ni[698].x" -3272.857177734375;
	setAttr ".tgi[0].ni[698].y" 9477.142578125;
	setAttr ".tgi[0].ni[698].nvs" 18304;
	setAttr ".tgi[0].ni[699].x" -3272.857177734375;
	setAttr ".tgi[0].ni[699].y" 9354.2861328125;
	setAttr ".tgi[0].ni[699].nvs" 18304;
	setAttr ".tgi[0].ni[700].x" -3272.857177734375;
	setAttr ".tgi[0].ni[700].y" 9231.4287109375;
	setAttr ".tgi[0].ni[700].nvs" 18304;
	setAttr ".tgi[0].ni[701].x" -3272.857177734375;
	setAttr ".tgi[0].ni[701].y" 9108.5712890625;
	setAttr ".tgi[0].ni[701].nvs" 18304;
	setAttr ".tgi[0].ni[702].x" 105.71428680419922;
	setAttr ".tgi[0].ni[702].y" 5630;
	setAttr ".tgi[0].ni[702].nvs" 18304;
	setAttr ".tgi[0].ni[703].x" 105.71428680419922;
	setAttr ".tgi[0].ni[703].y" 5507.14306640625;
	setAttr ".tgi[0].ni[703].nvs" 18304;
	setAttr ".tgi[0].ni[704].x" 105.71428680419922;
	setAttr ".tgi[0].ni[704].y" 5384.28564453125;
	setAttr ".tgi[0].ni[704].nvs" 18304;
	setAttr ".tgi[0].ni[705].x" 754.28570556640625;
	setAttr ".tgi[0].ni[705].y" -2752.857177734375;
	setAttr ".tgi[0].ni[705].nvs" 18304;
	setAttr ".tgi[0].ni[706].x" 2670;
	setAttr ".tgi[0].ni[706].y" 8355.7138671875;
	setAttr ".tgi[0].ni[706].nvs" 18304;
	setAttr ".tgi[0].ni[707].x" 754.28570556640625;
	setAttr ".tgi[0].ni[707].y" -2998.571533203125;
	setAttr ".tgi[0].ni[707].nvs" 18304;
	setAttr ".tgi[0].ni[708].x" 754.28570556640625;
	setAttr ".tgi[0].ni[708].y" -3121.428466796875;
	setAttr ".tgi[0].ni[708].nvs" 18304;
	setAttr ".tgi[0].ni[709].x" 105.71428680419922;
	setAttr ".tgi[0].ni[709].y" 5015.71435546875;
	setAttr ".tgi[0].ni[709].nvs" 18304;
	setAttr ".tgi[0].ni[710].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[710].y" 3701.428466796875;
	setAttr ".tgi[0].ni[710].nvs" 18304;
	setAttr ".tgi[0].ni[711].x" 2670;
	setAttr ".tgi[0].ni[711].y" 7987.14306640625;
	setAttr ".tgi[0].ni[711].nvs" 18304;
	setAttr ".tgi[0].ni[712].x" 412.85714721679688;
	setAttr ".tgi[0].ni[712].y" -137.14285278320313;
	setAttr ".tgi[0].ni[712].nvs" 18304;
	setAttr ".tgi[0].ni[713].x" 105.71428680419922;
	setAttr ".tgi[0].ni[713].y" 5261.4287109375;
	setAttr ".tgi[0].ni[713].nvs" 18304;
	setAttr ".tgi[0].ni[714].x" 754.28570556640625;
	setAttr ".tgi[0].ni[714].y" -2507.142822265625;
	setAttr ".tgi[0].ni[714].nvs" 18304;
	setAttr ".tgi[0].ni[715].x" 1070;
	setAttr ".tgi[0].ni[715].y" -11387.142578125;
	setAttr ".tgi[0].ni[715].nvs" 18304;
	setAttr ".tgi[0].ni[716].x" 1070;
	setAttr ".tgi[0].ni[716].y" -11632.857421875;
	setAttr ".tgi[0].ni[716].nvs" 18304;
	setAttr ".tgi[0].ni[717].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[717].y" 3434.28564453125;
	setAttr ".tgi[0].ni[717].nvs" 18304;
	setAttr ".tgi[0].ni[718].x" 1070;
	setAttr ".tgi[0].ni[718].y" -11141.4287109375;
	setAttr ".tgi[0].ni[718].nvs" 18304;
	setAttr ".tgi[0].ni[719].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[719].y" 3065.71435546875;
	setAttr ".tgi[0].ni[719].nvs" 18304;
	setAttr ".tgi[0].ni[720].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[720].y" 3188.571533203125;
	setAttr ".tgi[0].ni[720].nvs" 18304;
	setAttr ".tgi[0].ni[721].x" 1070;
	setAttr ".tgi[0].ni[721].y" -11018.5712890625;
	setAttr ".tgi[0].ni[721].nvs" 18304;
	setAttr ".tgi[0].ni[722].x" 754.28570556640625;
	setAttr ".tgi[0].ni[722].y" -2630;
	setAttr ".tgi[0].ni[722].nvs" 18304;
	setAttr ".tgi[0].ni[723].x" 1070;
	setAttr ".tgi[0].ni[723].y" -11510;
	setAttr ".tgi[0].ni[723].nvs" 18304;
	setAttr ".tgi[0].ni[724].x" 105.71428680419922;
	setAttr ".tgi[0].ni[724].y" 5138.5712890625;
	setAttr ".tgi[0].ni[724].nvs" 18304;
	setAttr ".tgi[0].ni[725].x" 754.28570556640625;
	setAttr ".tgi[0].ni[725].y" -2875.71435546875;
	setAttr ".tgi[0].ni[725].nvs" 18304;
	setAttr ".tgi[0].ni[726].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[726].y" 3311.428466796875;
	setAttr ".tgi[0].ni[726].nvs" 18304;
	setAttr ".tgi[0].ni[727].x" 1070;
	setAttr ".tgi[0].ni[727].y" -11264.2861328125;
	setAttr ".tgi[0].ni[727].nvs" 18304;
	setAttr ".tgi[0].ni[728].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[728].y" 2942.857177734375;
	setAttr ".tgi[0].ni[728].nvs" 18304;
	setAttr ".tgi[0].ni[729].x" 2670;
	setAttr ".tgi[0].ni[729].y" 8601.4287109375;
	setAttr ".tgi[0].ni[729].nvs" 18304;
	setAttr ".tgi[0].ni[730].x" 2670;
	setAttr ".tgi[0].ni[730].y" 8478.5712890625;
	setAttr ".tgi[0].ni[730].nvs" 18304;
	setAttr ".tgi[0].ni[731].x" 2670;
	setAttr ".tgi[0].ni[731].y" 8232.857421875;
	setAttr ".tgi[0].ni[731].nvs" 18304;
	setAttr ".tgi[0].ni[732].x" 2670;
	setAttr ".tgi[0].ni[732].y" 8110;
	setAttr ".tgi[0].ni[732].nvs" 18304;
	setAttr ".tgi[0].ni[733].x" -2351.428466796875;
	setAttr ".tgi[0].ni[733].y" 9877.142578125;
	setAttr ".tgi[0].ni[733].nvs" 18304;
	setAttr ".tgi[0].ni[734].x" -2044.2857666015625;
	setAttr ".tgi[0].ni[734].y" 10598.5712890625;
	setAttr ".tgi[0].ni[734].nvs" 18304;
	setAttr ".tgi[0].ni[735].x" -2044.2857666015625;
	setAttr ".tgi[0].ni[735].y" 10475.7138671875;
	setAttr ".tgi[0].ni[735].nvs" 18304;
	setAttr ".tgi[0].ni[736].x" -2044.2857666015625;
	setAttr ".tgi[0].ni[736].y" 10352.857421875;
	setAttr ".tgi[0].ni[736].nvs" 18304;
	setAttr ".tgi[0].ni[737].x" -1737.142822265625;
	setAttr ".tgi[0].ni[737].y" 9768.5712890625;
	setAttr ".tgi[0].ni[737].nvs" 18304;
	setAttr ".tgi[0].ni[738].x" -1737.142822265625;
	setAttr ".tgi[0].ni[738].y" 9277.142578125;
	setAttr ".tgi[0].ni[738].nvs" 18304;
	setAttr ".tgi[0].ni[739].x" 2621.428466796875;
	setAttr ".tgi[0].ni[739].y" -17955.71484375;
	setAttr ".tgi[0].ni[739].nvs" 18304;
	setAttr ".tgi[0].ni[740].x" 2601.428466796875;
	setAttr ".tgi[0].ni[740].y" -16831.427734375;
	setAttr ".tgi[0].ni[740].nvs" 18304;
	setAttr ".tgi[0].ni[741].x" -1737.142822265625;
	setAttr ".tgi[0].ni[741].y" 9645.7138671875;
	setAttr ".tgi[0].ni[741].nvs" 18304;
	setAttr ".tgi[0].ni[742].x" -1737.142822265625;
	setAttr ".tgi[0].ni[742].y" 9522.857421875;
	setAttr ".tgi[0].ni[742].nvs" 18304;
	setAttr ".tgi[0].ni[743].x" -1737.142822265625;
	setAttr ".tgi[0].ni[743].y" 9154.2861328125;
	setAttr ".tgi[0].ni[743].nvs" 18304;
	setAttr ".tgi[0].ni[744].x" -1430;
	setAttr ".tgi[0].ni[744].y" 8772.857421875;
	setAttr ".tgi[0].ni[744].nvs" 18304;
	setAttr ".tgi[0].ni[745].x" 2314.28564453125;
	setAttr ".tgi[0].ni[745].y" -16507.142578125;
	setAttr ".tgi[0].ni[745].nvs" 18304;
	setAttr ".tgi[0].ni[746].x" 2621.428466796875;
	setAttr ".tgi[0].ni[746].y" -16507.142578125;
	setAttr ".tgi[0].ni[746].nvs" 18304;
	setAttr ".tgi[0].ni[747].x" 2621.428466796875;
	setAttr ".tgi[0].ni[747].y" -17804.28515625;
	setAttr ".tgi[0].ni[747].nvs" 18304;
	setAttr ".tgi[0].ni[748].x" -2351.428466796875;
	setAttr ".tgi[0].ni[748].y" 10000;
	setAttr ".tgi[0].ni[748].nvs" 18304;
	setAttr ".tgi[0].ni[749].x" -2351.428466796875;
	setAttr ".tgi[0].ni[749].y" 9508.5712890625;
	setAttr ".tgi[0].ni[749].nvs" 18304;
	setAttr ".tgi[0].ni[750].x" 2621.428466796875;
	setAttr ".tgi[0].ni[750].y" -18107.142578125;
	setAttr ".tgi[0].ni[750].nvs" 18304;
	setAttr ".tgi[0].ni[751].x" 2621.428466796875;
	setAttr ".tgi[0].ni[751].y" -17652.857421875;
	setAttr ".tgi[0].ni[751].nvs" 18304;
	setAttr ".tgi[0].ni[752].x" 2621.428466796875;
	setAttr ".tgi[0].ni[752].y" -17501.427734375;
	setAttr ".tgi[0].ni[752].nvs" 18304;
	setAttr ".tgi[0].ni[753].x" -2351.428466796875;
	setAttr ".tgi[0].ni[753].y" 10122.857421875;
	setAttr ".tgi[0].ni[753].nvs" 18304;
	setAttr ".tgi[0].ni[754].x" -2351.428466796875;
	setAttr ".tgi[0].ni[754].y" 9754.2861328125;
	setAttr ".tgi[0].ni[754].nvs" 18304;
	setAttr ".tgi[0].ni[755].x" -2351.428466796875;
	setAttr ".tgi[0].ni[755].y" 9631.4287109375;
	setAttr ".tgi[0].ni[755].nvs" 18304;
	setAttr ".tgi[0].ni[756].x" -2044.2857666015625;
	setAttr ".tgi[0].ni[756].y" 10230;
	setAttr ".tgi[0].ni[756].nvs" 18304;
	setAttr ".tgi[0].ni[757].x" -2044.2857666015625;
	setAttr ".tgi[0].ni[757].y" 10107.142578125;
	setAttr ".tgi[0].ni[757].nvs" 18304;
	setAttr ".tgi[0].ni[758].x" -2044.2857666015625;
	setAttr ".tgi[0].ni[758].y" 9984.2861328125;
	setAttr ".tgi[0].ni[758].nvs" 18304;
	setAttr ".tgi[0].ni[759].x" -1737.142822265625;
	setAttr ".tgi[0].ni[759].y" 9400;
	setAttr ".tgi[0].ni[759].nvs" 18304;
	setAttr ".tgi[0].ni[760].x" 105.71428680419922;
	setAttr ".tgi[0].ni[760].y" 11230;
	setAttr ".tgi[0].ni[760].nvs" 18304;
	setAttr ".tgi[0].ni[761].x" -1430;
	setAttr ".tgi[0].ni[761].y" 8650;
	setAttr ".tgi[0].ni[761].nvs" 18304;
	setAttr ".tgi[0].ni[762].x" -1430;
	setAttr ".tgi[0].ni[762].y" 8527.142578125;
	setAttr ".tgi[0].ni[762].nvs" 18304;
	setAttr ".tgi[0].ni[763].x" -1430;
	setAttr ".tgi[0].ni[763].y" 8281.4287109375;
	setAttr ".tgi[0].ni[763].nvs" 18304;
	setAttr ".tgi[0].ni[764].x" -1122.857177734375;
	setAttr ".tgi[0].ni[764].y" 7051.4287109375;
	setAttr ".tgi[0].ni[764].nvs" 18304;
	setAttr ".tgi[0].ni[765].x" -201.42857360839844;
	setAttr ".tgi[0].ni[765].y" 12607.142578125;
	setAttr ".tgi[0].ni[765].nvs" 18304;
	setAttr ".tgi[0].ni[766].x" -815.71429443359375;
	setAttr ".tgi[0].ni[766].y" 12838.5712890625;
	setAttr ".tgi[0].ni[766].nvs" 18304;
	setAttr ".tgi[0].ni[767].x" -201.42857360839844;
	setAttr ".tgi[0].ni[767].y" 12361.4287109375;
	setAttr ".tgi[0].ni[767].nvs" 18304;
	setAttr ".tgi[0].ni[768].x" 105.71428680419922;
	setAttr ".tgi[0].ni[768].y" 11352.857421875;
	setAttr ".tgi[0].ni[768].nvs" 18304;
	setAttr ".tgi[0].ni[769].x" 412.85714721679688;
	setAttr ".tgi[0].ni[769].y" 3954.28564453125;
	setAttr ".tgi[0].ni[769].nvs" 18304;
	setAttr ".tgi[0].ni[770].x" -1430;
	setAttr ".tgi[0].ni[770].y" 8404.2861328125;
	setAttr ".tgi[0].ni[770].nvs" 18304;
	setAttr ".tgi[0].ni[771].x" -1430;
	setAttr ".tgi[0].ni[771].y" 8158.5712890625;
	setAttr ".tgi[0].ni[771].nvs" 18304;
	setAttr ".tgi[0].ni[772].x" -815.71429443359375;
	setAttr ".tgi[0].ni[772].y" 12715.7138671875;
	setAttr ".tgi[0].ni[772].nvs" 18304;
	setAttr ".tgi[0].ni[773].x" -508.57144165039063;
	setAttr ".tgi[0].ni[773].y" 14484.2861328125;
	setAttr ".tgi[0].ni[773].nvs" 18304;
	setAttr ".tgi[0].ni[774].x" -1122.857177734375;
	setAttr ".tgi[0].ni[774].y" 6805.71435546875;
	setAttr ".tgi[0].ni[774].nvs" 18304;
	setAttr ".tgi[0].ni[775].x" -1122.857177734375;
	setAttr ".tgi[0].ni[775].y" 6682.85693359375;
	setAttr ".tgi[0].ni[775].nvs" 18304;
	setAttr ".tgi[0].ni[776].x" -508.57144165039063;
	setAttr ".tgi[0].ni[776].y" 14361.4287109375;
	setAttr ".tgi[0].ni[776].nvs" 18304;
	setAttr ".tgi[0].ni[777].x" -1122.857177734375;
	setAttr ".tgi[0].ni[777].y" 6560;
	setAttr ".tgi[0].ni[777].nvs" 18304;
	setAttr ".tgi[0].ni[778].x" -201.42857360839844;
	setAttr ".tgi[0].ni[778].y" 12852.857421875;
	setAttr ".tgi[0].ni[778].nvs" 18304;
	setAttr ".tgi[0].ni[779].x" -508.57144165039063;
	setAttr ".tgi[0].ni[779].y" 13870;
	setAttr ".tgi[0].ni[779].nvs" 18304;
	setAttr ".tgi[0].ni[780].x" -815.71429443359375;
	setAttr ".tgi[0].ni[780].y" 12470;
	setAttr ".tgi[0].ni[780].nvs" 18304;
	setAttr ".tgi[0].ni[781].x" -508.57144165039063;
	setAttr ".tgi[0].ni[781].y" 14115.7138671875;
	setAttr ".tgi[0].ni[781].nvs" 18304;
	setAttr ".tgi[0].ni[782].x" -201.42857360839844;
	setAttr ".tgi[0].ni[782].y" 12730;
	setAttr ".tgi[0].ni[782].nvs" 18304;
	setAttr ".tgi[0].ni[783].x" -1122.857177734375;
	setAttr ".tgi[0].ni[783].y" 6928.5712890625;
	setAttr ".tgi[0].ni[783].nvs" 18304;
	setAttr ".tgi[0].ni[784].x" -815.71429443359375;
	setAttr ".tgi[0].ni[784].y" 12961.4287109375;
	setAttr ".tgi[0].ni[784].nvs" 18304;
	setAttr ".tgi[0].ni[785].x" -508.57144165039063;
	setAttr ".tgi[0].ni[785].y" 14238.5712890625;
	setAttr ".tgi[0].ni[785].nvs" 18304;
	setAttr ".tgi[0].ni[786].x" -815.71429443359375;
	setAttr ".tgi[0].ni[786].y" 13084.2861328125;
	setAttr ".tgi[0].ni[786].nvs" 18304;
	setAttr ".tgi[0].ni[787].x" -815.71429443359375;
	setAttr ".tgi[0].ni[787].y" 12592.857421875;
	setAttr ".tgi[0].ni[787].nvs" 18304;
	setAttr ".tgi[0].ni[788].x" -1122.857177734375;
	setAttr ".tgi[0].ni[788].y" 6437.14306640625;
	setAttr ".tgi[0].ni[788].nvs" 18304;
	setAttr ".tgi[0].ni[789].x" -508.57144165039063;
	setAttr ".tgi[0].ni[789].y" 13992.857421875;
	setAttr ".tgi[0].ni[789].nvs" 18304;
	setAttr ".tgi[0].ni[790].x" -201.42857360839844;
	setAttr ".tgi[0].ni[790].y" 12484.2861328125;
	setAttr ".tgi[0].ni[790].nvs" 18304;
	setAttr ".tgi[0].ni[791].x" -201.42857360839844;
	setAttr ".tgi[0].ni[791].y" 12238.5712890625;
	setAttr ".tgi[0].ni[791].nvs" 18304;
	setAttr ".tgi[0].ni[792].x" 105.71428680419922;
	setAttr ".tgi[0].ni[792].y" 11107.142578125;
	setAttr ".tgi[0].ni[792].nvs" 18304;
	setAttr ".tgi[0].ni[793].x" 105.71428680419922;
	setAttr ".tgi[0].ni[793].y" 10984.2861328125;
	setAttr ".tgi[0].ni[793].nvs" 18304;
	setAttr ".tgi[0].ni[794].x" 105.71428680419922;
	setAttr ".tgi[0].ni[794].y" 10861.4287109375;
	setAttr ".tgi[0].ni[794].nvs" 18304;
	setAttr ".tgi[0].ni[795].x" 105.71428680419922;
	setAttr ".tgi[0].ni[795].y" 10738.5712890625;
	setAttr ".tgi[0].ni[795].nvs" 18304;
	setAttr ".tgi[0].ni[796].x" 2670;
	setAttr ".tgi[0].ni[796].y" 17061.427734375;
	setAttr ".tgi[0].ni[796].nvs" 18304;
	setAttr ".tgi[0].ni[797].x" 2670;
	setAttr ".tgi[0].ni[797].y" 16938.572265625;
	setAttr ".tgi[0].ni[797].nvs" 18304;
	setAttr ".tgi[0].ni[798].x" 2670;
	setAttr ".tgi[0].ni[798].y" 16815.71484375;
	setAttr ".tgi[0].ni[798].nvs" 18304;
	setAttr ".tgi[0].ni[799].x" 2670;
	setAttr ".tgi[0].ni[799].y" 16692.857421875;
	setAttr ".tgi[0].ni[799].nvs" 18304;
	setAttr ".tgi[0].ni[800].x" 2670;
	setAttr ".tgi[0].ni[800].y" 16570;
	setAttr ".tgi[0].ni[800].nvs" 18304;
	setAttr ".tgi[0].ni[801].x" 2670;
	setAttr ".tgi[0].ni[801].y" 16447.142578125;
	setAttr ".tgi[0].ni[801].nvs" 18304;
	setAttr ".tgi[0].ni[802].x" 412.85714721679688;
	setAttr ".tgi[0].ni[802].y" 4322.85693359375;
	setAttr ".tgi[0].ni[802].nvs" 18304;
	setAttr ".tgi[0].ni[803].x" 412.85714721679688;
	setAttr ".tgi[0].ni[803].y" 4200;
	setAttr ".tgi[0].ni[803].nvs" 18304;
	setAttr ".tgi[0].ni[804].x" 412.85714721679688;
	setAttr ".tgi[0].ni[804].y" 4077.142822265625;
	setAttr ".tgi[0].ni[804].nvs" 18304;
	setAttr ".tgi[0].ni[805].x" 412.85714721679688;
	setAttr ".tgi[0].ni[805].y" 3831.428466796875;
	setAttr ".tgi[0].ni[805].nvs" 18304;
	setAttr ".tgi[0].ni[806].x" 2670;
	setAttr ".tgi[0].ni[806].y" 15718.5712890625;
	setAttr ".tgi[0].ni[806].nvs" 18304;
	setAttr ".tgi[0].ni[807].x" 754.28570556640625;
	setAttr ".tgi[0].ni[807].y" 4332.85693359375;
	setAttr ".tgi[0].ni[807].nvs" 18304;
	setAttr ".tgi[0].ni[808].x" 1070;
	setAttr ".tgi[0].ni[808].y" -5247.14306640625;
	setAttr ".tgi[0].ni[808].nvs" 18304;
	setAttr ".tgi[0].ni[809].x" 754.28570556640625;
	setAttr ".tgi[0].ni[809].y" 3064.28564453125;
	setAttr ".tgi[0].ni[809].nvs" 18304;
	setAttr ".tgi[0].ni[810].x" 412.85714721679688;
	setAttr ".tgi[0].ni[810].y" 1574.2857666015625;
	setAttr ".tgi[0].ni[810].nvs" 18304;
	setAttr ".tgi[0].ni[811].x" 754.28570556640625;
	setAttr ".tgi[0].ni[811].y" 4210;
	setAttr ".tgi[0].ni[811].nvs" 18304;
	setAttr ".tgi[0].ni[812].x" 754.28570556640625;
	setAttr ".tgi[0].ni[812].y" 4087.142822265625;
	setAttr ".tgi[0].ni[812].nvs" 18304;
	setAttr ".tgi[0].ni[813].x" 2670;
	setAttr ".tgi[0].ni[813].y" 15595.7138671875;
	setAttr ".tgi[0].ni[813].nvs" 18304;
	setAttr ".tgi[0].ni[814].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[814].y" 5342.85693359375;
	setAttr ".tgi[0].ni[814].nvs" 18304;
	setAttr ".tgi[0].ni[815].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[815].y" 5834.28564453125;
	setAttr ".tgi[0].ni[815].nvs" 18304;
	setAttr ".tgi[0].ni[816].x" 1070;
	setAttr ".tgi[0].ni[816].y" -5615.71435546875;
	setAttr ".tgi[0].ni[816].nvs" 18304;
	setAttr ".tgi[0].ni[817].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[817].y" 10392.857421875;
	setAttr ".tgi[0].ni[817].nvs" 18304;
	setAttr ".tgi[0].ni[818].x" 2670;
	setAttr ".tgi[0].ni[818].y" 15964.2861328125;
	setAttr ".tgi[0].ni[818].nvs" 18304;
	setAttr ".tgi[0].ni[819].x" 412.85714721679688;
	setAttr ".tgi[0].ni[819].y" 1451.4285888671875;
	setAttr ".tgi[0].ni[819].nvs" 18304;
	setAttr ".tgi[0].ni[820].x" 1070;
	setAttr ".tgi[0].ni[820].y" -2342.857177734375;
	setAttr ".tgi[0].ni[820].nvs" 18304;
	setAttr ".tgi[0].ni[821].x" 2670;
	setAttr ".tgi[0].ni[821].y" 14138.5712890625;
	setAttr ".tgi[0].ni[821].nvs" 18304;
	setAttr ".tgi[0].ni[822].x" 754.28570556640625;
	setAttr ".tgi[0].ni[822].y" 4701.4287109375;
	setAttr ".tgi[0].ni[822].nvs" 18304;
	setAttr ".tgi[0].ni[823].x" 2670;
	setAttr ".tgi[0].ni[823].y" 15841.4287109375;
	setAttr ".tgi[0].ni[823].nvs" 18304;
	setAttr ".tgi[0].ni[824].x" 412.85714721679688;
	setAttr ".tgi[0].ni[824].y" 6022.85693359375;
	setAttr ".tgi[0].ni[824].nvs" 18304;
	setAttr ".tgi[0].ni[825].x" 2670;
	setAttr ".tgi[0].ni[825].y" 13892.857421875;
	setAttr ".tgi[0].ni[825].nvs" 18304;
	setAttr ".tgi[0].ni[826].x" 754.28570556640625;
	setAttr ".tgi[0].ni[826].y" 7467.14306640625;
	setAttr ".tgi[0].ni[826].nvs" 18304;
	setAttr ".tgi[0].ni[827].x" 754.28570556640625;
	setAttr ".tgi[0].ni[827].y" 7344.28564453125;
	setAttr ".tgi[0].ni[827].nvs" 18304;
	setAttr ".tgi[0].ni[828].x" 754.28570556640625;
	setAttr ".tgi[0].ni[828].y" 7221.4287109375;
	setAttr ".tgi[0].ni[828].nvs" 18304;
	setAttr ".tgi[0].ni[829].x" 754.28570556640625;
	setAttr ".tgi[0].ni[829].y" 3310;
	setAttr ".tgi[0].ni[829].nvs" 18304;
	setAttr ".tgi[0].ni[830].x" 1070;
	setAttr ".tgi[0].ni[830].y" -2465.71435546875;
	setAttr ".tgi[0].ni[830].nvs" 18304;
	setAttr ".tgi[0].ni[831].x" 412.85714721679688;
	setAttr ".tgi[0].ni[831].y" 6145.71435546875;
	setAttr ".tgi[0].ni[831].nvs" 18304;
	setAttr ".tgi[0].ni[832].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[832].y" 10761.4287109375;
	setAttr ".tgi[0].ni[832].nvs" 18304;
	setAttr ".tgi[0].ni[833].x" 412.85714721679688;
	setAttr ".tgi[0].ni[833].y" 1697.142822265625;
	setAttr ".tgi[0].ni[833].nvs" 18304;
	setAttr ".tgi[0].ni[834].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[834].y" 10515.7138671875;
	setAttr ".tgi[0].ni[834].nvs" 18304;
	setAttr ".tgi[0].ni[835].x" 1070;
	setAttr ".tgi[0].ni[835].y" -2711.428466796875;
	setAttr ".tgi[0].ni[835].nvs" 18304;
	setAttr ".tgi[0].ni[836].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[836].y" 5711.4287109375;
	setAttr ".tgi[0].ni[836].nvs" 18304;
	setAttr ".tgi[0].ni[837].x" 412.85714721679688;
	setAttr ".tgi[0].ni[837].y" 1205.7142333984375;
	setAttr ".tgi[0].ni[837].nvs" 18304;
	setAttr ".tgi[0].ni[838].x" 412.85714721679688;
	setAttr ".tgi[0].ni[838].y" 3708.571533203125;
	setAttr ".tgi[0].ni[838].nvs" 18304;
	setAttr ".tgi[0].ni[839].x" 1070;
	setAttr ".tgi[0].ni[839].y" -5492.85693359375;
	setAttr ".tgi[0].ni[839].nvs" 18304;
	setAttr ".tgi[0].ni[840].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[840].y" 10270;
	setAttr ".tgi[0].ni[840].nvs" 18304;
	setAttr ".tgi[0].ni[841].x" 2670;
	setAttr ".tgi[0].ni[841].y" 14384.2861328125;
	setAttr ".tgi[0].ni[841].nvs" 18304;
	setAttr ".tgi[0].ni[842].x" 754.28570556640625;
	setAttr ".tgi[0].ni[842].y" 3432.857177734375;
	setAttr ".tgi[0].ni[842].nvs" 18304;
	setAttr ".tgi[0].ni[843].x" 1070;
	setAttr ".tgi[0].ni[843].y" -5370;
	setAttr ".tgi[0].ni[843].nvs" 18304;
	setAttr ".tgi[0].ni[844].x" 754.28570556640625;
	setAttr ".tgi[0].ni[844].y" 3555.71435546875;
	setAttr ".tgi[0].ni[844].nvs" 18304;
	setAttr ".tgi[0].ni[845].x" 1070;
	setAttr ".tgi[0].ni[845].y" -2097.142822265625;
	setAttr ".tgi[0].ni[845].nvs" 18304;
	setAttr ".tgi[0].ni[846].x" 754.28570556640625;
	setAttr ".tgi[0].ni[846].y" 3187.142822265625;
	setAttr ".tgi[0].ni[846].nvs" 18304;
	setAttr ".tgi[0].ni[847].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[847].y" 5588.5712890625;
	setAttr ".tgi[0].ni[847].nvs" 18304;
	setAttr ".tgi[0].ni[848].x" 1070;
	setAttr ".tgi[0].ni[848].y" -5001.4287109375;
	setAttr ".tgi[0].ni[848].nvs" 18304;
	setAttr ".tgi[0].ni[849].x" 1070;
	setAttr ".tgi[0].ni[849].y" -5124.28564453125;
	setAttr ".tgi[0].ni[849].nvs" 18304;
	setAttr ".tgi[0].ni[850].x" 754.28570556640625;
	setAttr ".tgi[0].ni[850].y" 4578.5712890625;
	setAttr ".tgi[0].ni[850].nvs" 18304;
	setAttr ".tgi[0].ni[851].x" 754.28570556640625;
	setAttr ".tgi[0].ni[851].y" 4455.71435546875;
	setAttr ".tgi[0].ni[851].nvs" 18304;
	setAttr ".tgi[0].ni[852].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[852].y" 10638.5712890625;
	setAttr ".tgi[0].ni[852].nvs" 18304;
	setAttr ".tgi[0].ni[853].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[853].y" 10147.142578125;
	setAttr ".tgi[0].ni[853].nvs" 18304;
	setAttr ".tgi[0].ni[854].x" 2670;
	setAttr ".tgi[0].ni[854].y" 16210;
	setAttr ".tgi[0].ni[854].nvs" 18304;
	setAttr ".tgi[0].ni[855].x" 2670;
	setAttr ".tgi[0].ni[855].y" 16087.142578125;
	setAttr ".tgi[0].ni[855].nvs" 18304;
	setAttr ".tgi[0].ni[856].x" 412.85714721679688;
	setAttr ".tgi[0].ni[856].y" 1820;
	setAttr ".tgi[0].ni[856].nvs" 18304;
	setAttr ".tgi[0].ni[857].x" 412.85714721679688;
	setAttr ".tgi[0].ni[857].y" 1328.5714111328125;
	setAttr ".tgi[0].ni[857].nvs" 18304;
	setAttr ".tgi[0].ni[858].x" 754.28570556640625;
	setAttr ".tgi[0].ni[858].y" 3678.571533203125;
	setAttr ".tgi[0].ni[858].nvs" 18304;
	setAttr ".tgi[0].ni[859].x" 1070;
	setAttr ".tgi[0].ni[859].y" -2220;
	setAttr ".tgi[0].ni[859].nvs" 18304;
	setAttr ".tgi[0].ni[860].x" 1070;
	setAttr ".tgi[0].ni[860].y" -2588.571533203125;
	setAttr ".tgi[0].ni[860].nvs" 18304;
	setAttr ".tgi[0].ni[861].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[861].y" 5465.71435546875;
	setAttr ".tgi[0].ni[861].nvs" 18304;
	setAttr ".tgi[0].ni[862].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[862].y" 5220;
	setAttr ".tgi[0].ni[862].nvs" 18304;
	setAttr ".tgi[0].ni[863].x" 2670;
	setAttr ".tgi[0].ni[863].y" 14507.142578125;
	setAttr ".tgi[0].ni[863].nvs" 18304;
	setAttr ".tgi[0].ni[864].x" 2670;
	setAttr ".tgi[0].ni[864].y" 14261.4287109375;
	setAttr ".tgi[0].ni[864].nvs" 18304;
	setAttr ".tgi[0].ni[865].x" 2670;
	setAttr ".tgi[0].ni[865].y" 14015.7138671875;
	setAttr ".tgi[0].ni[865].nvs" 18304;
	setAttr ".tgi[0].ni[866].x" 412.85714721679688;
	setAttr ".tgi[0].ni[866].y" 6637.14306640625;
	setAttr ".tgi[0].ni[866].nvs" 18304;
	setAttr ".tgi[0].ni[867].x" 412.85714721679688;
	setAttr ".tgi[0].ni[867].y" 6514.28564453125;
	setAttr ".tgi[0].ni[867].nvs" 18304;
	setAttr ".tgi[0].ni[868].x" 412.85714721679688;
	setAttr ".tgi[0].ni[868].y" 6391.4287109375;
	setAttr ".tgi[0].ni[868].nvs" 18304;
	setAttr ".tgi[0].ni[869].x" 412.85714721679688;
	setAttr ".tgi[0].ni[869].y" 6268.5712890625;
	setAttr ".tgi[0].ni[869].nvs" 18304;
	setAttr ".tgi[0].ni[870].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[870].y" 7381.4287109375;
	setAttr ".tgi[0].ni[870].nvs" 18304;
	setAttr ".tgi[0].ni[871].x" 412.85714721679688;
	setAttr ".tgi[0].ni[871].y" 2662.857177734375;
	setAttr ".tgi[0].ni[871].nvs" 18304;
	setAttr ".tgi[0].ni[872].x" 2670;
	setAttr ".tgi[0].ni[872].y" 15235.7138671875;
	setAttr ".tgi[0].ni[872].nvs" 18304;
	setAttr ".tgi[0].ni[873].x" 2670;
	setAttr ".tgi[0].ni[873].y" 17912.857421875;
	setAttr ".tgi[0].ni[873].nvs" 18304;
	setAttr ".tgi[0].ni[874].x" 2670;
	setAttr ".tgi[0].ni[874].y" 17667.142578125;
	setAttr ".tgi[0].ni[874].nvs" 18304;
	setAttr ".tgi[0].ni[875].x" 754.28570556640625;
	setAttr ".tgi[0].ni[875].y" 7098.5712890625;
	setAttr ".tgi[0].ni[875].nvs" 18304;
	setAttr ".tgi[0].ni[876].x" 1070;
	setAttr ".tgi[0].ni[876].y" -7590;
	setAttr ".tgi[0].ni[876].nvs" 18304;
	setAttr ".tgi[0].ni[877].x" 2670;
	setAttr ".tgi[0].ni[877].y" 17790;
	setAttr ".tgi[0].ni[877].nvs" 18304;
	setAttr ".tgi[0].ni[878].x" 1070;
	setAttr ".tgi[0].ni[878].y" -7712.85693359375;
	setAttr ".tgi[0].ni[878].nvs" 18304;
	setAttr ".tgi[0].ni[879].x" 2670;
	setAttr ".tgi[0].ni[879].y" 15358.5712890625;
	setAttr ".tgi[0].ni[879].nvs" 18304;
	setAttr ".tgi[0].ni[880].x" 754.28570556640625;
	setAttr ".tgi[0].ni[880].y" 1504.2857666015625;
	setAttr ".tgi[0].ni[880].nvs" 18304;
	setAttr ".tgi[0].ni[881].x" 1070;
	setAttr ".tgi[0].ni[881].y" -3185.71435546875;
	setAttr ".tgi[0].ni[881].nvs" 18304;
	setAttr ".tgi[0].ni[882].x" 754.28570556640625;
	setAttr ".tgi[0].ni[882].y" 6975.71435546875;
	setAttr ".tgi[0].ni[882].nvs" 18304;
	setAttr ".tgi[0].ni[883].x" 1070;
	setAttr ".tgi[0].ni[883].y" -3554.28564453125;
	setAttr ".tgi[0].ni[883].nvs" 18304;
	setAttr ".tgi[0].ni[884].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[884].y" 8772.857421875;
	setAttr ".tgi[0].ni[884].nvs" 18304;
	setAttr ".tgi[0].ni[885].x" 1070;
	setAttr ".tgi[0].ni[885].y" -364.28570556640625;
	setAttr ".tgi[0].ni[885].nvs" 18304;
	setAttr ".tgi[0].ni[886].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[886].y" 7504.28564453125;
	setAttr ".tgi[0].ni[886].nvs" 18304;
	setAttr ".tgi[0].ni[887].x" 2670;
	setAttr ".tgi[0].ni[887].y" 17421.427734375;
	setAttr ".tgi[0].ni[887].nvs" 18304;
	setAttr ".tgi[0].ni[888].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[888].y" 7627.14306640625;
	setAttr ".tgi[0].ni[888].nvs" 18304;
	setAttr ".tgi[0].ni[889].x" 754.28570556640625;
	setAttr ".tgi[0].ni[889].y" 1381.4285888671875;
	setAttr ".tgi[0].ni[889].nvs" 18304;
	setAttr ".tgi[0].ni[890].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[890].y" 9067.142578125;
	setAttr ".tgi[0].ni[890].nvs" 18304;
	setAttr ".tgi[0].ni[891].x" 1070;
	setAttr ".tgi[0].ni[891].y" -487.14285278320313;
	setAttr ".tgi[0].ni[891].nvs" 18304;
	setAttr ".tgi[0].ni[892].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[892].y" 9738.5712890625;
	setAttr ".tgi[0].ni[892].nvs" 18304;
	setAttr ".tgi[0].ni[893].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[893].y" 9312.857421875;
	setAttr ".tgi[0].ni[893].nvs" 18304;
	setAttr ".tgi[0].ni[894].x" 1070;
	setAttr ".tgi[0].ni[894].y" -732.85711669921875;
	setAttr ".tgi[0].ni[894].nvs" 18304;
	setAttr ".tgi[0].ni[895].x" 412.85714721679688;
	setAttr ".tgi[0].ni[895].y" 2540;
	setAttr ".tgi[0].ni[895].nvs" 18304;
	setAttr ".tgi[0].ni[896].x" 754.28570556640625;
	setAttr ".tgi[0].ni[896].y" 6852.85693359375;
	setAttr ".tgi[0].ni[896].nvs" 18304;
	setAttr ".tgi[0].ni[897].x" 412.85714721679688;
	setAttr ".tgi[0].ni[897].y" 2294.28564453125;
	setAttr ".tgi[0].ni[897].nvs" 18304;
	setAttr ".tgi[0].ni[898].x" 754.28570556640625;
	setAttr ".tgi[0].ni[898].y" 5781.4287109375;
	setAttr ".tgi[0].ni[898].nvs" 18304;
	setAttr ".tgi[0].ni[899].x" 754.28570556640625;
	setAttr ".tgi[0].ni[899].y" 5658.5712890625;
	setAttr ".tgi[0].ni[899].nvs" 18304;
	setAttr ".tgi[0].ni[900].x" 754.28570556640625;
	setAttr ".tgi[0].ni[900].y" 5535.71435546875;
	setAttr ".tgi[0].ni[900].nvs" 18304;
	setAttr ".tgi[0].ni[901].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[901].y" 9435.7138671875;
	setAttr ".tgi[0].ni[901].nvs" 18304;
	setAttr ".tgi[0].ni[902].x" 2670;
	setAttr ".tgi[0].ni[902].y" 17298.572265625;
	setAttr ".tgi[0].ni[902].nvs" 18304;
	setAttr ".tgi[0].ni[903].x" 1070;
	setAttr ".tgi[0].ni[903].y" -855.71429443359375;
	setAttr ".tgi[0].ni[903].nvs" 18304;
	setAttr ".tgi[0].ni[904].x" 1070;
	setAttr ".tgi[0].ni[904].y" -610;
	setAttr ".tgi[0].ni[904].nvs" 18304;
	setAttr ".tgi[0].ni[905].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[905].y" 9190;
	setAttr ".tgi[0].ni[905].nvs" 18304;
	setAttr ".tgi[0].ni[906].x" 1070;
	setAttr ".tgi[0].ni[906].y" -978.5714111328125;
	setAttr ".tgi[0].ni[906].nvs" 18304;
	setAttr ".tgi[0].ni[907].x" 412.85714721679688;
	setAttr ".tgi[0].ni[907].y" 2417.142822265625;
	setAttr ".tgi[0].ni[907].nvs" 18304;
	setAttr ".tgi[0].ni[908].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[908].y" 9558.5712890625;
	setAttr ".tgi[0].ni[908].nvs" 18304;
	setAttr ".tgi[0].ni[909].x" 412.85714721679688;
	setAttr ".tgi[0].ni[909].y" 2171.428466796875;
	setAttr ".tgi[0].ni[909].nvs" 18304;
	setAttr ".tgi[0].ni[910].x" 754.28570556640625;
	setAttr ".tgi[0].ni[910].y" 5290;
	setAttr ".tgi[0].ni[910].nvs" 18304;
	setAttr ".tgi[0].ni[911].x" 754.28570556640625;
	setAttr ".tgi[0].ni[911].y" 5167.14306640625;
	setAttr ".tgi[0].ni[911].nvs" 18304;
	setAttr ".tgi[0].ni[912].x" 754.28570556640625;
	setAttr ".tgi[0].ni[912].y" 5412.85693359375;
	setAttr ".tgi[0].ni[912].nvs" 18304;
	setAttr ".tgi[0].ni[913].x" 1070;
	setAttr ".tgi[0].ni[913].y" -7098.5712890625;
	setAttr ".tgi[0].ni[913].nvs" 18304;
	setAttr ".tgi[0].ni[914].x" 2670;
	setAttr ".tgi[0].ni[914].y" 17544.28515625;
	setAttr ".tgi[0].ni[914].nvs" 18304;
	setAttr ".tgi[0].ni[915].x" 1070;
	setAttr ".tgi[0].ni[915].y" -7221.4287109375;
	setAttr ".tgi[0].ni[915].nvs" 18304;
	setAttr ".tgi[0].ni[916].x" 1070;
	setAttr ".tgi[0].ni[916].y" -7344.28564453125;
	setAttr ".tgi[0].ni[916].nvs" 18304;
	setAttr ".tgi[0].ni[917].x" 1070;
	setAttr ".tgi[0].ni[917].y" -7467.14306640625;
	setAttr ".tgi[0].ni[917].nvs" 18304;
	setAttr ".tgi[0].ni[918].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[918].y" 7750;
	setAttr ".tgi[0].ni[918].nvs" 18304;
	setAttr ".tgi[0].ni[919].x" 412.85714721679688;
	setAttr ".tgi[0].ni[919].y" 2785.71435546875;
	setAttr ".tgi[0].ni[919].nvs" 18304;
	setAttr ".tgi[0].ni[920].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[920].y" 7258.5712890625;
	setAttr ".tgi[0].ni[920].nvs" 18304;
	setAttr ".tgi[0].ni[921].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[921].y" 7135.71435546875;
	setAttr ".tgi[0].ni[921].nvs" 18304;
	setAttr ".tgi[0].ni[922].x" 2670;
	setAttr ".tgi[0].ni[922].y" 15112.857421875;
	setAttr ".tgi[0].ni[922].nvs" 18304;
	setAttr ".tgi[0].ni[923].x" 2670;
	setAttr ".tgi[0].ni[923].y" 14990;
	setAttr ".tgi[0].ni[923].nvs" 18304;
	setAttr ".tgi[0].ni[924].x" 2670;
	setAttr ".tgi[0].ni[924].y" 14744.2861328125;
	setAttr ".tgi[0].ni[924].nvs" 18304;
	setAttr ".tgi[0].ni[925].x" 754.28570556640625;
	setAttr ".tgi[0].ni[925].y" 1995.7142333984375;
	setAttr ".tgi[0].ni[925].nvs" 18304;
	setAttr ".tgi[0].ni[926].x" 754.28570556640625;
	setAttr ".tgi[0].ni[926].y" 1872.857177734375;
	setAttr ".tgi[0].ni[926].nvs" 18304;
	setAttr ".tgi[0].ni[927].x" 754.28570556640625;
	setAttr ".tgi[0].ni[927].y" 1750;
	setAttr ".tgi[0].ni[927].nvs" 18304;
	setAttr ".tgi[0].ni[928].x" 2670;
	setAttr ".tgi[0].ni[928].y" 14867.142578125;
	setAttr ".tgi[0].ni[928].nvs" 18304;
	setAttr ".tgi[0].ni[929].x" 754.28570556640625;
	setAttr ".tgi[0].ni[929].y" 1627.142822265625;
	setAttr ".tgi[0].ni[929].nvs" 18304;
	setAttr ".tgi[0].ni[930].x" 1070;
	setAttr ".tgi[0].ni[930].y" -3062.857177734375;
	setAttr ".tgi[0].ni[930].nvs" 18304;
	setAttr ".tgi[0].ni[931].x" 1070;
	setAttr ".tgi[0].ni[931].y" -3308.571533203125;
	setAttr ".tgi[0].ni[931].nvs" 18304;
	setAttr ".tgi[0].ni[932].x" 1070;
	setAttr ".tgi[0].ni[932].y" -3431.428466796875;
	setAttr ".tgi[0].ni[932].nvs" 18304;
	setAttr ".tgi[0].ni[933].x" 1070;
	setAttr ".tgi[0].ni[933].y" -3677.142822265625;
	setAttr ".tgi[0].ni[933].nvs" 18304;
	setAttr ".tgi[0].ni[934].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[934].y" 8347.142578125;
	setAttr ".tgi[0].ni[934].nvs" 18304;
	setAttr ".tgi[0].ni[935].x" 2670;
	setAttr ".tgi[0].ni[935].y" 13164.2861328125;
	setAttr ".tgi[0].ni[935].nvs" 18304;
	setAttr ".tgi[0].ni[936].x" 2670;
	setAttr ".tgi[0].ni[936].y" 12615.7138671875;
	setAttr ".tgi[0].ni[936].nvs" 18304;
	setAttr ".tgi[0].ni[937].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[937].y" 8592.857421875;
	setAttr ".tgi[0].ni[937].nvs" 18304;
	setAttr ".tgi[0].ni[938].x" 2670;
	setAttr ".tgi[0].ni[938].y" 13532.857421875;
	setAttr ".tgi[0].ni[938].nvs" 18304;
	setAttr ".tgi[0].ni[939].x" 2670;
	setAttr ".tgi[0].ni[939].y" 10058.5712890625;
	setAttr ".tgi[0].ni[939].nvs" 18304;
	setAttr ".tgi[0].ni[940].x" 2670;
	setAttr ".tgi[0].ni[940].y" 13041.4287109375;
	setAttr ".tgi[0].ni[940].nvs" 18304;
	setAttr ".tgi[0].ni[941].x" 2670;
	setAttr ".tgi[0].ni[941].y" 13287.142578125;
	setAttr ".tgi[0].ni[941].nvs" 18304;
	setAttr ".tgi[0].ni[942].x" 2670;
	setAttr ".tgi[0].ni[942].y" 10304.2861328125;
	setAttr ".tgi[0].ni[942].nvs" 18304;
	setAttr ".tgi[0].ni[943].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[943].y" 8101.4287109375;
	setAttr ".tgi[0].ni[943].nvs" 18304;
	setAttr ".tgi[0].ni[944].x" 2670;
	setAttr ".tgi[0].ni[944].y" 10181.4287109375;
	setAttr ".tgi[0].ni[944].nvs" 18304;
	setAttr ".tgi[0].ni[945].x" 2670;
	setAttr ".tgi[0].ni[945].y" 9935.7138671875;
	setAttr ".tgi[0].ni[945].nvs" 18304;
	setAttr ".tgi[0].ni[946].x" 2670;
	setAttr ".tgi[0].ni[946].y" 13655.7138671875;
	setAttr ".tgi[0].ni[946].nvs" 18304;
	setAttr ".tgi[0].ni[947].x" 2670;
	setAttr ".tgi[0].ni[947].y" 12370;
	setAttr ".tgi[0].ni[947].nvs" 18304;
	setAttr ".tgi[0].ni[948].x" 2670;
	setAttr ".tgi[0].ni[948].y" 12492.857421875;
	setAttr ".tgi[0].ni[948].nvs" 18304;
	setAttr ".tgi[0].ni[949].x" 2670;
	setAttr ".tgi[0].ni[949].y" 12247.142578125;
	setAttr ".tgi[0].ni[949].nvs" 18304;
	setAttr ".tgi[0].ni[950].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[950].y" 8224.2861328125;
	setAttr ".tgi[0].ni[950].nvs" 18304;
	setAttr ".tgi[0].ni[951].x" 2670;
	setAttr ".tgi[0].ni[951].y" 12738.5712890625;
	setAttr ".tgi[0].ni[951].nvs" 18304;
	setAttr ".tgi[0].ni[952].x" 1385.7142333984375;
	setAttr ".tgi[0].ni[952].y" 8470;
	setAttr ".tgi[0].ni[952].nvs" 18304;
	setAttr ".tgi[0].ni[953].x" 2670;
	setAttr ".tgi[0].ni[953].y" 13410;
	setAttr ".tgi[0].ni[953].nvs" 18304;
	setAttr ".tgi[0].ni[954].x" 2670;
	setAttr ".tgi[0].ni[954].y" 12861.4287109375;
	setAttr ".tgi[0].ni[954].nvs" 18304;
createNode vstExportNode -n "biped_standard_retarget_exportNode";
	rename -uid "A96820F7-43F2-D814-4BD1-4ABC23A53BA9";
	setAttr ".ei[0].exportFile" -type "string" "walke";
	setAttr ".ei[0].t" 2;
	setAttr ".ei[0].fe" 26;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 26;
	setAttr -av ".unw" 26;
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".st";
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
	setAttr -s 7 ".s";
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
	setAttr -s 34 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 5 ".r";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".tx";
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
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "plusMinusAverage6.o3" "RIGRN.phl[3]";
connectAttr "RIGRN.phl[4]" "plusMinusAverage6.i3[1]";
connectAttr "quatToEuler20.ort" "RIGRN.phl[5]";
connectAttr "RIGRN.phl[6]" "quatToEuler20.iro";
connectAttr "RIGRN.phl[7]" "pointMatrixMult3.im";
connectAttr "RIGRN.phl[8]" "multMatrix40.i[1]";
connectAttr "quatToEuler15.ort" "RIGRN.phl[9]";
connectAttr "plusMinusAverage4.o3" "RIGRN.phl[10]";
connectAttr "RIGRN.phl[11]" "multMatrix30.i[1]";
connectAttr "RIGRN.phl[12]" "pointMatrixMult2.im";
connectAttr "RIGRN.phl[13]" "quatToEuler15.iro";
connectAttr "RIGRN.phl[14]" "plusMinusAverage4.i3[1]";
connectAttr "quatToEuler18.ort" "RIGRN.phl[15]";
connectAttr "plusMinusAverage12.o3" "RIGRN.phl[16]";
connectAttr "RIGRN.phl[17]" "multMatrix36.i[1]";
connectAttr "RIGRN.phl[18]" "pointMatrixMult6.im";
connectAttr "RIGRN.phl[19]" "quatToEuler18.iro";
connectAttr "RIGRN.phl[20]" "plusMinusAverage12.i3[1]";
connectAttr "quatToEuler19.ort" "RIGRN.phl[21]";
connectAttr "plusMinusAverage10.o3" "RIGRN.phl[22]";
connectAttr "RIGRN.phl[23]" "multMatrix38.i[1]";
connectAttr "RIGRN.phl[24]" "pointMatrixMult5.im";
connectAttr "RIGRN.phl[25]" "quatToEuler19.iro";
connectAttr "RIGRN.phl[26]" "plusMinusAverage10.i3[1]";
connectAttr "quatToEuler17.ort" "RIGRN.phl[27]";
connectAttr "plusMinusAverage8.o3" "RIGRN.phl[28]";
connectAttr "RIGRN.phl[29]" "multMatrix34.i[1]";
connectAttr "RIGRN.phl[30]" "pointMatrixMult4.im";
connectAttr "RIGRN.phl[31]" "quatToEuler17.iro";
connectAttr "RIGRN.phl[32]" "plusMinusAverage8.i3[1]";
connectAttr "quatToEuler11.ort" "RIGRN.phl[33]";
connectAttr "RIGRN.phl[34]" "multMatrix22.i[1]";
connectAttr "RIGRN.phl[35]" "quatToEuler11.iro";
connectAttr "quatToEuler14.ort" "RIGRN.phl[36]";
connectAttr "RIGRN.phl[37]" "multMatrix28.i[1]";
connectAttr "RIGRN.phl[38]" "quatToEuler14.iro";
connectAttr "quatToEuler13.ort" "RIGRN.phl[39]";
connectAttr "RIGRN.phl[40]" "quatToEuler13.iro";
connectAttr "RIGRN.phl[41]" "multMatrix26.i[1]";
connectAttr "quatToEuler7.ort" "RIGRN.phl[42]";
connectAttr "RIGRN.phl[43]" "multMatrix14.i[1]";
connectAttr "RIGRN.phl[44]" "quatToEuler7.iro";
connectAttr "quatToEuler8.ort" "RIGRN.phl[45]";
connectAttr "RIGRN.phl[46]" "multMatrix16.i[1]";
connectAttr "RIGRN.phl[47]" "quatToEuler8.iro";
connectAttr "quatToEuler9.ort" "RIGRN.phl[48]";
connectAttr "RIGRN.phl[49]" "quatToEuler9.iro";
connectAttr "RIGRN.phl[50]" "multMatrix18.i[1]";
connectAttr "plusMinusAverage2.o3" "RIGRN.phl[51]";
connectAttr "RIGRN.phl[52]" "plusMinusAverage2.i3[1]";
connectAttr "quatToEuler16.ort" "RIGRN.phl[53]";
connectAttr "RIGRN.phl[54]" "quatToEuler16.iro";
connectAttr "RIGRN.phl[55]" "pointMatrixMult1.im";
connectAttr "RIGRN.phl[56]" "multMatrix32.i[1]";
connectAttr "quatToEuler10.ort" "RIGRN.phl[57]";
connectAttr "RIGRN.phl[58]" "multMatrix20.i[1]";
connectAttr "RIGRN.phl[59]" "quatToEuler10.iro";
connectAttr "quatToEuler1.ort" "RIGRN.phl[60]";
connectAttr "RIGRN.phl[61]" "multMatrix2.i[1]";
connectAttr "RIGRN.phl[62]" "quatToEuler1.iro";
connectAttr "quatToEuler2.ort" "RIGRN.phl[63]";
connectAttr "RIGRN.phl[64]" "multMatrix4.i[1]";
connectAttr "RIGRN.phl[65]" "quatToEuler2.iro";
connectAttr "quatToEuler12.ort" "RIGRN.phl[66]";
connectAttr "RIGRN.phl[67]" "quatToEuler12.iro";
connectAttr "RIGRN.phl[68]" "multMatrix24.i[1]";
connectAttr "quatToEuler21.ort" "RIGRN.phl[69]";
connectAttr "plusMinusAverage14.o3" "RIGRN.phl[70]";
connectAttr "RIGRN.phl[71]" "multMatrix42.i[1]";
connectAttr "RIGRN.phl[72]" "pointMatrixMult7.im";
connectAttr "RIGRN.phl[73]" "quatToEuler21.iro";
connectAttr "RIGRN.phl[74]" "plusMinusAverage14.i3[1]";
connectAttr "quatToEuler3.ort" "RIGRN.phl[75]";
connectAttr "RIGRN.phl[76]" "multMatrix6.i[1]";
connectAttr "RIGRN.phl[77]" "quatToEuler3.iro";
connectAttr "quatToEuler4.ort" "RIGRN.phl[78]";
connectAttr "RIGRN.phl[79]" "multMatrix8.i[1]";
connectAttr "RIGRN.phl[80]" "quatToEuler4.iro";
connectAttr "quatToEuler5.ort" "RIGRN.phl[81]";
connectAttr "RIGRN.phl[82]" "multMatrix10.i[1]";
connectAttr "RIGRN.phl[83]" "quatToEuler5.iro";
connectAttr "quatToEuler6.ort" "RIGRN.phl[84]";
connectAttr "RIGRN.phl[85]" "quatToEuler6.iro";
connectAttr "RIGRN.phl[86]" "multMatrix12.i[1]";
connectAttr "RIGRN.phl[87]" "HIKRetargeterNode1.InputCharacterDefinitionDst";
connectAttr "RIGRN.phl[88]" "HIKRetargeterNode1.InputDstPropertySetState";
connectAttr "HIKRetargeterNode1.OutputCharacterState" "RIGRN.phl[89]";
connectAttr "HIKRetargeterNode1.OutputCharacterState" "RIGRN.phl[90]";
connectAttr "RIGRN.phl[91]" "decomposeMatrix22.imat";
connectAttr "RIGRN.phl[92]" "multMatrix39.i[1]";
connectAttr "RIGRN.phl[93]" "multMatrix33.i[1]";
connectAttr "RIGRN.phl[94]" "decomposeMatrix23.imat";
connectAttr "RIGRN.phl[95]" "multMatrix37.i[1]";
connectAttr "RIGRN.phl[96]" "decomposeMatrix25.imat";
connectAttr "RIGRN.phl[97]" "multMatrix35.i[1]";
connectAttr "RIGRN.phl[98]" "decomposeMatrix26.imat";
connectAttr "RIGRN.phl[99]" "multMatrix41.i[1]";
connectAttr "RIGRN.phl[100]" "decomposeMatrix28.imat";
connectAttr "RIGRN.phl[101]" "multMatrix5.i[1]";
connectAttr "RIGRN.phl[102]" "multMatrix7.i[1]";
connectAttr "RIGRN.phl[103]" "multMatrix9.i[1]";
connectAttr "RIGRN.phl[104]" "multMatrix11.i[1]";
connectAttr "RIGRN.phl[105]" "multMatrix13.i[1]";
connectAttr "RIGRN.phl[106]" "multMatrix15.i[1]";
connectAttr "RIGRN.phl[107]" "multMatrix17.i[1]";
connectAttr "RIGRN.phl[108]" "multMatrix19.i[1]";
connectAttr "RIGRN.phl[109]" "multMatrix1.i[1]";
connectAttr "RIGRN.phl[110]" "multMatrix3.i[1]";
connectAttr "RIGRN.phl[111]" "multMatrix23.i[1]";
connectAttr "RIGRN.phl[112]" "multMatrix21.i[1]";
connectAttr "RIGRN.phl[113]" "multMatrix27.i[1]";
connectAttr "RIGRN.phl[114]" "multMatrix25.i[1]";
connectAttr "RIGRN.phl[115]" "decomposeMatrix3.imat";
connectAttr "RIGRN.phl[116]" "multMatrix31.i[1]";
connectAttr "RIGRN.phl[117]" "multMatrix29.i[1]";
connectAttr "RIGRN.phl[118]" "decomposeMatrix19.imat";
connectAttr "RIGRN.phl[1]" "biped_standard_retarget_exportNode.ei[0].objects[0]"
		;
connectAttr "RIGRN.phl[2]" "biped_standard_retarget_exportNode.ei[0].objects[1]"
		;
connectAttr "MCP1RN.phl[1604]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn";
connectAttr "MCP1RN.phl[1605]" "MCP1RN.phl[1606]";
connectAttr "MCP1RN.phl[1607]" "MCP1RN.phl[1608]";
connectAttr "MCP1RN.phl[1609]" "MCP1RN.phl[1610]";
connectAttr "MCP1RN.phl[1611]" "MCP1RN.phl[1612]";
connectAttr "MCP1RN.phl[1613]" "MCP1RN.phl[1614]";
connectAttr "MCP1RN.phl[1615]" "MCP1RN.phl[1616]";
connectAttr "MCP1RN.phl[1617]" "HIKSK2State1.HipsGX";
connectAttr "MCP1RN.phl[1618]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn";
connectAttr "MCP1RN.phl[1619]" "MCP1RN.phl[1620]";
connectAttr "MCP1RN.phl[1621]" "MCP1RN.phl[1622]";
connectAttr "MCP1RN.phl[1623]" "MCP1RN.phl[1624]";
connectAttr "MCP1RN.phl[1625]" "MCP1RN.phl[1626]";
connectAttr "MCP1RN.phl[1627]" "MCP1RN.phl[1628]";
connectAttr "MCP1RN.phl[1629]" "MCP1RN.phl[1630]";
connectAttr "MCP1RN.phl[1631]" "HIKSK2State1.SpineGX";
connectAttr "MCP1RN.phl[1632]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn";
connectAttr "MCP1RN.phl[1633]" "MCP1RN.phl[1634]";
connectAttr "MCP1RN.phl[1635]" "MCP1RN.phl[1636]";
connectAttr "MCP1RN.phl[1637]" "MCP1RN.phl[1638]";
connectAttr "MCP1RN.phl[1639]" "MCP1RN.phl[1640]";
connectAttr "MCP1RN.phl[1641]" "MCP1RN.phl[1642]";
connectAttr "MCP1RN.phl[1643]" "MCP1RN.phl[1644]";
connectAttr "MCP1RN.phl[1645]" "HIKSK2State1.Spine1GX";
connectAttr "MCP1RN.phl[1646]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn";
connectAttr "MCP1RN.phl[1647]" "MCP1RN.phl[1648]";
connectAttr "MCP1RN.phl[1649]" "MCP1RN.phl[1650]";
connectAttr "MCP1RN.phl[1651]" "MCP1RN.phl[1652]";
connectAttr "MCP1RN.phl[1653]" "MCP1RN.phl[1654]";
connectAttr "MCP1RN.phl[1655]" "MCP1RN.phl[1656]";
connectAttr "MCP1RN.phl[1657]" "MCP1RN.phl[1658]";
connectAttr "MCP1RN.phl[1659]" "HIKSK2State1.Spine2GX";
connectAttr "MCP1RN.phl[1660]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "MCP1RN.phl[1661]" "MCP1RN.phl[1662]";
connectAttr "MCP1RN.phl[1663]" "MCP1RN.phl[1664]";
connectAttr "MCP1RN.phl[1665]" "MCP1RN.phl[1666]";
connectAttr "MCP1RN.phl[1667]" "MCP1RN.phl[1668]";
connectAttr "MCP1RN.phl[1669]" "MCP1RN.phl[1670]";
connectAttr "MCP1RN.phl[1671]" "MCP1RN.phl[1672]";
connectAttr "MCP1RN.phl[1673]" "HIKSK2State1.Spine3GX";
connectAttr "MCP1RN.phl[1674]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn";
connectAttr "MCP1RN.phl[1675]" "MCP1RN.phl[1676]";
connectAttr "MCP1RN.phl[1677]" "MCP1RN.phl[1678]";
connectAttr "MCP1RN.phl[1679]" "MCP1RN.phl[1680]";
connectAttr "MCP1RN.phl[1681]" "MCP1RN.phl[1682]";
connectAttr "MCP1RN.phl[1683]" "MCP1RN.phl[1684]";
connectAttr "MCP1RN.phl[1685]" "MCP1RN.phl[1686]";
connectAttr "MCP1RN.phl[1687]" "HIKSK2State1.LeftShoulderGX";
connectAttr "MCP1RN.phl[1688]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn";
connectAttr "MCP1RN.phl[1689]" "MCP1RN.phl[1690]";
connectAttr "MCP1RN.phl[1691]" "MCP1RN.phl[1692]";
connectAttr "MCP1RN.phl[1693]" "MCP1RN.phl[1694]";
connectAttr "MCP1RN.phl[1695]" "MCP1RN.phl[1696]";
connectAttr "MCP1RN.phl[1697]" "MCP1RN.phl[1698]";
connectAttr "MCP1RN.phl[1699]" "MCP1RN.phl[1700]";
connectAttr "MCP1RN.phl[1701]" "HIKSK2State1.LeftArmGX";
connectAttr "MCP1RN.phl[1702]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn";
connectAttr "MCP1RN.phl[1703]" "MCP1RN.phl[1704]";
connectAttr "MCP1RN.phl[1705]" "MCP1RN.phl[1706]";
connectAttr "MCP1RN.phl[1707]" "MCP1RN.phl[1708]";
connectAttr "MCP1RN.phl[1709]" "MCP1RN.phl[1710]";
connectAttr "MCP1RN.phl[1711]" "MCP1RN.phl[1712]";
connectAttr "MCP1RN.phl[1713]" "MCP1RN.phl[1714]";
connectAttr "MCP1RN.phl[1715]" "HIKSK2State1.LeftForeArmGX";
connectAttr "MCP1RN.phl[1716]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn";
connectAttr "MCP1RN.phl[1717]" "MCP1RN.phl[1718]";
connectAttr "MCP1RN.phl[1719]" "MCP1RN.phl[1720]";
connectAttr "MCP1RN.phl[1721]" "MCP1RN.phl[1722]";
connectAttr "MCP1RN.phl[1723]" "MCP1RN.phl[1724]";
connectAttr "MCP1RN.phl[1725]" "MCP1RN.phl[1726]";
connectAttr "MCP1RN.phl[1727]" "MCP1RN.phl[1728]";
connectAttr "MCP1RN.phl[1729]" "HIKSK2State1.LeftHandGX";
connectAttr "MCP1RN.phl[1730]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn";
connectAttr "MCP1RN.phl[1731]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn";
connectAttr "MCP1RN.phl[1732]" "MCP1RN.phl[1733]";
connectAttr "MCP1RN.phl[1734]" "MCP1RN.phl[1735]";
connectAttr "MCP1RN.phl[1736]" "MCP1RN.phl[1737]";
connectAttr "MCP1RN.phl[1738]" "MCP1RN.phl[1739]";
connectAttr "MCP1RN.phl[1740]" "MCP1RN.phl[1741]";
connectAttr "MCP1RN.phl[1742]" "MCP1RN.phl[1743]";
connectAttr "MCP1RN.phl[1744]" "HIKSK2State1.LeftInHandIndexGX";
connectAttr "MCP1RN.phl[1745]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn";
connectAttr "MCP1RN.phl[1746]" "MCP1RN.phl[1747]";
connectAttr "MCP1RN.phl[1748]" "MCP1RN.phl[1749]";
connectAttr "MCP1RN.phl[1750]" "MCP1RN.phl[1751]";
connectAttr "MCP1RN.phl[1752]" "MCP1RN.phl[1753]";
connectAttr "MCP1RN.phl[1754]" "MCP1RN.phl[1755]";
connectAttr "MCP1RN.phl[1756]" "MCP1RN.phl[1757]";
connectAttr "MCP1RN.phl[1758]" "HIKSK2State1.LeftHandIndex1GX";
connectAttr "MCP1RN.phl[1759]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn";
connectAttr "MCP1RN.phl[1760]" "MCP1RN.phl[1761]";
connectAttr "MCP1RN.phl[1762]" "MCP1RN.phl[1763]";
connectAttr "MCP1RN.phl[1764]" "MCP1RN.phl[1765]";
connectAttr "MCP1RN.phl[1766]" "MCP1RN.phl[1767]";
connectAttr "MCP1RN.phl[1768]" "MCP1RN.phl[1769]";
connectAttr "MCP1RN.phl[1770]" "MCP1RN.phl[1771]";
connectAttr "MCP1RN.phl[1772]" "HIKSK2State1.LeftHandIndex2GX";
connectAttr "MCP1RN.phl[1773]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn";
connectAttr "MCP1RN.phl[1774]" "MCP1RN.phl[1775]";
connectAttr "MCP1RN.phl[1776]" "MCP1RN.phl[1777]";
connectAttr "MCP1RN.phl[1778]" "MCP1RN.phl[1779]";
connectAttr "MCP1RN.phl[1780]" "MCP1RN.phl[1781]";
connectAttr "MCP1RN.phl[1782]" "MCP1RN.phl[1783]";
connectAttr "MCP1RN.phl[1784]" "MCP1RN.phl[1785]";
connectAttr "MCP1RN.phl[1786]" "HIKSK2State1.LeftHandIndex3GX";
connectAttr "MCP1RN.phl[1787]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn";
connectAttr "MCP1RN.phl[1788]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn";
connectAttr "MCP1RN.phl[1789]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn";
connectAttr "MCP1RN.phl[1790]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn";
connectAttr "MCP1RN.phl[1791]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn";
connectAttr "MCP1RN.phl[1792]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn";
connectAttr "MCP1RN.phl[1793]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn";
connectAttr "MCP1RN.phl[1794]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn";
connectAttr "MCP1RN.phl[1795]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn";
connectAttr "MCP1RN.phl[1796]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn";
connectAttr "MCP1RN.phl[1797]" "MCP1RN.phl[1798]";
connectAttr "MCP1RN.phl[1799]" "MCP1RN.phl[1800]";
connectAttr "MCP1RN.phl[1801]" "MCP1RN.phl[1802]";
connectAttr "MCP1RN.phl[1803]" "MCP1RN.phl[1804]";
connectAttr "MCP1RN.phl[1805]" "MCP1RN.phl[1806]";
connectAttr "MCP1RN.phl[1807]" "MCP1RN.phl[1808]";
connectAttr "MCP1RN.phl[1809]" "HIKSK2State1.LeftInHandPinkyGX";
connectAttr "MCP1RN.phl[1810]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn";
connectAttr "MCP1RN.phl[1811]" "MCP1RN.phl[1812]";
connectAttr "MCP1RN.phl[1813]" "MCP1RN.phl[1814]";
connectAttr "MCP1RN.phl[1815]" "MCP1RN.phl[1816]";
connectAttr "MCP1RN.phl[1817]" "MCP1RN.phl[1818]";
connectAttr "MCP1RN.phl[1819]" "MCP1RN.phl[1820]";
connectAttr "MCP1RN.phl[1821]" "MCP1RN.phl[1822]";
connectAttr "MCP1RN.phl[1823]" "HIKSK2State1.LeftHandPinky1GX";
connectAttr "MCP1RN.phl[1824]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn";
connectAttr "MCP1RN.phl[1825]" "MCP1RN.phl[1826]";
connectAttr "MCP1RN.phl[1827]" "MCP1RN.phl[1828]";
connectAttr "MCP1RN.phl[1829]" "MCP1RN.phl[1830]";
connectAttr "MCP1RN.phl[1831]" "MCP1RN.phl[1832]";
connectAttr "MCP1RN.phl[1833]" "MCP1RN.phl[1834]";
connectAttr "MCP1RN.phl[1835]" "MCP1RN.phl[1836]";
connectAttr "MCP1RN.phl[1837]" "HIKSK2State1.LeftHandPinky2GX";
connectAttr "MCP1RN.phl[1838]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn";
connectAttr "MCP1RN.phl[1839]" "MCP1RN.phl[1840]";
connectAttr "MCP1RN.phl[1841]" "MCP1RN.phl[1842]";
connectAttr "MCP1RN.phl[1843]" "MCP1RN.phl[1844]";
connectAttr "MCP1RN.phl[1845]" "MCP1RN.phl[1846]";
connectAttr "MCP1RN.phl[1847]" "MCP1RN.phl[1848]";
connectAttr "MCP1RN.phl[1849]" "MCP1RN.phl[1850]";
connectAttr "MCP1RN.phl[1851]" "HIKSK2State1.LeftHandPinky3GX";
connectAttr "MCP1RN.phl[1852]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn";
connectAttr "MCP1RN.phl[1853]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn";
connectAttr "MCP1RN.phl[1854]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn";
connectAttr "MCP1RN.phl[1855]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn";
connectAttr "MCP1RN.phl[1856]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn";
connectAttr "MCP1RN.phl[1857]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn";
connectAttr "MCP1RN.phl[1858]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn";
connectAttr "MCP1RN.phl[1859]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn";
connectAttr "MCP1RN.phl[1860]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn";
connectAttr "MCP1RN.phl[1861]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn";
connectAttr "MCP1RN.phl[1862]" "MCP1RN.phl[1863]";
connectAttr "MCP1RN.phl[1864]" "MCP1RN.phl[1865]";
connectAttr "MCP1RN.phl[1866]" "MCP1RN.phl[1867]";
connectAttr "MCP1RN.phl[1868]" "MCP1RN.phl[1869]";
connectAttr "MCP1RN.phl[1870]" "MCP1RN.phl[1871]";
connectAttr "MCP1RN.phl[1872]" "MCP1RN.phl[1873]";
connectAttr "MCP1RN.phl[1874]" "HIKSK2State1.LeftInHandMiddleGX";
connectAttr "MCP1RN.phl[1875]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn";
connectAttr "MCP1RN.phl[1876]" "MCP1RN.phl[1877]";
connectAttr "MCP1RN.phl[1878]" "MCP1RN.phl[1879]";
connectAttr "MCP1RN.phl[1880]" "MCP1RN.phl[1881]";
connectAttr "MCP1RN.phl[1882]" "MCP1RN.phl[1883]";
connectAttr "MCP1RN.phl[1884]" "MCP1RN.phl[1885]";
connectAttr "MCP1RN.phl[1886]" "MCP1RN.phl[1887]";
connectAttr "MCP1RN.phl[1888]" "HIKSK2State1.LeftHandMiddle1GX";
connectAttr "MCP1RN.phl[1889]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn";
connectAttr "MCP1RN.phl[1890]" "MCP1RN.phl[1891]";
connectAttr "MCP1RN.phl[1892]" "MCP1RN.phl[1893]";
connectAttr "MCP1RN.phl[1894]" "MCP1RN.phl[1895]";
connectAttr "MCP1RN.phl[1896]" "MCP1RN.phl[1897]";
connectAttr "MCP1RN.phl[1898]" "MCP1RN.phl[1899]";
connectAttr "MCP1RN.phl[1900]" "MCP1RN.phl[1901]";
connectAttr "MCP1RN.phl[1902]" "HIKSK2State1.LeftHandMiddle2GX";
connectAttr "MCP1RN.phl[1903]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn";
connectAttr "MCP1RN.phl[1904]" "MCP1RN.phl[1905]";
connectAttr "MCP1RN.phl[1906]" "MCP1RN.phl[1907]";
connectAttr "MCP1RN.phl[1908]" "MCP1RN.phl[1909]";
connectAttr "MCP1RN.phl[1910]" "MCP1RN.phl[1911]";
connectAttr "MCP1RN.phl[1912]" "MCP1RN.phl[1913]";
connectAttr "MCP1RN.phl[1914]" "MCP1RN.phl[1915]";
connectAttr "MCP1RN.phl[1916]" "HIKSK2State1.LeftHandMiddle3GX";
connectAttr "MCP1RN.phl[1917]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn";
connectAttr "MCP1RN.phl[1918]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn";
connectAttr "MCP1RN.phl[1919]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn";
connectAttr "MCP1RN.phl[1920]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn";
connectAttr "MCP1RN.phl[1921]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn";
connectAttr "MCP1RN.phl[1922]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn";
connectAttr "MCP1RN.phl[1923]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn";
connectAttr "MCP1RN.phl[1924]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn";
connectAttr "MCP1RN.phl[1925]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn";
connectAttr "MCP1RN.phl[1926]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn";
connectAttr "MCP1RN.phl[1927]" "MCP1RN.phl[1928]";
connectAttr "MCP1RN.phl[1929]" "MCP1RN.phl[1930]";
connectAttr "MCP1RN.phl[1931]" "MCP1RN.phl[1932]";
connectAttr "MCP1RN.phl[1933]" "MCP1RN.phl[1934]";
connectAttr "MCP1RN.phl[1935]" "MCP1RN.phl[1936]";
connectAttr "MCP1RN.phl[1937]" "MCP1RN.phl[1938]";
connectAttr "MCP1RN.phl[1939]" "HIKSK2State1.LeftInHandRingGX";
connectAttr "MCP1RN.phl[1940]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn";
connectAttr "MCP1RN.phl[1941]" "MCP1RN.phl[1942]";
connectAttr "MCP1RN.phl[1943]" "MCP1RN.phl[1944]";
connectAttr "MCP1RN.phl[1945]" "MCP1RN.phl[1946]";
connectAttr "MCP1RN.phl[1947]" "MCP1RN.phl[1948]";
connectAttr "MCP1RN.phl[1949]" "MCP1RN.phl[1950]";
connectAttr "MCP1RN.phl[1951]" "MCP1RN.phl[1952]";
connectAttr "MCP1RN.phl[1953]" "HIKSK2State1.LeftHandRing1GX";
connectAttr "MCP1RN.phl[1954]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn";
connectAttr "MCP1RN.phl[1955]" "MCP1RN.phl[1956]";
connectAttr "MCP1RN.phl[1957]" "MCP1RN.phl[1958]";
connectAttr "MCP1RN.phl[1959]" "MCP1RN.phl[1960]";
connectAttr "MCP1RN.phl[1961]" "MCP1RN.phl[1962]";
connectAttr "MCP1RN.phl[1963]" "MCP1RN.phl[1964]";
connectAttr "MCP1RN.phl[1965]" "MCP1RN.phl[1966]";
connectAttr "MCP1RN.phl[1967]" "HIKSK2State1.LeftHandRing2GX";
connectAttr "MCP1RN.phl[1968]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn";
connectAttr "MCP1RN.phl[1969]" "MCP1RN.phl[1970]";
connectAttr "MCP1RN.phl[1971]" "MCP1RN.phl[1972]";
connectAttr "MCP1RN.phl[1973]" "MCP1RN.phl[1974]";
connectAttr "MCP1RN.phl[1975]" "MCP1RN.phl[1976]";
connectAttr "MCP1RN.phl[1977]" "MCP1RN.phl[1978]";
connectAttr "MCP1RN.phl[1979]" "MCP1RN.phl[1980]";
connectAttr "MCP1RN.phl[1981]" "HIKSK2State1.LeftHandRing3GX";
connectAttr "MCP1RN.phl[1982]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn";
connectAttr "MCP1RN.phl[1983]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn";
connectAttr "MCP1RN.phl[1984]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn";
connectAttr "MCP1RN.phl[1985]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn";
connectAttr "MCP1RN.phl[1986]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn";
connectAttr "MCP1RN.phl[1987]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn";
connectAttr "MCP1RN.phl[1988]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn";
connectAttr "MCP1RN.phl[1989]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn";
connectAttr "MCP1RN.phl[1990]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn";
connectAttr "MCP1RN.phl[1991]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn";
connectAttr "MCP1RN.phl[1992]" "MCP1RN.phl[1993]";
connectAttr "MCP1RN.phl[1994]" "MCP1RN.phl[1995]";
connectAttr "MCP1RN.phl[1996]" "MCP1RN.phl[1997]";
connectAttr "MCP1RN.phl[1998]" "MCP1RN.phl[1999]";
connectAttr "MCP1RN.phl[2000]" "MCP1RN.phl[2001]";
connectAttr "MCP1RN.phl[2002]" "MCP1RN.phl[2003]";
connectAttr "MCP1RN.phl[2004]" "HIKSK2State1.LeftHandThumb1GX";
connectAttr "MCP1RN.phl[2005]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn";
connectAttr "MCP1RN.phl[2006]" "MCP1RN.phl[2007]";
connectAttr "MCP1RN.phl[2008]" "MCP1RN.phl[2009]";
connectAttr "MCP1RN.phl[2010]" "MCP1RN.phl[2011]";
connectAttr "MCP1RN.phl[2012]" "MCP1RN.phl[2013]";
connectAttr "MCP1RN.phl[2014]" "MCP1RN.phl[2015]";
connectAttr "MCP1RN.phl[2016]" "MCP1RN.phl[2017]";
connectAttr "MCP1RN.phl[2018]" "HIKSK2State1.LeftHandThumb2GX";
connectAttr "MCP1RN.phl[2019]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn";
connectAttr "MCP1RN.phl[2020]" "MCP1RN.phl[2021]";
connectAttr "MCP1RN.phl[2022]" "MCP1RN.phl[2023]";
connectAttr "MCP1RN.phl[2024]" "MCP1RN.phl[2025]";
connectAttr "MCP1RN.phl[2026]" "MCP1RN.phl[2027]";
connectAttr "MCP1RN.phl[2028]" "MCP1RN.phl[2029]";
connectAttr "MCP1RN.phl[2030]" "MCP1RN.phl[2031]";
connectAttr "MCP1RN.phl[2032]" "HIKSK2State1.LeftHandThumb3GX";
connectAttr "MCP1RN.phl[2033]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn";
connectAttr "MCP1RN.phl[2034]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn";
connectAttr "MCP1RN.phl[2035]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn";
connectAttr "MCP1RN.phl[2036]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn";
connectAttr "MCP1RN.phl[2037]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn";
connectAttr "MCP1RN.phl[2038]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn";
connectAttr "MCP1RN.phl[2039]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn";
connectAttr "MCP1RN.phl[2040]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn";
connectAttr "MCP1RN.phl[2041]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn";
connectAttr "MCP1RN.phl[2042]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn";
connectAttr "MCP1RN.phl[2043]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn";
connectAttr "MCP1RN.phl[2044]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn";
connectAttr "MCP1RN.phl[2045]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn";
connectAttr "MCP1RN.phl[2046]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn";
connectAttr "MCP1RN.phl[2047]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn";
connectAttr "MCP1RN.phl[2048]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn";
connectAttr "MCP1RN.phl[2049]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn";
connectAttr "MCP1RN.phl[2050]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn";
connectAttr "MCP1RN.phl[2051]" "MCP1RN.phl[2052]";
connectAttr "MCP1RN.phl[2053]" "MCP1RN.phl[2054]";
connectAttr "MCP1RN.phl[2055]" "MCP1RN.phl[2056]";
connectAttr "MCP1RN.phl[2057]" "MCP1RN.phl[2058]";
connectAttr "MCP1RN.phl[2059]" "MCP1RN.phl[2060]";
connectAttr "MCP1RN.phl[2061]" "MCP1RN.phl[2062]";
connectAttr "MCP1RN.phl[2063]" "HIKSK2State1.NeckGX";
connectAttr "MCP1RN.phl[2064]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn";
connectAttr "MCP1RN.phl[2065]" "MCP1RN.phl[2066]";
connectAttr "MCP1RN.phl[2067]" "MCP1RN.phl[2068]";
connectAttr "MCP1RN.phl[2069]" "MCP1RN.phl[2070]";
connectAttr "MCP1RN.phl[2071]" "MCP1RN.phl[2072]";
connectAttr "MCP1RN.phl[2073]" "MCP1RN.phl[2074]";
connectAttr "MCP1RN.phl[2075]" "MCP1RN.phl[2076]";
connectAttr "MCP1RN.phl[2077]" "HIKSK2State1.HeadGX";
connectAttr "MCP1RN.phl[2078]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn";
connectAttr "MCP1RN.phl[2079]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn";
connectAttr "MCP1RN.phl[2080]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn";
connectAttr "MCP1RN.phl[2081]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn";
connectAttr "MCP1RN.phl[2082]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn";
connectAttr "MCP1RN.phl[2083]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn";
connectAttr "MCP1RN.phl[2084]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn";
connectAttr "MCP1RN.phl[2085]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn";
connectAttr "MCP1RN.phl[2086]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn";
connectAttr "MCP1RN.phl[2087]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn";
connectAttr "MCP1RN.phl[2088]" "MCP1RN.phl[2089]";
connectAttr "MCP1RN.phl[2090]" "MCP1RN.phl[2091]";
connectAttr "MCP1RN.phl[2092]" "MCP1RN.phl[2093]";
connectAttr "MCP1RN.phl[2094]" "MCP1RN.phl[2095]";
connectAttr "MCP1RN.phl[2096]" "MCP1RN.phl[2097]";
connectAttr "MCP1RN.phl[2098]" "MCP1RN.phl[2099]";
connectAttr "MCP1RN.phl[2100]" "HIKSK2State1.RightShoulderGX";
connectAttr "MCP1RN.phl[2101]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn";
connectAttr "MCP1RN.phl[2102]" "MCP1RN.phl[2103]";
connectAttr "MCP1RN.phl[2104]" "MCP1RN.phl[2105]";
connectAttr "MCP1RN.phl[2106]" "MCP1RN.phl[2107]";
connectAttr "MCP1RN.phl[2108]" "MCP1RN.phl[2109]";
connectAttr "MCP1RN.phl[2110]" "MCP1RN.phl[2111]";
connectAttr "MCP1RN.phl[2112]" "MCP1RN.phl[2113]";
connectAttr "MCP1RN.phl[2114]" "HIKSK2State1.RightArmGX";
connectAttr "MCP1RN.phl[2115]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn";
connectAttr "MCP1RN.phl[2116]" "MCP1RN.phl[2117]";
connectAttr "MCP1RN.phl[2118]" "MCP1RN.phl[2119]";
connectAttr "MCP1RN.phl[2120]" "MCP1RN.phl[2121]";
connectAttr "MCP1RN.phl[2122]" "MCP1RN.phl[2123]";
connectAttr "MCP1RN.phl[2124]" "MCP1RN.phl[2125]";
connectAttr "MCP1RN.phl[2126]" "MCP1RN.phl[2127]";
connectAttr "MCP1RN.phl[2128]" "HIKSK2State1.RightForeArmGX";
connectAttr "MCP1RN.phl[2129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn";
connectAttr "MCP1RN.phl[2130]" "MCP1RN.phl[2131]";
connectAttr "MCP1RN.phl[2132]" "MCP1RN.phl[2133]";
connectAttr "MCP1RN.phl[2134]" "MCP1RN.phl[2135]";
connectAttr "MCP1RN.phl[2136]" "MCP1RN.phl[2137]";
connectAttr "MCP1RN.phl[2138]" "MCP1RN.phl[2139]";
connectAttr "MCP1RN.phl[2140]" "MCP1RN.phl[2141]";
connectAttr "MCP1RN.phl[2142]" "HIKSK2State1.RightHandGX";
connectAttr "MCP1RN.phl[2143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn";
connectAttr "MCP1RN.phl[2144]" "MCP1RN.phl[2145]";
connectAttr "MCP1RN.phl[2146]" "MCP1RN.phl[2147]";
connectAttr "MCP1RN.phl[2148]" "MCP1RN.phl[2149]";
connectAttr "MCP1RN.phl[2150]" "MCP1RN.phl[2151]";
connectAttr "MCP1RN.phl[2152]" "MCP1RN.phl[2153]";
connectAttr "MCP1RN.phl[2154]" "MCP1RN.phl[2155]";
connectAttr "MCP1RN.phl[2156]" "HIKSK2State1.RightHandThumb1GX";
connectAttr "MCP1RN.phl[2157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn";
connectAttr "MCP1RN.phl[2158]" "MCP1RN.phl[2159]";
connectAttr "MCP1RN.phl[2160]" "MCP1RN.phl[2161]";
connectAttr "MCP1RN.phl[2162]" "MCP1RN.phl[2163]";
connectAttr "MCP1RN.phl[2164]" "MCP1RN.phl[2165]";
connectAttr "MCP1RN.phl[2166]" "MCP1RN.phl[2167]";
connectAttr "MCP1RN.phl[2168]" "MCP1RN.phl[2169]";
connectAttr "MCP1RN.phl[2170]" "HIKSK2State1.RightHandThumb2GX";
connectAttr "MCP1RN.phl[2171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn";
connectAttr "MCP1RN.phl[2172]" "MCP1RN.phl[2173]";
connectAttr "MCP1RN.phl[2174]" "MCP1RN.phl[2175]";
connectAttr "MCP1RN.phl[2176]" "MCP1RN.phl[2177]";
connectAttr "MCP1RN.phl[2178]" "MCP1RN.phl[2179]";
connectAttr "MCP1RN.phl[2180]" "MCP1RN.phl[2181]";
connectAttr "MCP1RN.phl[2182]" "MCP1RN.phl[2183]";
connectAttr "MCP1RN.phl[2184]" "HIKSK2State1.RightHandThumb3GX";
connectAttr "MCP1RN.phl[2185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn";
connectAttr "MCP1RN.phl[2186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn";
connectAttr "MCP1RN.phl[2187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn";
connectAttr "MCP1RN.phl[2188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn";
connectAttr "MCP1RN.phl[2189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn";
connectAttr "MCP1RN.phl[2190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn";
connectAttr "MCP1RN.phl[2191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn";
connectAttr "MCP1RN.phl[2192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn";
connectAttr "MCP1RN.phl[2193]" "MCP1RN.phl[2194]";
connectAttr "MCP1RN.phl[2195]" "MCP1RN.phl[2196]";
connectAttr "MCP1RN.phl[2197]" "MCP1RN.phl[2198]";
connectAttr "MCP1RN.phl[2199]" "MCP1RN.phl[2200]";
connectAttr "MCP1RN.phl[2201]" "MCP1RN.phl[2202]";
connectAttr "MCP1RN.phl[2203]" "MCP1RN.phl[2204]";
connectAttr "MCP1RN.phl[2205]" "HIKSK2State1.RightInHandRingGX";
connectAttr "MCP1RN.phl[2206]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn";
connectAttr "MCP1RN.phl[2207]" "MCP1RN.phl[2208]";
connectAttr "MCP1RN.phl[2209]" "MCP1RN.phl[2210]";
connectAttr "MCP1RN.phl[2211]" "MCP1RN.phl[2212]";
connectAttr "MCP1RN.phl[2213]" "MCP1RN.phl[2214]";
connectAttr "MCP1RN.phl[2215]" "MCP1RN.phl[2216]";
connectAttr "MCP1RN.phl[2217]" "MCP1RN.phl[2218]";
connectAttr "MCP1RN.phl[2219]" "HIKSK2State1.RightHandRing1GX";
connectAttr "MCP1RN.phl[2220]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[448].dn";
connectAttr "MCP1RN.phl[2221]" "MCP1RN.phl[2222]";
connectAttr "MCP1RN.phl[2223]" "MCP1RN.phl[2224]";
connectAttr "MCP1RN.phl[2225]" "MCP1RN.phl[2226]";
connectAttr "MCP1RN.phl[2227]" "MCP1RN.phl[2228]";
connectAttr "MCP1RN.phl[2229]" "MCP1RN.phl[2230]";
connectAttr "MCP1RN.phl[2231]" "MCP1RN.phl[2232]";
connectAttr "MCP1RN.phl[2233]" "HIKSK2State1.RightHandRing2GX";
connectAttr "MCP1RN.phl[2234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[468].dn";
connectAttr "MCP1RN.phl[2235]" "MCP1RN.phl[2236]";
connectAttr "MCP1RN.phl[2237]" "MCP1RN.phl[2238]";
connectAttr "MCP1RN.phl[2239]" "MCP1RN.phl[2240]";
connectAttr "MCP1RN.phl[2241]" "MCP1RN.phl[2242]";
connectAttr "MCP1RN.phl[2243]" "MCP1RN.phl[2244]";
connectAttr "MCP1RN.phl[2245]" "MCP1RN.phl[2246]";
connectAttr "MCP1RN.phl[2247]" "HIKSK2State1.RightHandRing3GX";
connectAttr "MCP1RN.phl[2248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn";
connectAttr "MCP1RN.phl[2249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn";
connectAttr "MCP1RN.phl[2250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn";
connectAttr "MCP1RN.phl[2251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[481].dn";
connectAttr "MCP1RN.phl[2252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn";
connectAttr "MCP1RN.phl[2253]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn";
connectAttr "MCP1RN.phl[2254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn";
connectAttr "MCP1RN.phl[2255]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn";
connectAttr "MCP1RN.phl[2256]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn";
connectAttr "MCP1RN.phl[2257]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn";
connectAttr "MCP1RN.phl[2258]" "MCP1RN.phl[2259]";
connectAttr "MCP1RN.phl[2260]" "MCP1RN.phl[2261]";
connectAttr "MCP1RN.phl[2262]" "MCP1RN.phl[2263]";
connectAttr "MCP1RN.phl[2264]" "MCP1RN.phl[2265]";
connectAttr "MCP1RN.phl[2266]" "MCP1RN.phl[2267]";
connectAttr "MCP1RN.phl[2268]" "MCP1RN.phl[2269]";
connectAttr "MCP1RN.phl[2270]" "HIKSK2State1.RightInHandMiddleGX";
connectAttr "MCP1RN.phl[2271]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn";
connectAttr "MCP1RN.phl[2272]" "MCP1RN.phl[2273]";
connectAttr "MCP1RN.phl[2274]" "MCP1RN.phl[2275]";
connectAttr "MCP1RN.phl[2276]" "MCP1RN.phl[2277]";
connectAttr "MCP1RN.phl[2278]" "MCP1RN.phl[2279]";
connectAttr "MCP1RN.phl[2280]" "MCP1RN.phl[2281]";
connectAttr "MCP1RN.phl[2282]" "MCP1RN.phl[2283]";
connectAttr "MCP1RN.phl[2284]" "HIKSK2State1.RightHandMiddle1GX";
connectAttr "MCP1RN.phl[2285]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn";
connectAttr "MCP1RN.phl[2286]" "MCP1RN.phl[2287]";
connectAttr "MCP1RN.phl[2288]" "MCP1RN.phl[2289]";
connectAttr "MCP1RN.phl[2290]" "MCP1RN.phl[2291]";
connectAttr "MCP1RN.phl[2292]" "MCP1RN.phl[2293]";
connectAttr "MCP1RN.phl[2294]" "MCP1RN.phl[2295]";
connectAttr "MCP1RN.phl[2296]" "MCP1RN.phl[2297]";
connectAttr "MCP1RN.phl[2298]" "HIKSK2State1.RightHandMiddle2GX";
connectAttr "MCP1RN.phl[2299]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn";
connectAttr "MCP1RN.phl[2300]" "MCP1RN.phl[2301]";
connectAttr "MCP1RN.phl[2302]" "MCP1RN.phl[2303]";
connectAttr "MCP1RN.phl[2304]" "MCP1RN.phl[2305]";
connectAttr "MCP1RN.phl[2306]" "MCP1RN.phl[2307]";
connectAttr "MCP1RN.phl[2308]" "MCP1RN.phl[2309]";
connectAttr "MCP1RN.phl[2310]" "MCP1RN.phl[2311]";
connectAttr "MCP1RN.phl[2312]" "HIKSK2State1.RightHandMiddle3GX";
connectAttr "MCP1RN.phl[2313]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn";
connectAttr "MCP1RN.phl[2314]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn";
connectAttr "MCP1RN.phl[2315]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn";
connectAttr "MCP1RN.phl[2316]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[476].dn";
connectAttr "MCP1RN.phl[2317]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn";
connectAttr "MCP1RN.phl[2318]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn";
connectAttr "MCP1RN.phl[2319]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn";
connectAttr "MCP1RN.phl[2320]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[470].dn";
connectAttr "MCP1RN.phl[2321]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[471].dn";
connectAttr "MCP1RN.phl[2322]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn";
connectAttr "MCP1RN.phl[2323]" "MCP1RN.phl[2324]";
connectAttr "MCP1RN.phl[2325]" "MCP1RN.phl[2326]";
connectAttr "MCP1RN.phl[2327]" "MCP1RN.phl[2328]";
connectAttr "MCP1RN.phl[2329]" "MCP1RN.phl[2330]";
connectAttr "MCP1RN.phl[2331]" "MCP1RN.phl[2332]";
connectAttr "MCP1RN.phl[2333]" "MCP1RN.phl[2334]";
connectAttr "MCP1RN.phl[2335]" "HIKSK2State1.RightInHandPinkyGX";
connectAttr "MCP1RN.phl[2336]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[485].dn";
connectAttr "MCP1RN.phl[2337]" "MCP1RN.phl[2338]";
connectAttr "MCP1RN.phl[2339]" "MCP1RN.phl[2340]";
connectAttr "MCP1RN.phl[2341]" "MCP1RN.phl[2342]";
connectAttr "MCP1RN.phl[2343]" "MCP1RN.phl[2344]";
connectAttr "MCP1RN.phl[2345]" "MCP1RN.phl[2346]";
connectAttr "MCP1RN.phl[2347]" "MCP1RN.phl[2348]";
connectAttr "MCP1RN.phl[2349]" "HIKSK2State1.RightHandPinky1GX";
connectAttr "MCP1RN.phl[2350]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn";
connectAttr "MCP1RN.phl[2351]" "MCP1RN.phl[2352]";
connectAttr "MCP1RN.phl[2353]" "MCP1RN.phl[2354]";
connectAttr "MCP1RN.phl[2355]" "MCP1RN.phl[2356]";
connectAttr "MCP1RN.phl[2357]" "MCP1RN.phl[2358]";
connectAttr "MCP1RN.phl[2359]" "MCP1RN.phl[2360]";
connectAttr "MCP1RN.phl[2361]" "MCP1RN.phl[2362]";
connectAttr "MCP1RN.phl[2363]" "HIKSK2State1.RightHandPinky2GX";
connectAttr "MCP1RN.phl[2364]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn";
connectAttr "MCP1RN.phl[2365]" "MCP1RN.phl[2366]";
connectAttr "MCP1RN.phl[2367]" "MCP1RN.phl[2368]";
connectAttr "MCP1RN.phl[2369]" "MCP1RN.phl[2370]";
connectAttr "MCP1RN.phl[2371]" "MCP1RN.phl[2372]";
connectAttr "MCP1RN.phl[2373]" "MCP1RN.phl[2374]";
connectAttr "MCP1RN.phl[2375]" "MCP1RN.phl[2376]";
connectAttr "MCP1RN.phl[2377]" "HIKSK2State1.RightHandPinky3GX";
connectAttr "MCP1RN.phl[2378]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn";
connectAttr "MCP1RN.phl[2379]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[475].dn";
connectAttr "MCP1RN.phl[2380]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn";
connectAttr "MCP1RN.phl[2381]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[486].dn";
connectAttr "MCP1RN.phl[2382]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn";
connectAttr "MCP1RN.phl[2383]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[488].dn";
connectAttr "MCP1RN.phl[2384]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn";
connectAttr "MCP1RN.phl[2385]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[477].dn";
connectAttr "MCP1RN.phl[2386]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn";
connectAttr "MCP1RN.phl[2387]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn";
connectAttr "MCP1RN.phl[2388]" "MCP1RN.phl[2389]";
connectAttr "MCP1RN.phl[2390]" "MCP1RN.phl[2391]";
connectAttr "MCP1RN.phl[2392]" "MCP1RN.phl[2393]";
connectAttr "MCP1RN.phl[2394]" "MCP1RN.phl[2395]";
connectAttr "MCP1RN.phl[2396]" "MCP1RN.phl[2397]";
connectAttr "MCP1RN.phl[2398]" "MCP1RN.phl[2399]";
connectAttr "MCP1RN.phl[2400]" "HIKSK2State1.RightInHandIndexGX";
connectAttr "MCP1RN.phl[2401]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn";
connectAttr "MCP1RN.phl[2402]" "MCP1RN.phl[2403]";
connectAttr "MCP1RN.phl[2404]" "MCP1RN.phl[2405]";
connectAttr "MCP1RN.phl[2406]" "MCP1RN.phl[2407]";
connectAttr "MCP1RN.phl[2408]" "MCP1RN.phl[2409]";
connectAttr "MCP1RN.phl[2410]" "MCP1RN.phl[2411]";
connectAttr "MCP1RN.phl[2412]" "MCP1RN.phl[2413]";
connectAttr "MCP1RN.phl[2414]" "HIKSK2State1.RightHandIndex1GX";
connectAttr "MCP1RN.phl[2415]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[496].dn";
connectAttr "MCP1RN.phl[2416]" "MCP1RN.phl[2417]";
connectAttr "MCP1RN.phl[2418]" "MCP1RN.phl[2419]";
connectAttr "MCP1RN.phl[2420]" "MCP1RN.phl[2421]";
connectAttr "MCP1RN.phl[2422]" "MCP1RN.phl[2423]";
connectAttr "MCP1RN.phl[2424]" "MCP1RN.phl[2425]";
connectAttr "MCP1RN.phl[2426]" "MCP1RN.phl[2427]";
connectAttr "MCP1RN.phl[2428]" "HIKSK2State1.RightHandIndex2GX";
connectAttr "MCP1RN.phl[2429]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn";
connectAttr "MCP1RN.phl[2430]" "MCP1RN.phl[2431]";
connectAttr "MCP1RN.phl[2432]" "MCP1RN.phl[2433]";
connectAttr "MCP1RN.phl[2434]" "MCP1RN.phl[2435]";
connectAttr "MCP1RN.phl[2436]" "MCP1RN.phl[2437]";
connectAttr "MCP1RN.phl[2438]" "MCP1RN.phl[2439]";
connectAttr "MCP1RN.phl[2440]" "MCP1RN.phl[2441]";
connectAttr "MCP1RN.phl[2442]" "HIKSK2State1.RightHandIndex3GX";
connectAttr "MCP1RN.phl[2443]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn";
connectAttr "MCP1RN.phl[2444]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn";
connectAttr "MCP1RN.phl[2445]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn";
connectAttr "MCP1RN.phl[2446]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn";
connectAttr "MCP1RN.phl[2447]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn";
connectAttr "MCP1RN.phl[2448]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[493].dn";
connectAttr "MCP1RN.phl[2449]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn";
connectAttr "MCP1RN.phl[2450]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn";
connectAttr "MCP1RN.phl[2451]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[520].dn";
connectAttr "MCP1RN.phl[2452]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn";
connectAttr "MCP1RN.phl[2453]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn";
connectAttr "MCP1RN.phl[2454]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn";
connectAttr "MCP1RN.phl[2455]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn";
connectAttr "MCP1RN.phl[2456]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn";
connectAttr "MCP1RN.phl[2457]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn";
connectAttr "MCP1RN.phl[2458]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[499].dn";
connectAttr "MCP1RN.phl[2459]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn";
connectAttr "MCP1RN.phl[2460]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn";
connectAttr "MCP1RN.phl[2461]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn";
connectAttr "MCP1RN.phl[2462]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn";
connectAttr "MCP1RN.phl[2463]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[503].dn";
connectAttr "MCP1RN.phl[2464]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[522].dn";
connectAttr "MCP1RN.phl[2465]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn";
connectAttr "MCP1RN.phl[2466]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[509].dn";
connectAttr "MCP1RN.phl[2467]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn";
connectAttr "MCP1RN.phl[2468]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn";
connectAttr "MCP1RN.phl[2469]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn";
connectAttr "MCP1RN.phl[2470]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn";
connectAttr "MCP1RN.phl[2471]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn";
connectAttr "MCP1RN.phl[2472]" "MCP1RN.phl[2473]";
connectAttr "MCP1RN.phl[2474]" "MCP1RN.phl[2475]";
connectAttr "MCP1RN.phl[2476]" "MCP1RN.phl[2477]";
connectAttr "MCP1RN.phl[2478]" "MCP1RN.phl[2479]";
connectAttr "MCP1RN.phl[2480]" "MCP1RN.phl[2481]";
connectAttr "MCP1RN.phl[2482]" "MCP1RN.phl[2483]";
connectAttr "MCP1RN.phl[2484]" "HIKSK2State1.RightUpLegGX";
connectAttr "MCP1RN.phl[2485]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn";
connectAttr "MCP1RN.phl[2486]" "MCP1RN.phl[2487]";
connectAttr "MCP1RN.phl[2488]" "MCP1RN.phl[2489]";
connectAttr "MCP1RN.phl[2490]" "MCP1RN.phl[2491]";
connectAttr "MCP1RN.phl[2492]" "MCP1RN.phl[2493]";
connectAttr "MCP1RN.phl[2494]" "MCP1RN.phl[2495]";
connectAttr "MCP1RN.phl[2496]" "MCP1RN.phl[2497]";
connectAttr "MCP1RN.phl[2498]" "HIKSK2State1.RightLegGX";
connectAttr "MCP1RN.phl[2499]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn";
connectAttr "MCP1RN.phl[2500]" "MCP1RN.phl[2501]";
connectAttr "MCP1RN.phl[2502]" "MCP1RN.phl[2503]";
connectAttr "MCP1RN.phl[2504]" "MCP1RN.phl[2505]";
connectAttr "MCP1RN.phl[2506]" "MCP1RN.phl[2507]";
connectAttr "MCP1RN.phl[2508]" "MCP1RN.phl[2509]";
connectAttr "MCP1RN.phl[2510]" "MCP1RN.phl[2511]";
connectAttr "MCP1RN.phl[2512]" "HIKSK2State1.RightFootGX";
connectAttr "MCP1RN.phl[2513]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn";
connectAttr "MCP1RN.phl[2514]" "MCP1RN.phl[2515]";
connectAttr "MCP1RN.phl[2516]" "MCP1RN.phl[2517]";
connectAttr "MCP1RN.phl[2518]" "MCP1RN.phl[2519]";
connectAttr "MCP1RN.phl[2520]" "MCP1RN.phl[2521]";
connectAttr "MCP1RN.phl[2522]" "MCP1RN.phl[2523]";
connectAttr "MCP1RN.phl[2524]" "MCP1RN.phl[2525]";
connectAttr "MCP1RN.phl[2526]" "HIKSK2State1.RightToeBaseGX";
connectAttr "MCP1RN.phl[2527]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn";
connectAttr "MCP1RN.phl[2528]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn";
connectAttr "MCP1RN.phl[2529]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn";
connectAttr "MCP1RN.phl[2530]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[514].dn";
connectAttr "MCP1RN.phl[2531]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[515].dn";
connectAttr "MCP1RN.phl[2532]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn";
connectAttr "MCP1RN.phl[2533]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn";
connectAttr "MCP1RN.phl[2534]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[531].dn";
connectAttr "MCP1RN.phl[2535]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[532].dn";
connectAttr "MCP1RN.phl[2536]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[521].dn";
connectAttr "MCP1RN.phl[2537]" "MCP1RN.phl[2538]";
connectAttr "MCP1RN.phl[2539]" "MCP1RN.phl[2540]";
connectAttr "MCP1RN.phl[2541]" "MCP1RN.phl[2542]";
connectAttr "MCP1RN.phl[2543]" "MCP1RN.phl[2544]";
connectAttr "MCP1RN.phl[2545]" "MCP1RN.phl[2546]";
connectAttr "MCP1RN.phl[2547]" "MCP1RN.phl[2548]";
connectAttr "MCP1RN.phl[2549]" "HIKSK2State1.LeftUpLegGX";
connectAttr "MCP1RN.phl[2550]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn";
connectAttr "MCP1RN.phl[2551]" "MCP1RN.phl[2552]";
connectAttr "MCP1RN.phl[2553]" "MCP1RN.phl[2554]";
connectAttr "MCP1RN.phl[2555]" "MCP1RN.phl[2556]";
connectAttr "MCP1RN.phl[2557]" "MCP1RN.phl[2558]";
connectAttr "MCP1RN.phl[2559]" "MCP1RN.phl[2560]";
connectAttr "MCP1RN.phl[2561]" "MCP1RN.phl[2562]";
connectAttr "MCP1RN.phl[2563]" "HIKSK2State1.LeftLegGX";
connectAttr "MCP1RN.phl[2564]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[533].dn";
connectAttr "MCP1RN.phl[2565]" "MCP1RN.phl[2566]";
connectAttr "MCP1RN.phl[2567]" "MCP1RN.phl[2568]";
connectAttr "MCP1RN.phl[2569]" "MCP1RN.phl[2570]";
connectAttr "MCP1RN.phl[2571]" "MCP1RN.phl[2572]";
connectAttr "MCP1RN.phl[2573]" "MCP1RN.phl[2574]";
connectAttr "MCP1RN.phl[2575]" "MCP1RN.phl[2576]";
connectAttr "MCP1RN.phl[2577]" "HIKSK2State1.LeftFootGX";
connectAttr "MCP1RN.phl[2578]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[538].dn";
connectAttr "MCP1RN.phl[2579]" "MCP1RN.phl[2580]";
connectAttr "MCP1RN.phl[2581]" "MCP1RN.phl[2582]";
connectAttr "MCP1RN.phl[2583]" "MCP1RN.phl[2584]";
connectAttr "MCP1RN.phl[2585]" "MCP1RN.phl[2586]";
connectAttr "MCP1RN.phl[2587]" "MCP1RN.phl[2588]";
connectAttr "MCP1RN.phl[2589]" "MCP1RN.phl[2590]";
connectAttr "MCP1RN.phl[2591]" "HIKSK2State1.LeftToeBaseGX";
connectAttr "MCP1RN.phl[2592]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[539].dn";
connectAttr "MCP1RN.phl[2593]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[540].dn";
connectAttr "MCP1RN.phl[2594]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[535].dn";
connectAttr "MCP1RN.phl[2595]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[541].dn";
connectAttr "MCP1RN.phl[2596]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[536].dn";
connectAttr "MCP1RN.phl[2597]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[534].dn";
connectAttr "MCP1RN.phl[2598]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[542].dn";
connectAttr "MCP1RN.phl[2599]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[544].dn";
connectAttr "MCP1RN.phl[2600]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[543].dn";
connectAttr "MCP1RN.phl[2601]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[549].dn";
connectAttr "MCP1RN.phl[2602]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[546].dn";
connectAttr "MCP1RN.phl[2603]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[545].dn";
connectAttr "MCP1RN.phl[2604]" "HIKSK2State1.ReferenceGX";
connectAttr "MCP1RN.phl[2605]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[551].dn";
connectAttr "MCP1RN.phl[2606]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[547].dn";
connectAttr "MCP1RN.phl[2607]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[548].dn";
connectAttr "MCP1RN.phl[2608]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[550].dn";
connectAttr "MCP1RN.phl[2609]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[537].dn";
connectAttr "MCP1RN.phl[2610]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[552].dn";
connectAttr "MCP1RN.phl[2611]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[553].dn";
connectAttr "MCP1RN.phl[2612]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[554].dn";
connectAttr "MCP1RN.phl[2613]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[555].dn";
connectAttr "MCP1RN.phl[2614]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[557].dn";
connectAttr "MCP1RN.phl[2615]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[558].dn";
connectAttr "MCP1RN.phl[2616]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[565].dn";
connectAttr "MCP1RN.phl[2617]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[560].dn";
connectAttr "MCP1RN.phl[2618]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[559].dn";
connectAttr "MCP1RN.phl[2619]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[567].dn";
connectAttr "MCP1RN.phl[2620]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[570].dn";
connectAttr "MCP1RN.phl[2621]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[566].dn";
connectAttr "MCP1RN.phl[2622]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[569].dn";
connectAttr "MCP1RN.phl[2623]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[562].dn";
connectAttr "MCP1RN.phl[2624]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[556].dn";
connectAttr "MCP1RN.phl[2625]" "HIKRetargeterNode1.InputCharacterDefinitionSrc";
connectAttr "MCP1RN.phl[2626]" "HIKSK2State1.InputCharacterDefinition";
connectAttr "MCP1RN.phl[2627]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[563].dn";
connectAttr "MCP1RN.phl[2628]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[561].dn";
connectAttr "MCP1RN.phl[2629]" "HIKRetargeterNode1.InputSrcPropertySetState";
connectAttr "MCP1RN.phl[2630]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[568].dn";
connectAttr "MCP1RN.phl[2631]" "MCP1RN.phl[2632]";
connectAttr "MCP1RN.phl[2633]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[571].dn";
connectAttr "MCP1RN.phl[2634]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[747].dn";
connectAttr "MCP1RN.phl[2635]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[739].dn";
connectAttr "MCP1RN.phl[2636]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[745].dn";
connectAttr "MCP1RN.phl[2637]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[746].dn";
connectAttr "MCP1RN.phl[2638]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[751].dn";
connectAttr "MCP1RN.phl[2639]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[752].dn";
connectAttr "MCP1RN.phl[2640]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[740].dn";
connectAttr "MCP1RN.phl[2641]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[753].dn";
connectAttr "MCP1RN.phl[2642]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[748].dn";
connectAttr "MCP1RN.phl[2643]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[733].dn";
connectAttr "MCP1RN.phl[2644]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[754].dn";
connectAttr "MCP1RN.phl[2645]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[755].dn";
connectAttr "MCP1RN.phl[2646]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[749].dn";
connectAttr "MCP1RN.phl[2647]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[734].dn";
connectAttr "MCP1RN.phl[2648]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[735].dn";
connectAttr "MCP1RN.phl[2649]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[736].dn";
connectAttr "MCP1RN.phl[2650]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[756].dn";
connectAttr "MCP1RN.phl[2651]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[757].dn";
connectAttr "MCP1RN.phl[2652]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[758].dn";
connectAttr "MCP1RN.phl[2653]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[737].dn";
connectAttr "MCP1RN.phl[2654]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[741].dn";
connectAttr "MCP1RN.phl[2655]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[742].dn";
connectAttr "MCP1RN.phl[2656]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[759].dn";
connectAttr "MCP1RN.phl[2657]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[738].dn";
connectAttr "MCP1RN.phl[2658]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[743].dn";
connectAttr "MCP1RN.phl[2659]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[744].dn";
connectAttr "MCP1RN.phl[2660]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[761].dn";
connectAttr "MCP1RN.phl[2661]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[762].dn";
connectAttr "MCP1RN.phl[2662]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[770].dn";
connectAttr "MCP1RN.phl[2663]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[763].dn";
connectAttr "MCP1RN.phl[2664]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[771].dn";
connectAttr "MCP1RN.phl[2665]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[764].dn";
connectAttr "MCP1RN.phl[2666]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[783].dn";
connectAttr "MCP1RN.phl[2667]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[774].dn";
connectAttr "MCP1RN.phl[2668]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[775].dn";
connectAttr "MCP1RN.phl[2669]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[777].dn";
connectAttr "MCP1RN.phl[2670]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[788].dn";
connectAttr "MCP1RN.phl[2671]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[786].dn";
connectAttr "MCP1RN.phl[2672]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[784].dn";
connectAttr "MCP1RN.phl[2673]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[766].dn";
connectAttr "MCP1RN.phl[2674]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[772].dn";
connectAttr "MCP1RN.phl[2675]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[787].dn";
connectAttr "MCP1RN.phl[2676]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[780].dn";
connectAttr "MCP1RN.phl[2677]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[773].dn";
connectAttr "MCP1RN.phl[2678]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[776].dn";
connectAttr "MCP1RN.phl[2679]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[785].dn";
connectAttr "MCP1RN.phl[2680]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[781].dn";
connectAttr "MCP1RN.phl[2681]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[789].dn";
connectAttr "MCP1RN.phl[2682]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[779].dn";
connectAttr "MCP1RN.phl[2683]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[778].dn";
connectAttr "MCP1RN.phl[2684]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[782].dn";
connectAttr "MCP1RN.phl[2685]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[765].dn";
connectAttr "MCP1RN.phl[2686]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[790].dn";
connectAttr "MCP1RN.phl[2687]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[767].dn";
connectAttr "MCP1RN.phl[2688]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[791].dn";
connectAttr "MCP1RN.phl[2689]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[768].dn";
connectAttr "MCP1RN.phl[2690]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[760].dn";
connectAttr "MCP1RN.phl[2691]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[792].dn";
connectAttr "MCP1RN.phl[2692]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[793].dn";
connectAttr "MCP1RN.phl[2693]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[794].dn";
connectAttr "MCP1RN.phl[2694]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[795].dn";
connectAttr "MCP1RN.phl[2695]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[796].dn";
connectAttr "MCP1RN.phl[2696]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[797].dn";
connectAttr "MCP1RN.phl[2697]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[798].dn";
connectAttr "MCP1RN.phl[2698]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[799].dn";
connectAttr "MCP1RN.phl[2699]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[800].dn";
connectAttr "MCP1RN.phl[2700]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[801].dn";
connectAttr "MCP1RN.phl[2701]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[802].dn";
connectAttr "MCP1RN.phl[2702]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[803].dn";
connectAttr "MCP1RN.phl[2703]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[804].dn";
connectAttr "MCP1RN.phl[2704]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[769].dn";
connectAttr "MCP1RN.phl[2705]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[805].dn";
connectAttr "MCP1RN.phl[2706]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[838].dn";
connectAttr "MCP1RN.phl[2707]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[822].dn";
connectAttr "MCP1RN.phl[2708]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[850].dn";
connectAttr "MCP1RN.phl[2709]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[851].dn";
connectAttr "MCP1RN.phl[2710]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[807].dn";
connectAttr "MCP1RN.phl[2711]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[811].dn";
connectAttr "MCP1RN.phl[2712]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[812].dn";
connectAttr "MCP1RN.phl[2713]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[848].dn";
connectAttr "MCP1RN.phl[2714]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[849].dn";
connectAttr "MCP1RN.phl[2715]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[808].dn";
connectAttr "MCP1RN.phl[2716]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[843].dn";
connectAttr "MCP1RN.phl[2717]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[839].dn";
connectAttr "MCP1RN.phl[2718]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[816].dn";
connectAttr "MCP1RN.phl[2719]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[832].dn";
connectAttr "MCP1RN.phl[2720]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[852].dn";
connectAttr "MCP1RN.phl[2721]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[834].dn";
connectAttr "MCP1RN.phl[2722]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[817].dn";
connectAttr "MCP1RN.phl[2723]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[840].dn";
connectAttr "MCP1RN.phl[2724]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[853].dn";
connectAttr "MCP1RN.phl[2725]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[854].dn";
connectAttr "MCP1RN.phl[2726]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[855].dn";
connectAttr "MCP1RN.phl[2727]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[818].dn";
connectAttr "MCP1RN.phl[2728]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[823].dn";
connectAttr "MCP1RN.phl[2729]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[806].dn";
connectAttr "MCP1RN.phl[2730]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[813].dn";
connectAttr "MCP1RN.phl[2731]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[856].dn";
connectAttr "MCP1RN.phl[2732]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[833].dn";
connectAttr "MCP1RN.phl[2733]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[810].dn";
connectAttr "MCP1RN.phl[2734]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[819].dn";
connectAttr "MCP1RN.phl[2735]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[857].dn";
connectAttr "MCP1RN.phl[2736]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[837].dn";
connectAttr "MCP1RN.phl[2737]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[858].dn";
connectAttr "MCP1RN.phl[2738]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[844].dn";
connectAttr "MCP1RN.phl[2739]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[842].dn";
connectAttr "MCP1RN.phl[2740]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[829].dn";
connectAttr "MCP1RN.phl[2741]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[846].dn";
connectAttr "MCP1RN.phl[2742]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[809].dn";
connectAttr "MCP1RN.phl[2743]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[845].dn";
connectAttr "MCP1RN.phl[2744]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[859].dn";
connectAttr "MCP1RN.phl[2745]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[820].dn";
connectAttr "MCP1RN.phl[2746]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[830].dn";
connectAttr "MCP1RN.phl[2747]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[860].dn";
connectAttr "MCP1RN.phl[2748]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[835].dn";
connectAttr "MCP1RN.phl[2749]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[815].dn";
connectAttr "MCP1RN.phl[2750]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[836].dn";
connectAttr "MCP1RN.phl[2751]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[847].dn";
connectAttr "MCP1RN.phl[2752]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[861].dn";
connectAttr "MCP1RN.phl[2753]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[814].dn";
connectAttr "MCP1RN.phl[2754]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[862].dn";
connectAttr "MCP1RN.phl[2755]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[863].dn";
connectAttr "MCP1RN.phl[2756]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[841].dn";
connectAttr "MCP1RN.phl[2757]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[864].dn";
connectAttr "MCP1RN.phl[2758]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[821].dn";
connectAttr "MCP1RN.phl[2759]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[865].dn";
connectAttr "MCP1RN.phl[2760]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[825].dn";
connectAttr "MCP1RN.phl[2761]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[866].dn";
connectAttr "MCP1RN.phl[2762]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[867].dn";
connectAttr "MCP1RN.phl[2763]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[868].dn";
connectAttr "MCP1RN.phl[2764]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[869].dn";
connectAttr "MCP1RN.phl[2765]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[831].dn";
connectAttr "MCP1RN.phl[2766]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[824].dn";
connectAttr "MCP1RN.phl[2767]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[826].dn";
connectAttr "MCP1RN.phl[2768]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[827].dn";
connectAttr "MCP1RN.phl[2769]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[828].dn";
connectAttr "MCP1RN.phl[2770]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[875].dn";
connectAttr "MCP1RN.phl[2771]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[882].dn";
connectAttr "MCP1RN.phl[2772]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[896].dn";
connectAttr "MCP1RN.phl[2773]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[885].dn";
connectAttr "MCP1RN.phl[2774]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[891].dn";
connectAttr "MCP1RN.phl[2775]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[904].dn";
connectAttr "MCP1RN.phl[2776]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[894].dn";
connectAttr "MCP1RN.phl[2777]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[903].dn";
connectAttr "MCP1RN.phl[2778]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[906].dn";
connectAttr "MCP1RN.phl[2779]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[892].dn";
connectAttr "MCP1RN.phl[2780]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[908].dn";
connectAttr "MCP1RN.phl[2781]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[901].dn";
connectAttr "MCP1RN.phl[2782]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[893].dn";
connectAttr "MCP1RN.phl[2783]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[905].dn";
connectAttr "MCP1RN.phl[2784]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[890].dn";
connectAttr "MCP1RN.phl[2785]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[873].dn";
connectAttr "MCP1RN.phl[2786]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[877].dn";
connectAttr "MCP1RN.phl[2787]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[874].dn";
connectAttr "MCP1RN.phl[2788]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[914].dn";
connectAttr "MCP1RN.phl[2789]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[887].dn";
connectAttr "MCP1RN.phl[2790]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[902].dn";
connectAttr "MCP1RN.phl[2791]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[919].dn";
connectAttr "MCP1RN.phl[2792]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[871].dn";
connectAttr "MCP1RN.phl[2793]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[895].dn";
connectAttr "MCP1RN.phl[2794]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[907].dn";
connectAttr "MCP1RN.phl[2795]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[897].dn";
connectAttr "MCP1RN.phl[2796]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[909].dn";
connectAttr "MCP1RN.phl[2797]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[898].dn";
connectAttr "MCP1RN.phl[2798]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[899].dn";
connectAttr "MCP1RN.phl[2799]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[900].dn";
connectAttr "MCP1RN.phl[2800]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[912].dn";
connectAttr "MCP1RN.phl[2801]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[910].dn";
connectAttr "MCP1RN.phl[2802]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[911].dn";
connectAttr "MCP1RN.phl[2803]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[913].dn";
connectAttr "MCP1RN.phl[2804]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[915].dn";
connectAttr "MCP1RN.phl[2805]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[916].dn";
connectAttr "MCP1RN.phl[2806]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[917].dn";
connectAttr "MCP1RN.phl[2807]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[876].dn";
connectAttr "MCP1RN.phl[2808]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[878].dn";
connectAttr "MCP1RN.phl[2809]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[918].dn";
connectAttr "MCP1RN.phl[2810]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[888].dn";
connectAttr "MCP1RN.phl[2811]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[886].dn";
connectAttr "MCP1RN.phl[2812]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[870].dn";
connectAttr "MCP1RN.phl[2813]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[920].dn";
connectAttr "MCP1RN.phl[2814]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[921].dn";
connectAttr "MCP1RN.phl[2815]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[879].dn";
connectAttr "MCP1RN.phl[2816]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[872].dn";
connectAttr "MCP1RN.phl[2817]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[922].dn";
connectAttr "MCP1RN.phl[2818]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[923].dn";
connectAttr "MCP1RN.phl[2819]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[928].dn";
connectAttr "MCP1RN.phl[2820]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[924].dn";
connectAttr "MCP1RN.phl[2821]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[925].dn";
connectAttr "MCP1RN.phl[2822]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[926].dn";
connectAttr "MCP1RN.phl[2823]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[927].dn";
connectAttr "MCP1RN.phl[2824]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[929].dn";
connectAttr "MCP1RN.phl[2825]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[880].dn";
connectAttr "MCP1RN.phl[2826]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[889].dn";
connectAttr "MCP1RN.phl[2827]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[930].dn";
connectAttr "MCP1RN.phl[2828]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[881].dn";
connectAttr "MCP1RN.phl[2829]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[931].dn";
connectAttr "MCP1RN.phl[2830]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[932].dn";
connectAttr "MCP1RN.phl[2831]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[883].dn";
connectAttr "MCP1RN.phl[2832]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[933].dn";
connectAttr "MCP1RN.phl[2833]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[884].dn";
connectAttr "MCP1RN.phl[2834]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[937].dn";
connectAttr "MCP1RN.phl[2835]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[952].dn";
connectAttr "MCP1RN.phl[2836]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[934].dn";
connectAttr "MCP1RN.phl[2837]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[950].dn";
connectAttr "MCP1RN.phl[2838]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[943].dn";
connectAttr "MCP1RN.phl[2839]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[946].dn";
connectAttr "MCP1RN.phl[2840]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[938].dn";
connectAttr "MCP1RN.phl[2841]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[953].dn";
connectAttr "MCP1RN.phl[2842]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[941].dn";
connectAttr "MCP1RN.phl[2843]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[935].dn";
connectAttr "MCP1RN.phl[2844]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[940].dn";
connectAttr "MCP1RN.phl[2845]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[954].dn";
connectAttr "MCP1RN.phl[2846]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[951].dn";
connectAttr "MCP1RN.phl[2847]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[936].dn";
connectAttr "MCP1RN.phl[2848]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[948].dn";
connectAttr "MCP1RN.phl[2849]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[947].dn";
connectAttr "MCP1RN.phl[2850]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[949].dn";
connectAttr "MCP1RN.phl[2851]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[942].dn";
connectAttr "MCP1RN.phl[2852]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[944].dn";
connectAttr "MCP1RN.phl[2853]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[939].dn";
connectAttr "MCP1RN.phl[2854]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[945].dn";
connectAttr "MCP1RN.phl[2855]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[672].dn";
connectAttr "MCP1RN.phl[2856]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[670].dn";
connectAttr "MCP1RN.phl[2857]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[657].dn";
connectAttr "MCP1RN.phl[2858]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[673].dn";
connectAttr "MCP1RN.phl[2859]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[680].dn";
connectAttr "MCP1RN.phl[2860]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[642].dn";
connectAttr "MCP1RN.phl[2861]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[656].dn";
connectAttr "MCP1RN.phl[2862]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[663].dn";
connectAttr "MCP1RN.phl[2863]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[645].dn";
connectAttr "MCP1RN.phl[2864]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[641].dn";
connectAttr "MCP1RN.phl[2865]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[665].dn";
connectAttr "MCP1RN.phl[2866]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[682].dn";
connectAttr "MCP1RN.phl[2867]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[646].dn";
connectAttr "MCP1RN.phl[2868]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[671].dn";
connectAttr "MCP1RN.phl[2869]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[661].dn";
connectAttr "MCP1RN.phl[2870]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[676].dn";
connectAttr "MCP1RN.phl[2871]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[650].dn";
connectAttr "MCP1RN.phl[2872]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[683].dn";
connectAttr "MCP1RN.phl[2873]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[660].dn";
connectAttr "MCP1RN.phl[2874]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[643].dn";
connectAttr "MCP1RN.phl[2875]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[651].dn";
connectAttr "MCP1RN.phl[2876]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[674].dn";
connectAttr "MCP1RN.phl[2877]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[664].dn";
connectAttr "MCP1RN.phl[2878]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[688].dn";
connectAttr "MCP1RN.phl[2879]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[662].dn";
connectAttr "MCP1RN.phl[2880]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[684].dn";
connectAttr "MCP1RN.phl[2881]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[675].dn";
connectAttr "MCP1RN.phl[2882]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[644].dn";
connectAttr "MCP1RN.phl[2883]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[659].dn";
connectAttr "MCP1RN.phl[2884]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[677].dn";
connectAttr "MCP1RN.phl[2885]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[685].dn";
connectAttr "MCP1RN.phl[2886]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[678].dn";
connectAttr "MCP1RN.phl[2887]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[640].dn";
connectAttr "MCP1RN.phl[2888]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[681].dn";
connectAttr "MCP1RN.phl[2889]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[679].dn";
connectAttr "MCP1RN.phl[2890]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[668].dn";
connectAttr "MCP1RN.phl[2891]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[690].dn";
connectAttr "MCP1RN.phl[2892]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[648].dn";
connectAttr "MCP1RN.phl[2893]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[695].dn";
connectAttr "MCP1RN.phl[2894]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[652].dn";
connectAttr "MCP1RN.phl[2895]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[653].dn";
connectAttr "MCP1RN.phl[2896]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[658].dn";
connectAttr "MCP1RN.phl[2897]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[666].dn";
connectAttr "MCP1RN.phl[2898]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[649].dn";
connectAttr "MCP1RN.phl[2899]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[654].dn";
connectAttr "MCP1RN.phl[2900]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[686].dn";
connectAttr "MCP1RN.phl[2901]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[687].dn";
connectAttr "MCP1RN.phl[2902]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[655].dn";
connectAttr "MCP1RN.phl[2903]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[689].dn";
connectAttr "MCP1RN.phl[2904]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[667].dn";
connectAttr "MCP1RN.phl[2905]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[692].dn";
connectAttr "MCP1RN.phl[2906]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[669].dn";
connectAttr "MCP1RN.phl[2907]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[691].dn";
connectAttr "MCP1RN.phl[2908]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[693].dn";
connectAttr "MCP1RN.phl[2909]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[694].dn";
connectAttr "MCP1RN.phl[2910]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[647].dn";
connectAttr "MCP1RN.phl[2911]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[696].dn";
connectAttr "MCP1RN.phl[2912]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[697].dn";
connectAttr "MCP1RN.phl[2913]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[698].dn";
connectAttr "MCP1RN.phl[2914]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[699].dn";
connectAttr "MCP1RN.phl[2915]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[700].dn";
connectAttr "MCP1RN.phl[2916]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[701].dn";
connectAttr "MCP1RN.phl[2917]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[702].dn";
connectAttr "MCP1RN.phl[2918]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[703].dn";
connectAttr "MCP1RN.phl[2919]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[704].dn";
connectAttr "MCP1RN.phl[2920]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[713].dn";
connectAttr "MCP1RN.phl[2921]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[724].dn";
connectAttr "MCP1RN.phl[2922]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[709].dn";
connectAttr "MCP1RN.phl[2923]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[714].dn";
connectAttr "MCP1RN.phl[2924]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[722].dn";
connectAttr "MCP1RN.phl[2925]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[705].dn";
connectAttr "MCP1RN.phl[2926]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[725].dn";
connectAttr "MCP1RN.phl[2927]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[707].dn";
connectAttr "MCP1RN.phl[2928]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[708].dn";
connectAttr "MCP1RN.phl[2929]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[721].dn";
connectAttr "MCP1RN.phl[2930]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[718].dn";
connectAttr "MCP1RN.phl[2931]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[727].dn";
connectAttr "MCP1RN.phl[2932]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[715].dn";
connectAttr "MCP1RN.phl[2933]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[723].dn";
connectAttr "MCP1RN.phl[2934]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[716].dn";
connectAttr "MCP1RN.phl[2935]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[710].dn";
connectAttr "MCP1RN.phl[2936]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[717].dn";
connectAttr "MCP1RN.phl[2937]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[726].dn";
connectAttr "MCP1RN.phl[2938]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[720].dn";
connectAttr "MCP1RN.phl[2939]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[719].dn";
connectAttr "MCP1RN.phl[2940]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[728].dn";
connectAttr "MCP1RN.phl[2941]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[729].dn";
connectAttr "MCP1RN.phl[2942]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[730].dn";
connectAttr "MCP1RN.phl[2943]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[706].dn";
connectAttr "MCP1RN.phl[2944]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[731].dn";
connectAttr "MCP1RN.phl[2945]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[732].dn";
connectAttr "MCP1RN.phl[2946]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[711].dn";
connectAttr "MCP1RN.phl[2947]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[712].dn";
connectAttr "MCP1RN.phl[2948]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn";
connectAttr "MCP1RN.phl[2949]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn";
connectAttr "MCP1RN.phl[2950]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn";
connectAttr "MCP1RN.phl[2951]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn";
connectAttr "MCP1RN.phl[2952]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn";
connectAttr "MCP1RN.phl[2953]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn";
connectAttr "MCP1RN.phl[2954]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn";
connectAttr "MCP1RN.phl[2955]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn";
connectAttr "MCP1RN.phl[2956]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn";
connectAttr "MCP1RN.phl[2957]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn";
connectAttr "MCP1RN.phl[2958]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn";
connectAttr "MCP1RN.phl[2959]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn";
connectAttr "MCP1RN.phl[2960]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn";
connectAttr "MCP1RN.phl[2961]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn";
connectAttr "MCP1RN.phl[2962]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn";
connectAttr "MCP1RN.phl[2963]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn";
connectAttr "MCP1RN.phl[2964]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn";
connectAttr "MCP1RN.phl[2965]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn";
connectAttr "MCP1RN.phl[2966]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn";
connectAttr "MCP1RN.phl[2967]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn";
connectAttr "MCP1RN.phl[2968]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn";
connectAttr "MCP1RN.phl[2969]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn";
connectAttr "MCP1RN.phl[2970]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn";
connectAttr "MCP1RN.phl[2971]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn";
connectAttr "MCP1RN.phl[2972]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn";
connectAttr "MCP1RN.phl[2973]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn";
connectAttr "MCP1RN.phl[2974]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn";
connectAttr "MCP1RN.phl[2975]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn";
connectAttr "MCP1RN.phl[2976]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn";
connectAttr "MCP1RN.phl[2977]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn";
connectAttr "MCP1RN.phl[2978]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn";
connectAttr "MCP1RN.phl[2979]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn";
connectAttr "MCP1RN.phl[2980]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn";
connectAttr "MCP1RN.phl[2981]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn";
connectAttr "MCP1RN.phl[2982]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn";
connectAttr "MCP1RN.phl[2983]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn";
connectAttr "MCP1RN.phl[2984]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn";
connectAttr "MCP1RN.phl[2985]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn";
connectAttr "MCP1RN.phl[2986]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn";
connectAttr "MCP1RN.phl[2987]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn";
connectAttr "MCP1RN.phl[2988]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn";
connectAttr "MCP1RN.phl[2989]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn";
connectAttr "MCP1RN.phl[2990]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn";
connectAttr "MCP1RN.phl[2991]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn";
connectAttr "MCP1RN.phl[2992]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn";
connectAttr "MCP1RN.phl[2993]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn";
connectAttr "MCP1RN.phl[2994]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn";
connectAttr "MCP1RN.phl[2995]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn";
connectAttr "MCP1RN.phl[2996]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn";
connectAttr "MCP1RN.phl[2997]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn";
connectAttr "MCP1RN.phl[2998]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn";
connectAttr "MCP1RN.phl[2999]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn";
connectAttr "MCP1RN.phl[3000]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn";
connectAttr "MCP1RN.phl[3001]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn";
connectAttr "MCP1RN.phl[3002]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn";
connectAttr "MCP1RN.phl[3003]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn";
connectAttr "MCP1RN.phl[3004]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn";
connectAttr "MCP1RN.phl[3005]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn";
connectAttr "MCP1RN.phl[3006]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn";
connectAttr "MCP1RN.phl[3007]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn";
connectAttr "MCP1RN.phl[3008]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn";
connectAttr "MCP1RN.phl[3009]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn";
connectAttr "MCP1RN.phl[3010]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn";
connectAttr "MCP1RN.phl[3011]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn";
connectAttr "MCP1RN.phl[3012]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn";
connectAttr "MCP1RN.phl[3013]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn";
connectAttr "MCP1RN.phl[3014]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn";
connectAttr "MCP1RN.phl[3015]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn";
connectAttr "MCP1RN.phl[3016]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn";
connectAttr "MCP1RN.phl[3017]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn";
connectAttr "MCP1RN.phl[3018]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn";
connectAttr "MCP1RN.phl[3019]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn";
connectAttr "MCP1RN.phl[3020]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn";
connectAttr "MCP1RN.phl[3021]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn";
connectAttr "MCP1RN.phl[3022]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn";
connectAttr "MCP1RN.phl[3023]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn";
connectAttr "MCP1RN.phl[3024]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn";
connectAttr "MCP1RN.phl[3025]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn";
connectAttr "MCP1RN.phl[3026]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn";
connectAttr "MCP1RN.phl[3027]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn";
connectAttr "MCP1RN.phl[3028]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn";
connectAttr "MCP1RN.phl[3029]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn";
connectAttr "MCP1RN.phl[3030]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn";
connectAttr "MCP1RN.phl[3031]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn";
connectAttr "MCP1RN.phl[3032]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn";
connectAttr "MCP1RN.phl[3033]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn";
connectAttr "MCP1RN.phl[3034]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn";
connectAttr "MCP1RN.phl[3035]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn";
connectAttr "MCP1RN.phl[3036]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn";
connectAttr "MCP1RN.phl[3037]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn";
connectAttr "MCP1RN.phl[3038]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn";
connectAttr "MCP1RN.phl[3039]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn";
connectAttr "MCP1RN.phl[3040]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn";
connectAttr "MCP1RN.phl[3041]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn";
connectAttr "MCP1RN.phl[3042]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn";
connectAttr "MCP1RN.phl[3043]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn";
connectAttr "MCP1RN.phl[3044]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn";
connectAttr "MCP1RN.phl[3045]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn";
connectAttr "MCP1RN.phl[3046]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn";
connectAttr "MCP1RN.phl[3047]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn";
connectAttr "MCP1RN.phl[3048]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn";
connectAttr "MCP1RN.phl[3049]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn";
connectAttr "MCP1RN.phl[3050]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn";
connectAttr "MCP1RN.phl[3051]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn";
connectAttr "MCP1RN.phl[3052]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn";
connectAttr "MCP1RN.phl[3053]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn";
connectAttr "MCP1RN.phl[3054]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn";
connectAttr "MCP1RN.phl[3055]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn";
connectAttr "MCP1RN.phl[3056]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn";
connectAttr "MCP1RN.phl[3057]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn";
connectAttr "MCP1RN.phl[3058]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn";
connectAttr "MCP1RN.phl[3059]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn";
connectAttr "MCP1RN.phl[3060]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn";
connectAttr "MCP1RN.phl[3061]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn";
connectAttr "MCP1RN.phl[3062]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn";
connectAttr "MCP1RN.phl[3063]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn";
connectAttr "MCP1RN.phl[3064]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn";
connectAttr "MCP1RN.phl[3065]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn";
connectAttr "MCP1RN.phl[3066]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn";
connectAttr "MCP1RN.phl[3067]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn";
connectAttr "MCP1RN.phl[3068]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[436].dn";
connectAttr "MCP1RN.phl[3069]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn";
connectAttr "MCP1RN.phl[3070]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn";
connectAttr "MCP1RN.phl[3071]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn";
connectAttr "MCP1RN.phl[3072]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn";
connectAttr "MCP1RN.phl[3073]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn";
connectAttr "MCP1RN.phl[3074]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[440].dn";
connectAttr "MCP1RN.phl[3075]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn";
connectAttr "MCP1RN.phl[3076]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn";
connectAttr "MCP1RN.phl[3077]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn";
connectAttr "MCP1RN.phl[3078]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn";
connectAttr "MCP1RN.phl[3079]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn";
connectAttr "MCP1RN.phl[3080]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn";
connectAttr "MCP1RN.phl[3081]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn";
connectAttr "MCP1RN.phl[3082]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn";
connectAttr "MCP1RN.phl[3083]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn";
connectAttr "MCP1RN.phl[3084]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn";
connectAttr "MCP1RN.phl[3085]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn";
connectAttr "MCP1RN.phl[3086]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "MCP1RN.phl[3087]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn";
connectAttr "MCP1RN.phl[3088]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn";
connectAttr "MCP1RN.phl[3089]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn";
connectAttr "MCP1RN.phl[3090]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn";
connectAttr "MCP1RN.phl[3091]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn";
connectAttr "MCP1RN.phl[3092]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn";
connectAttr "MCP1RN.phl[3093]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn";
connectAttr "MCP1RN.phl[3094]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "MCP1RN.phl[3095]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "MCP1RN.phl[3096]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn";
connectAttr "MCP1RN.phl[3097]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn";
connectAttr "MCP1RN.phl[3098]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn";
connectAttr "MCP1RN.phl[3099]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn";
connectAttr "MCP1RN.phl[3100]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn";
connectAttr "MCP1RN.phl[3101]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn";
connectAttr "MCP1RN.phl[3102]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn";
connectAttr "MCP1RN.phl[3103]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn";
connectAttr "MCP1RN.phl[3104]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn";
connectAttr "MCP1RN.phl[3105]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn";
connectAttr "MCP1RN.phl[3106]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn";
connectAttr "MCP1RN.phl[3107]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn";
connectAttr "MCP1RN.phl[3108]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn";
connectAttr "MCP1RN.phl[3109]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn";
connectAttr "MCP1RN.phl[3110]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn";
connectAttr "MCP1RN.phl[3111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn";
connectAttr "MCP1RN.phl[3112]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn";
connectAttr "MCP1RN.phl[3113]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn";
connectAttr "MCP1RN.phl[3114]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn";
connectAttr "MCP1RN.phl[3115]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn";
connectAttr "MCP1RN.phl[3116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn";
connectAttr "MCP1RN.phl[3117]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn";
connectAttr "MCP1RN.phl[3118]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn";
connectAttr "MCP1RN.phl[3119]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn";
connectAttr "MCP1RN.phl[3120]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn";
connectAttr "MCP1RN.phl[3121]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn";
connectAttr "MCP1RN.phl[3122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn";
connectAttr "MCP1RN.phl[3123]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn";
connectAttr "MCP1RN.phl[3124]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn";
connectAttr "MCP1RN.phl[3125]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn";
connectAttr "MCP1RN.phl[3126]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn";
connectAttr "MCP1RN.phl[3127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn";
connectAttr "MCP1RN.phl[3128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn";
connectAttr "MCP1RN.phl[3129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn";
connectAttr "MCP1RN.phl[3130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn";
connectAttr "MCP1RN.phl[3131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn";
connectAttr "MCP1RN.phl[3132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn";
connectAttr "MCP1RN.phl[3133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn";
connectAttr "MCP1RN.phl[3134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn";
connectAttr "MCP1RN.phl[3135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn";
connectAttr "MCP1RN.phl[3136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn";
connectAttr "MCP1RN.phl[3137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn";
connectAttr "MCP1RN.phl[3138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn";
connectAttr "MCP1RN.phl[3139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn";
connectAttr "MCP1RN.phl[3140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn";
connectAttr "MCP1RN.phl[3141]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn";
connectAttr "MCP1RN.phl[3142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn";
connectAttr "MCP1RN.phl[3143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn";
connectAttr "MCP1RN.phl[3144]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn";
connectAttr "MCP1RN.phl[3145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn";
connectAttr "MCP1RN.phl[3146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn";
connectAttr "MCP1RN.phl[3147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn";
connectAttr "MCP1RN.phl[3148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn";
connectAttr "MCP1RN.phl[3149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn";
connectAttr "MCP1RN.phl[3150]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn";
connectAttr "MCP1RN.phl[3151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn";
connectAttr "MCP1RN.phl[3152]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn";
connectAttr "MCP1RN.phl[3153]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn";
connectAttr "MCP1RN.phl[3154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn";
connectAttr "MCP1RN.phl[3155]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn";
connectAttr "MCP1RN.phl[3156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn";
connectAttr "MCP1RN.phl[3157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn";
connectAttr "MCP1RN.phl[3158]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn";
connectAttr "MCP1RN.phl[3159]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn";
connectAttr "MCP1RN.phl[3160]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn";
connectAttr "MCP1RN.phl[3161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn";
connectAttr "MCP1RN.phl[3162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn";
connectAttr "MCP1RN.phl[3163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn";
connectAttr "MCP1RN.phl[3164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn";
connectAttr "MCP1RN.phl[3165]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn";
connectAttr "MCP1RN.phl[3166]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn";
connectAttr "MCP1RN.phl[3167]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn";
connectAttr "MCP1RN.phl[3168]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn";
connectAttr "MCP1RN.phl[3169]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn";
connectAttr "MCP1RN.phl[3170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn";
connectAttr "MCP1RN.phl[3171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn";
connectAttr "MCP1RN.phl[3172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn";
connectAttr "MCP1RN.phl[3173]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn";
connectAttr "MCP1RN.phl[3174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn";
connectAttr "MCP1RN.phl[3175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn";
connectAttr "MCP1RN.phl[3176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn";
connectAttr "MCP1RN.phl[3177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn";
connectAttr "MCP1RN.phl[3178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn";
connectAttr "MCP1RN.phl[3179]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn";
connectAttr "MCP1RN.phl[3180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn";
connectAttr "MCP1RN.phl[3181]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn";
connectAttr "MCP1RN.phl[3182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn";
connectAttr "MCP1RN.phl[3183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn";
connectAttr "MCP1RN.phl[3184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn";
connectAttr "MCP1RN.phl[3185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn";
connectAttr "MCP1RN.phl[3186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn";
connectAttr "MCP1RN.phl[3187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn";
connectAttr "MCP1RN.phl[3188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn";
connectAttr "MCP1RN.phl[3189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn";
connectAttr "MCP1RN.phl[3190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn";
connectAttr "MCP1RN.phl[3191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn";
connectAttr "MCP1RN.phl[3192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn";
connectAttr "MCP1RN.phl[3193]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn";
connectAttr "MCP1RN.phl[3194]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn";
connectAttr "MCP1RN.phl[3195]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn";
connectAttr "MCP1RN.phl[3196]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn";
connectAttr "MCP1RN.phl[3197]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn";
connectAttr "MCP1RN.phl[3198]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn";
connectAttr "MCP1RN.phl[3199]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "RIGRN.sr";
connectAttr "sharedReferenceNode.sr" "MCP1RN.sr";
connectAttr "composeMatrix22.omat" "multMatrix1.i[0]";
connectAttr "multMatrix1.o" "multMatrix2.i[0]";
connectAttr "multMatrix2.o" "decomposeMatrix1.imat";
connectAttr "decomposeMatrix1.oq" "quatToEuler1.iq";
connectAttr "composeMatrix23.omat" "multMatrix3.i[0]";
connectAttr "multMatrix3.o" "multMatrix4.i[0]";
connectAttr "multMatrix4.o" "decomposeMatrix2.imat";
connectAttr "decomposeMatrix2.oq" "quatToEuler2.iq";
connectAttr "decomposeMatrix3.ot" "plusMinusAverage1.i3[0]";
connectAttr "plusMinusAverage1.o3" "pointMatrixMult1.ip";
connectAttr "pointMatrixMult1.o" "plusMinusAverage2.i3[0]";
connectAttr "composeMatrix24.omat" "multMatrix5.i[0]";
connectAttr "multMatrix5.o" "multMatrix6.i[0]";
connectAttr "multMatrix6.o" "decomposeMatrix4.imat";
connectAttr "decomposeMatrix4.oq" "quatToEuler3.iq";
connectAttr "composeMatrix25.omat" "multMatrix7.i[0]";
connectAttr "multMatrix7.o" "multMatrix8.i[0]";
connectAttr "multMatrix8.o" "decomposeMatrix5.imat";
connectAttr "decomposeMatrix5.oq" "quatToEuler4.iq";
connectAttr "composeMatrix26.omat" "multMatrix9.i[0]";
connectAttr "multMatrix9.o" "multMatrix10.i[0]";
connectAttr "multMatrix10.o" "decomposeMatrix6.imat";
connectAttr "decomposeMatrix6.oq" "quatToEuler5.iq";
connectAttr "composeMatrix27.omat" "multMatrix11.i[0]";
connectAttr "multMatrix11.o" "multMatrix12.i[0]";
connectAttr "multMatrix12.o" "decomposeMatrix7.imat";
connectAttr "decomposeMatrix7.oq" "quatToEuler6.iq";
connectAttr "composeMatrix28.omat" "multMatrix13.i[0]";
connectAttr "multMatrix13.o" "multMatrix14.i[0]";
connectAttr "multMatrix14.o" "decomposeMatrix8.imat";
connectAttr "decomposeMatrix8.oq" "quatToEuler7.iq";
connectAttr "composeMatrix29.omat" "multMatrix15.i[0]";
connectAttr "multMatrix15.o" "multMatrix16.i[0]";
connectAttr "multMatrix16.o" "decomposeMatrix9.imat";
connectAttr "decomposeMatrix9.oq" "quatToEuler8.iq";
connectAttr "composeMatrix30.omat" "multMatrix17.i[0]";
connectAttr "multMatrix17.o" "multMatrix18.i[0]";
connectAttr "multMatrix18.o" "decomposeMatrix10.imat";
connectAttr "decomposeMatrix10.oq" "quatToEuler9.iq";
connectAttr "composeMatrix31.omat" "multMatrix19.i[0]";
connectAttr "multMatrix19.o" "multMatrix20.i[0]";
connectAttr "multMatrix20.o" "decomposeMatrix11.imat";
connectAttr "decomposeMatrix11.oq" "quatToEuler10.iq";
connectAttr "composeMatrix32.omat" "multMatrix21.i[0]";
connectAttr "multMatrix21.o" "multMatrix22.i[0]";
connectAttr "multMatrix22.o" "decomposeMatrix12.imat";
connectAttr "decomposeMatrix12.oq" "quatToEuler11.iq";
connectAttr "composeMatrix33.omat" "multMatrix23.i[0]";
connectAttr "multMatrix23.o" "multMatrix24.i[0]";
connectAttr "multMatrix24.o" "decomposeMatrix13.imat";
connectAttr "decomposeMatrix13.oq" "quatToEuler12.iq";
connectAttr "composeMatrix34.omat" "multMatrix25.i[0]";
connectAttr "multMatrix25.o" "multMatrix26.i[0]";
connectAttr "multMatrix26.o" "decomposeMatrix14.imat";
connectAttr "decomposeMatrix14.oq" "quatToEuler13.iq";
connectAttr "composeMatrix35.omat" "multMatrix27.i[0]";
connectAttr "multMatrix27.o" "multMatrix28.i[0]";
connectAttr "multMatrix28.o" "decomposeMatrix15.imat";
connectAttr "decomposeMatrix15.oq" "quatToEuler14.iq";
connectAttr "composeMatrix36.omat" "multMatrix29.i[0]";
connectAttr "multMatrix29.o" "multMatrix30.i[0]";
connectAttr "multMatrix30.o" "decomposeMatrix16.imat";
connectAttr "decomposeMatrix16.oq" "quatToEuler15.iq";
connectAttr "composeMatrix37.omat" "multMatrix31.i[0]";
connectAttr "multMatrix31.o" "multMatrix32.i[0]";
connectAttr "multMatrix32.o" "decomposeMatrix17.imat";
connectAttr "decomposeMatrix17.oq" "quatToEuler16.iq";
connectAttr "composeMatrix38.omat" "multMatrix33.i[0]";
connectAttr "multMatrix33.o" "multMatrix34.i[0]";
connectAttr "multMatrix34.o" "decomposeMatrix18.imat";
connectAttr "decomposeMatrix18.oq" "quatToEuler17.iq";
connectAttr "decomposeMatrix19.ot" "plusMinusAverage3.i3[0]";
connectAttr "plusMinusAverage3.o3" "pointMatrixMult2.ip";
connectAttr "pointMatrixMult2.o" "plusMinusAverage4.i3[0]";
connectAttr "composeMatrix39.omat" "multMatrix35.i[0]";
connectAttr "multMatrix35.o" "multMatrix36.i[0]";
connectAttr "multMatrix36.o" "decomposeMatrix20.imat";
connectAttr "decomposeMatrix20.oq" "quatToEuler18.iq";
connectAttr "composeMatrix40.omat" "multMatrix37.i[0]";
connectAttr "multMatrix37.o" "multMatrix38.i[0]";
connectAttr "multMatrix38.o" "decomposeMatrix21.imat";
connectAttr "decomposeMatrix21.oq" "quatToEuler19.iq";
connectAttr "decomposeMatrix22.ot" "plusMinusAverage5.i3[0]";
connectAttr "plusMinusAverage5.o3" "pointMatrixMult3.ip";
connectAttr "pointMatrixMult3.o" "plusMinusAverage6.i3[0]";
connectAttr "decomposeMatrix23.ot" "plusMinusAverage7.i3[0]";
connectAttr "plusMinusAverage7.o3" "pointMatrixMult4.ip";
connectAttr "pointMatrixMult4.o" "plusMinusAverage8.i3[0]";
connectAttr "composeMatrix41.omat" "multMatrix39.i[0]";
connectAttr "multMatrix39.o" "multMatrix40.i[0]";
connectAttr "multMatrix40.o" "decomposeMatrix24.imat";
connectAttr "decomposeMatrix24.oq" "quatToEuler20.iq";
connectAttr "decomposeMatrix25.ot" "plusMinusAverage9.i3[0]";
connectAttr "plusMinusAverage9.o3" "pointMatrixMult5.ip";
connectAttr "pointMatrixMult5.o" "plusMinusAverage10.i3[0]";
connectAttr "decomposeMatrix26.ot" "plusMinusAverage11.i3[0]";
connectAttr "plusMinusAverage11.o3" "pointMatrixMult6.ip";
connectAttr "pointMatrixMult6.o" "plusMinusAverage12.i3[0]";
connectAttr "composeMatrix42.omat" "multMatrix41.i[0]";
connectAttr "multMatrix41.o" "multMatrix42.i[0]";
connectAttr "multMatrix42.o" "decomposeMatrix27.imat";
connectAttr "decomposeMatrix27.oq" "quatToEuler21.iq";
connectAttr "decomposeMatrix28.ot" "plusMinusAverage13.i3[0]";
connectAttr "plusMinusAverage13.o3" "pointMatrixMult7.ip";
connectAttr "pointMatrixMult7.o" "plusMinusAverage14.i3[0]";
connectAttr "HIKSK2State1.OutputCharacterState" "HIKRetargeterNode1.InputCharacterState"
		;
connectAttr "decomposeMatrix3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "multMatrix7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "decomposeMatrix1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "decomposeMatrix2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "multMatrix9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "multMatrix10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "decomposeMatrix4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "composeMatrix24.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "quatToEuler4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "composeMatrix25.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "decomposeMatrix6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "quatToEuler5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "composeMatrix27.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "multMatrix11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "pointMatrixMult1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "multMatrix5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "multMatrix6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "composeMatrix22.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "multMatrix1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "quatToEuler1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "composeMatrix23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "multMatrix3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "multMatrix2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "multMatrix4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "quatToEuler2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "plusMinusAverage1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "plusMinusAverage2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "quatToEuler3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn";
connectAttr "multMatrix8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "decomposeMatrix5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "composeMatrix26.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "decomposeMatrix25.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "composeMatrix39.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "composeMatrix19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "decomposeMatrix18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "plusMinusAverage3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "quatToEuler18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "composeMatrix14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "quatToEuler17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "decomposeMatrix20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "quatToEuler19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "decomposeMatrix23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "decomposeMatrix24.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "quatToEuler20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "plusMinusAverage12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "plusMinusAverage6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "decomposeMatrix21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "composeMatrix40.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "multMatrix35.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "multMatrix39.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "composeMatrix18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "multMatrix36.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "plusMinusAverage7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "plusMinusAverage9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "multMatrix42.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "plusMinusAverage13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "pointMatrixMult7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "composeMatrix41.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "plusMinusAverage14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "HIKSK2State1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn";
connectAttr "plusMinusAverage8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "composeMatrix17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "decomposeMatrix19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "composeMatrix20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "plusMinusAverage5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "pointMatrixMult3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "pointMatrixMult4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "multMatrix40.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn";
connectAttr "composeMatrix15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "plusMinusAverage4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "multMatrix37.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn";
connectAttr "composeMatrix16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "decomposeMatrix22.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "pointMatrixMult2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "multMatrix38.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn";
connectAttr "plusMinusAverage10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "plusMinusAverage11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "pointMatrixMult6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "multMatrix41.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "pointMatrixMult5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "decomposeMatrix27.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "composeMatrix42.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "quatToEuler21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn";
connectAttr "decomposeMatrix28.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "composeMatrix21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "decomposeMatrix26.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "HIKRetargeterNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "MCP1RN.phl[1603]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn";
connectAttr "quatToEuler9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[564].dn";
connectAttr "composeMatrix33.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[572].dn"
		;
connectAttr "multMatrix22.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[573].dn";
connectAttr "multMatrix25.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[574].dn";
connectAttr "composeMatrix31.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[575].dn"
		;
connectAttr "multMatrix21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[576].dn";
connectAttr "composeMatrix8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[577].dn"
		;
connectAttr "composeMatrix9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[578].dn"
		;
connectAttr "quatToEuler15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[579].dn";
connectAttr "composeMatrix2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[580].dn"
		;
connectAttr "decomposeMatrix17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[581].dn"
		;
connectAttr "multMatrix20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[582].dn";
connectAttr "composeMatrix7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[583].dn"
		;
connectAttr "decomposeMatrix13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[584].dn"
		;
connectAttr "multMatrix27.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[585].dn";
connectAttr "composeMatrix36.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[586].dn"
		;
connectAttr "decomposeMatrix16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[587].dn"
		;
connectAttr "quatToEuler16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[588].dn";
connectAttr "composeMatrix38.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[589].dn"
		;
connectAttr "decomposeMatrix11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[590].dn"
		;
connectAttr "decomposeMatrix14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[591].dn"
		;
connectAttr "multMatrix32.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[592].dn";
connectAttr "multMatrix33.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[593].dn";
connectAttr "multMatrix34.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[594].dn";
connectAttr "quatToEuler10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[595].dn";
connectAttr "composeMatrix3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[596].dn"
		;
connectAttr "quatToEuler11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[597].dn";
connectAttr "composeMatrix37.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[598].dn"
		;
connectAttr "decomposeMatrix12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[599].dn"
		;
connectAttr "quatToEuler12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[600].dn";
connectAttr "multMatrix19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[601].dn";
connectAttr "composeMatrix4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[602].dn"
		;
connectAttr "composeMatrix1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[603].dn"
		;
connectAttr "composeMatrix32.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[604].dn"
		;
connectAttr "multMatrix23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[605].dn";
connectAttr "composeMatrix5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[606].dn"
		;
connectAttr "multMatrix24.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[607].dn";
connectAttr "composeMatrix34.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[608].dn"
		;
connectAttr "composeMatrix6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[609].dn"
		;
connectAttr "multMatrix26.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[610].dn";
connectAttr "quatToEuler13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[611].dn";
connectAttr "composeMatrix35.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[612].dn"
		;
connectAttr "multMatrix28.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[613].dn";
connectAttr "decomposeMatrix15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[614].dn"
		;
connectAttr "quatToEuler14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[615].dn";
connectAttr "multMatrix29.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[616].dn";
connectAttr "multMatrix30.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[617].dn";
connectAttr "multMatrix31.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[618].dn";
connectAttr "composeMatrix29.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[619].dn"
		;
connectAttr "multMatrix16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[620].dn";
connectAttr "decomposeMatrix9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[621].dn"
		;
connectAttr "quatToEuler8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[622].dn";
connectAttr "composeMatrix30.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[623].dn"
		;
connectAttr "quatToEuler6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[624].dn";
connectAttr "multMatrix18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[625].dn";
connectAttr "multMatrix17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[626].dn";
connectAttr "decomposeMatrix10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[627].dn"
		;
connectAttr "composeMatrix28.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[628].dn"
		;
connectAttr "composeMatrix13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[629].dn"
		;
connectAttr "multMatrix13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[630].dn";
connectAttr "composeMatrix12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[631].dn"
		;
connectAttr "composeMatrix10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[632].dn"
		;
connectAttr "decomposeMatrix7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[633].dn"
		;
connectAttr "decomposeMatrix8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[634].dn"
		;
connectAttr "composeMatrix11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[635].dn"
		;
connectAttr "multMatrix12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[636].dn";
connectAttr "multMatrix14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[637].dn";
connectAttr "multMatrix15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[638].dn";
connectAttr "quatToEuler7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[639].dn";
connectAttr "MCP1RN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[750].dn";
connectAttr "decomposeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix27.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix28.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of walke.ma
