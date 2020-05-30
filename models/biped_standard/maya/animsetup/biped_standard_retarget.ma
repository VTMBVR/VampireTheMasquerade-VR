//Maya ASCII 2018ff09 scene
//Name: biped_standard_retarget.ma
//Last modified: Tue, May 19, 2020 02:06:52 PM
//Codeset: 1252
file -rdi 1 -ns "RIG" -rfn "RIGRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_rig.ma";
file -rdi 2 -ns "MDL" -rfn "RIG:MDLRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_model.ma";
file -rdi 1 -ns "MCP1" -rfn "MCP1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/animations/walkn.ma";
file -rdi 2 -ns "ANM1" -rfn "MCP1:ANM1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_model.ma";
file -r -ns "RIG" -dr 1 -rfn "RIGRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_rig.ma";
file -r -ns "MCP1" -dr 1 -rfn "MCP1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/animations/walkn.ma";
requires maya "2018ff09";
requires -nodeType "HIKRetargeterNode" -nodeType "HIKSK2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2016.5";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2018.0.0";
requires -nodeType "quatToEuler" "quatNodes" "1.0";
requires "vstUtils" "1.0";
requires "PVstRigLocators.py" "Unknown";
requires "vsMaster" "1.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "202004151615-e82ce49a8d";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "C6309AD2-4637-9A76-8D0D-46A2F98CC091";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 136.96524509616617 86.016276323461241 139.82212135717944 ;
	setAttr ".r" -type "double3" -14.738352729606438 55.000000000003489 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA1BD692-4DBA-E741-4CC8-1E86A64239DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 197.26651271917422;
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
	rename -uid "9AAA7D1D-450B-5761-3FF5-D69A629E4F9A";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F4CCFCE2-499C-E0D7-C82E-3681A9136D49";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "67A05713-4FAF-ED26-7444-F4B5E56A9D6D";
createNode displayLayerManager -n "layerManager";
	rename -uid "1019FECB-4A4A-018E-06A8-B1B7FC28B0DF";
createNode displayLayer -n "defaultLayer";
	rename -uid "5A16310C-4349-467E-4292-F8956478A955";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E972C689-4632-AD8F-26AF-D59001B463AC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BFB9FA2A-4785-AC21-8585-309C86166199";
	setAttr ".g" yes;
createNode reference -n "RIGRN";
	rename -uid "1021DC30-42B9-1684-7449-54AA01A48BED";
	setAttr ".fn[0]" -type "string" "d:/dev/source2/main/content/hlvr/models/characters/gen_man/maya/gen_man_rig.ma";
	setAttr -s 116 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"RIGRN"
		"RIG:MDLRN" 0
		"RIGRN" 0
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
		"track" " -k 1 1"
		2 "RIG:HIKSolverNode1" "InputStance" " 1"
		2 "RIG:CustomRigRetargeterNode1" "connected" " 1"
		2 "RIG:CustomRigRetargeterNode1" "pythonVar" " -type \"string\" \"HIKRetargeter_9528222019e74714b5674da139e2c843\""
		
		3 "RIG:HIKSolverNode1.OutputCharacterState" "RIG:HIKState2GlobalSK1.InputCharacterState" 
		""
		3 "RIG:HIKSolverNode1.OutputCharacterState" "RIG:HIKState2SK1.InputCharacterState" 
		""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.translate" 
		"RIGRN.placeHolderList[1]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[2]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotate" 
		"RIGRN.placeHolderList[3]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[4]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[5]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[6]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotate" 
		"RIGRN.placeHolderList[7]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.translate" 
		"RIGRN.placeHolderList[8]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[9]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[10]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[11]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[12]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotate" 
		"RIGRN.placeHolderList[13]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.translate" 
		"RIGRN.placeHolderList[14]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[15]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[16]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[17]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[18]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotate" 
		"RIGRN.placeHolderList[19]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.translate" 
		"RIGRN.placeHolderList[20]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[21]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[22]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[23]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[24]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotate" 
		"RIGRN.placeHolderList[25]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.translate" 
		"RIGRN.placeHolderList[26]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[27]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[28]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[29]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[30]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.rotate" 
		"RIGRN.placeHolderList[31]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[32]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[33]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.rotate" 
		"RIGRN.placeHolderList[34]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[35]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[36]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.rotate" 
		"RIGRN.placeHolderList[37]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[38]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[39]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.rotate" 
		"RIGRN.placeHolderList[40]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[41]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[42]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.rotate" 
		"RIGRN.placeHolderList[43]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[44]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[45]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.rotate" 
		"RIGRN.placeHolderList[46]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[47]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[48]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.translate" 
		"RIGRN.placeHolderList[49]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[50]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotate" 
		"RIGRN.placeHolderList[51]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[52]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[53]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[54]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.rotate" 
		"RIGRN.placeHolderList[55]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[56]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[57]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.rotate" 
		"RIGRN.placeHolderList[58]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[59]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[60]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.rotate" 
		"RIGRN.placeHolderList[61]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[62]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[63]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.rotate" 
		"RIGRN.placeHolderList[64]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[65]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[66]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotate" 
		"RIGRN.placeHolderList[67]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.translate" 
		"RIGRN.placeHolderList[68]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[69]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[70]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[71]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotatePivot" 
		"RIGRN.placeHolderList[72]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.rotate" 
		"RIGRN.placeHolderList[73]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[74]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[75]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.rotate" 
		"RIGRN.placeHolderList[76]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[77]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[78]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.rotate" 
		"RIGRN.placeHolderList[79]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[80]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[81]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.rotate" 
		"RIGRN.placeHolderList[82]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.rotateOrder" 
		"RIGRN.placeHolderList[83]" ""
		5 3 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.parentInverseMatrix" 
		"RIGRN.placeHolderList[84]" ""
		5 3 "RIGRN" "RIG:GEN_MAN_CHAR.OutputCharacterDefinition" "RIGRN.placeHolderList[85]" 
		""
		5 3 "RIGRN" "RIG:HIKproperties1.OutputPropertySetState" "RIGRN.placeHolderList[86]" 
		""
		5 4 "RIGRN" "RIG:HIKState2SK1.InputCharacterState" "RIGRN.placeHolderList[87]" 
		""
		5 4 "RIGRN" "RIG:HIKState2GlobalSK1.InputCharacterState" "RIGRN.placeHolderList[88]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.HipsGX" "RIGRN.placeHolderList[89]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.HipsGX" "RIGRN.placeHolderList[90]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.SpineGX" "RIGRN.placeHolderList[91]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.SpineGX" "RIGRN.placeHolderList[92]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine1GX" "RIGRN.placeHolderList[93]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine1GX" "RIGRN.placeHolderList[94]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine2GX" "RIGRN.placeHolderList[95]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine2GX" "RIGRN.placeHolderList[96]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.HeadGX" "RIGRN.placeHolderList[97]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.HeadGX" "RIGRN.placeHolderList[98]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftShoulderGX" "RIGRN.placeHolderList[99]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftArmGX" "RIGRN.placeHolderList[100]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftForeArmGX" "RIGRN.placeHolderList[101]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftHandGX" "RIGRN.placeHolderList[102]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftUpLegGX" "RIGRN.placeHolderList[103]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftLegGX" "RIGRN.placeHolderList[104]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.LeftFootGX" "RIGRN.placeHolderList[105]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightShoulderGX" "RIGRN.placeHolderList[106]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightArmGX" "RIGRN.placeHolderList[107]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightForeArmGX" "RIGRN.placeHolderList[108]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightHandGX" "RIGRN.placeHolderList[109]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightUpLegGX" "RIGRN.placeHolderList[110]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightLegGX" "RIGRN.placeHolderList[111]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.RightFootGX" "RIGRN.placeHolderList[112]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.NeckGX" "RIGRN.placeHolderList[113]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.NeckGX" "RIGRN.placeHolderList[114]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine3GX" "RIGRN.placeHolderList[115]" 
		""
		5 3 "RIGRN" "RIG:HIKState2GlobalSK1.Spine3GX" "RIGRN.placeHolderList[116]" 
		""
		"RIG:MDLRN" 60
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
		"drawStyle" " 0";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A319D136-421F-4727-25DD-34846135B293";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n"
		+ "            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"vPlanarDisplay\" 1 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 1 \n            -pluginObjects \"vChainDisplay\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 0\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 1\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1672\n            -height 905\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"vPlanarDisplay\" 0 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 0 \n            -pluginObjects \"vChainDisplay\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 1\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"vPlanarDisplay\" 1 \n                -pluginObjects \"vRigWidget\" 1 \n                -pluginObjects \"vstAttachment\" 1 \n                -pluginObjects \"vChainDisplay\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1672\\n    -height 905\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1672\\n    -height 905\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "423FBE93-4A21-4C2D-F83F-FAAD3C38F3B6";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
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
	setAttr -s 1597 ".phl";
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
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".phl[723]" 0;
	setAttr ".phl[724]" 0;
	setAttr ".phl[725]" 0;
	setAttr ".phl[726]" 0;
	setAttr ".phl[727]" 0;
	setAttr ".phl[728]" 0;
	setAttr ".phl[729]" 0;
	setAttr ".phl[730]" 0;
	setAttr ".phl[731]" 0;
	setAttr ".phl[732]" 0;
	setAttr ".phl[733]" 0;
	setAttr ".phl[734]" 0;
	setAttr ".phl[735]" 0;
	setAttr ".phl[736]" 0;
	setAttr ".phl[737]" 0;
	setAttr ".phl[738]" 0;
	setAttr ".phl[739]" 0;
	setAttr ".phl[740]" 0;
	setAttr ".phl[741]" 0;
	setAttr ".phl[742]" 0;
	setAttr ".phl[743]" 0;
	setAttr ".phl[744]" 0;
	setAttr ".phl[745]" 0;
	setAttr ".phl[746]" 0;
	setAttr ".phl[747]" 0;
	setAttr ".phl[748]" 0;
	setAttr ".phl[749]" 0;
	setAttr ".phl[750]" 0;
	setAttr ".phl[751]" 0;
	setAttr ".phl[752]" 0;
	setAttr ".phl[753]" 0;
	setAttr ".phl[754]" 0;
	setAttr ".phl[755]" 0;
	setAttr ".phl[756]" 0;
	setAttr ".phl[757]" 0;
	setAttr ".phl[758]" 0;
	setAttr ".phl[759]" 0;
	setAttr ".phl[760]" 0;
	setAttr ".phl[761]" 0;
	setAttr ".phl[762]" 0;
	setAttr ".phl[763]" 0;
	setAttr ".phl[764]" 0;
	setAttr ".phl[765]" 0;
	setAttr ".phl[766]" 0;
	setAttr ".phl[767]" 0;
	setAttr ".phl[768]" 0;
	setAttr ".phl[769]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[771]" 0;
	setAttr ".phl[772]" 0;
	setAttr ".phl[773]" 0;
	setAttr ".phl[774]" 0;
	setAttr ".phl[775]" 0;
	setAttr ".phl[776]" 0;
	setAttr ".phl[777]" 0;
	setAttr ".phl[778]" 0;
	setAttr ".phl[779]" 0;
	setAttr ".phl[780]" 0;
	setAttr ".phl[781]" 0;
	setAttr ".phl[782]" 0;
	setAttr ".phl[783]" 0;
	setAttr ".phl[784]" 0;
	setAttr ".phl[785]" 0;
	setAttr ".phl[786]" 0;
	setAttr ".phl[787]" 0;
	setAttr ".phl[788]" 0;
	setAttr ".phl[789]" 0;
	setAttr ".phl[790]" 0;
	setAttr ".phl[791]" 0;
	setAttr ".phl[792]" 0;
	setAttr ".phl[793]" 0;
	setAttr ".phl[794]" 0;
	setAttr ".phl[795]" 0;
	setAttr ".phl[796]" 0;
	setAttr ".phl[797]" 0;
	setAttr ".phl[798]" 0;
	setAttr ".phl[799]" 0;
	setAttr ".phl[800]" 0;
	setAttr ".phl[801]" 0;
	setAttr ".phl[802]" 0;
	setAttr ".phl[803]" 0;
	setAttr ".phl[804]" 0;
	setAttr ".phl[805]" 0;
	setAttr ".phl[806]" 0;
	setAttr ".phl[807]" 0;
	setAttr ".phl[808]" 0;
	setAttr ".phl[809]" 0;
	setAttr ".phl[810]" 0;
	setAttr ".phl[811]" 0;
	setAttr ".phl[812]" 0;
	setAttr ".phl[813]" 0;
	setAttr ".phl[814]" 0;
	setAttr ".phl[815]" 0;
	setAttr ".phl[816]" 0;
	setAttr ".phl[817]" 0;
	setAttr ".phl[818]" 0;
	setAttr ".phl[819]" 0;
	setAttr ".phl[820]" 0;
	setAttr ".phl[821]" 0;
	setAttr ".phl[822]" 0;
	setAttr ".phl[823]" 0;
	setAttr ".phl[824]" 0;
	setAttr ".phl[825]" 0;
	setAttr ".phl[826]" 0;
	setAttr ".phl[827]" 0;
	setAttr ".phl[828]" 0;
	setAttr ".phl[829]" 0;
	setAttr ".phl[830]" 0;
	setAttr ".phl[831]" 0;
	setAttr ".phl[832]" 0;
	setAttr ".phl[833]" 0;
	setAttr ".phl[834]" 0;
	setAttr ".phl[835]" 0;
	setAttr ".phl[836]" 0;
	setAttr ".phl[837]" 0;
	setAttr ".phl[838]" 0;
	setAttr ".phl[839]" 0;
	setAttr ".phl[840]" 0;
	setAttr ".phl[841]" 0;
	setAttr ".phl[842]" 0;
	setAttr ".phl[843]" 0;
	setAttr ".phl[844]" 0;
	setAttr ".phl[845]" 0;
	setAttr ".phl[846]" 0;
	setAttr ".phl[847]" 0;
	setAttr ".phl[848]" 0;
	setAttr ".phl[849]" 0;
	setAttr ".phl[850]" 0;
	setAttr ".phl[851]" 0;
	setAttr ".phl[852]" 0;
	setAttr ".phl[853]" 0;
	setAttr ".phl[854]" 0;
	setAttr ".phl[855]" 0;
	setAttr ".phl[856]" 0;
	setAttr ".phl[857]" 0;
	setAttr ".phl[858]" 0;
	setAttr ".phl[859]" 0;
	setAttr ".phl[860]" 0;
	setAttr ".phl[861]" 0;
	setAttr ".phl[862]" 0;
	setAttr ".phl[863]" 0;
	setAttr ".phl[864]" 0;
	setAttr ".phl[865]" 0;
	setAttr ".phl[866]" 0;
	setAttr ".phl[867]" 0;
	setAttr ".phl[868]" 0;
	setAttr ".phl[869]" 0;
	setAttr ".phl[870]" 0;
	setAttr ".phl[871]" 0;
	setAttr ".phl[872]" 0;
	setAttr ".phl[873]" 0;
	setAttr ".phl[874]" 0;
	setAttr ".phl[875]" 0;
	setAttr ".phl[876]" 0;
	setAttr ".phl[877]" 0;
	setAttr ".phl[878]" 0;
	setAttr ".phl[879]" 0;
	setAttr ".phl[880]" 0;
	setAttr ".phl[881]" 0;
	setAttr ".phl[882]" 0;
	setAttr ".phl[883]" 0;
	setAttr ".phl[884]" 0;
	setAttr ".phl[885]" 0;
	setAttr ".phl[886]" 0;
	setAttr ".phl[887]" 0;
	setAttr ".phl[888]" 0;
	setAttr ".phl[889]" 0;
	setAttr ".phl[890]" 0;
	setAttr ".phl[891]" 0;
	setAttr ".phl[892]" 0;
	setAttr ".phl[893]" 0;
	setAttr ".phl[894]" 0;
	setAttr ".phl[895]" 0;
	setAttr ".phl[896]" 0;
	setAttr ".phl[897]" 0;
	setAttr ".phl[898]" 0;
	setAttr ".phl[899]" 0;
	setAttr ".phl[900]" 0;
	setAttr ".phl[901]" 0;
	setAttr ".phl[902]" 0;
	setAttr ".phl[903]" 0;
	setAttr ".phl[904]" 0;
	setAttr ".phl[905]" 0;
	setAttr ".phl[906]" 0;
	setAttr ".phl[907]" 0;
	setAttr ".phl[908]" 0;
	setAttr ".phl[909]" 0;
	setAttr ".phl[910]" 0;
	setAttr ".phl[911]" 0;
	setAttr ".phl[912]" 0;
	setAttr ".phl[913]" 0;
	setAttr ".phl[914]" 0;
	setAttr ".phl[915]" 0;
	setAttr ".phl[916]" 0;
	setAttr ".phl[917]" 0;
	setAttr ".phl[918]" 0;
	setAttr ".phl[919]" 0;
	setAttr ".phl[920]" 0;
	setAttr ".phl[921]" 0;
	setAttr ".phl[922]" 0;
	setAttr ".phl[923]" 0;
	setAttr ".phl[924]" 0;
	setAttr ".phl[925]" 0;
	setAttr ".phl[926]" 0;
	setAttr ".phl[927]" 0;
	setAttr ".phl[928]" 0;
	setAttr ".phl[929]" 0;
	setAttr ".phl[930]" 0;
	setAttr ".phl[931]" 0;
	setAttr ".phl[932]" 0;
	setAttr ".phl[933]" 0;
	setAttr ".phl[934]" 0;
	setAttr ".phl[935]" 0;
	setAttr ".phl[936]" 0;
	setAttr ".phl[937]" 0;
	setAttr ".phl[938]" 0;
	setAttr ".phl[939]" 0;
	setAttr ".phl[940]" 0;
	setAttr ".phl[941]" 0;
	setAttr ".phl[942]" 0;
	setAttr ".phl[943]" 0;
	setAttr ".phl[944]" 0;
	setAttr ".phl[945]" 0;
	setAttr ".phl[946]" 0;
	setAttr ".phl[947]" 0;
	setAttr ".phl[948]" 0;
	setAttr ".phl[949]" 0;
	setAttr ".phl[950]" 0;
	setAttr ".phl[951]" 0;
	setAttr ".phl[952]" 0;
	setAttr ".phl[953]" 0;
	setAttr ".phl[954]" 0;
	setAttr ".phl[955]" 0;
	setAttr ".phl[956]" 0;
	setAttr ".phl[957]" 0;
	setAttr ".phl[958]" 0;
	setAttr ".phl[959]" 0;
	setAttr ".phl[960]" 0;
	setAttr ".phl[961]" 0;
	setAttr ".phl[962]" 0;
	setAttr ".phl[963]" 0;
	setAttr ".phl[964]" 0;
	setAttr ".phl[965]" 0;
	setAttr ".phl[966]" 0;
	setAttr ".phl[967]" 0;
	setAttr ".phl[968]" 0;
	setAttr ".phl[969]" 0;
	setAttr ".phl[970]" 0;
	setAttr ".phl[971]" 0;
	setAttr ".phl[972]" 0;
	setAttr ".phl[973]" 0;
	setAttr ".phl[974]" 0;
	setAttr ".phl[975]" 0;
	setAttr ".phl[976]" 0;
	setAttr ".phl[977]" 0;
	setAttr ".phl[978]" 0;
	setAttr ".phl[979]" 0;
	setAttr ".phl[980]" 0;
	setAttr ".phl[981]" 0;
	setAttr ".phl[982]" 0;
	setAttr ".phl[983]" 0;
	setAttr ".phl[984]" 0;
	setAttr ".phl[985]" 0;
	setAttr ".phl[986]" 0;
	setAttr ".phl[987]" 0;
	setAttr ".phl[988]" 0;
	setAttr ".phl[989]" 0;
	setAttr ".phl[990]" 0;
	setAttr ".phl[991]" 0;
	setAttr ".phl[992]" 0;
	setAttr ".phl[993]" 0;
	setAttr ".phl[994]" 0;
	setAttr ".phl[995]" 0;
	setAttr ".phl[996]" 0;
	setAttr ".phl[997]" 0;
	setAttr ".phl[998]" 0;
	setAttr ".phl[999]" 0;
	setAttr ".phl[1000]" 0;
	setAttr ".phl[1001]" 0;
	setAttr ".phl[1002]" 0;
	setAttr ".phl[1003]" 0;
	setAttr ".phl[1004]" 0;
	setAttr ".phl[1005]" 0;
	setAttr ".phl[1006]" 0;
	setAttr ".phl[1007]" 0;
	setAttr ".phl[1008]" 0;
	setAttr ".phl[1009]" 0;
	setAttr ".phl[1010]" 0;
	setAttr ".phl[1011]" 0;
	setAttr ".phl[1012]" 0;
	setAttr ".phl[1013]" 0;
	setAttr ".phl[1014]" 0;
	setAttr ".phl[1015]" 0;
	setAttr ".phl[1016]" 0;
	setAttr ".phl[1017]" 0;
	setAttr ".phl[1018]" 0;
	setAttr ".phl[1019]" 0;
	setAttr ".phl[1020]" 0;
	setAttr ".phl[1021]" 0;
	setAttr ".phl[1022]" 0;
	setAttr ".phl[1023]" 0;
	setAttr ".phl[1024]" 0;
	setAttr ".phl[1025]" 0;
	setAttr ".phl[1026]" 0;
	setAttr ".phl[1027]" 0;
	setAttr ".phl[1028]" 0;
	setAttr ".phl[1029]" 0;
	setAttr ".phl[1030]" 0;
	setAttr ".phl[1031]" 0;
	setAttr ".phl[1032]" 0;
	setAttr ".phl[1033]" 0;
	setAttr ".phl[1034]" 0;
	setAttr ".phl[1035]" 0;
	setAttr ".phl[1036]" 0;
	setAttr ".phl[1037]" 0;
	setAttr ".phl[1038]" 0;
	setAttr ".phl[1039]" 0;
	setAttr ".phl[1040]" 0;
	setAttr ".phl[1041]" 0;
	setAttr ".phl[1042]" 0;
	setAttr ".phl[1043]" 0;
	setAttr ".phl[1044]" 0;
	setAttr ".phl[1045]" 0;
	setAttr ".phl[1046]" 0;
	setAttr ".phl[1047]" 0;
	setAttr ".phl[1048]" 0;
	setAttr ".phl[1049]" 0;
	setAttr ".phl[1050]" 0;
	setAttr ".phl[1051]" 0;
	setAttr ".phl[1052]" 0;
	setAttr ".phl[1053]" 0;
	setAttr ".phl[1054]" 0;
	setAttr ".phl[1055]" 0;
	setAttr ".phl[1056]" 0;
	setAttr ".phl[1057]" 0;
	setAttr ".phl[1058]" 0;
	setAttr ".phl[1059]" 0;
	setAttr ".phl[1060]" 0;
	setAttr ".phl[1061]" 0;
	setAttr ".phl[1062]" 0;
	setAttr ".phl[1063]" 0;
	setAttr ".phl[1064]" 0;
	setAttr ".phl[1065]" 0;
	setAttr ".phl[1066]" 0;
	setAttr ".phl[1067]" 0;
	setAttr ".phl[1068]" 0;
	setAttr ".phl[1069]" 0;
	setAttr ".phl[1070]" 0;
	setAttr ".phl[1071]" 0;
	setAttr ".phl[1072]" 0;
	setAttr ".phl[1073]" 0;
	setAttr ".phl[1074]" 0;
	setAttr ".phl[1075]" 0;
	setAttr ".phl[1076]" 0;
	setAttr ".phl[1077]" 0;
	setAttr ".phl[1078]" 0;
	setAttr ".phl[1079]" 0;
	setAttr ".phl[1080]" 0;
	setAttr ".phl[1081]" 0;
	setAttr ".phl[1082]" 0;
	setAttr ".phl[1083]" 0;
	setAttr ".phl[1084]" 0;
	setAttr ".phl[1085]" 0;
	setAttr ".phl[1086]" 0;
	setAttr ".phl[1087]" 0;
	setAttr ".phl[1088]" 0;
	setAttr ".phl[1089]" 0;
	setAttr ".phl[1090]" 0;
	setAttr ".phl[1091]" 0;
	setAttr ".phl[1092]" 0;
	setAttr ".phl[1093]" 0;
	setAttr ".phl[1094]" 0;
	setAttr ".phl[1095]" 0;
	setAttr ".phl[1096]" 0;
	setAttr ".phl[1097]" 0;
	setAttr ".phl[1098]" 0;
	setAttr ".phl[1099]" 0;
	setAttr ".phl[1100]" 0;
	setAttr ".phl[1101]" 0;
	setAttr ".phl[1102]" 0;
	setAttr ".phl[1103]" 0;
	setAttr ".phl[1104]" 0;
	setAttr ".phl[1105]" 0;
	setAttr ".phl[1106]" 0;
	setAttr ".phl[1107]" 0;
	setAttr ".phl[1108]" 0;
	setAttr ".phl[1109]" 0;
	setAttr ".phl[1110]" 0;
	setAttr ".phl[1111]" 0;
	setAttr ".phl[1112]" 0;
	setAttr ".phl[1113]" 0;
	setAttr ".phl[1114]" 0;
	setAttr ".phl[1115]" 0;
	setAttr ".phl[1116]" 0;
	setAttr ".phl[1117]" 0;
	setAttr ".phl[1118]" 0;
	setAttr ".phl[1119]" 0;
	setAttr ".phl[1120]" 0;
	setAttr ".phl[1121]" 0;
	setAttr ".phl[1122]" 0;
	setAttr ".phl[1123]" 0;
	setAttr ".phl[1124]" 0;
	setAttr ".phl[1125]" 0;
	setAttr ".phl[1126]" 0;
	setAttr ".phl[1127]" 0;
	setAttr ".phl[1128]" 0;
	setAttr ".phl[1129]" 0;
	setAttr ".phl[1130]" 0;
	setAttr ".phl[1131]" 0;
	setAttr ".phl[1132]" 0;
	setAttr ".phl[1133]" 0;
	setAttr ".phl[1134]" 0;
	setAttr ".phl[1135]" 0;
	setAttr ".phl[1136]" 0;
	setAttr ".phl[1137]" 0;
	setAttr ".phl[1138]" 0;
	setAttr ".phl[1139]" 0;
	setAttr ".phl[1140]" 0;
	setAttr ".phl[1141]" 0;
	setAttr ".phl[1142]" 0;
	setAttr ".phl[1143]" 0;
	setAttr ".phl[1144]" 0;
	setAttr ".phl[1145]" 0;
	setAttr ".phl[1146]" 0;
	setAttr ".phl[1147]" 0;
	setAttr ".phl[1148]" 0;
	setAttr ".phl[1149]" 0;
	setAttr ".phl[1150]" 0;
	setAttr ".phl[1151]" 0;
	setAttr ".phl[1152]" 0;
	setAttr ".phl[1153]" 0;
	setAttr ".phl[1154]" 0;
	setAttr ".phl[1155]" 0;
	setAttr ".phl[1156]" 0;
	setAttr ".phl[1157]" 0;
	setAttr ".phl[1158]" 0;
	setAttr ".phl[1159]" 0;
	setAttr ".phl[1160]" 0;
	setAttr ".phl[1161]" 0;
	setAttr ".phl[1162]" 0;
	setAttr ".phl[1163]" 0;
	setAttr ".phl[1164]" 0;
	setAttr ".phl[1165]" 0;
	setAttr ".phl[1166]" 0;
	setAttr ".phl[1167]" 0;
	setAttr ".phl[1168]" 0;
	setAttr ".phl[1169]" 0;
	setAttr ".phl[1170]" 0;
	setAttr ".phl[1171]" 0;
	setAttr ".phl[1172]" 0;
	setAttr ".phl[1173]" 0;
	setAttr ".phl[1174]" 0;
	setAttr ".phl[1175]" 0;
	setAttr ".phl[1176]" 0;
	setAttr ".phl[1177]" 0;
	setAttr ".phl[1178]" 0;
	setAttr ".phl[1179]" 0;
	setAttr ".phl[1180]" 0;
	setAttr ".phl[1181]" 0;
	setAttr ".phl[1182]" 0;
	setAttr ".phl[1183]" 0;
	setAttr ".phl[1184]" 0;
	setAttr ".phl[1185]" 0;
	setAttr ".phl[1186]" 0;
	setAttr ".phl[1187]" 0;
	setAttr ".phl[1188]" 0;
	setAttr ".phl[1189]" 0;
	setAttr ".phl[1190]" 0;
	setAttr ".phl[1191]" 0;
	setAttr ".phl[1192]" 0;
	setAttr ".phl[1193]" 0;
	setAttr ".phl[1194]" 0;
	setAttr ".phl[1195]" 0;
	setAttr ".phl[1196]" 0;
	setAttr ".phl[1197]" 0;
	setAttr ".phl[1198]" 0;
	setAttr ".phl[1199]" 0;
	setAttr ".phl[1200]" 0;
	setAttr ".phl[1201]" 0;
	setAttr ".phl[1202]" 0;
	setAttr ".phl[1203]" 0;
	setAttr ".phl[1204]" 0;
	setAttr ".phl[1205]" 0;
	setAttr ".phl[1206]" 0;
	setAttr ".phl[1207]" 0;
	setAttr ".phl[1208]" 0;
	setAttr ".phl[1209]" 0;
	setAttr ".phl[1210]" 0;
	setAttr ".phl[1211]" 0;
	setAttr ".phl[1212]" 0;
	setAttr ".phl[1213]" 0;
	setAttr ".phl[1214]" 0;
	setAttr ".phl[1215]" 0;
	setAttr ".phl[1216]" 0;
	setAttr ".phl[1217]" 0;
	setAttr ".phl[1218]" 0;
	setAttr ".phl[1219]" 0;
	setAttr ".phl[1220]" 0;
	setAttr ".phl[1221]" 0;
	setAttr ".phl[1222]" 0;
	setAttr ".phl[1223]" 0;
	setAttr ".phl[1224]" 0;
	setAttr ".phl[1225]" 0;
	setAttr ".phl[1226]" 0;
	setAttr ".phl[1227]" 0;
	setAttr ".phl[1228]" 0;
	setAttr ".phl[1229]" 0;
	setAttr ".phl[1230]" 0;
	setAttr ".phl[1231]" 0;
	setAttr ".phl[1232]" 0;
	setAttr ".phl[1233]" 0;
	setAttr ".phl[1234]" 0;
	setAttr ".phl[1235]" 0;
	setAttr ".phl[1236]" 0;
	setAttr ".phl[1237]" 0;
	setAttr ".phl[1238]" 0;
	setAttr ".phl[1239]" 0;
	setAttr ".phl[1240]" 0;
	setAttr ".phl[1241]" 0;
	setAttr ".phl[1242]" 0;
	setAttr ".phl[1243]" 0;
	setAttr ".phl[1244]" 0;
	setAttr ".phl[1245]" 0;
	setAttr ".phl[1246]" 0;
	setAttr ".phl[1247]" 0;
	setAttr ".phl[1248]" 0;
	setAttr ".phl[1249]" 0;
	setAttr ".phl[1250]" 0;
	setAttr ".phl[1251]" 0;
	setAttr ".phl[1252]" 0;
	setAttr ".phl[1253]" 0;
	setAttr ".phl[1254]" 0;
	setAttr ".phl[1255]" 0;
	setAttr ".phl[1256]" 0;
	setAttr ".phl[1257]" 0;
	setAttr ".phl[1258]" 0;
	setAttr ".phl[1259]" 0;
	setAttr ".phl[1260]" 0;
	setAttr ".phl[1261]" 0;
	setAttr ".phl[1262]" 0;
	setAttr ".phl[1263]" 0;
	setAttr ".phl[1264]" 0;
	setAttr ".phl[1265]" 0;
	setAttr ".phl[1266]" 0;
	setAttr ".phl[1267]" 0;
	setAttr ".phl[1268]" 0;
	setAttr ".phl[1269]" 0;
	setAttr ".phl[1270]" 0;
	setAttr ".phl[1271]" 0;
	setAttr ".phl[1272]" 0;
	setAttr ".phl[1273]" 0;
	setAttr ".phl[1274]" 0;
	setAttr ".phl[1275]" 0;
	setAttr ".phl[1276]" 0;
	setAttr ".phl[1277]" 0;
	setAttr ".phl[1278]" 0;
	setAttr ".phl[1279]" 0;
	setAttr ".phl[1280]" 0;
	setAttr ".phl[1281]" 0;
	setAttr ".phl[1282]" 0;
	setAttr ".phl[1283]" 0;
	setAttr ".phl[1284]" 0;
	setAttr ".phl[1285]" 0;
	setAttr ".phl[1286]" 0;
	setAttr ".phl[1287]" 0;
	setAttr ".phl[1288]" 0;
	setAttr ".phl[1289]" 0;
	setAttr ".phl[1290]" 0;
	setAttr ".phl[1291]" 0;
	setAttr ".phl[1292]" 0;
	setAttr ".phl[1293]" 0;
	setAttr ".phl[1294]" 0;
	setAttr ".phl[1295]" 0;
	setAttr ".phl[1296]" 0;
	setAttr ".phl[1297]" 0;
	setAttr ".phl[1298]" 0;
	setAttr ".phl[1299]" 0;
	setAttr ".phl[1300]" 0;
	setAttr ".phl[1301]" 0;
	setAttr ".phl[1302]" 0;
	setAttr ".phl[1303]" 0;
	setAttr ".phl[1304]" 0;
	setAttr ".phl[1305]" 0;
	setAttr ".phl[1306]" 0;
	setAttr ".phl[1307]" 0;
	setAttr ".phl[1308]" 0;
	setAttr ".phl[1309]" 0;
	setAttr ".phl[1310]" 0;
	setAttr ".phl[1311]" 0;
	setAttr ".phl[1312]" 0;
	setAttr ".phl[1313]" 0;
	setAttr ".phl[1314]" 0;
	setAttr ".phl[1315]" 0;
	setAttr ".phl[1316]" 0;
	setAttr ".phl[1317]" 0;
	setAttr ".phl[1318]" 0;
	setAttr ".phl[1319]" 0;
	setAttr ".phl[1320]" 0;
	setAttr ".phl[1321]" 0;
	setAttr ".phl[1322]" 0;
	setAttr ".phl[1323]" 0;
	setAttr ".phl[1324]" 0;
	setAttr ".phl[1325]" 0;
	setAttr ".phl[1326]" 0;
	setAttr ".phl[1327]" 0;
	setAttr ".phl[1328]" 0;
	setAttr ".phl[1329]" 0;
	setAttr ".phl[1330]" 0;
	setAttr ".phl[1331]" 0;
	setAttr ".phl[1332]" 0;
	setAttr ".phl[1333]" 0;
	setAttr ".phl[1334]" 0;
	setAttr ".phl[1335]" 0;
	setAttr ".phl[1336]" 0;
	setAttr ".phl[1337]" 0;
	setAttr ".phl[1338]" 0;
	setAttr ".phl[1339]" 0;
	setAttr ".phl[1340]" 0;
	setAttr ".phl[1341]" 0;
	setAttr ".phl[1342]" 0;
	setAttr ".phl[1343]" 0;
	setAttr ".phl[1344]" 0;
	setAttr ".phl[1345]" 0;
	setAttr ".phl[1346]" 0;
	setAttr ".phl[1347]" 0;
	setAttr ".phl[1348]" 0;
	setAttr ".phl[1349]" 0;
	setAttr ".phl[1350]" 0;
	setAttr ".phl[1351]" 0;
	setAttr ".phl[1352]" 0;
	setAttr ".phl[1353]" 0;
	setAttr ".phl[1354]" 0;
	setAttr ".phl[1355]" 0;
	setAttr ".phl[1356]" 0;
	setAttr ".phl[1357]" 0;
	setAttr ".phl[1358]" 0;
	setAttr ".phl[1359]" 0;
	setAttr ".phl[1360]" 0;
	setAttr ".phl[1361]" 0;
	setAttr ".phl[1362]" 0;
	setAttr ".phl[1363]" 0;
	setAttr ".phl[1364]" 0;
	setAttr ".phl[1365]" 0;
	setAttr ".phl[1366]" 0;
	setAttr ".phl[1367]" 0;
	setAttr ".phl[1368]" 0;
	setAttr ".phl[1369]" 0;
	setAttr ".phl[1370]" 0;
	setAttr ".phl[1371]" 0;
	setAttr ".phl[1372]" 0;
	setAttr ".phl[1373]" 0;
	setAttr ".phl[1374]" 0;
	setAttr ".phl[1375]" 0;
	setAttr ".phl[1376]" 0;
	setAttr ".phl[1377]" 0;
	setAttr ".phl[1378]" 0;
	setAttr ".phl[1379]" 0;
	setAttr ".phl[1380]" 0;
	setAttr ".phl[1381]" 0;
	setAttr ".phl[1382]" 0;
	setAttr ".phl[1383]" 0;
	setAttr ".phl[1384]" 0;
	setAttr ".phl[1385]" 0;
	setAttr ".phl[1386]" 0;
	setAttr ".phl[1387]" 0;
	setAttr ".phl[1388]" 0;
	setAttr ".phl[1389]" 0;
	setAttr ".phl[1390]" 0;
	setAttr ".phl[1391]" 0;
	setAttr ".phl[1392]" 0;
	setAttr ".phl[1393]" 0;
	setAttr ".phl[1394]" 0;
	setAttr ".phl[1395]" 0;
	setAttr ".phl[1396]" 0;
	setAttr ".phl[1397]" 0;
	setAttr ".phl[1398]" 0;
	setAttr ".phl[1399]" 0;
	setAttr ".phl[1400]" 0;
	setAttr ".phl[1401]" 0;
	setAttr ".phl[1402]" 0;
	setAttr ".phl[1403]" 0;
	setAttr ".phl[1404]" 0;
	setAttr ".phl[1405]" 0;
	setAttr ".phl[1406]" 0;
	setAttr ".phl[1407]" 0;
	setAttr ".phl[1408]" 0;
	setAttr ".phl[1409]" 0;
	setAttr ".phl[1410]" 0;
	setAttr ".phl[1411]" 0;
	setAttr ".phl[1412]" 0;
	setAttr ".phl[1413]" 0;
	setAttr ".phl[1414]" 0;
	setAttr ".phl[1415]" 0;
	setAttr ".phl[1416]" 0;
	setAttr ".phl[1417]" 0;
	setAttr ".phl[1418]" 0;
	setAttr ".phl[1419]" 0;
	setAttr ".phl[1420]" 0;
	setAttr ".phl[1421]" 0;
	setAttr ".phl[1422]" 0;
	setAttr ".phl[1423]" 0;
	setAttr ".phl[1424]" 0;
	setAttr ".phl[1425]" 0;
	setAttr ".phl[1426]" 0;
	setAttr ".phl[1427]" 0;
	setAttr ".phl[1428]" 0;
	setAttr ".phl[1429]" 0;
	setAttr ".phl[1430]" 0;
	setAttr ".phl[1431]" 0;
	setAttr ".phl[1432]" 0;
	setAttr ".phl[1433]" 0;
	setAttr ".phl[1434]" 0;
	setAttr ".phl[1435]" 0;
	setAttr ".phl[1436]" 0;
	setAttr ".phl[1437]" 0;
	setAttr ".phl[1438]" 0;
	setAttr ".phl[1439]" 0;
	setAttr ".phl[1440]" 0;
	setAttr ".phl[1441]" 0;
	setAttr ".phl[1442]" 0;
	setAttr ".phl[1443]" 0;
	setAttr ".phl[1444]" 0;
	setAttr ".phl[1445]" 0;
	setAttr ".phl[1446]" 0;
	setAttr ".phl[1447]" 0;
	setAttr ".phl[1448]" 0;
	setAttr ".phl[1449]" 0;
	setAttr ".phl[1450]" 0;
	setAttr ".phl[1451]" 0;
	setAttr ".phl[1452]" 0;
	setAttr ".phl[1453]" 0;
	setAttr ".phl[1454]" 0;
	setAttr ".phl[1455]" 0;
	setAttr ".phl[1456]" 0;
	setAttr ".phl[1457]" 0;
	setAttr ".phl[1458]" 0;
	setAttr ".phl[1459]" 0;
	setAttr ".phl[1460]" 0;
	setAttr ".phl[1461]" 0;
	setAttr ".phl[1462]" 0;
	setAttr ".phl[1463]" 0;
	setAttr ".phl[1464]" 0;
	setAttr ".phl[1465]" 0;
	setAttr ".phl[1466]" 0;
	setAttr ".phl[1467]" 0;
	setAttr ".phl[1468]" 0;
	setAttr ".phl[1469]" 0;
	setAttr ".phl[1470]" 0;
	setAttr ".phl[1471]" 0;
	setAttr ".phl[1472]" 0;
	setAttr ".phl[1473]" 0;
	setAttr ".phl[1474]" 0;
	setAttr ".phl[1475]" 0;
	setAttr ".phl[1476]" 0;
	setAttr ".phl[1477]" 0;
	setAttr ".phl[1478]" 0;
	setAttr ".phl[1479]" 0;
	setAttr ".phl[1480]" 0;
	setAttr ".phl[1481]" 0;
	setAttr ".phl[1482]" 0;
	setAttr ".phl[1483]" 0;
	setAttr ".phl[1484]" 0;
	setAttr ".phl[1485]" 0;
	setAttr ".phl[1486]" 0;
	setAttr ".phl[1487]" 0;
	setAttr ".phl[1488]" 0;
	setAttr ".phl[1489]" 0;
	setAttr ".phl[1490]" 0;
	setAttr ".phl[1491]" 0;
	setAttr ".phl[1492]" 0;
	setAttr ".phl[1493]" 0;
	setAttr ".phl[1494]" 0;
	setAttr ".phl[1495]" 0;
	setAttr ".phl[1496]" 0;
	setAttr ".phl[1497]" 0;
	setAttr ".phl[1498]" 0;
	setAttr ".phl[1499]" 0;
	setAttr ".phl[1500]" 0;
	setAttr ".phl[1501]" 0;
	setAttr ".phl[1502]" 0;
	setAttr ".phl[1503]" 0;
	setAttr ".phl[1504]" 0;
	setAttr ".phl[1505]" 0;
	setAttr ".phl[1506]" 0;
	setAttr ".phl[1507]" 0;
	setAttr ".phl[1508]" 0;
	setAttr ".phl[1509]" 0;
	setAttr ".phl[1510]" 0;
	setAttr ".phl[1511]" 0;
	setAttr ".phl[1512]" 0;
	setAttr ".phl[1513]" 0;
	setAttr ".phl[1514]" 0;
	setAttr ".phl[1515]" 0;
	setAttr ".phl[1516]" 0;
	setAttr ".phl[1517]" 0;
	setAttr ".phl[1518]" 0;
	setAttr ".phl[1519]" 0;
	setAttr ".phl[1520]" 0;
	setAttr ".phl[1521]" 0;
	setAttr ".phl[1522]" 0;
	setAttr ".phl[1523]" 0;
	setAttr ".phl[1524]" 0;
	setAttr ".phl[1525]" 0;
	setAttr ".phl[1526]" 0;
	setAttr ".phl[1527]" 0;
	setAttr ".phl[1528]" 0;
	setAttr ".phl[1529]" 0;
	setAttr ".phl[1530]" 0;
	setAttr ".phl[1531]" 0;
	setAttr ".phl[1532]" 0;
	setAttr ".phl[1533]" 0;
	setAttr ".phl[1534]" 0;
	setAttr ".phl[1535]" 0;
	setAttr ".phl[1536]" 0;
	setAttr ".phl[1537]" 0;
	setAttr ".phl[1538]" 0;
	setAttr ".phl[1539]" 0;
	setAttr ".phl[1540]" 0;
	setAttr ".phl[1541]" 0;
	setAttr ".phl[1542]" 0;
	setAttr ".phl[1543]" 0;
	setAttr ".phl[1544]" 0;
	setAttr ".phl[1545]" 0;
	setAttr ".phl[1546]" 0;
	setAttr ".phl[1547]" 0;
	setAttr ".phl[1548]" 0;
	setAttr ".phl[1549]" 0;
	setAttr ".phl[1550]" 0;
	setAttr ".phl[1551]" 0;
	setAttr ".phl[1552]" 0;
	setAttr ".phl[1553]" 0;
	setAttr ".phl[1554]" 0;
	setAttr ".phl[1555]" 0;
	setAttr ".phl[1556]" 0;
	setAttr ".phl[1557]" 0;
	setAttr ".phl[1558]" 0;
	setAttr ".phl[1559]" 0;
	setAttr ".phl[1560]" 0;
	setAttr ".phl[1561]" 0;
	setAttr ".phl[1562]" 0;
	setAttr ".phl[1563]" 0;
	setAttr ".phl[1564]" 0;
	setAttr ".phl[1565]" 0;
	setAttr ".phl[1566]" 0;
	setAttr ".phl[1567]" 0;
	setAttr ".phl[1568]" 0;
	setAttr ".phl[1569]" 0;
	setAttr ".phl[1570]" 0;
	setAttr ".phl[1571]" 0;
	setAttr ".phl[1572]" 0;
	setAttr ".phl[1573]" 0;
	setAttr ".phl[1574]" 0;
	setAttr ".phl[1575]" 0;
	setAttr ".phl[1576]" 0;
	setAttr ".phl[1577]" 0;
	setAttr ".phl[1578]" 0;
	setAttr ".phl[1579]" 0;
	setAttr ".phl[1580]" 0;
	setAttr ".phl[1581]" 0;
	setAttr ".phl[1582]" 0;
	setAttr ".phl[1583]" 0;
	setAttr ".phl[1584]" 0;
	setAttr ".phl[1585]" 0;
	setAttr ".phl[1586]" 0;
	setAttr ".phl[1587]" 0;
	setAttr ".phl[1588]" 0;
	setAttr ".phl[1589]" 0;
	setAttr ".phl[1590]" 0;
	setAttr ".phl[1591]" 0;
	setAttr ".phl[1592]" 0;
	setAttr ".phl[1593]" 0;
	setAttr ".phl[1594]" 0;
	setAttr ".phl[1595]" 0;
	setAttr ".phl[1596]" 0;
	setAttr ".phl[1597]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"MCP1RN"
		"MCP1:ANM1RN" 0
		"MCP1RN" 0
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
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translate" " -type \"double3\" 0.75210368633270264 0 46.49293899536132813"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateX" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateY" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateZ" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateX" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateY" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateZ" " -av"
		2 "MCP1:ANM1:HIKSolverNode1" "InputStance" " 1"
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
		3 "MCP1:ANM1:HIKSolverNode1.OutputCharacterState" "MCP1:ANM1:HIKState2SK1.InputCharacterState" 
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
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__.message" "MCP1RN.placeHolderList[1]" 
		""
		5 0 "MCP1RN" "MCP1:pelvis_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateX" 
		"MCP1RN.placeHolderList[2]" "MCP1RN.placeHolderList[3]" "MCP1:ANM1:pelvis.tx"
		5 0 "MCP1RN" "MCP1:pelvis_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateY" 
		"MCP1RN.placeHolderList[4]" "MCP1RN.placeHolderList[5]" "MCP1:ANM1:pelvis.ty"
		5 0 "MCP1RN" "MCP1:pelvis_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.translateZ" 
		"MCP1RN.placeHolderList[6]" "MCP1RN.placeHolderList[7]" "MCP1:ANM1:pelvis.tz"
		5 0 "MCP1RN" "MCP1:pelvis_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateX" 
		"MCP1RN.placeHolderList[8]" "MCP1RN.placeHolderList[9]" "MCP1:ANM1:pelvis.rx"
		5 0 "MCP1RN" "MCP1:pelvis_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateY" 
		"MCP1RN.placeHolderList[10]" "MCP1RN.placeHolderList[11]" "MCP1:ANM1:pelvis.ry"
		5 0 "MCP1RN" "MCP1:pelvis_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.rotateZ" 
		"MCP1RN.placeHolderList[12]" "MCP1RN.placeHolderList[13]" "MCP1:ANM1:pelvis.rz"
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.worldMatrix" "MCP1RN.placeHolderList[14]" 
		""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis.message" "MCP1RN.placeHolderList[15]" 
		""
		5 0 "MCP1RN" "MCP1:spine_0_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateX" 
		"MCP1RN.placeHolderList[16]" "MCP1RN.placeHolderList[17]" "MCP1:ANM1:spine_0.tx"
		5 0 "MCP1RN" "MCP1:spine_0_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateY" 
		"MCP1RN.placeHolderList[18]" "MCP1RN.placeHolderList[19]" "MCP1:ANM1:spine_0.ty"
		5 0 "MCP1RN" "MCP1:spine_0_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.translateZ" 
		"MCP1RN.placeHolderList[20]" "MCP1RN.placeHolderList[21]" "MCP1:ANM1:spine_0.tz"
		5 0 "MCP1RN" "MCP1:spine_0_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateX" 
		"MCP1RN.placeHolderList[22]" "MCP1RN.placeHolderList[23]" "MCP1:ANM1:spine_0.rx"
		5 0 "MCP1RN" "MCP1:spine_0_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateY" 
		"MCP1RN.placeHolderList[24]" "MCP1RN.placeHolderList[25]" "MCP1:ANM1:spine_0.ry"
		5 0 "MCP1RN" "MCP1:spine_0_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.rotateZ" 
		"MCP1RN.placeHolderList[26]" "MCP1RN.placeHolderList[27]" "MCP1:ANM1:spine_0.rz"
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.worldMatrix" 
		"MCP1RN.placeHolderList[28]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0.message" 
		"MCP1RN.placeHolderList[29]" ""
		5 0 "MCP1RN" "MCP1:spine_1_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateX" 
		"MCP1RN.placeHolderList[30]" "MCP1RN.placeHolderList[31]" "MCP1:ANM1:spine_1.tx"
		5 0 "MCP1RN" "MCP1:spine_1_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateY" 
		"MCP1RN.placeHolderList[32]" "MCP1RN.placeHolderList[33]" "MCP1:ANM1:spine_1.ty"
		5 0 "MCP1RN" "MCP1:spine_1_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.translateZ" 
		"MCP1RN.placeHolderList[34]" "MCP1RN.placeHolderList[35]" "MCP1:ANM1:spine_1.tz"
		5 0 "MCP1RN" "MCP1:spine_1_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateX" 
		"MCP1RN.placeHolderList[36]" "MCP1RN.placeHolderList[37]" "MCP1:ANM1:spine_1.rx"
		5 0 "MCP1RN" "MCP1:spine_1_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateY" 
		"MCP1RN.placeHolderList[38]" "MCP1RN.placeHolderList[39]" "MCP1:ANM1:spine_1.ry"
		5 0 "MCP1RN" "MCP1:spine_1_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.rotateZ" 
		"MCP1RN.placeHolderList[40]" "MCP1RN.placeHolderList[41]" "MCP1:ANM1:spine_1.rz"
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.worldMatrix" 
		"MCP1RN.placeHolderList[42]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1.message" 
		"MCP1RN.placeHolderList[43]" ""
		5 0 "MCP1RN" "MCP1:spine_2_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateX" 
		"MCP1RN.placeHolderList[44]" "MCP1RN.placeHolderList[45]" "MCP1:ANM1:spine_2.tx"
		5 0 "MCP1RN" "MCP1:spine_2_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateY" 
		"MCP1RN.placeHolderList[46]" "MCP1RN.placeHolderList[47]" "MCP1:ANM1:spine_2.ty"
		5 0 "MCP1RN" "MCP1:spine_2_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.translateZ" 
		"MCP1RN.placeHolderList[48]" "MCP1RN.placeHolderList[49]" "MCP1:ANM1:spine_2.tz"
		5 0 "MCP1RN" "MCP1:spine_2_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateX" 
		"MCP1RN.placeHolderList[50]" "MCP1RN.placeHolderList[51]" "MCP1:ANM1:spine_2.rx"
		5 0 "MCP1RN" "MCP1:spine_2_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateY" 
		"MCP1RN.placeHolderList[52]" "MCP1RN.placeHolderList[53]" "MCP1:ANM1:spine_2.ry"
		5 0 "MCP1RN" "MCP1:spine_2_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.rotateZ" 
		"MCP1RN.placeHolderList[54]" "MCP1RN.placeHolderList[55]" "MCP1:ANM1:spine_2.rz"
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.worldMatrix" 
		"MCP1RN.placeHolderList[56]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2.message" 
		"MCP1RN.placeHolderList[57]" ""
		5 0 "MCP1RN" "MCP1:spine_3_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateX" 
		"MCP1RN.placeHolderList[58]" "MCP1RN.placeHolderList[59]" "MCP1:ANM1:spine_3.tx"
		5 0 "MCP1RN" "MCP1:spine_3_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateY" 
		"MCP1RN.placeHolderList[60]" "MCP1RN.placeHolderList[61]" "MCP1:ANM1:spine_3.ty"
		5 0 "MCP1RN" "MCP1:spine_3_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.translateZ" 
		"MCP1RN.placeHolderList[62]" "MCP1RN.placeHolderList[63]" "MCP1:ANM1:spine_3.tz"
		5 0 "MCP1RN" "MCP1:spine_3_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateX" 
		"MCP1RN.placeHolderList[64]" "MCP1RN.placeHolderList[65]" "MCP1:ANM1:spine_3.rx"
		5 0 "MCP1RN" "MCP1:spine_3_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateY" 
		"MCP1RN.placeHolderList[66]" "MCP1RN.placeHolderList[67]" "MCP1:ANM1:spine_3.ry"
		5 0 "MCP1RN" "MCP1:spine_3_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.rotateZ" 
		"MCP1RN.placeHolderList[68]" "MCP1RN.placeHolderList[69]" "MCP1:ANM1:spine_3.rz"
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.worldMatrix" 
		"MCP1RN.placeHolderList[70]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3.message" 
		"MCP1RN.placeHolderList[71]" ""
		5 0 "MCP1RN" "MCP1:clavicle_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateX" 
		"MCP1RN.placeHolderList[72]" "MCP1RN.placeHolderList[73]" "MCP1:ANM1:clavicle_L.tx"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateY" 
		"MCP1RN.placeHolderList[74]" "MCP1RN.placeHolderList[75]" "MCP1:ANM1:clavicle_L.ty"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.translateZ" 
		"MCP1RN.placeHolderList[76]" "MCP1RN.placeHolderList[77]" "MCP1:ANM1:clavicle_L.tz"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateX" 
		"MCP1RN.placeHolderList[78]" "MCP1RN.placeHolderList[79]" "MCP1:ANM1:clavicle_L.rx"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateY" 
		"MCP1RN.placeHolderList[80]" "MCP1RN.placeHolderList[81]" "MCP1:ANM1:clavicle_L.ry"
		
		5 0 "MCP1RN" "MCP1:clavicle_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.rotateZ" 
		"MCP1RN.placeHolderList[82]" "MCP1RN.placeHolderList[83]" "MCP1:ANM1:clavicle_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.worldMatrix" 
		"MCP1RN.placeHolderList[84]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L.message" 
		"MCP1RN.placeHolderList[85]" ""
		5 0 "MCP1RN" "MCP1:arm_upper_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateX" 
		"MCP1RN.placeHolderList[86]" "MCP1RN.placeHolderList[87]" "MCP1:ANM1:arm_upper_L.tx"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateY" 
		"MCP1RN.placeHolderList[88]" "MCP1RN.placeHolderList[89]" "MCP1:ANM1:arm_upper_L.ty"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.translateZ" 
		"MCP1RN.placeHolderList[90]" "MCP1RN.placeHolderList[91]" "MCP1:ANM1:arm_upper_L.tz"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateX" 
		"MCP1RN.placeHolderList[92]" "MCP1RN.placeHolderList[93]" "MCP1:ANM1:arm_upper_L.rx"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateY" 
		"MCP1RN.placeHolderList[94]" "MCP1RN.placeHolderList[95]" "MCP1:ANM1:arm_upper_L.ry"
		
		5 0 "MCP1RN" "MCP1:arm_upper_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.rotateZ" 
		"MCP1RN.placeHolderList[96]" "MCP1RN.placeHolderList[97]" "MCP1:ANM1:arm_upper_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.worldMatrix" 
		"MCP1RN.placeHolderList[98]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L.message" 
		"MCP1RN.placeHolderList[99]" ""
		5 0 "MCP1RN" "MCP1:arm_lower_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateX" 
		"MCP1RN.placeHolderList[100]" "MCP1RN.placeHolderList[101]" "MCP1:ANM1:arm_lower_L.tx"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateY" 
		"MCP1RN.placeHolderList[102]" "MCP1RN.placeHolderList[103]" "MCP1:ANM1:arm_lower_L.ty"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.translateZ" 
		"MCP1RN.placeHolderList[104]" "MCP1RN.placeHolderList[105]" "MCP1:ANM1:arm_lower_L.tz"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateX" 
		"MCP1RN.placeHolderList[106]" "MCP1RN.placeHolderList[107]" "MCP1:ANM1:arm_lower_L.rx"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateY" 
		"MCP1RN.placeHolderList[108]" "MCP1RN.placeHolderList[109]" "MCP1:ANM1:arm_lower_L.ry"
		
		5 0 "MCP1RN" "MCP1:arm_lower_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.rotateZ" 
		"MCP1RN.placeHolderList[110]" "MCP1RN.placeHolderList[111]" "MCP1:ANM1:arm_lower_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.worldMatrix" 
		"MCP1RN.placeHolderList[112]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L.message" 
		"MCP1RN.placeHolderList[113]" ""
		5 0 "MCP1RN" "MCP1:hand_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateX" 
		"MCP1RN.placeHolderList[114]" "MCP1RN.placeHolderList[115]" "MCP1:ANM1:hand_L.tx"
		
		5 0 "MCP1RN" "MCP1:hand_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateY" 
		"MCP1RN.placeHolderList[116]" "MCP1RN.placeHolderList[117]" "MCP1:ANM1:hand_L.ty"
		
		5 0 "MCP1RN" "MCP1:hand_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.translateZ" 
		"MCP1RN.placeHolderList[118]" "MCP1RN.placeHolderList[119]" "MCP1:ANM1:hand_L.tz"
		
		5 0 "MCP1RN" "MCP1:hand_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateX" 
		"MCP1RN.placeHolderList[120]" "MCP1RN.placeHolderList[121]" "MCP1:ANM1:hand_L.rx"
		
		5 0 "MCP1RN" "MCP1:hand_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateY" 
		"MCP1RN.placeHolderList[122]" "MCP1RN.placeHolderList[123]" "MCP1:ANM1:hand_L.ry"
		
		5 0 "MCP1RN" "MCP1:hand_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.rotateZ" 
		"MCP1RN.placeHolderList[124]" "MCP1RN.placeHolderList[125]" "MCP1:ANM1:hand_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.worldMatrix" 
		"MCP1RN.placeHolderList[126]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L.message" 
		"MCP1RN.placeHolderList[127]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:hand_end_L.message" 
		"MCP1RN.placeHolderList[128]" ""
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateX" 
		"MCP1RN.placeHolderList[129]" "MCP1RN.placeHolderList[130]" "MCP1:ANM1:finger_index_meta_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateY" 
		"MCP1RN.placeHolderList[131]" "MCP1RN.placeHolderList[132]" "MCP1:ANM1:finger_index_meta_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.translateZ" 
		"MCP1RN.placeHolderList[133]" "MCP1RN.placeHolderList[134]" "MCP1:ANM1:finger_index_meta_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateX" 
		"MCP1RN.placeHolderList[135]" "MCP1RN.placeHolderList[136]" "MCP1:ANM1:finger_index_meta_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateY" 
		"MCP1RN.placeHolderList[137]" "MCP1RN.placeHolderList[138]" "MCP1:ANM1:finger_index_meta_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.rotateZ" 
		"MCP1RN.placeHolderList[139]" "MCP1RN.placeHolderList[140]" "MCP1:ANM1:finger_index_meta_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.worldMatrix" 
		"MCP1RN.placeHolderList[141]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L.message" 
		"MCP1RN.placeHolderList[142]" ""
		5 0 "MCP1RN" "MCP1:finger_index_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateX" 
		"MCP1RN.placeHolderList[143]" "MCP1RN.placeHolderList[144]" "MCP1:ANM1:finger_index_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateY" 
		"MCP1RN.placeHolderList[145]" "MCP1RN.placeHolderList[146]" "MCP1:ANM1:finger_index_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.translateZ" 
		"MCP1RN.placeHolderList[147]" "MCP1RN.placeHolderList[148]" "MCP1:ANM1:finger_index_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateX" 
		"MCP1RN.placeHolderList[149]" "MCP1RN.placeHolderList[150]" "MCP1:ANM1:finger_index_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateY" 
		"MCP1RN.placeHolderList[151]" "MCP1RN.placeHolderList[152]" "MCP1:ANM1:finger_index_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.rotateZ" 
		"MCP1RN.placeHolderList[153]" "MCP1RN.placeHolderList[154]" "MCP1:ANM1:finger_index_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[155]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L.message" 
		"MCP1RN.placeHolderList[156]" ""
		5 0 "MCP1RN" "MCP1:finger_index_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateX" 
		"MCP1RN.placeHolderList[157]" "MCP1RN.placeHolderList[158]" "MCP1:ANM1:finger_index_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateY" 
		"MCP1RN.placeHolderList[159]" "MCP1RN.placeHolderList[160]" "MCP1:ANM1:finger_index_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.translateZ" 
		"MCP1RN.placeHolderList[161]" "MCP1RN.placeHolderList[162]" "MCP1:ANM1:finger_index_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateX" 
		"MCP1RN.placeHolderList[163]" "MCP1RN.placeHolderList[164]" "MCP1:ANM1:finger_index_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateY" 
		"MCP1RN.placeHolderList[165]" "MCP1RN.placeHolderList[166]" "MCP1:ANM1:finger_index_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.rotateZ" 
		"MCP1RN.placeHolderList[167]" "MCP1RN.placeHolderList[168]" "MCP1:ANM1:finger_index_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[169]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L.message" 
		"MCP1RN.placeHolderList[170]" ""
		5 0 "MCP1RN" "MCP1:finger_index_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateX" 
		"MCP1RN.placeHolderList[171]" "MCP1RN.placeHolderList[172]" "MCP1:ANM1:finger_index_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateY" 
		"MCP1RN.placeHolderList[173]" "MCP1RN.placeHolderList[174]" "MCP1:ANM1:finger_index_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.translateZ" 
		"MCP1RN.placeHolderList[175]" "MCP1RN.placeHolderList[176]" "MCP1:ANM1:finger_index_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateX" 
		"MCP1RN.placeHolderList[177]" "MCP1RN.placeHolderList[178]" "MCP1:ANM1:finger_index_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateY" 
		"MCP1RN.placeHolderList[179]" "MCP1RN.placeHolderList[180]" "MCP1:ANM1:finger_index_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.rotateZ" 
		"MCP1RN.placeHolderList[181]" "MCP1RN.placeHolderList[182]" "MCP1:ANM1:finger_index_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[183]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L.message" 
		"MCP1RN.placeHolderList[184]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L|MCP1:ANM1:finger_index_end_L.message" 
		"MCP1RN.placeHolderList[185]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L|MCP1:ANM1:finger_index_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[186]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_2_L|MCP1:ANM1:finger_index_2_L_InfGEOM|MCP1:ANM1:finger_index_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[187]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[188]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_1_L|MCP1:ANM1:finger_index_1_L_InfGEOM|MCP1:ANM1:finger_index_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[189]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[190]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_0_L|MCP1:ANM1:finger_index_0_L_InfGEOM|MCP1:ANM1:finger_index_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[191]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_meta_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[192]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_index_meta_L|MCP1:ANM1:finger_index_meta_L_InfGEOM|MCP1:ANM1:finger_index_meta_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[193]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateX" 
		"MCP1RN.placeHolderList[194]" "MCP1RN.placeHolderList[195]" "MCP1:ANM1:finger_pinky_meta_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateY" 
		"MCP1RN.placeHolderList[196]" "MCP1RN.placeHolderList[197]" "MCP1:ANM1:finger_pinky_meta_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.translateZ" 
		"MCP1RN.placeHolderList[198]" "MCP1RN.placeHolderList[199]" "MCP1:ANM1:finger_pinky_meta_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateX" 
		"MCP1RN.placeHolderList[200]" "MCP1RN.placeHolderList[201]" "MCP1:ANM1:finger_pinky_meta_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateY" 
		"MCP1RN.placeHolderList[202]" "MCP1RN.placeHolderList[203]" "MCP1:ANM1:finger_pinky_meta_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.rotateZ" 
		"MCP1RN.placeHolderList[204]" "MCP1RN.placeHolderList[205]" "MCP1:ANM1:finger_pinky_meta_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.worldMatrix" 
		"MCP1RN.placeHolderList[206]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L.message" 
		"MCP1RN.placeHolderList[207]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateX" 
		"MCP1RN.placeHolderList[208]" "MCP1RN.placeHolderList[209]" "MCP1:ANM1:finger_pinky_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateY" 
		"MCP1RN.placeHolderList[210]" "MCP1RN.placeHolderList[211]" "MCP1:ANM1:finger_pinky_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.translateZ" 
		"MCP1RN.placeHolderList[212]" "MCP1RN.placeHolderList[213]" "MCP1:ANM1:finger_pinky_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateX" 
		"MCP1RN.placeHolderList[214]" "MCP1RN.placeHolderList[215]" "MCP1:ANM1:finger_pinky_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateY" 
		"MCP1RN.placeHolderList[216]" "MCP1RN.placeHolderList[217]" "MCP1:ANM1:finger_pinky_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.rotateZ" 
		"MCP1RN.placeHolderList[218]" "MCP1RN.placeHolderList[219]" "MCP1:ANM1:finger_pinky_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[220]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L.message" 
		"MCP1RN.placeHolderList[221]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateX" 
		"MCP1RN.placeHolderList[222]" "MCP1RN.placeHolderList[223]" "MCP1:ANM1:finger_pinky_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateY" 
		"MCP1RN.placeHolderList[224]" "MCP1RN.placeHolderList[225]" "MCP1:ANM1:finger_pinky_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.translateZ" 
		"MCP1RN.placeHolderList[226]" "MCP1RN.placeHolderList[227]" "MCP1:ANM1:finger_pinky_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateX" 
		"MCP1RN.placeHolderList[228]" "MCP1RN.placeHolderList[229]" "MCP1:ANM1:finger_pinky_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateY" 
		"MCP1RN.placeHolderList[230]" "MCP1RN.placeHolderList[231]" "MCP1:ANM1:finger_pinky_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.rotateZ" 
		"MCP1RN.placeHolderList[232]" "MCP1RN.placeHolderList[233]" "MCP1:ANM1:finger_pinky_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[234]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L.message" 
		"MCP1RN.placeHolderList[235]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateX" 
		"MCP1RN.placeHolderList[236]" "MCP1RN.placeHolderList[237]" "MCP1:ANM1:finger_pinky_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateY" 
		"MCP1RN.placeHolderList[238]" "MCP1RN.placeHolderList[239]" "MCP1:ANM1:finger_pinky_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.translateZ" 
		"MCP1RN.placeHolderList[240]" "MCP1RN.placeHolderList[241]" "MCP1:ANM1:finger_pinky_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateX" 
		"MCP1RN.placeHolderList[242]" "MCP1RN.placeHolderList[243]" "MCP1:ANM1:finger_pinky_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateY" 
		"MCP1RN.placeHolderList[244]" "MCP1RN.placeHolderList[245]" "MCP1:ANM1:finger_pinky_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.rotateZ" 
		"MCP1RN.placeHolderList[246]" "MCP1RN.placeHolderList[247]" "MCP1:ANM1:finger_pinky_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[248]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L.message" 
		"MCP1RN.placeHolderList[249]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L|MCP1:ANM1:finger_pinky_end_L.message" 
		"MCP1RN.placeHolderList[250]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L|MCP1:ANM1:finger_pinky_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[251]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_2_L|MCP1:ANM1:finger_pinky_2_L_InfGEOM|MCP1:ANM1:finger_pinky_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[252]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[253]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_1_L|MCP1:ANM1:finger_pinky_1_L_InfGEOM|MCP1:ANM1:finger_pinky_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[254]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[255]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_0_L|MCP1:ANM1:finger_pinky_0_L_InfGEOM|MCP1:ANM1:finger_pinky_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[256]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_meta_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[257]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_pinky_meta_L|MCP1:ANM1:finger_pinky_meta_L_InfGEOM|MCP1:ANM1:finger_pinky_meta_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[258]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateX" 
		"MCP1RN.placeHolderList[259]" "MCP1RN.placeHolderList[260]" "MCP1:ANM1:finger_middle_meta_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateY" 
		"MCP1RN.placeHolderList[261]" "MCP1RN.placeHolderList[262]" "MCP1:ANM1:finger_middle_meta_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.translateZ" 
		"MCP1RN.placeHolderList[263]" "MCP1RN.placeHolderList[264]" "MCP1:ANM1:finger_middle_meta_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateX" 
		"MCP1RN.placeHolderList[265]" "MCP1RN.placeHolderList[266]" "MCP1:ANM1:finger_middle_meta_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateY" 
		"MCP1RN.placeHolderList[267]" "MCP1RN.placeHolderList[268]" "MCP1:ANM1:finger_middle_meta_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.rotateZ" 
		"MCP1RN.placeHolderList[269]" "MCP1RN.placeHolderList[270]" "MCP1:ANM1:finger_middle_meta_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.worldMatrix" 
		"MCP1RN.placeHolderList[271]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L.message" 
		"MCP1RN.placeHolderList[272]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateX" 
		"MCP1RN.placeHolderList[273]" "MCP1RN.placeHolderList[274]" "MCP1:ANM1:finger_middle_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateY" 
		"MCP1RN.placeHolderList[275]" "MCP1RN.placeHolderList[276]" "MCP1:ANM1:finger_middle_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.translateZ" 
		"MCP1RN.placeHolderList[277]" "MCP1RN.placeHolderList[278]" "MCP1:ANM1:finger_middle_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateX" 
		"MCP1RN.placeHolderList[279]" "MCP1RN.placeHolderList[280]" "MCP1:ANM1:finger_middle_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateY" 
		"MCP1RN.placeHolderList[281]" "MCP1RN.placeHolderList[282]" "MCP1:ANM1:finger_middle_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.rotateZ" 
		"MCP1RN.placeHolderList[283]" "MCP1RN.placeHolderList[284]" "MCP1:ANM1:finger_middle_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[285]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L.message" 
		"MCP1RN.placeHolderList[286]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateX" 
		"MCP1RN.placeHolderList[287]" "MCP1RN.placeHolderList[288]" "MCP1:ANM1:finger_middle_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateY" 
		"MCP1RN.placeHolderList[289]" "MCP1RN.placeHolderList[290]" "MCP1:ANM1:finger_middle_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.translateZ" 
		"MCP1RN.placeHolderList[291]" "MCP1RN.placeHolderList[292]" "MCP1:ANM1:finger_middle_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateX" 
		"MCP1RN.placeHolderList[293]" "MCP1RN.placeHolderList[294]" "MCP1:ANM1:finger_middle_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateY" 
		"MCP1RN.placeHolderList[295]" "MCP1RN.placeHolderList[296]" "MCP1:ANM1:finger_middle_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.rotateZ" 
		"MCP1RN.placeHolderList[297]" "MCP1RN.placeHolderList[298]" "MCP1:ANM1:finger_middle_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[299]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L.message" 
		"MCP1RN.placeHolderList[300]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateX" 
		"MCP1RN.placeHolderList[301]" "MCP1RN.placeHolderList[302]" "MCP1:ANM1:finger_middle_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateY" 
		"MCP1RN.placeHolderList[303]" "MCP1RN.placeHolderList[304]" "MCP1:ANM1:finger_middle_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.translateZ" 
		"MCP1RN.placeHolderList[305]" "MCP1RN.placeHolderList[306]" "MCP1:ANM1:finger_middle_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateX" 
		"MCP1RN.placeHolderList[307]" "MCP1RN.placeHolderList[308]" "MCP1:ANM1:finger_middle_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateY" 
		"MCP1RN.placeHolderList[309]" "MCP1RN.placeHolderList[310]" "MCP1:ANM1:finger_middle_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.rotateZ" 
		"MCP1RN.placeHolderList[311]" "MCP1RN.placeHolderList[312]" "MCP1:ANM1:finger_middle_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[313]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L.message" 
		"MCP1RN.placeHolderList[314]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L|MCP1:ANM1:finger_middle_end_L.message" 
		"MCP1RN.placeHolderList[315]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L|MCP1:ANM1:finger_middle_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[316]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_2_L|MCP1:ANM1:finger_middle_2_L_InfGEOM|MCP1:ANM1:finger_middle_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[317]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[318]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_1_L|MCP1:ANM1:finger_middle_1_L_InfGEOM|MCP1:ANM1:finger_middle_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[319]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[320]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_0_L|MCP1:ANM1:finger_middle_0_L_InfGEOM|MCP1:ANM1:finger_middle_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[321]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_meta_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[322]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_middle_meta_L|MCP1:ANM1:finger_middle_meta_L_InfGEOM|MCP1:ANM1:finger_middle_meta_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[323]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateX" 
		"MCP1RN.placeHolderList[324]" "MCP1RN.placeHolderList[325]" "MCP1:ANM1:finger_ring_meta_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateY" 
		"MCP1RN.placeHolderList[326]" "MCP1RN.placeHolderList[327]" "MCP1:ANM1:finger_ring_meta_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.translateZ" 
		"MCP1RN.placeHolderList[328]" "MCP1RN.placeHolderList[329]" "MCP1:ANM1:finger_ring_meta_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateX" 
		"MCP1RN.placeHolderList[330]" "MCP1RN.placeHolderList[331]" "MCP1:ANM1:finger_ring_meta_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateY" 
		"MCP1RN.placeHolderList[332]" "MCP1RN.placeHolderList[333]" "MCP1:ANM1:finger_ring_meta_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.rotateZ" 
		"MCP1RN.placeHolderList[334]" "MCP1RN.placeHolderList[335]" "MCP1:ANM1:finger_ring_meta_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.worldMatrix" 
		"MCP1RN.placeHolderList[336]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L.message" 
		"MCP1RN.placeHolderList[337]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateX" 
		"MCP1RN.placeHolderList[338]" "MCP1RN.placeHolderList[339]" "MCP1:ANM1:finger_ring_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateY" 
		"MCP1RN.placeHolderList[340]" "MCP1RN.placeHolderList[341]" "MCP1:ANM1:finger_ring_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.translateZ" 
		"MCP1RN.placeHolderList[342]" "MCP1RN.placeHolderList[343]" "MCP1:ANM1:finger_ring_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateX" 
		"MCP1RN.placeHolderList[344]" "MCP1RN.placeHolderList[345]" "MCP1:ANM1:finger_ring_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateY" 
		"MCP1RN.placeHolderList[346]" "MCP1RN.placeHolderList[347]" "MCP1:ANM1:finger_ring_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.rotateZ" 
		"MCP1RN.placeHolderList[348]" "MCP1RN.placeHolderList[349]" "MCP1:ANM1:finger_ring_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[350]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L.message" 
		"MCP1RN.placeHolderList[351]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateX" 
		"MCP1RN.placeHolderList[352]" "MCP1RN.placeHolderList[353]" "MCP1:ANM1:finger_ring_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateY" 
		"MCP1RN.placeHolderList[354]" "MCP1RN.placeHolderList[355]" "MCP1:ANM1:finger_ring_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.translateZ" 
		"MCP1RN.placeHolderList[356]" "MCP1RN.placeHolderList[357]" "MCP1:ANM1:finger_ring_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateX" 
		"MCP1RN.placeHolderList[358]" "MCP1RN.placeHolderList[359]" "MCP1:ANM1:finger_ring_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateY" 
		"MCP1RN.placeHolderList[360]" "MCP1RN.placeHolderList[361]" "MCP1:ANM1:finger_ring_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.rotateZ" 
		"MCP1RN.placeHolderList[362]" "MCP1RN.placeHolderList[363]" "MCP1:ANM1:finger_ring_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[364]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L.message" 
		"MCP1RN.placeHolderList[365]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateX" 
		"MCP1RN.placeHolderList[366]" "MCP1RN.placeHolderList[367]" "MCP1:ANM1:finger_ring_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateY" 
		"MCP1RN.placeHolderList[368]" "MCP1RN.placeHolderList[369]" "MCP1:ANM1:finger_ring_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.translateZ" 
		"MCP1RN.placeHolderList[370]" "MCP1RN.placeHolderList[371]" "MCP1:ANM1:finger_ring_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateX" 
		"MCP1RN.placeHolderList[372]" "MCP1RN.placeHolderList[373]" "MCP1:ANM1:finger_ring_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateY" 
		"MCP1RN.placeHolderList[374]" "MCP1RN.placeHolderList[375]" "MCP1:ANM1:finger_ring_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.rotateZ" 
		"MCP1RN.placeHolderList[376]" "MCP1RN.placeHolderList[377]" "MCP1:ANM1:finger_ring_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[378]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L.message" 
		"MCP1RN.placeHolderList[379]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L|MCP1:ANM1:finger_ring_end_L.message" 
		"MCP1RN.placeHolderList[380]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L|MCP1:ANM1:finger_ring_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[381]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_2_L|MCP1:ANM1:finger_ring_2_L_InfGEOM|MCP1:ANM1:finger_ring_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[382]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[383]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_1_L|MCP1:ANM1:finger_ring_1_L_InfGEOM|MCP1:ANM1:finger_ring_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[384]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[385]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_0_L|MCP1:ANM1:finger_ring_0_L_InfGEOM|MCP1:ANM1:finger_ring_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[386]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_meta_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[387]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_ring_meta_L|MCP1:ANM1:finger_ring_meta_L_InfGEOM|MCP1:ANM1:finger_ring_meta_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[388]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateX" 
		"MCP1RN.placeHolderList[389]" "MCP1RN.placeHolderList[390]" "MCP1:ANM1:finger_thumb_0_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateY" 
		"MCP1RN.placeHolderList[391]" "MCP1RN.placeHolderList[392]" "MCP1:ANM1:finger_thumb_0_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.translateZ" 
		"MCP1RN.placeHolderList[393]" "MCP1RN.placeHolderList[394]" "MCP1:ANM1:finger_thumb_0_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateX" 
		"MCP1RN.placeHolderList[395]" "MCP1RN.placeHolderList[396]" "MCP1:ANM1:finger_thumb_0_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateY" 
		"MCP1RN.placeHolderList[397]" "MCP1RN.placeHolderList[398]" "MCP1:ANM1:finger_thumb_0_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.rotateZ" 
		"MCP1RN.placeHolderList[399]" "MCP1RN.placeHolderList[400]" "MCP1:ANM1:finger_thumb_0_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.worldMatrix" 
		"MCP1RN.placeHolderList[401]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L.message" 
		"MCP1RN.placeHolderList[402]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateX" 
		"MCP1RN.placeHolderList[403]" "MCP1RN.placeHolderList[404]" "MCP1:ANM1:finger_thumb_1_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateY" 
		"MCP1RN.placeHolderList[405]" "MCP1RN.placeHolderList[406]" "MCP1:ANM1:finger_thumb_1_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.translateZ" 
		"MCP1RN.placeHolderList[407]" "MCP1RN.placeHolderList[408]" "MCP1:ANM1:finger_thumb_1_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateX" 
		"MCP1RN.placeHolderList[409]" "MCP1RN.placeHolderList[410]" "MCP1:ANM1:finger_thumb_1_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateY" 
		"MCP1RN.placeHolderList[411]" "MCP1RN.placeHolderList[412]" "MCP1:ANM1:finger_thumb_1_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.rotateZ" 
		"MCP1RN.placeHolderList[413]" "MCP1RN.placeHolderList[414]" "MCP1:ANM1:finger_thumb_1_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.worldMatrix" 
		"MCP1RN.placeHolderList[415]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L.message" 
		"MCP1RN.placeHolderList[416]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateX" 
		"MCP1RN.placeHolderList[417]" "MCP1RN.placeHolderList[418]" "MCP1:ANM1:finger_thumb_2_L.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateY" 
		"MCP1RN.placeHolderList[419]" "MCP1RN.placeHolderList[420]" "MCP1:ANM1:finger_thumb_2_L.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.translateZ" 
		"MCP1RN.placeHolderList[421]" "MCP1RN.placeHolderList[422]" "MCP1:ANM1:finger_thumb_2_L.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateX" 
		"MCP1RN.placeHolderList[423]" "MCP1RN.placeHolderList[424]" "MCP1:ANM1:finger_thumb_2_L.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateY" 
		"MCP1RN.placeHolderList[425]" "MCP1RN.placeHolderList[426]" "MCP1:ANM1:finger_thumb_2_L.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.rotateZ" 
		"MCP1RN.placeHolderList[427]" "MCP1RN.placeHolderList[428]" "MCP1:ANM1:finger_thumb_2_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.worldMatrix" 
		"MCP1RN.placeHolderList[429]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L.message" 
		"MCP1RN.placeHolderList[430]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L|MCP1:ANM1:finger_thumb_end_L.message" 
		"MCP1RN.placeHolderList[431]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L|MCP1:ANM1:finger_thumb_2_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[432]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_2_L|MCP1:ANM1:finger_thumb_2_L_InfGEOM|MCP1:ANM1:finger_thumb_2_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[433]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_1_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[434]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_1_L|MCP1:ANM1:finger_thumb_1_L_InfGEOM|MCP1:ANM1:finger_thumb_1_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[435]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_0_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[436]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:finger_thumb_0_L|MCP1:ANM1:finger_thumb_0_L_InfGEOM|MCP1:ANM1:finger_thumb_0_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[437]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:hand_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[438]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:hand_L_InfGEOM|MCP1:ANM1:hand_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[439]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:object_hand_L.message" 
		"MCP1RN.placeHolderList[440]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:hand_L|MCP1:ANM1:weapon_hand_L.message" 
		"MCP1RN.placeHolderList[441]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:arm_lower_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[442]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_lower_L|MCP1:ANM1:arm_lower_L_InfGEOM|MCP1:ANM1:arm_lower_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[443]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_upper_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[444]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:arm_upper_L|MCP1:ANM1:arm_upper_L_InfGEOM|MCP1:ANM1:arm_upper_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[445]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:clavicle_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[446]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_L|MCP1:ANM1:clavicle_L_InfGEOM|MCP1:ANM1:clavicle_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[447]" ""
		5 0 "MCP1RN" "MCP1:neck_0_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateX" 
		"MCP1RN.placeHolderList[448]" "MCP1RN.placeHolderList[449]" "MCP1:ANM1:neck_0.tx"
		
		5 0 "MCP1RN" "MCP1:neck_0_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateY" 
		"MCP1RN.placeHolderList[450]" "MCP1RN.placeHolderList[451]" "MCP1:ANM1:neck_0.ty"
		
		5 0 "MCP1RN" "MCP1:neck_0_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.translateZ" 
		"MCP1RN.placeHolderList[452]" "MCP1RN.placeHolderList[453]" "MCP1:ANM1:neck_0.tz"
		
		5 0 "MCP1RN" "MCP1:neck_0_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateX" 
		"MCP1RN.placeHolderList[454]" "MCP1RN.placeHolderList[455]" "MCP1:ANM1:neck_0.rx"
		
		5 0 "MCP1RN" "MCP1:neck_0_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateY" 
		"MCP1RN.placeHolderList[456]" "MCP1RN.placeHolderList[457]" "MCP1:ANM1:neck_0.ry"
		
		5 0 "MCP1RN" "MCP1:neck_0_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.rotateZ" 
		"MCP1RN.placeHolderList[458]" "MCP1RN.placeHolderList[459]" "MCP1:ANM1:neck_0.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.worldMatrix" 
		"MCP1RN.placeHolderList[460]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0.message" 
		"MCP1RN.placeHolderList[461]" ""
		5 0 "MCP1RN" "MCP1:head_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateX" 
		"MCP1RN.placeHolderList[462]" "MCP1RN.placeHolderList[463]" "MCP1:ANM1:head.tx"
		5 0 "MCP1RN" "MCP1:head_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateY" 
		"MCP1RN.placeHolderList[464]" "MCP1RN.placeHolderList[465]" "MCP1:ANM1:head.ty"
		5 0 "MCP1RN" "MCP1:head_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.translateZ" 
		"MCP1RN.placeHolderList[466]" "MCP1RN.placeHolderList[467]" "MCP1:ANM1:head.tz"
		5 0 "MCP1RN" "MCP1:head_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateX" 
		"MCP1RN.placeHolderList[468]" "MCP1RN.placeHolderList[469]" "MCP1:ANM1:head.rx"
		5 0 "MCP1RN" "MCP1:head_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateY" 
		"MCP1RN.placeHolderList[470]" "MCP1RN.placeHolderList[471]" "MCP1:ANM1:head.ry"
		5 0 "MCP1RN" "MCP1:head_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.rotateZ" 
		"MCP1RN.placeHolderList[472]" "MCP1RN.placeHolderList[473]" "MCP1:ANM1:head.rz"
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.worldMatrix" 
		"MCP1RN.placeHolderList[474]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head.message" 
		"MCP1RN.placeHolderList[475]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:eye_R.message" 
		"MCP1RN.placeHolderList[476]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:eye_R|MCP1:ANM1:eye_end_R.message" 
		"MCP1RN.placeHolderList[477]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:head_end.message" 
		"MCP1RN.placeHolderList[478]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:eye_L.message" 
		"MCP1RN.placeHolderList[479]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:eye_L|MCP1:ANM1:eye_end_L.message" 
		"MCP1RN.placeHolderList[480]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:head_InfGEOM.message" 
		"MCP1RN.placeHolderList[481]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:head|MCP1:ANM1:head_InfGEOM|MCP1:ANM1:head_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[482]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:neck_0_InfGEOM.message" 
		"MCP1RN.placeHolderList[483]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:neck_0|MCP1:ANM1:neck_0_InfGEOM|MCP1:ANM1:neck_0_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[484]" ""
		5 0 "MCP1RN" "MCP1:clavicle_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateX" 
		"MCP1RN.placeHolderList[485]" "MCP1RN.placeHolderList[486]" "MCP1:ANM1:clavicle_R.tx"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateY" 
		"MCP1RN.placeHolderList[487]" "MCP1RN.placeHolderList[488]" "MCP1:ANM1:clavicle_R.ty"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.translateZ" 
		"MCP1RN.placeHolderList[489]" "MCP1RN.placeHolderList[490]" "MCP1:ANM1:clavicle_R.tz"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateX" 
		"MCP1RN.placeHolderList[491]" "MCP1RN.placeHolderList[492]" "MCP1:ANM1:clavicle_R.rx"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateY" 
		"MCP1RN.placeHolderList[493]" "MCP1RN.placeHolderList[494]" "MCP1:ANM1:clavicle_R.ry"
		
		5 0 "MCP1RN" "MCP1:clavicle_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.rotateZ" 
		"MCP1RN.placeHolderList[495]" "MCP1RN.placeHolderList[496]" "MCP1:ANM1:clavicle_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.worldMatrix" 
		"MCP1RN.placeHolderList[497]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R.message" 
		"MCP1RN.placeHolderList[498]" ""
		5 0 "MCP1RN" "MCP1:arm_upper_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateX" 
		"MCP1RN.placeHolderList[499]" "MCP1RN.placeHolderList[500]" "MCP1:ANM1:arm_upper_R.tx"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateY" 
		"MCP1RN.placeHolderList[501]" "MCP1RN.placeHolderList[502]" "MCP1:ANM1:arm_upper_R.ty"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.translateZ" 
		"MCP1RN.placeHolderList[503]" "MCP1RN.placeHolderList[504]" "MCP1:ANM1:arm_upper_R.tz"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateX" 
		"MCP1RN.placeHolderList[505]" "MCP1RN.placeHolderList[506]" "MCP1:ANM1:arm_upper_R.rx"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateY" 
		"MCP1RN.placeHolderList[507]" "MCP1RN.placeHolderList[508]" "MCP1:ANM1:arm_upper_R.ry"
		
		5 0 "MCP1RN" "MCP1:arm_upper_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.rotateZ" 
		"MCP1RN.placeHolderList[509]" "MCP1RN.placeHolderList[510]" "MCP1:ANM1:arm_upper_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.worldMatrix" 
		"MCP1RN.placeHolderList[511]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R.message" 
		"MCP1RN.placeHolderList[512]" ""
		5 0 "MCP1RN" "MCP1:arm_lower_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateX" 
		"MCP1RN.placeHolderList[513]" "MCP1RN.placeHolderList[514]" "MCP1:ANM1:arm_lower_R.tx"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateY" 
		"MCP1RN.placeHolderList[515]" "MCP1RN.placeHolderList[516]" "MCP1:ANM1:arm_lower_R.ty"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.translateZ" 
		"MCP1RN.placeHolderList[517]" "MCP1RN.placeHolderList[518]" "MCP1:ANM1:arm_lower_R.tz"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateX" 
		"MCP1RN.placeHolderList[519]" "MCP1RN.placeHolderList[520]" "MCP1:ANM1:arm_lower_R.rx"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateY" 
		"MCP1RN.placeHolderList[521]" "MCP1RN.placeHolderList[522]" "MCP1:ANM1:arm_lower_R.ry"
		
		5 0 "MCP1RN" "MCP1:arm_lower_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.rotateZ" 
		"MCP1RN.placeHolderList[523]" "MCP1RN.placeHolderList[524]" "MCP1:ANM1:arm_lower_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.worldMatrix" 
		"MCP1RN.placeHolderList[525]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R.message" 
		"MCP1RN.placeHolderList[526]" ""
		5 0 "MCP1RN" "MCP1:hand_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateX" 
		"MCP1RN.placeHolderList[527]" "MCP1RN.placeHolderList[528]" "MCP1:ANM1:hand_R.tx"
		
		5 0 "MCP1RN" "MCP1:hand_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateY" 
		"MCP1RN.placeHolderList[529]" "MCP1RN.placeHolderList[530]" "MCP1:ANM1:hand_R.ty"
		
		5 0 "MCP1RN" "MCP1:hand_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.translateZ" 
		"MCP1RN.placeHolderList[531]" "MCP1RN.placeHolderList[532]" "MCP1:ANM1:hand_R.tz"
		
		5 0 "MCP1RN" "MCP1:hand_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateX" 
		"MCP1RN.placeHolderList[533]" "MCP1RN.placeHolderList[534]" "MCP1:ANM1:hand_R.rx"
		
		5 0 "MCP1RN" "MCP1:hand_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateY" 
		"MCP1RN.placeHolderList[535]" "MCP1RN.placeHolderList[536]" "MCP1:ANM1:hand_R.ry"
		
		5 0 "MCP1RN" "MCP1:hand_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.rotateZ" 
		"MCP1RN.placeHolderList[537]" "MCP1RN.placeHolderList[538]" "MCP1:ANM1:hand_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.worldMatrix" 
		"MCP1RN.placeHolderList[539]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R.message" 
		"MCP1RN.placeHolderList[540]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateX" 
		"MCP1RN.placeHolderList[541]" "MCP1RN.placeHolderList[542]" "MCP1:ANM1:finger_thumb_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateY" 
		"MCP1RN.placeHolderList[543]" "MCP1RN.placeHolderList[544]" "MCP1:ANM1:finger_thumb_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.translateZ" 
		"MCP1RN.placeHolderList[545]" "MCP1RN.placeHolderList[546]" "MCP1:ANM1:finger_thumb_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateX" 
		"MCP1RN.placeHolderList[547]" "MCP1RN.placeHolderList[548]" "MCP1:ANM1:finger_thumb_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateY" 
		"MCP1RN.placeHolderList[549]" "MCP1RN.placeHolderList[550]" "MCP1:ANM1:finger_thumb_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.rotateZ" 
		"MCP1RN.placeHolderList[551]" "MCP1RN.placeHolderList[552]" "MCP1:ANM1:finger_thumb_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[553]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R.message" 
		"MCP1RN.placeHolderList[554]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateX" 
		"MCP1RN.placeHolderList[555]" "MCP1RN.placeHolderList[556]" "MCP1:ANM1:finger_thumb_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateY" 
		"MCP1RN.placeHolderList[557]" "MCP1RN.placeHolderList[558]" "MCP1:ANM1:finger_thumb_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.translateZ" 
		"MCP1RN.placeHolderList[559]" "MCP1RN.placeHolderList[560]" "MCP1:ANM1:finger_thumb_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateX" 
		"MCP1RN.placeHolderList[561]" "MCP1RN.placeHolderList[562]" "MCP1:ANM1:finger_thumb_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateY" 
		"MCP1RN.placeHolderList[563]" "MCP1RN.placeHolderList[564]" "MCP1:ANM1:finger_thumb_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.rotateZ" 
		"MCP1RN.placeHolderList[565]" "MCP1RN.placeHolderList[566]" "MCP1:ANM1:finger_thumb_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[567]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R.message" 
		"MCP1RN.placeHolderList[568]" ""
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateX" 
		"MCP1RN.placeHolderList[569]" "MCP1RN.placeHolderList[570]" "MCP1:ANM1:finger_thumb_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateY" 
		"MCP1RN.placeHolderList[571]" "MCP1RN.placeHolderList[572]" "MCP1:ANM1:finger_thumb_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.translateZ" 
		"MCP1RN.placeHolderList[573]" "MCP1RN.placeHolderList[574]" "MCP1:ANM1:finger_thumb_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateX" 
		"MCP1RN.placeHolderList[575]" "MCP1RN.placeHolderList[576]" "MCP1:ANM1:finger_thumb_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateY" 
		"MCP1RN.placeHolderList[577]" "MCP1RN.placeHolderList[578]" "MCP1:ANM1:finger_thumb_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_thumb_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.rotateZ" 
		"MCP1RN.placeHolderList[579]" "MCP1RN.placeHolderList[580]" "MCP1:ANM1:finger_thumb_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[581]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R.message" 
		"MCP1RN.placeHolderList[582]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R|MCP1:ANM1:finger_thumb_end_R.message" 
		"MCP1RN.placeHolderList[583]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R|MCP1:ANM1:finger_thumb_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[584]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_2_R|MCP1:ANM1:finger_thumb_2_R_InfGEOM|MCP1:ANM1:finger_thumb_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[585]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[586]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_1_R|MCP1:ANM1:finger_thumb_1_R_InfGEOM|MCP1:ANM1:finger_thumb_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[587]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[588]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_thumb_0_R|MCP1:ANM1:finger_thumb_0_R_InfGEOM|MCP1:ANM1:finger_thumb_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[589]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateX" 
		"MCP1RN.placeHolderList[590]" "MCP1RN.placeHolderList[591]" "MCP1:ANM1:finger_ring_meta_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateY" 
		"MCP1RN.placeHolderList[592]" "MCP1RN.placeHolderList[593]" "MCP1:ANM1:finger_ring_meta_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.translateZ" 
		"MCP1RN.placeHolderList[594]" "MCP1RN.placeHolderList[595]" "MCP1:ANM1:finger_ring_meta_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateX" 
		"MCP1RN.placeHolderList[596]" "MCP1RN.placeHolderList[597]" "MCP1:ANM1:finger_ring_meta_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateY" 
		"MCP1RN.placeHolderList[598]" "MCP1RN.placeHolderList[599]" "MCP1:ANM1:finger_ring_meta_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.rotateZ" 
		"MCP1RN.placeHolderList[600]" "MCP1RN.placeHolderList[601]" "MCP1:ANM1:finger_ring_meta_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.worldMatrix" 
		"MCP1RN.placeHolderList[602]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R.message" 
		"MCP1RN.placeHolderList[603]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateX" 
		"MCP1RN.placeHolderList[604]" "MCP1RN.placeHolderList[605]" "MCP1:ANM1:finger_ring_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateY" 
		"MCP1RN.placeHolderList[606]" "MCP1RN.placeHolderList[607]" "MCP1:ANM1:finger_ring_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.translateZ" 
		"MCP1RN.placeHolderList[608]" "MCP1RN.placeHolderList[609]" "MCP1:ANM1:finger_ring_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateX" 
		"MCP1RN.placeHolderList[610]" "MCP1RN.placeHolderList[611]" "MCP1:ANM1:finger_ring_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateY" 
		"MCP1RN.placeHolderList[612]" "MCP1RN.placeHolderList[613]" "MCP1:ANM1:finger_ring_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.rotateZ" 
		"MCP1RN.placeHolderList[614]" "MCP1RN.placeHolderList[615]" "MCP1:ANM1:finger_ring_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[616]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R.message" 
		"MCP1RN.placeHolderList[617]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateX" 
		"MCP1RN.placeHolderList[618]" "MCP1RN.placeHolderList[619]" "MCP1:ANM1:finger_ring_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateY" 
		"MCP1RN.placeHolderList[620]" "MCP1RN.placeHolderList[621]" "MCP1:ANM1:finger_ring_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.translateZ" 
		"MCP1RN.placeHolderList[622]" "MCP1RN.placeHolderList[623]" "MCP1:ANM1:finger_ring_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateX" 
		"MCP1RN.placeHolderList[624]" "MCP1RN.placeHolderList[625]" "MCP1:ANM1:finger_ring_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateY" 
		"MCP1RN.placeHolderList[626]" "MCP1RN.placeHolderList[627]" "MCP1:ANM1:finger_ring_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.rotateZ" 
		"MCP1RN.placeHolderList[628]" "MCP1RN.placeHolderList[629]" "MCP1:ANM1:finger_ring_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[630]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R.message" 
		"MCP1RN.placeHolderList[631]" ""
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateX" 
		"MCP1RN.placeHolderList[632]" "MCP1RN.placeHolderList[633]" "MCP1:ANM1:finger_ring_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateY" 
		"MCP1RN.placeHolderList[634]" "MCP1RN.placeHolderList[635]" "MCP1:ANM1:finger_ring_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.translateZ" 
		"MCP1RN.placeHolderList[636]" "MCP1RN.placeHolderList[637]" "MCP1:ANM1:finger_ring_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateX" 
		"MCP1RN.placeHolderList[638]" "MCP1RN.placeHolderList[639]" "MCP1:ANM1:finger_ring_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateY" 
		"MCP1RN.placeHolderList[640]" "MCP1RN.placeHolderList[641]" "MCP1:ANM1:finger_ring_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_ring_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.rotateZ" 
		"MCP1RN.placeHolderList[642]" "MCP1RN.placeHolderList[643]" "MCP1:ANM1:finger_ring_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[644]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R.message" 
		"MCP1RN.placeHolderList[645]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R|MCP1:ANM1:finger_ring_end_R.message" 
		"MCP1RN.placeHolderList[646]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R|MCP1:ANM1:finger_ring_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[647]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_2_R|MCP1:ANM1:finger_ring_2_R_InfGEOM|MCP1:ANM1:finger_ring_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[648]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[649]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_1_R|MCP1:ANM1:finger_ring_1_R_InfGEOM|MCP1:ANM1:finger_ring_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[650]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[651]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_0_R|MCP1:ANM1:finger_ring_0_R_InfGEOM|MCP1:ANM1:finger_ring_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[652]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_meta_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[653]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_ring_meta_R|MCP1:ANM1:finger_ring_meta_R_InfGEOM|MCP1:ANM1:finger_ring_meta_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[654]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateX" 
		"MCP1RN.placeHolderList[655]" "MCP1RN.placeHolderList[656]" "MCP1:ANM1:finger_middle_meta_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateY" 
		"MCP1RN.placeHolderList[657]" "MCP1RN.placeHolderList[658]" "MCP1:ANM1:finger_middle_meta_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.translateZ" 
		"MCP1RN.placeHolderList[659]" "MCP1RN.placeHolderList[660]" "MCP1:ANM1:finger_middle_meta_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateX" 
		"MCP1RN.placeHolderList[661]" "MCP1RN.placeHolderList[662]" "MCP1:ANM1:finger_middle_meta_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateY" 
		"MCP1RN.placeHolderList[663]" "MCP1RN.placeHolderList[664]" "MCP1:ANM1:finger_middle_meta_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.rotateZ" 
		"MCP1RN.placeHolderList[665]" "MCP1RN.placeHolderList[666]" "MCP1:ANM1:finger_middle_meta_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.worldMatrix" 
		"MCP1RN.placeHolderList[667]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R.message" 
		"MCP1RN.placeHolderList[668]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateX" 
		"MCP1RN.placeHolderList[669]" "MCP1RN.placeHolderList[670]" "MCP1:ANM1:finger_middle_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateY" 
		"MCP1RN.placeHolderList[671]" "MCP1RN.placeHolderList[672]" "MCP1:ANM1:finger_middle_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.translateZ" 
		"MCP1RN.placeHolderList[673]" "MCP1RN.placeHolderList[674]" "MCP1:ANM1:finger_middle_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateX" 
		"MCP1RN.placeHolderList[675]" "MCP1RN.placeHolderList[676]" "MCP1:ANM1:finger_middle_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateY" 
		"MCP1RN.placeHolderList[677]" "MCP1RN.placeHolderList[678]" "MCP1:ANM1:finger_middle_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.rotateZ" 
		"MCP1RN.placeHolderList[679]" "MCP1RN.placeHolderList[680]" "MCP1:ANM1:finger_middle_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[681]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R.message" 
		"MCP1RN.placeHolderList[682]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateX" 
		"MCP1RN.placeHolderList[683]" "MCP1RN.placeHolderList[684]" "MCP1:ANM1:finger_middle_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateY" 
		"MCP1RN.placeHolderList[685]" "MCP1RN.placeHolderList[686]" "MCP1:ANM1:finger_middle_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.translateZ" 
		"MCP1RN.placeHolderList[687]" "MCP1RN.placeHolderList[688]" "MCP1:ANM1:finger_middle_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateX" 
		"MCP1RN.placeHolderList[689]" "MCP1RN.placeHolderList[690]" "MCP1:ANM1:finger_middle_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateY" 
		"MCP1RN.placeHolderList[691]" "MCP1RN.placeHolderList[692]" "MCP1:ANM1:finger_middle_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.rotateZ" 
		"MCP1RN.placeHolderList[693]" "MCP1RN.placeHolderList[694]" "MCP1:ANM1:finger_middle_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[695]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R.message" 
		"MCP1RN.placeHolderList[696]" ""
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateX" 
		"MCP1RN.placeHolderList[697]" "MCP1RN.placeHolderList[698]" "MCP1:ANM1:finger_middle_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateY" 
		"MCP1RN.placeHolderList[699]" "MCP1RN.placeHolderList[700]" "MCP1:ANM1:finger_middle_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.translateZ" 
		"MCP1RN.placeHolderList[701]" "MCP1RN.placeHolderList[702]" "MCP1:ANM1:finger_middle_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateX" 
		"MCP1RN.placeHolderList[703]" "MCP1RN.placeHolderList[704]" "MCP1:ANM1:finger_middle_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateY" 
		"MCP1RN.placeHolderList[705]" "MCP1RN.placeHolderList[706]" "MCP1:ANM1:finger_middle_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_middle_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.rotateZ" 
		"MCP1RN.placeHolderList[707]" "MCP1RN.placeHolderList[708]" "MCP1:ANM1:finger_middle_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[709]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R.message" 
		"MCP1RN.placeHolderList[710]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R|MCP1:ANM1:finger_middle_end_R.message" 
		"MCP1RN.placeHolderList[711]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R|MCP1:ANM1:finger_middle_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[712]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_2_R|MCP1:ANM1:finger_middle_2_R_InfGEOM|MCP1:ANM1:finger_middle_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[713]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[714]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_1_R|MCP1:ANM1:finger_middle_1_R_InfGEOM|MCP1:ANM1:finger_middle_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[715]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[716]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_0_R|MCP1:ANM1:finger_middle_0_R_InfGEOM|MCP1:ANM1:finger_middle_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[717]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_meta_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[718]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_middle_meta_R|MCP1:ANM1:finger_middle_meta_R_InfGEOM|MCP1:ANM1:finger_middle_meta_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[719]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateX" 
		"MCP1RN.placeHolderList[720]" "MCP1RN.placeHolderList[721]" "MCP1:ANM1:finger_pinky_meta_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateY" 
		"MCP1RN.placeHolderList[722]" "MCP1RN.placeHolderList[723]" "MCP1:ANM1:finger_pinky_meta_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.translateZ" 
		"MCP1RN.placeHolderList[724]" "MCP1RN.placeHolderList[725]" "MCP1:ANM1:finger_pinky_meta_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateX" 
		"MCP1RN.placeHolderList[726]" "MCP1RN.placeHolderList[727]" "MCP1:ANM1:finger_pinky_meta_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateY" 
		"MCP1RN.placeHolderList[728]" "MCP1RN.placeHolderList[729]" "MCP1:ANM1:finger_pinky_meta_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.rotateZ" 
		"MCP1RN.placeHolderList[730]" "MCP1RN.placeHolderList[731]" "MCP1:ANM1:finger_pinky_meta_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.worldMatrix" 
		"MCP1RN.placeHolderList[732]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R.message" 
		"MCP1RN.placeHolderList[733]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateX" 
		"MCP1RN.placeHolderList[734]" "MCP1RN.placeHolderList[735]" "MCP1:ANM1:finger_pinky_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateY" 
		"MCP1RN.placeHolderList[736]" "MCP1RN.placeHolderList[737]" "MCP1:ANM1:finger_pinky_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.translateZ" 
		"MCP1RN.placeHolderList[738]" "MCP1RN.placeHolderList[739]" "MCP1:ANM1:finger_pinky_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateX" 
		"MCP1RN.placeHolderList[740]" "MCP1RN.placeHolderList[741]" "MCP1:ANM1:finger_pinky_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateY" 
		"MCP1RN.placeHolderList[742]" "MCP1RN.placeHolderList[743]" "MCP1:ANM1:finger_pinky_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.rotateZ" 
		"MCP1RN.placeHolderList[744]" "MCP1RN.placeHolderList[745]" "MCP1:ANM1:finger_pinky_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[746]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R.message" 
		"MCP1RN.placeHolderList[747]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateX" 
		"MCP1RN.placeHolderList[748]" "MCP1RN.placeHolderList[749]" "MCP1:ANM1:finger_pinky_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateY" 
		"MCP1RN.placeHolderList[750]" "MCP1RN.placeHolderList[751]" "MCP1:ANM1:finger_pinky_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.translateZ" 
		"MCP1RN.placeHolderList[752]" "MCP1RN.placeHolderList[753]" "MCP1:ANM1:finger_pinky_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateX" 
		"MCP1RN.placeHolderList[754]" "MCP1RN.placeHolderList[755]" "MCP1:ANM1:finger_pinky_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateY" 
		"MCP1RN.placeHolderList[756]" "MCP1RN.placeHolderList[757]" "MCP1:ANM1:finger_pinky_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.rotateZ" 
		"MCP1RN.placeHolderList[758]" "MCP1RN.placeHolderList[759]" "MCP1:ANM1:finger_pinky_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[760]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R.message" 
		"MCP1RN.placeHolderList[761]" ""
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateX" 
		"MCP1RN.placeHolderList[762]" "MCP1RN.placeHolderList[763]" "MCP1:ANM1:finger_pinky_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateY" 
		"MCP1RN.placeHolderList[764]" "MCP1RN.placeHolderList[765]" "MCP1:ANM1:finger_pinky_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.translateZ" 
		"MCP1RN.placeHolderList[766]" "MCP1RN.placeHolderList[767]" "MCP1:ANM1:finger_pinky_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateX" 
		"MCP1RN.placeHolderList[768]" "MCP1RN.placeHolderList[769]" "MCP1:ANM1:finger_pinky_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateY" 
		"MCP1RN.placeHolderList[770]" "MCP1RN.placeHolderList[771]" "MCP1:ANM1:finger_pinky_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_pinky_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.rotateZ" 
		"MCP1RN.placeHolderList[772]" "MCP1RN.placeHolderList[773]" "MCP1:ANM1:finger_pinky_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[774]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R.message" 
		"MCP1RN.placeHolderList[775]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R|MCP1:ANM1:finger_pinky_end_R.message" 
		"MCP1RN.placeHolderList[776]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R|MCP1:ANM1:finger_pinky_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[777]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_2_R|MCP1:ANM1:finger_pinky_2_R_InfGEOM|MCP1:ANM1:finger_pinky_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[778]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[779]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_1_R|MCP1:ANM1:finger_pinky_1_R_InfGEOM|MCP1:ANM1:finger_pinky_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[780]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[781]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_0_R|MCP1:ANM1:finger_pinky_0_R_InfGEOM|MCP1:ANM1:finger_pinky_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[782]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_meta_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[783]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_pinky_meta_R|MCP1:ANM1:finger_pinky_meta_R_InfGEOM|MCP1:ANM1:finger_pinky_meta_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[784]" ""
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateX" 
		"MCP1RN.placeHolderList[785]" "MCP1RN.placeHolderList[786]" "MCP1:ANM1:finger_index_meta_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateY" 
		"MCP1RN.placeHolderList[787]" "MCP1RN.placeHolderList[788]" "MCP1:ANM1:finger_index_meta_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.translateZ" 
		"MCP1RN.placeHolderList[789]" "MCP1RN.placeHolderList[790]" "MCP1:ANM1:finger_index_meta_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateX" 
		"MCP1RN.placeHolderList[791]" "MCP1RN.placeHolderList[792]" "MCP1:ANM1:finger_index_meta_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateY" 
		"MCP1RN.placeHolderList[793]" "MCP1RN.placeHolderList[794]" "MCP1:ANM1:finger_index_meta_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_meta_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.rotateZ" 
		"MCP1RN.placeHolderList[795]" "MCP1RN.placeHolderList[796]" "MCP1:ANM1:finger_index_meta_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.worldMatrix" 
		"MCP1RN.placeHolderList[797]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R.message" 
		"MCP1RN.placeHolderList[798]" ""
		5 0 "MCP1RN" "MCP1:finger_index_0_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateX" 
		"MCP1RN.placeHolderList[799]" "MCP1RN.placeHolderList[800]" "MCP1:ANM1:finger_index_0_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateY" 
		"MCP1RN.placeHolderList[801]" "MCP1RN.placeHolderList[802]" "MCP1:ANM1:finger_index_0_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.translateZ" 
		"MCP1RN.placeHolderList[803]" "MCP1RN.placeHolderList[804]" "MCP1:ANM1:finger_index_0_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateX" 
		"MCP1RN.placeHolderList[805]" "MCP1RN.placeHolderList[806]" "MCP1:ANM1:finger_index_0_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateY" 
		"MCP1RN.placeHolderList[807]" "MCP1RN.placeHolderList[808]" "MCP1:ANM1:finger_index_0_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_0_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.rotateZ" 
		"MCP1RN.placeHolderList[809]" "MCP1RN.placeHolderList[810]" "MCP1:ANM1:finger_index_0_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.worldMatrix" 
		"MCP1RN.placeHolderList[811]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R.message" 
		"MCP1RN.placeHolderList[812]" ""
		5 0 "MCP1RN" "MCP1:finger_index_1_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateX" 
		"MCP1RN.placeHolderList[813]" "MCP1RN.placeHolderList[814]" "MCP1:ANM1:finger_index_1_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateY" 
		"MCP1RN.placeHolderList[815]" "MCP1RN.placeHolderList[816]" "MCP1:ANM1:finger_index_1_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.translateZ" 
		"MCP1RN.placeHolderList[817]" "MCP1RN.placeHolderList[818]" "MCP1:ANM1:finger_index_1_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateX" 
		"MCP1RN.placeHolderList[819]" "MCP1RN.placeHolderList[820]" "MCP1:ANM1:finger_index_1_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateY" 
		"MCP1RN.placeHolderList[821]" "MCP1RN.placeHolderList[822]" "MCP1:ANM1:finger_index_1_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_1_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.rotateZ" 
		"MCP1RN.placeHolderList[823]" "MCP1RN.placeHolderList[824]" "MCP1:ANM1:finger_index_1_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.worldMatrix" 
		"MCP1RN.placeHolderList[825]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R.message" 
		"MCP1RN.placeHolderList[826]" ""
		5 0 "MCP1RN" "MCP1:finger_index_2_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateX" 
		"MCP1RN.placeHolderList[827]" "MCP1RN.placeHolderList[828]" "MCP1:ANM1:finger_index_2_R.tx"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateY" 
		"MCP1RN.placeHolderList[829]" "MCP1RN.placeHolderList[830]" "MCP1:ANM1:finger_index_2_R.ty"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.translateZ" 
		"MCP1RN.placeHolderList[831]" "MCP1RN.placeHolderList[832]" "MCP1:ANM1:finger_index_2_R.tz"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateX" 
		"MCP1RN.placeHolderList[833]" "MCP1RN.placeHolderList[834]" "MCP1:ANM1:finger_index_2_R.rx"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateY" 
		"MCP1RN.placeHolderList[835]" "MCP1RN.placeHolderList[836]" "MCP1:ANM1:finger_index_2_R.ry"
		
		5 0 "MCP1RN" "MCP1:finger_index_2_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.rotateZ" 
		"MCP1RN.placeHolderList[837]" "MCP1RN.placeHolderList[838]" "MCP1:ANM1:finger_index_2_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.worldMatrix" 
		"MCP1RN.placeHolderList[839]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R.message" 
		"MCP1RN.placeHolderList[840]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R|MCP1:ANM1:finger_index_end_R.message" 
		"MCP1RN.placeHolderList[841]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R|MCP1:ANM1:finger_index_2_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[842]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_2_R|MCP1:ANM1:finger_index_2_R_InfGEOM|MCP1:ANM1:finger_index_2_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[843]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_1_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[844]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_1_R|MCP1:ANM1:finger_index_1_R_InfGEOM|MCP1:ANM1:finger_index_1_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[845]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_0_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[846]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_0_R|MCP1:ANM1:finger_index_0_R_InfGEOM|MCP1:ANM1:finger_index_0_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[847]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_meta_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[848]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:finger_index_meta_R|MCP1:ANM1:finger_index_meta_R_InfGEOM|MCP1:ANM1:finger_index_meta_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[849]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:hand_end_R.message" 
		"MCP1RN.placeHolderList[850]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:hand_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[851]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:hand_R_InfGEOM|MCP1:ANM1:hand_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[852]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:object_hand_R.message" 
		"MCP1RN.placeHolderList[853]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:hand_R|MCP1:ANM1:weapon_hand_R.message" 
		"MCP1RN.placeHolderList[854]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:arm_lower_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[855]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_lower_R|MCP1:ANM1:arm_lower_R_InfGEOM|MCP1:ANM1:arm_lower_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[856]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_upper_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[857]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:arm_upper_R|MCP1:ANM1:arm_upper_R_InfGEOM|MCP1:ANM1:arm_upper_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[858]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:clavicle_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[859]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:clavicle_R|MCP1:ANM1:clavicle_R_InfGEOM|MCP1:ANM1:clavicle_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[860]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:spine_3_InfGEOM.message" 
		"MCP1RN.placeHolderList[861]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_3|MCP1:ANM1:spine_3_InfGEOM|MCP1:ANM1:spine_3_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[862]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_2_InfGEOM.message" 
		"MCP1RN.placeHolderList[863]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_2|MCP1:ANM1:spine_2_InfGEOM|MCP1:ANM1:spine_2_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[864]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_1_InfGEOM.message" 
		"MCP1RN.placeHolderList[865]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_1|MCP1:ANM1:spine_1_InfGEOM|MCP1:ANM1:spine_1_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[866]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_0_InfGEOM.message" 
		"MCP1RN.placeHolderList[867]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:spine_0|MCP1:ANM1:spine_0_InfGEOM|MCP1:ANM1:spine_0_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[868]" ""
		5 0 "MCP1RN" "MCP1:leg_upper_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateX" 
		"MCP1RN.placeHolderList[869]" "MCP1RN.placeHolderList[870]" "MCP1:ANM1:leg_upper_R.tx"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateY" 
		"MCP1RN.placeHolderList[871]" "MCP1RN.placeHolderList[872]" "MCP1:ANM1:leg_upper_R.ty"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.translateZ" 
		"MCP1RN.placeHolderList[873]" "MCP1RN.placeHolderList[874]" "MCP1:ANM1:leg_upper_R.tz"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateX" 
		"MCP1RN.placeHolderList[875]" "MCP1RN.placeHolderList[876]" "MCP1:ANM1:leg_upper_R.rx"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateY" 
		"MCP1RN.placeHolderList[877]" "MCP1RN.placeHolderList[878]" "MCP1:ANM1:leg_upper_R.ry"
		
		5 0 "MCP1RN" "MCP1:leg_upper_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.rotateZ" 
		"MCP1RN.placeHolderList[879]" "MCP1RN.placeHolderList[880]" "MCP1:ANM1:leg_upper_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.worldMatrix" 
		"MCP1RN.placeHolderList[881]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R.message" 
		"MCP1RN.placeHolderList[882]" ""
		5 0 "MCP1RN" "MCP1:leg_lower_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateX" 
		"MCP1RN.placeHolderList[883]" "MCP1RN.placeHolderList[884]" "MCP1:ANM1:leg_lower_R.tx"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateY" 
		"MCP1RN.placeHolderList[885]" "MCP1RN.placeHolderList[886]" "MCP1:ANM1:leg_lower_R.ty"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.translateZ" 
		"MCP1RN.placeHolderList[887]" "MCP1RN.placeHolderList[888]" "MCP1:ANM1:leg_lower_R.tz"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateX" 
		"MCP1RN.placeHolderList[889]" "MCP1RN.placeHolderList[890]" "MCP1:ANM1:leg_lower_R.rx"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateY" 
		"MCP1RN.placeHolderList[891]" "MCP1RN.placeHolderList[892]" "MCP1:ANM1:leg_lower_R.ry"
		
		5 0 "MCP1RN" "MCP1:leg_lower_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.rotateZ" 
		"MCP1RN.placeHolderList[893]" "MCP1RN.placeHolderList[894]" "MCP1:ANM1:leg_lower_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.worldMatrix" 
		"MCP1RN.placeHolderList[895]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R.message" 
		"MCP1RN.placeHolderList[896]" ""
		5 0 "MCP1RN" "MCP1:ankle_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateX" 
		"MCP1RN.placeHolderList[897]" "MCP1RN.placeHolderList[898]" "MCP1:ANM1:ankle_R.tx"
		
		5 0 "MCP1RN" "MCP1:ankle_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateY" 
		"MCP1RN.placeHolderList[899]" "MCP1RN.placeHolderList[900]" "MCP1:ANM1:ankle_R.ty"
		
		5 0 "MCP1RN" "MCP1:ankle_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.translateZ" 
		"MCP1RN.placeHolderList[901]" "MCP1RN.placeHolderList[902]" "MCP1:ANM1:ankle_R.tz"
		
		5 0 "MCP1RN" "MCP1:ankle_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateX" 
		"MCP1RN.placeHolderList[903]" "MCP1RN.placeHolderList[904]" "MCP1:ANM1:ankle_R.rx"
		
		5 0 "MCP1RN" "MCP1:ankle_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateY" 
		"MCP1RN.placeHolderList[905]" "MCP1RN.placeHolderList[906]" "MCP1:ANM1:ankle_R.ry"
		
		5 0 "MCP1RN" "MCP1:ankle_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.rotateZ" 
		"MCP1RN.placeHolderList[907]" "MCP1RN.placeHolderList[908]" "MCP1:ANM1:ankle_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.worldMatrix" 
		"MCP1RN.placeHolderList[909]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R.message" 
		"MCP1RN.placeHolderList[910]" ""
		5 0 "MCP1RN" "MCP1:ball_R_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateX" 
		"MCP1RN.placeHolderList[911]" "MCP1RN.placeHolderList[912]" "MCP1:ANM1:ball_R.tx"
		
		5 0 "MCP1RN" "MCP1:ball_R_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateY" 
		"MCP1RN.placeHolderList[913]" "MCP1RN.placeHolderList[914]" "MCP1:ANM1:ball_R.ty"
		
		5 0 "MCP1RN" "MCP1:ball_R_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.translateZ" 
		"MCP1RN.placeHolderList[915]" "MCP1RN.placeHolderList[916]" "MCP1:ANM1:ball_R.tz"
		
		5 0 "MCP1RN" "MCP1:ball_R_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateX" 
		"MCP1RN.placeHolderList[917]" "MCP1RN.placeHolderList[918]" "MCP1:ANM1:ball_R.rx"
		
		5 0 "MCP1RN" "MCP1:ball_R_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateY" 
		"MCP1RN.placeHolderList[919]" "MCP1RN.placeHolderList[920]" "MCP1:ANM1:ball_R.ry"
		
		5 0 "MCP1RN" "MCP1:ball_R_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.rotateZ" 
		"MCP1RN.placeHolderList[921]" "MCP1RN.placeHolderList[922]" "MCP1:ANM1:ball_R.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.worldMatrix" 
		"MCP1RN.placeHolderList[923]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R.message" 
		"MCP1RN.placeHolderList[924]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R|MCP1:ANM1:ball_end_R.message" 
		"MCP1RN.placeHolderList[925]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R|MCP1:ANM1:ball_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[926]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ball_R|MCP1:ANM1:ball_R_InfGEOM|MCP1:ANM1:ball_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[927]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ankle_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[928]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:ankle_R|MCP1:ANM1:ankle_R_InfGEOM|MCP1:ANM1:ankle_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[929]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:leg_lower_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[930]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_lower_R|MCP1:ANM1:leg_lower_R_InfGEOM|MCP1:ANM1:leg_lower_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[931]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_upper_R_InfGEOM.message" 
		"MCP1RN.placeHolderList[932]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_R|MCP1:ANM1:leg_upper_R_InfGEOM|MCP1:ANM1:leg_upper_R_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[933]" ""
		5 0 "MCP1RN" "MCP1:leg_upper_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateX" 
		"MCP1RN.placeHolderList[934]" "MCP1RN.placeHolderList[935]" "MCP1:ANM1:leg_upper_L.tx"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateY" 
		"MCP1RN.placeHolderList[936]" "MCP1RN.placeHolderList[937]" "MCP1:ANM1:leg_upper_L.ty"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.translateZ" 
		"MCP1RN.placeHolderList[938]" "MCP1RN.placeHolderList[939]" "MCP1:ANM1:leg_upper_L.tz"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateX" 
		"MCP1RN.placeHolderList[940]" "MCP1RN.placeHolderList[941]" "MCP1:ANM1:leg_upper_L.rx"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateY" 
		"MCP1RN.placeHolderList[942]" "MCP1RN.placeHolderList[943]" "MCP1:ANM1:leg_upper_L.ry"
		
		5 0 "MCP1RN" "MCP1:leg_upper_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.rotateZ" 
		"MCP1RN.placeHolderList[944]" "MCP1RN.placeHolderList[945]" "MCP1:ANM1:leg_upper_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.worldMatrix" 
		"MCP1RN.placeHolderList[946]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L.message" 
		"MCP1RN.placeHolderList[947]" ""
		5 0 "MCP1RN" "MCP1:leg_lower_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateX" 
		"MCP1RN.placeHolderList[948]" "MCP1RN.placeHolderList[949]" "MCP1:ANM1:leg_lower_L.tx"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateY" 
		"MCP1RN.placeHolderList[950]" "MCP1RN.placeHolderList[951]" "MCP1:ANM1:leg_lower_L.ty"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.translateZ" 
		"MCP1RN.placeHolderList[952]" "MCP1RN.placeHolderList[953]" "MCP1:ANM1:leg_lower_L.tz"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateX" 
		"MCP1RN.placeHolderList[954]" "MCP1RN.placeHolderList[955]" "MCP1:ANM1:leg_lower_L.rx"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateY" 
		"MCP1RN.placeHolderList[956]" "MCP1RN.placeHolderList[957]" "MCP1:ANM1:leg_lower_L.ry"
		
		5 0 "MCP1RN" "MCP1:leg_lower_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.rotateZ" 
		"MCP1RN.placeHolderList[958]" "MCP1RN.placeHolderList[959]" "MCP1:ANM1:leg_lower_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.worldMatrix" 
		"MCP1RN.placeHolderList[960]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L.message" 
		"MCP1RN.placeHolderList[961]" ""
		5 0 "MCP1RN" "MCP1:ankle_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateX" 
		"MCP1RN.placeHolderList[962]" "MCP1RN.placeHolderList[963]" "MCP1:ANM1:ankle_L.tx"
		
		5 0 "MCP1RN" "MCP1:ankle_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateY" 
		"MCP1RN.placeHolderList[964]" "MCP1RN.placeHolderList[965]" "MCP1:ANM1:ankle_L.ty"
		
		5 0 "MCP1RN" "MCP1:ankle_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.translateZ" 
		"MCP1RN.placeHolderList[966]" "MCP1RN.placeHolderList[967]" "MCP1:ANM1:ankle_L.tz"
		
		5 0 "MCP1RN" "MCP1:ankle_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateX" 
		"MCP1RN.placeHolderList[968]" "MCP1RN.placeHolderList[969]" "MCP1:ANM1:ankle_L.rx"
		
		5 0 "MCP1RN" "MCP1:ankle_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateY" 
		"MCP1RN.placeHolderList[970]" "MCP1RN.placeHolderList[971]" "MCP1:ANM1:ankle_L.ry"
		
		5 0 "MCP1RN" "MCP1:ankle_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.rotateZ" 
		"MCP1RN.placeHolderList[972]" "MCP1RN.placeHolderList[973]" "MCP1:ANM1:ankle_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.worldMatrix" 
		"MCP1RN.placeHolderList[974]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L.message" 
		"MCP1RN.placeHolderList[975]" ""
		5 0 "MCP1RN" "MCP1:ball_L_translateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateX" 
		"MCP1RN.placeHolderList[976]" "MCP1RN.placeHolderList[977]" "MCP1:ANM1:ball_L.tx"
		
		5 0 "MCP1RN" "MCP1:ball_L_translateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateY" 
		"MCP1RN.placeHolderList[978]" "MCP1RN.placeHolderList[979]" "MCP1:ANM1:ball_L.ty"
		
		5 0 "MCP1RN" "MCP1:ball_L_translateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.translateZ" 
		"MCP1RN.placeHolderList[980]" "MCP1RN.placeHolderList[981]" "MCP1:ANM1:ball_L.tz"
		
		5 0 "MCP1RN" "MCP1:ball_L_rotateX.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateX" 
		"MCP1RN.placeHolderList[982]" "MCP1RN.placeHolderList[983]" "MCP1:ANM1:ball_L.rx"
		
		5 0 "MCP1RN" "MCP1:ball_L_rotateY.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateY" 
		"MCP1RN.placeHolderList[984]" "MCP1RN.placeHolderList[985]" "MCP1:ANM1:ball_L.ry"
		
		5 0 "MCP1RN" "MCP1:ball_L_rotateZ.output" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.rotateZ" 
		"MCP1RN.placeHolderList[986]" "MCP1RN.placeHolderList[987]" "MCP1:ANM1:ball_L.rz"
		
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.worldMatrix" 
		"MCP1RN.placeHolderList[988]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L.message" 
		"MCP1RN.placeHolderList[989]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L|MCP1:ANM1:ball_end_L.message" 
		"MCP1RN.placeHolderList[990]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L|MCP1:ANM1:ball_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[991]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ball_L|MCP1:ANM1:ball_L_InfGEOM|MCP1:ANM1:ball_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[992]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ankle_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[993]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:ankle_L|MCP1:ANM1:ankle_L_InfGEOM|MCP1:ANM1:ankle_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[994]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:leg_lower_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[995]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_lower_L|MCP1:ANM1:leg_lower_L_InfGEOM|MCP1:ANM1:leg_lower_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[996]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_upper_L_InfGEOM.message" 
		"MCP1RN.placeHolderList[997]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:leg_upper_L|MCP1:ANM1:leg_upper_L_InfGEOM|MCP1:ANM1:leg_upper_L_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[998]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:pelvis_InfGEOM.message" 
		"MCP1RN.placeHolderList[999]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:pelvis|MCP1:ANM1:pelvis_InfGEOM|MCP1:ANM1:pelvis_InfGEOMShape.message" 
		"MCP1RN.placeHolderList[1000]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion.worldMatrix" 
		"MCP1RN.placeHolderList[1001]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion.message" 
		"MCP1RN.placeHolderList[1002]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion|MCP1:ANM1:hand_L_IK_target.message" 
		"MCP1RN.placeHolderList[1003]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion|MCP1:ANM1:hand_R_IK_target.message" 
		"MCP1RN.placeHolderList[1004]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion|MCP1:ANM1:foot_L_IK_target.message" 
		"MCP1RN.placeHolderList[1005]" ""
		5 3 "MCP1RN" "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion|MCP1:ANM1:foot_R_IK_target.message" 
		"MCP1RN.placeHolderList[1006]" ""
		5 3 "MCP1RN" "MCP1:ANM1:shapeEditorManager.message" "MCP1RN.placeHolderList[1007]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:poseInterpolatorManager.message" "MCP1RN.placeHolderList[1008]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:layerManager.message" "MCP1RN.placeHolderList[1009]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:defaultLayer.message" "MCP1RN.placeHolderList[1010]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:gray_50.message" "MCP1RN.placeHolderList[1011]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:finger_index_2_L_InfGEOMSG.message" "MCP1RN.placeHolderList[1012]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:gray_50File.message" "MCP1RN.placeHolderList[1013]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:place2dTexture1.message" "MCP1RN.placeHolderList[1014]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:bump2d1.message" "MCP1RN.placeHolderList[1015]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:gray_50_bumpMap_file.message" "MCP1RN.placeHolderList[1016]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:place2dTexture2.message" "MCP1RN.placeHolderList[1017]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:SKEL.message" "MCP1RN.placeHolderList[1018]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:uiConfigurationScriptNode.message" "MCP1RN.placeHolderList[1019]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:sceneConfigurationScriptNode.message" "MCP1RN.placeHolderList[1020]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:GEOM.message" "MCP1RN.placeHolderList[1021]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:BIPED_STANDARD_MDL.OutputCharacterDefinition" 
		"MCP1RN.placeHolderList[1022]" ""
		5 3 "MCP1RN" "MCP1:ANM1:BIPED_STANDARD_MDL.OutputCharacterDefinition" 
		"MCP1RN.placeHolderList[1023]" ""
		5 3 "MCP1RN" "MCP1:ANM1:BIPED_STANDARD_MDL.message" "MCP1RN.placeHolderList[1024]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:HIKproperties1.message" "MCP1RN.placeHolderList[1025]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:HIKproperties1.OutputPropertySetState" "MCP1RN.placeHolderList[1026]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1:HIKSolverNode1.message" "MCP1RN.placeHolderList[1027]" 
		""
		5 0 "MCP1RN" "MCP1:ANM1:HIKSolverNode1.OutputCharacterState" "MCP1:ANM1:HIKState2SK1.InputCharacterState" 
		"MCP1RN.placeHolderList[1028]" "MCP1RN.placeHolderList[1029]" "MCP1:ANM1:HIKState2SK1.InputCharacterState"
		
		5 3 "MCP1RN" "MCP1:ANM1:HIKState2SK1.message" "MCP1RN.placeHolderList[1030]" 
		""
		"MCP1RN" 567
		5 3 "MCP1RN" "MCP1:shapeEditorManager.message" "MCP1RN.placeHolderList[1031]" 
		""
		5 3 "MCP1RN" "MCP1:poseInterpolatorManager.message" "MCP1RN.placeHolderList[1032]" 
		""
		5 3 "MCP1RN" "MCP1:layerManager.message" "MCP1RN.placeHolderList[1033]" 
		""
		5 3 "MCP1RN" "MCP1:defaultLayer.message" "MCP1RN.placeHolderList[1034]" 
		""
		5 3 "MCP1RN" "MCP1:ANM1RN.message" "MCP1RN.placeHolderList[1035]" ""
		
		5 3 "MCP1RN" "MCP1:uiConfigurationScriptNode.message" "MCP1RN.placeHolderList[1036]" 
		""
		5 3 "MCP1RN" "MCP1:sceneConfigurationScriptNode.message" "MCP1RN.placeHolderList[1037]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_translateX.message" "MCP1RN.placeHolderList[1038]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_translateY.message" "MCP1RN.placeHolderList[1039]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_translateZ.message" "MCP1RN.placeHolderList[1040]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_rotateX.message" "MCP1RN.placeHolderList[1041]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_rotateY.message" "MCP1RN.placeHolderList[1042]" 
		""
		5 3 "MCP1RN" "MCP1:pelvis_rotateZ.message" "MCP1RN.placeHolderList[1043]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_translateX.message" "MCP1RN.placeHolderList[1044]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_translateY.message" "MCP1RN.placeHolderList[1045]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_translateZ.message" "MCP1RN.placeHolderList[1046]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_rotateX.message" "MCP1RN.placeHolderList[1047]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_rotateY.message" "MCP1RN.placeHolderList[1048]" 
		""
		5 3 "MCP1RN" "MCP1:spine_0_rotateZ.message" "MCP1RN.placeHolderList[1049]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_translateX.message" "MCP1RN.placeHolderList[1050]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_translateY.message" "MCP1RN.placeHolderList[1051]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_translateZ.message" "MCP1RN.placeHolderList[1052]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_rotateX.message" "MCP1RN.placeHolderList[1053]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_rotateY.message" "MCP1RN.placeHolderList[1054]" 
		""
		5 3 "MCP1RN" "MCP1:spine_1_rotateZ.message" "MCP1RN.placeHolderList[1055]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_translateX.message" "MCP1RN.placeHolderList[1056]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_translateY.message" "MCP1RN.placeHolderList[1057]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_translateZ.message" "MCP1RN.placeHolderList[1058]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_rotateX.message" "MCP1RN.placeHolderList[1059]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_rotateY.message" "MCP1RN.placeHolderList[1060]" 
		""
		5 3 "MCP1RN" "MCP1:spine_2_rotateZ.message" "MCP1RN.placeHolderList[1061]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_translateX.message" "MCP1RN.placeHolderList[1062]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_translateY.message" "MCP1RN.placeHolderList[1063]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_translateZ.message" "MCP1RN.placeHolderList[1064]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_rotateX.message" "MCP1RN.placeHolderList[1065]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_rotateY.message" "MCP1RN.placeHolderList[1066]" 
		""
		5 3 "MCP1RN" "MCP1:spine_3_rotateZ.message" "MCP1RN.placeHolderList[1067]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_translateX.message" "MCP1RN.placeHolderList[1068]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_translateY.message" "MCP1RN.placeHolderList[1069]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_translateZ.message" "MCP1RN.placeHolderList[1070]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_rotateX.message" "MCP1RN.placeHolderList[1071]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_rotateY.message" "MCP1RN.placeHolderList[1072]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_L_rotateZ.message" "MCP1RN.placeHolderList[1073]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_translateX.message" "MCP1RN.placeHolderList[1074]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_translateY.message" "MCP1RN.placeHolderList[1075]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_translateZ.message" "MCP1RN.placeHolderList[1076]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_rotateX.message" "MCP1RN.placeHolderList[1077]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_rotateY.message" "MCP1RN.placeHolderList[1078]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_L_rotateZ.message" "MCP1RN.placeHolderList[1079]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_translateX.message" "MCP1RN.placeHolderList[1080]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_translateY.message" "MCP1RN.placeHolderList[1081]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_translateZ.message" "MCP1RN.placeHolderList[1082]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_rotateX.message" "MCP1RN.placeHolderList[1083]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_rotateY.message" "MCP1RN.placeHolderList[1084]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_L_rotateZ.message" "MCP1RN.placeHolderList[1085]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_translateX.message" "MCP1RN.placeHolderList[1086]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_translateY.message" "MCP1RN.placeHolderList[1087]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_translateZ.message" "MCP1RN.placeHolderList[1088]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_rotateX.message" "MCP1RN.placeHolderList[1089]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_rotateY.message" "MCP1RN.placeHolderList[1090]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_rotateZ.message" "MCP1RN.placeHolderList[1091]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_translateX.message" "MCP1RN.placeHolderList[1092]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_translateY.message" "MCP1RN.placeHolderList[1093]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_translateZ.message" "MCP1RN.placeHolderList[1094]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_rotateX.message" "MCP1RN.placeHolderList[1095]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_rotateY.message" "MCP1RN.placeHolderList[1096]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_L_rotateZ.message" "MCP1RN.placeHolderList[1097]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_translateX.message" "MCP1RN.placeHolderList[1098]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_translateY.message" "MCP1RN.placeHolderList[1099]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_translateZ.message" "MCP1RN.placeHolderList[1100]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_rotateX.message" "MCP1RN.placeHolderList[1101]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_rotateY.message" "MCP1RN.placeHolderList[1102]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_L_rotateZ.message" "MCP1RN.placeHolderList[1103]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_translateX.message" "MCP1RN.placeHolderList[1104]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_translateY.message" "MCP1RN.placeHolderList[1105]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_translateZ.message" "MCP1RN.placeHolderList[1106]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_rotateX.message" "MCP1RN.placeHolderList[1107]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_rotateY.message" "MCP1RN.placeHolderList[1108]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_L_rotateZ.message" "MCP1RN.placeHolderList[1109]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_translateX.message" "MCP1RN.placeHolderList[1110]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_translateY.message" "MCP1RN.placeHolderList[1111]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_translateZ.message" "MCP1RN.placeHolderList[1112]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_rotateX.message" "MCP1RN.placeHolderList[1113]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_rotateY.message" "MCP1RN.placeHolderList[1114]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_L_rotateZ.message" "MCP1RN.placeHolderList[1115]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_translateX.message" "MCP1RN.placeHolderList[1116]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_translateY.message" "MCP1RN.placeHolderList[1117]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_translateZ.message" "MCP1RN.placeHolderList[1118]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_rotateX.message" "MCP1RN.placeHolderList[1119]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_rotateY.message" "MCP1RN.placeHolderList[1120]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_L_rotateZ.message" "MCP1RN.placeHolderList[1121]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_translateX.message" "MCP1RN.placeHolderList[1122]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_translateY.message" "MCP1RN.placeHolderList[1123]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_translateZ.message" "MCP1RN.placeHolderList[1124]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_rotateX.message" "MCP1RN.placeHolderList[1125]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_rotateY.message" "MCP1RN.placeHolderList[1126]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_L_rotateZ.message" "MCP1RN.placeHolderList[1127]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_translateX.message" "MCP1RN.placeHolderList[1128]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_translateY.message" "MCP1RN.placeHolderList[1129]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_translateZ.message" "MCP1RN.placeHolderList[1130]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateX.message" "MCP1RN.placeHolderList[1131]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateY.message" "MCP1RN.placeHolderList[1132]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_L_rotateZ.message" "MCP1RN.placeHolderList[1133]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_translateX.message" "MCP1RN.placeHolderList[1134]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_translateY.message" "MCP1RN.placeHolderList[1135]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_translateZ.message" "MCP1RN.placeHolderList[1136]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_rotateX.message" "MCP1RN.placeHolderList[1137]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_rotateY.message" "MCP1RN.placeHolderList[1138]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_L_rotateZ.message" "MCP1RN.placeHolderList[1139]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_translateX.message" "MCP1RN.placeHolderList[1140]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_translateY.message" "MCP1RN.placeHolderList[1141]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_translateZ.message" "MCP1RN.placeHolderList[1142]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_rotateX.message" "MCP1RN.placeHolderList[1143]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_rotateY.message" "MCP1RN.placeHolderList[1144]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_L_rotateZ.message" "MCP1RN.placeHolderList[1145]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_translateX.message" "MCP1RN.placeHolderList[1146]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_translateY.message" "MCP1RN.placeHolderList[1147]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_translateZ.message" "MCP1RN.placeHolderList[1148]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_rotateX.message" "MCP1RN.placeHolderList[1149]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_rotateY.message" "MCP1RN.placeHolderList[1150]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_L_rotateZ.message" "MCP1RN.placeHolderList[1151]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_translateX.message" "MCP1RN.placeHolderList[1152]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_translateY.message" "MCP1RN.placeHolderList[1153]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_translateZ.message" "MCP1RN.placeHolderList[1154]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_rotateX.message" "MCP1RN.placeHolderList[1155]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_rotateY.message" "MCP1RN.placeHolderList[1156]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_L_rotateZ.message" "MCP1RN.placeHolderList[1157]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_translateX.message" "MCP1RN.placeHolderList[1158]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_translateY.message" "MCP1RN.placeHolderList[1159]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_translateZ.message" "MCP1RN.placeHolderList[1160]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_rotateX.message" "MCP1RN.placeHolderList[1161]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_rotateY.message" "MCP1RN.placeHolderList[1162]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_L_rotateZ.message" "MCP1RN.placeHolderList[1163]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_translateX.message" "MCP1RN.placeHolderList[1164]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_translateY.message" "MCP1RN.placeHolderList[1165]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_translateZ.message" "MCP1RN.placeHolderList[1166]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_rotateX.message" "MCP1RN.placeHolderList[1167]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_rotateY.message" "MCP1RN.placeHolderList[1168]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_L_rotateZ.message" "MCP1RN.placeHolderList[1169]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_translateX.message" "MCP1RN.placeHolderList[1170]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_translateY.message" "MCP1RN.placeHolderList[1171]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_translateZ.message" "MCP1RN.placeHolderList[1172]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_rotateX.message" "MCP1RN.placeHolderList[1173]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_rotateY.message" "MCP1RN.placeHolderList[1174]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_L_rotateZ.message" "MCP1RN.placeHolderList[1175]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_translateX.message" "MCP1RN.placeHolderList[1176]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_translateY.message" "MCP1RN.placeHolderList[1177]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_translateZ.message" "MCP1RN.placeHolderList[1178]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_rotateX.message" "MCP1RN.placeHolderList[1179]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_rotateY.message" "MCP1RN.placeHolderList[1180]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_L_rotateZ.message" "MCP1RN.placeHolderList[1181]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_translateX.message" "MCP1RN.placeHolderList[1182]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_translateY.message" "MCP1RN.placeHolderList[1183]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_translateZ.message" "MCP1RN.placeHolderList[1184]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_rotateX.message" "MCP1RN.placeHolderList[1185]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_rotateY.message" "MCP1RN.placeHolderList[1186]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_L_rotateZ.message" "MCP1RN.placeHolderList[1187]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_translateX.message" "MCP1RN.placeHolderList[1188]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_translateY.message" "MCP1RN.placeHolderList[1189]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_translateZ.message" "MCP1RN.placeHolderList[1190]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_rotateX.message" "MCP1RN.placeHolderList[1191]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_rotateY.message" "MCP1RN.placeHolderList[1192]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_L_rotateZ.message" "MCP1RN.placeHolderList[1193]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_translateX.message" "MCP1RN.placeHolderList[1194]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_translateY.message" "MCP1RN.placeHolderList[1195]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_translateZ.message" "MCP1RN.placeHolderList[1196]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_rotateX.message" "MCP1RN.placeHolderList[1197]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_rotateY.message" "MCP1RN.placeHolderList[1198]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_L_rotateZ.message" "MCP1RN.placeHolderList[1199]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_translateX.message" "MCP1RN.placeHolderList[1200]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_translateY.message" "MCP1RN.placeHolderList[1201]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_translateZ.message" "MCP1RN.placeHolderList[1202]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_rotateX.message" "MCP1RN.placeHolderList[1203]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_rotateY.message" "MCP1RN.placeHolderList[1204]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_L_rotateZ.message" "MCP1RN.placeHolderList[1205]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_translateX.message" "MCP1RN.placeHolderList[1206]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_translateY.message" "MCP1RN.placeHolderList[1207]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_translateZ.message" "MCP1RN.placeHolderList[1208]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_rotateX.message" "MCP1RN.placeHolderList[1209]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_rotateY.message" "MCP1RN.placeHolderList[1210]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_L_rotateZ.message" "MCP1RN.placeHolderList[1211]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_translateX.message" "MCP1RN.placeHolderList[1212]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_translateY.message" "MCP1RN.placeHolderList[1213]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_translateZ.message" "MCP1RN.placeHolderList[1214]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_rotateX.message" "MCP1RN.placeHolderList[1215]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_rotateY.message" "MCP1RN.placeHolderList[1216]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_L_rotateZ.message" "MCP1RN.placeHolderList[1217]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_translateX.message" "MCP1RN.placeHolderList[1218]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_translateY.message" "MCP1RN.placeHolderList[1219]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_translateZ.message" "MCP1RN.placeHolderList[1220]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_rotateX.message" "MCP1RN.placeHolderList[1221]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_rotateY.message" "MCP1RN.placeHolderList[1222]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_L_rotateZ.message" "MCP1RN.placeHolderList[1223]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_translateX.message" "MCP1RN.placeHolderList[1224]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_translateY.message" "MCP1RN.placeHolderList[1225]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_translateZ.message" "MCP1RN.placeHolderList[1226]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_rotateX.message" "MCP1RN.placeHolderList[1227]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_rotateY.message" "MCP1RN.placeHolderList[1228]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_L_rotateZ.message" "MCP1RN.placeHolderList[1229]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_translateX.message" "MCP1RN.placeHolderList[1230]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_translateY.message" "MCP1RN.placeHolderList[1231]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_translateZ.message" "MCP1RN.placeHolderList[1232]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_rotateX.message" "MCP1RN.placeHolderList[1233]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_rotateY.message" "MCP1RN.placeHolderList[1234]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_L_rotateZ.message" "MCP1RN.placeHolderList[1235]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_translateX.message" "MCP1RN.placeHolderList[1236]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_translateY.message" "MCP1RN.placeHolderList[1237]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_translateZ.message" "MCP1RN.placeHolderList[1238]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_rotateX.message" "MCP1RN.placeHolderList[1239]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_rotateY.message" "MCP1RN.placeHolderList[1240]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_L_rotateZ.message" "MCP1RN.placeHolderList[1241]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_translateX.message" "MCP1RN.placeHolderList[1242]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_translateY.message" "MCP1RN.placeHolderList[1243]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_translateZ.message" "MCP1RN.placeHolderList[1244]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_rotateX.message" "MCP1RN.placeHolderList[1245]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_rotateY.message" "MCP1RN.placeHolderList[1246]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_L_rotateZ.message" "MCP1RN.placeHolderList[1247]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_translateX.message" "MCP1RN.placeHolderList[1248]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_translateY.message" "MCP1RN.placeHolderList[1249]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_translateZ.message" "MCP1RN.placeHolderList[1250]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_rotateX.message" "MCP1RN.placeHolderList[1251]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_rotateY.message" "MCP1RN.placeHolderList[1252]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_L_rotateZ.message" "MCP1RN.placeHolderList[1253]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_translateX.message" "MCP1RN.placeHolderList[1254]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_translateY.message" "MCP1RN.placeHolderList[1255]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_translateZ.message" "MCP1RN.placeHolderList[1256]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_rotateX.message" "MCP1RN.placeHolderList[1257]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_rotateY.message" "MCP1RN.placeHolderList[1258]" 
		""
		5 3 "MCP1RN" "MCP1:neck_0_rotateZ.message" "MCP1RN.placeHolderList[1259]" 
		""
		5 3 "MCP1RN" "MCP1:head_translateX.message" "MCP1RN.placeHolderList[1260]" 
		""
		5 3 "MCP1RN" "MCP1:head_translateY.message" "MCP1RN.placeHolderList[1261]" 
		""
		5 3 "MCP1RN" "MCP1:head_translateZ.message" "MCP1RN.placeHolderList[1262]" 
		""
		5 3 "MCP1RN" "MCP1:head_rotateX.message" "MCP1RN.placeHolderList[1263]" 
		""
		5 3 "MCP1RN" "MCP1:head_rotateY.message" "MCP1RN.placeHolderList[1264]" 
		""
		5 3 "MCP1RN" "MCP1:head_rotateZ.message" "MCP1RN.placeHolderList[1265]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_translateX.message" "MCP1RN.placeHolderList[1266]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_translateY.message" "MCP1RN.placeHolderList[1267]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_translateZ.message" "MCP1RN.placeHolderList[1268]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_rotateX.message" "MCP1RN.placeHolderList[1269]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_rotateY.message" "MCP1RN.placeHolderList[1270]" 
		""
		5 3 "MCP1RN" "MCP1:eye_R_rotateZ.message" "MCP1RN.placeHolderList[1271]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_translateX.message" "MCP1RN.placeHolderList[1272]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_translateY.message" "MCP1RN.placeHolderList[1273]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_translateZ.message" "MCP1RN.placeHolderList[1274]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_rotateX.message" "MCP1RN.placeHolderList[1275]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_rotateY.message" "MCP1RN.placeHolderList[1276]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_R_rotateZ.message" "MCP1RN.placeHolderList[1277]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_translateX.message" "MCP1RN.placeHolderList[1278]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_translateY.message" "MCP1RN.placeHolderList[1279]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_translateZ.message" "MCP1RN.placeHolderList[1280]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_rotateX.message" "MCP1RN.placeHolderList[1281]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_rotateY.message" "MCP1RN.placeHolderList[1282]" 
		""
		5 3 "MCP1RN" "MCP1:head_end_rotateZ.message" "MCP1RN.placeHolderList[1283]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_translateX.message" "MCP1RN.placeHolderList[1284]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_translateY.message" "MCP1RN.placeHolderList[1285]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_translateZ.message" "MCP1RN.placeHolderList[1286]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_rotateX.message" "MCP1RN.placeHolderList[1287]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_rotateY.message" "MCP1RN.placeHolderList[1288]" 
		""
		5 3 "MCP1RN" "MCP1:eye_L_rotateZ.message" "MCP1RN.placeHolderList[1289]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_translateX.message" "MCP1RN.placeHolderList[1290]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_translateY.message" "MCP1RN.placeHolderList[1291]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_translateZ.message" "MCP1RN.placeHolderList[1292]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_rotateX.message" "MCP1RN.placeHolderList[1293]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_rotateY.message" "MCP1RN.placeHolderList[1294]" 
		""
		5 3 "MCP1RN" "MCP1:eye_end_L_rotateZ.message" "MCP1RN.placeHolderList[1295]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_translateX.message" "MCP1RN.placeHolderList[1296]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_translateY.message" "MCP1RN.placeHolderList[1297]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_translateZ.message" "MCP1RN.placeHolderList[1298]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_rotateX.message" "MCP1RN.placeHolderList[1299]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_rotateY.message" "MCP1RN.placeHolderList[1300]" 
		""
		5 3 "MCP1RN" "MCP1:clavicle_R_rotateZ.message" "MCP1RN.placeHolderList[1301]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_translateX.message" "MCP1RN.placeHolderList[1302]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_translateY.message" "MCP1RN.placeHolderList[1303]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_translateZ.message" "MCP1RN.placeHolderList[1304]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_rotateX.message" "MCP1RN.placeHolderList[1305]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_rotateY.message" "MCP1RN.placeHolderList[1306]" 
		""
		5 3 "MCP1RN" "MCP1:arm_upper_R_rotateZ.message" "MCP1RN.placeHolderList[1307]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_translateX.message" "MCP1RN.placeHolderList[1308]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_translateY.message" "MCP1RN.placeHolderList[1309]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_translateZ.message" "MCP1RN.placeHolderList[1310]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_rotateX.message" "MCP1RN.placeHolderList[1311]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_rotateY.message" "MCP1RN.placeHolderList[1312]" 
		""
		5 3 "MCP1RN" "MCP1:arm_lower_R_rotateZ.message" "MCP1RN.placeHolderList[1313]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_translateX.message" "MCP1RN.placeHolderList[1314]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_translateY.message" "MCP1RN.placeHolderList[1315]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_translateZ.message" "MCP1RN.placeHolderList[1316]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_rotateX.message" "MCP1RN.placeHolderList[1317]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_rotateY.message" "MCP1RN.placeHolderList[1318]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_rotateZ.message" "MCP1RN.placeHolderList[1319]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_translateX.message" "MCP1RN.placeHolderList[1320]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_translateY.message" "MCP1RN.placeHolderList[1321]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_translateZ.message" "MCP1RN.placeHolderList[1322]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_rotateX.message" "MCP1RN.placeHolderList[1323]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_rotateY.message" "MCP1RN.placeHolderList[1324]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_0_R_rotateZ.message" "MCP1RN.placeHolderList[1325]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_translateX.message" "MCP1RN.placeHolderList[1326]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_translateY.message" "MCP1RN.placeHolderList[1327]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_translateZ.message" "MCP1RN.placeHolderList[1328]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_rotateX.message" "MCP1RN.placeHolderList[1329]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_rotateY.message" "MCP1RN.placeHolderList[1330]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_1_R_rotateZ.message" "MCP1RN.placeHolderList[1331]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_translateX.message" "MCP1RN.placeHolderList[1332]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_translateY.message" "MCP1RN.placeHolderList[1333]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_translateZ.message" "MCP1RN.placeHolderList[1334]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_rotateX.message" "MCP1RN.placeHolderList[1335]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_rotateY.message" "MCP1RN.placeHolderList[1336]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_2_R_rotateZ.message" "MCP1RN.placeHolderList[1337]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_translateX.message" "MCP1RN.placeHolderList[1338]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_translateY.message" "MCP1RN.placeHolderList[1339]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_translateZ.message" "MCP1RN.placeHolderList[1340]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_rotateX.message" "MCP1RN.placeHolderList[1341]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_rotateY.message" "MCP1RN.placeHolderList[1342]" 
		""
		5 3 "MCP1RN" "MCP1:finger_thumb_end_R_rotateZ.message" "MCP1RN.placeHolderList[1343]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_translateX.message" "MCP1RN.placeHolderList[1344]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_translateY.message" "MCP1RN.placeHolderList[1345]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_translateZ.message" "MCP1RN.placeHolderList[1346]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_rotateX.message" "MCP1RN.placeHolderList[1347]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_rotateY.message" "MCP1RN.placeHolderList[1348]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_meta_R_rotateZ.message" "MCP1RN.placeHolderList[1349]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_translateX.message" "MCP1RN.placeHolderList[1350]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_translateY.message" "MCP1RN.placeHolderList[1351]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_translateZ.message" "MCP1RN.placeHolderList[1352]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_rotateX.message" "MCP1RN.placeHolderList[1353]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_rotateY.message" "MCP1RN.placeHolderList[1354]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_0_R_rotateZ.message" "MCP1RN.placeHolderList[1355]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_translateX.message" "MCP1RN.placeHolderList[1356]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_translateY.message" "MCP1RN.placeHolderList[1357]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_translateZ.message" "MCP1RN.placeHolderList[1358]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_rotateX.message" "MCP1RN.placeHolderList[1359]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_rotateY.message" "MCP1RN.placeHolderList[1360]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_1_R_rotateZ.message" "MCP1RN.placeHolderList[1361]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_translateX.message" "MCP1RN.placeHolderList[1362]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_translateY.message" "MCP1RN.placeHolderList[1363]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_translateZ.message" "MCP1RN.placeHolderList[1364]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_rotateX.message" "MCP1RN.placeHolderList[1365]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_rotateY.message" "MCP1RN.placeHolderList[1366]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_2_R_rotateZ.message" "MCP1RN.placeHolderList[1367]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_translateX.message" "MCP1RN.placeHolderList[1368]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_translateY.message" "MCP1RN.placeHolderList[1369]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_translateZ.message" "MCP1RN.placeHolderList[1370]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_rotateX.message" "MCP1RN.placeHolderList[1371]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_rotateY.message" "MCP1RN.placeHolderList[1372]" 
		""
		5 3 "MCP1RN" "MCP1:finger_ring_end_R_rotateZ.message" "MCP1RN.placeHolderList[1373]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_translateX.message" "MCP1RN.placeHolderList[1374]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_translateY.message" "MCP1RN.placeHolderList[1375]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_translateZ.message" "MCP1RN.placeHolderList[1376]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_rotateX.message" "MCP1RN.placeHolderList[1377]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_rotateY.message" "MCP1RN.placeHolderList[1378]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_meta_R_rotateZ.message" "MCP1RN.placeHolderList[1379]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_translateX.message" "MCP1RN.placeHolderList[1380]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_translateY.message" "MCP1RN.placeHolderList[1381]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_translateZ.message" "MCP1RN.placeHolderList[1382]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_rotateX.message" "MCP1RN.placeHolderList[1383]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_rotateY.message" "MCP1RN.placeHolderList[1384]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_0_R_rotateZ.message" "MCP1RN.placeHolderList[1385]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_translateX.message" "MCP1RN.placeHolderList[1386]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_translateY.message" "MCP1RN.placeHolderList[1387]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_translateZ.message" "MCP1RN.placeHolderList[1388]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_rotateX.message" "MCP1RN.placeHolderList[1389]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_rotateY.message" "MCP1RN.placeHolderList[1390]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_1_R_rotateZ.message" "MCP1RN.placeHolderList[1391]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_translateX.message" "MCP1RN.placeHolderList[1392]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_translateY.message" "MCP1RN.placeHolderList[1393]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_translateZ.message" "MCP1RN.placeHolderList[1394]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_rotateX.message" "MCP1RN.placeHolderList[1395]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_rotateY.message" "MCP1RN.placeHolderList[1396]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_2_R_rotateZ.message" "MCP1RN.placeHolderList[1397]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_translateX.message" "MCP1RN.placeHolderList[1398]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_translateY.message" "MCP1RN.placeHolderList[1399]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_translateZ.message" "MCP1RN.placeHolderList[1400]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_rotateX.message" "MCP1RN.placeHolderList[1401]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_rotateY.message" "MCP1RN.placeHolderList[1402]" 
		""
		5 3 "MCP1RN" "MCP1:finger_middle_end_R_rotateZ.message" "MCP1RN.placeHolderList[1403]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_translateX.message" "MCP1RN.placeHolderList[1404]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_translateY.message" "MCP1RN.placeHolderList[1405]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_translateZ.message" "MCP1RN.placeHolderList[1406]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateX.message" "MCP1RN.placeHolderList[1407]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateY.message" "MCP1RN.placeHolderList[1408]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_meta_R_rotateZ.message" "MCP1RN.placeHolderList[1409]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_translateX.message" "MCP1RN.placeHolderList[1410]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_translateY.message" "MCP1RN.placeHolderList[1411]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_translateZ.message" "MCP1RN.placeHolderList[1412]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_rotateX.message" "MCP1RN.placeHolderList[1413]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_rotateY.message" "MCP1RN.placeHolderList[1414]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_0_R_rotateZ.message" "MCP1RN.placeHolderList[1415]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_translateX.message" "MCP1RN.placeHolderList[1416]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_translateY.message" "MCP1RN.placeHolderList[1417]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_translateZ.message" "MCP1RN.placeHolderList[1418]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_rotateX.message" "MCP1RN.placeHolderList[1419]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_rotateY.message" "MCP1RN.placeHolderList[1420]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_1_R_rotateZ.message" "MCP1RN.placeHolderList[1421]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_translateX.message" "MCP1RN.placeHolderList[1422]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_translateY.message" "MCP1RN.placeHolderList[1423]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_translateZ.message" "MCP1RN.placeHolderList[1424]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_rotateX.message" "MCP1RN.placeHolderList[1425]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_rotateY.message" "MCP1RN.placeHolderList[1426]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_2_R_rotateZ.message" "MCP1RN.placeHolderList[1427]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_translateX.message" "MCP1RN.placeHolderList[1428]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_translateY.message" "MCP1RN.placeHolderList[1429]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_translateZ.message" "MCP1RN.placeHolderList[1430]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_rotateX.message" "MCP1RN.placeHolderList[1431]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_rotateY.message" "MCP1RN.placeHolderList[1432]" 
		""
		5 3 "MCP1RN" "MCP1:finger_pinky_end_R_rotateZ.message" "MCP1RN.placeHolderList[1433]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_translateX.message" "MCP1RN.placeHolderList[1434]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_translateY.message" "MCP1RN.placeHolderList[1435]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_translateZ.message" "MCP1RN.placeHolderList[1436]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_rotateX.message" "MCP1RN.placeHolderList[1437]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_rotateY.message" "MCP1RN.placeHolderList[1438]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_meta_R_rotateZ.message" "MCP1RN.placeHolderList[1439]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_translateX.message" "MCP1RN.placeHolderList[1440]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_translateY.message" "MCP1RN.placeHolderList[1441]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_translateZ.message" "MCP1RN.placeHolderList[1442]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_rotateX.message" "MCP1RN.placeHolderList[1443]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_rotateY.message" "MCP1RN.placeHolderList[1444]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_0_R_rotateZ.message" "MCP1RN.placeHolderList[1445]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_translateX.message" "MCP1RN.placeHolderList[1446]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_translateY.message" "MCP1RN.placeHolderList[1447]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_translateZ.message" "MCP1RN.placeHolderList[1448]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_rotateX.message" "MCP1RN.placeHolderList[1449]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_rotateY.message" "MCP1RN.placeHolderList[1450]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_1_R_rotateZ.message" "MCP1RN.placeHolderList[1451]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_translateX.message" "MCP1RN.placeHolderList[1452]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_translateY.message" "MCP1RN.placeHolderList[1453]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_translateZ.message" "MCP1RN.placeHolderList[1454]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_rotateX.message" "MCP1RN.placeHolderList[1455]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_rotateY.message" "MCP1RN.placeHolderList[1456]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_2_R_rotateZ.message" "MCP1RN.placeHolderList[1457]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_translateX.message" "MCP1RN.placeHolderList[1458]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_translateY.message" "MCP1RN.placeHolderList[1459]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_translateZ.message" "MCP1RN.placeHolderList[1460]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_rotateX.message" "MCP1RN.placeHolderList[1461]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_rotateY.message" "MCP1RN.placeHolderList[1462]" 
		""
		5 3 "MCP1RN" "MCP1:finger_index_end_R_rotateZ.message" "MCP1RN.placeHolderList[1463]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_translateX.message" "MCP1RN.placeHolderList[1464]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_translateY.message" "MCP1RN.placeHolderList[1465]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_translateZ.message" "MCP1RN.placeHolderList[1466]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_rotateX.message" "MCP1RN.placeHolderList[1467]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_rotateY.message" "MCP1RN.placeHolderList[1468]" 
		""
		5 3 "MCP1RN" "MCP1:hand_end_R_rotateZ.message" "MCP1RN.placeHolderList[1469]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_translateX.message" "MCP1RN.placeHolderList[1470]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_translateY.message" "MCP1RN.placeHolderList[1471]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_translateZ.message" "MCP1RN.placeHolderList[1472]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_rotateX.message" "MCP1RN.placeHolderList[1473]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_rotateY.message" "MCP1RN.placeHolderList[1474]" 
		""
		5 3 "MCP1RN" "MCP1:object_hand_R_rotateZ.message" "MCP1RN.placeHolderList[1475]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_translateX.message" "MCP1RN.placeHolderList[1476]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_translateY.message" "MCP1RN.placeHolderList[1477]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_translateZ.message" "MCP1RN.placeHolderList[1478]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_rotateX.message" "MCP1RN.placeHolderList[1479]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_rotateY.message" "MCP1RN.placeHolderList[1480]" 
		""
		5 3 "MCP1RN" "MCP1:weapon_hand_R_rotateZ.message" "MCP1RN.placeHolderList[1481]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_translateX.message" "MCP1RN.placeHolderList[1482]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_translateY.message" "MCP1RN.placeHolderList[1483]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_translateZ.message" "MCP1RN.placeHolderList[1484]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_rotateX.message" "MCP1RN.placeHolderList[1485]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_rotateY.message" "MCP1RN.placeHolderList[1486]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_R_rotateZ.message" "MCP1RN.placeHolderList[1487]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_translateX.message" "MCP1RN.placeHolderList[1488]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_translateY.message" "MCP1RN.placeHolderList[1489]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_translateZ.message" "MCP1RN.placeHolderList[1490]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_rotateX.message" "MCP1RN.placeHolderList[1491]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_rotateY.message" "MCP1RN.placeHolderList[1492]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_R_rotateZ.message" "MCP1RN.placeHolderList[1493]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_translateX.message" "MCP1RN.placeHolderList[1494]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_translateY.message" "MCP1RN.placeHolderList[1495]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_translateZ.message" "MCP1RN.placeHolderList[1496]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_rotateX.message" "MCP1RN.placeHolderList[1497]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_rotateY.message" "MCP1RN.placeHolderList[1498]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_R_rotateZ.message" "MCP1RN.placeHolderList[1499]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_translateX.message" "MCP1RN.placeHolderList[1500]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_translateY.message" "MCP1RN.placeHolderList[1501]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_translateZ.message" "MCP1RN.placeHolderList[1502]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_rotateX.message" "MCP1RN.placeHolderList[1503]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_rotateY.message" "MCP1RN.placeHolderList[1504]" 
		""
		5 3 "MCP1RN" "MCP1:ball_R_rotateZ.message" "MCP1RN.placeHolderList[1505]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_translateX.message" "MCP1RN.placeHolderList[1506]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_translateY.message" "MCP1RN.placeHolderList[1507]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_translateZ.message" "MCP1RN.placeHolderList[1508]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_rotateX.message" "MCP1RN.placeHolderList[1509]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_rotateY.message" "MCP1RN.placeHolderList[1510]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_R_rotateZ.message" "MCP1RN.placeHolderList[1511]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_translateX.message" "MCP1RN.placeHolderList[1512]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_translateY.message" "MCP1RN.placeHolderList[1513]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_translateZ.message" "MCP1RN.placeHolderList[1514]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_rotateX.message" "MCP1RN.placeHolderList[1515]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_rotateY.message" "MCP1RN.placeHolderList[1516]" 
		""
		5 3 "MCP1RN" "MCP1:leg_upper_L_rotateZ.message" "MCP1RN.placeHolderList[1517]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_translateX.message" "MCP1RN.placeHolderList[1518]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_translateY.message" "MCP1RN.placeHolderList[1519]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_translateZ.message" "MCP1RN.placeHolderList[1520]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_rotateX.message" "MCP1RN.placeHolderList[1521]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_rotateY.message" "MCP1RN.placeHolderList[1522]" 
		""
		5 3 "MCP1RN" "MCP1:leg_lower_L_rotateZ.message" "MCP1RN.placeHolderList[1523]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_translateX.message" "MCP1RN.placeHolderList[1524]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_translateY.message" "MCP1RN.placeHolderList[1525]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_translateZ.message" "MCP1RN.placeHolderList[1526]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_rotateX.message" "MCP1RN.placeHolderList[1527]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_rotateY.message" "MCP1RN.placeHolderList[1528]" 
		""
		5 3 "MCP1RN" "MCP1:ankle_L_rotateZ.message" "MCP1RN.placeHolderList[1529]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_translateX.message" "MCP1RN.placeHolderList[1530]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_translateY.message" "MCP1RN.placeHolderList[1531]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_translateZ.message" "MCP1RN.placeHolderList[1532]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_rotateX.message" "MCP1RN.placeHolderList[1533]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_rotateY.message" "MCP1RN.placeHolderList[1534]" 
		""
		5 3 "MCP1RN" "MCP1:ball_L_rotateZ.message" "MCP1RN.placeHolderList[1535]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_translateX.message" "MCP1RN.placeHolderList[1536]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_translateY.message" "MCP1RN.placeHolderList[1537]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_translateZ.message" "MCP1RN.placeHolderList[1538]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_rotateX.message" "MCP1RN.placeHolderList[1539]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_rotateY.message" "MCP1RN.placeHolderList[1540]" 
		""
		5 3 "MCP1RN" "MCP1:ball_end_L_rotateZ.message" "MCP1RN.placeHolderList[1541]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_translateX.message" "MCP1RN.placeHolderList[1542]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_translateY.message" "MCP1RN.placeHolderList[1543]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_translateZ.message" "MCP1RN.placeHolderList[1544]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_scaleX.message" "MCP1RN.placeHolderList[1545]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_scaleY.message" "MCP1RN.placeHolderList[1546]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_scaleZ.message" "MCP1RN.placeHolderList[1547]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_rotateX.message" "MCP1RN.placeHolderList[1548]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_rotateY.message" "MCP1RN.placeHolderList[1549]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_rotateZ.message" "MCP1RN.placeHolderList[1550]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_visibility.message" "MCP1RN.placeHolderList[1551]" 
		""
		5 3 "MCP1RN" "MCP1:root_motion_lockInfluenceWeights.message" "MCP1RN.placeHolderList[1552]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_translateX.message" "MCP1RN.placeHolderList[1553]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_translateY.message" "MCP1RN.placeHolderList[1554]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_translateZ.message" "MCP1RN.placeHolderList[1555]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_scaleX.message" "MCP1RN.placeHolderList[1556]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_scaleY.message" "MCP1RN.placeHolderList[1557]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_scaleZ.message" "MCP1RN.placeHolderList[1558]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_rotateX.message" "MCP1RN.placeHolderList[1559]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_rotateY.message" "MCP1RN.placeHolderList[1560]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_rotateZ.message" "MCP1RN.placeHolderList[1561]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_visibility.message" "MCP1RN.placeHolderList[1562]" 
		""
		5 3 "MCP1RN" "MCP1:hand_L_IK_target_lockInfluenceWeights.message" "MCP1RN.placeHolderList[1563]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_translateX.message" "MCP1RN.placeHolderList[1564]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_translateY.message" "MCP1RN.placeHolderList[1565]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_translateZ.message" "MCP1RN.placeHolderList[1566]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_scaleX.message" "MCP1RN.placeHolderList[1567]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_scaleY.message" "MCP1RN.placeHolderList[1568]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_scaleZ.message" "MCP1RN.placeHolderList[1569]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_rotateX.message" "MCP1RN.placeHolderList[1570]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_rotateY.message" "MCP1RN.placeHolderList[1571]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_rotateZ.message" "MCP1RN.placeHolderList[1572]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_visibility.message" "MCP1RN.placeHolderList[1573]" 
		""
		5 3 "MCP1RN" "MCP1:hand_R_IK_target_lockInfluenceWeights.message" "MCP1RN.placeHolderList[1574]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_translateX.message" "MCP1RN.placeHolderList[1575]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_translateY.message" "MCP1RN.placeHolderList[1576]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_translateZ.message" "MCP1RN.placeHolderList[1577]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_scaleX.message" "MCP1RN.placeHolderList[1578]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_scaleY.message" "MCP1RN.placeHolderList[1579]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_scaleZ.message" "MCP1RN.placeHolderList[1580]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_rotateX.message" "MCP1RN.placeHolderList[1581]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_rotateY.message" "MCP1RN.placeHolderList[1582]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_rotateZ.message" "MCP1RN.placeHolderList[1583]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_visibility.message" "MCP1RN.placeHolderList[1584]" 
		""
		5 3 "MCP1RN" "MCP1:foot_L_IK_target_lockInfluenceWeights.message" "MCP1RN.placeHolderList[1585]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_translateX.message" "MCP1RN.placeHolderList[1586]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_translateY.message" "MCP1RN.placeHolderList[1587]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_translateZ.message" "MCP1RN.placeHolderList[1588]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_scaleX.message" "MCP1RN.placeHolderList[1589]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_scaleY.message" "MCP1RN.placeHolderList[1590]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_scaleZ.message" "MCP1RN.placeHolderList[1591]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_rotateX.message" "MCP1RN.placeHolderList[1592]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_rotateY.message" "MCP1RN.placeHolderList[1593]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_rotateZ.message" "MCP1RN.placeHolderList[1594]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_visibility.message" "MCP1RN.placeHolderList[1595]" 
		""
		5 3 "MCP1RN" "MCP1:foot_R_IK_target_lockInfluenceWeights.message" "MCP1RN.placeHolderList[1596]" 
		""
		5 3 "MCP1RN" "MCP1:walkn_exportNode.message" "MCP1RN.placeHolderList[1597]" 
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
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 -0.99999999999996447 -2.6631610884375994e-07 0
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
	setAttr ".omat" -type "matrix" 0.99999999999997491 -2.2381859278404417e-07 -0 0 2.2381859278404417e-07 0.99999999999997491 0 0
		 0 -0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix9";
	rename -uid "ADB55B44-4AFA-F971-AB07-22854DF66E8A";
createNode composeMatrix -n "composeMatrix10";
	rename -uid "3734E836-4D01-3D97-6C86-FB95E5F32C63";
	setAttr ".ir" -type "double3" -179.99998474121097 0 0 ;
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 -0.99999999999996447 -2.6631610884375994e-07 0
		 0 2.6631610884375994e-07 -0.99999999999996447 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix11";
	rename -uid "440B55EC-4655-CFB4-5DA2-F688A8B1184F";
	setAttr ".ir" -type "double3" 0 0 1.274955957342172e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997524 2.2252179273537092e-07 0 0 -2.2252179273537092e-07 0.99999999999997524 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix12";
	rename -uid "486E27F5-4BA2-8231-5CAE-FC812E7B3EEF";
	setAttr ".ir" -type "double3" 0 0 -3.6432768411032157e-06 ;
	setAttr ".omat" -type "matrix" 0.999999999999998 -6.3587176438909354e-08 -0 0 6.3587176438909354e-08 0.999999999999998 0 0
		 0 -0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix13";
	rename -uid "28D9EEB4-4AD7-CEA7-D5A7-FE9970324E5F";
createNode composeMatrix -n "composeMatrix14";
	rename -uid "94974D59-4B0F-09CE-DC4E-D19280BAF592";
	setAttr ".ir" -type "double3" 0 0 -1.2937699466419872e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997446 -2.258054533225384e-07 -0 0 2.258054533225384e-07 0.99999999999997446 0 0
		 0 -0 1 0 0 0 0 1;
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
	setAttr ".ort" -type "double3" 29.4025911710442 -7.3369696700168348 10.404368659975772 ;
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
	setAttr ".ort" -type "double3" -1.3003413673870079 -3.4884234458397372 11.129326601242258 ;
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
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 -0.99999999999996447 -2.6631610884375994e-07 0
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
	setAttr ".ort" -type "double3" 4.7510807629382592 8.1214748766484082 1.9836676538526301 ;
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
	setAttr ".ort" -type "double3" 10.50144950112389 -12.497176650752554 17.250952891010957 ;
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
	setAttr ".ort" -type "double3" -0.84550496956520282 -2.8294398840128383 7.4912658051588465 ;
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
	setAttr ".ort" -type "double3" 7.3158352915114655 -8.3692141324146689 0.84145892086400176 ;
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
	setAttr ".ort" -type "double3" 9.0605969532303803 2.4573761366314 10.778180775131833 ;
createNode composeMatrix -n "composeMatrix29";
	rename -uid "1D964329-4B4A-4D29-F716-A2B6FF5B7773";
	setAttr ".ir" -type "double3" 0 0 -1.282386074308306e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997491 -2.2381859278404417e-07 -0 0 2.2381859278404417e-07 0.99999999999997491 0 0
		 0 -0 1 0 0 0 0 1;
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
	setAttr ".ort" -type "double3" 1.8957583197737922e-22 -3.7468923112086602e-05 -5.1778284893116888 ;
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
	setAttr ".ort" -type "double3" 2.6248845780849392 0.55998358374061186 0.86544006078602786 ;
createNode composeMatrix -n "composeMatrix31";
	rename -uid "7AEA5263-4A46-225A-04D4-548BFE5DFE69";
	setAttr ".ir" -type "double3" -179.99998474121097 0 0 ;
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 -0.99999999999996447 -2.6631610884375994e-07 0
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
	setAttr ".ort" -type "double3" 4.8260467634597521 9.0293371193574927 0.50509401453296388 ;
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
	setAttr ".ort" -type "double3" 9.3767997211682275 -3.7537199937952357 -3.7461632957161446 ;
createNode composeMatrix -n "composeMatrix33";
	rename -uid "190ACDE3-4E70-EE82-BA76-DABE61918A93";
	setAttr ".ir" -type "double3" 0 0 -3.6432768411032157e-06 ;
	setAttr ".omat" -type "matrix" 0.999999999999998 -6.3587176438909354e-08 -0 0 6.3587176438909354e-08 0.999999999999998 0 0
		 0 -0 1 0 0 0 0 1;
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
	setAttr ".ort" -type "double3" 4.61131174769457 -5.769226011668219 12.524675803958285 ;
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
	setAttr ".ort" -type "double3" 0.12962636701925626 -13.665779014314111 -16.209897446833779 ;
createNode composeMatrix -n "composeMatrix35";
	rename -uid "DA73F834-4A21-1DE1-EFC6-9F9659F058D7";
	setAttr ".ir" -type "double3" 0 0 -1.2937699466419872e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997446 -2.258054533225384e-07 -0 0 2.258054533225384e-07 0.99999999999997446 0 0
		 0 -0 1 0 0 0 0 1;
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
	setAttr ".ort" -type "double3" 1.4035797317597352e-05 2.4619560721362404e-05 37.223801035126932 ;
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
	setAttr ".ort" -type "double3" 0.0260209800023538 0.015951938302213507 2.8051534325037855 ;
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
	setAttr ".ort" -type "double3" -1.5316126402219346e-05 4.0074315541792583e-06 0.32263732658379618 ;
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
	setAttr ".ort" -type "double3" -0.076062453069642877 -0.47549556984886143 -0.31924046086885172 ;
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
	setAttr ".ort" -type "double3" -1.5833156855727233 -0.23118996785032375 3.7924558573704359 ;
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
	setAttr ".ort" -type "double3" -0.96074797205459306 -2.9043195870141822 3.8672849492581785 ;
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
	setAttr ".ort" -type "double3" -3.8925555555574478 0.23483789497041199 1.8849789342472036 ;
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
	setAttr ".ort" -type "double3" 6.4038176451461162 1.7579281626046619 1.7097338952844086 ;
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
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 14;
	setAttr -av ".unw" 14;
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
	setAttr -s 4 ".sol";
connectAttr "plusMinusAverage6.o3" "RIGRN.phl[1]";
connectAttr "RIGRN.phl[2]" "plusMinusAverage6.i3[1]";
connectAttr "quatToEuler20.ort" "RIGRN.phl[3]";
connectAttr "RIGRN.phl[4]" "quatToEuler20.iro";
connectAttr "RIGRN.phl[5]" "multMatrix40.i[1]";
connectAttr "RIGRN.phl[6]" "pointMatrixMult3.im";
connectAttr "quatToEuler15.ort" "RIGRN.phl[7]";
connectAttr "plusMinusAverage4.o3" "RIGRN.phl[8]";
connectAttr "RIGRN.phl[9]" "pointMatrixMult2.im";
connectAttr "RIGRN.phl[10]" "multMatrix30.i[1]";
connectAttr "RIGRN.phl[11]" "quatToEuler15.iro";
connectAttr "RIGRN.phl[12]" "plusMinusAverage4.i3[1]";
connectAttr "quatToEuler18.ort" "RIGRN.phl[13]";
connectAttr "plusMinusAverage12.o3" "RIGRN.phl[14]";
connectAttr "RIGRN.phl[15]" "pointMatrixMult6.im";
connectAttr "RIGRN.phl[16]" "multMatrix36.i[1]";
connectAttr "RIGRN.phl[17]" "quatToEuler18.iro";
connectAttr "RIGRN.phl[18]" "plusMinusAverage12.i3[1]";
connectAttr "quatToEuler19.ort" "RIGRN.phl[19]";
connectAttr "plusMinusAverage10.o3" "RIGRN.phl[20]";
connectAttr "RIGRN.phl[21]" "pointMatrixMult5.im";
connectAttr "RIGRN.phl[22]" "multMatrix38.i[1]";
connectAttr "RIGRN.phl[23]" "quatToEuler19.iro";
connectAttr "RIGRN.phl[24]" "plusMinusAverage10.i3[1]";
connectAttr "quatToEuler17.ort" "RIGRN.phl[25]";
connectAttr "plusMinusAverage8.o3" "RIGRN.phl[26]";
connectAttr "RIGRN.phl[27]" "pointMatrixMult4.im";
connectAttr "RIGRN.phl[28]" "multMatrix34.i[1]";
connectAttr "RIGRN.phl[29]" "quatToEuler17.iro";
connectAttr "RIGRN.phl[30]" "plusMinusAverage8.i3[1]";
connectAttr "quatToEuler11.ort" "RIGRN.phl[31]";
connectAttr "RIGRN.phl[32]" "multMatrix22.i[1]";
connectAttr "RIGRN.phl[33]" "quatToEuler11.iro";
connectAttr "quatToEuler14.ort" "RIGRN.phl[34]";
connectAttr "RIGRN.phl[35]" "multMatrix28.i[1]";
connectAttr "RIGRN.phl[36]" "quatToEuler14.iro";
connectAttr "quatToEuler13.ort" "RIGRN.phl[37]";
connectAttr "RIGRN.phl[38]" "quatToEuler13.iro";
connectAttr "RIGRN.phl[39]" "multMatrix26.i[1]";
connectAttr "quatToEuler7.ort" "RIGRN.phl[40]";
connectAttr "RIGRN.phl[41]" "multMatrix14.i[1]";
connectAttr "RIGRN.phl[42]" "quatToEuler7.iro";
connectAttr "quatToEuler8.ort" "RIGRN.phl[43]";
connectAttr "RIGRN.phl[44]" "multMatrix16.i[1]";
connectAttr "RIGRN.phl[45]" "quatToEuler8.iro";
connectAttr "quatToEuler9.ort" "RIGRN.phl[46]";
connectAttr "RIGRN.phl[47]" "quatToEuler9.iro";
connectAttr "RIGRN.phl[48]" "multMatrix18.i[1]";
connectAttr "plusMinusAverage2.o3" "RIGRN.phl[49]";
connectAttr "RIGRN.phl[50]" "plusMinusAverage2.i3[1]";
connectAttr "quatToEuler16.ort" "RIGRN.phl[51]";
connectAttr "RIGRN.phl[52]" "quatToEuler16.iro";
connectAttr "RIGRN.phl[53]" "multMatrix32.i[1]";
connectAttr "RIGRN.phl[54]" "pointMatrixMult1.im";
connectAttr "quatToEuler10.ort" "RIGRN.phl[55]";
connectAttr "RIGRN.phl[56]" "multMatrix20.i[1]";
connectAttr "RIGRN.phl[57]" "quatToEuler10.iro";
connectAttr "quatToEuler1.ort" "RIGRN.phl[58]";
connectAttr "RIGRN.phl[59]" "multMatrix2.i[1]";
connectAttr "RIGRN.phl[60]" "quatToEuler1.iro";
connectAttr "quatToEuler2.ort" "RIGRN.phl[61]";
connectAttr "RIGRN.phl[62]" "multMatrix4.i[1]";
connectAttr "RIGRN.phl[63]" "quatToEuler2.iro";
connectAttr "quatToEuler12.ort" "RIGRN.phl[64]";
connectAttr "RIGRN.phl[65]" "quatToEuler12.iro";
connectAttr "RIGRN.phl[66]" "multMatrix24.i[1]";
connectAttr "quatToEuler21.ort" "RIGRN.phl[67]";
connectAttr "plusMinusAverage14.o3" "RIGRN.phl[68]";
connectAttr "RIGRN.phl[69]" "pointMatrixMult7.im";
connectAttr "RIGRN.phl[70]" "multMatrix42.i[1]";
connectAttr "RIGRN.phl[71]" "quatToEuler21.iro";
connectAttr "RIGRN.phl[72]" "plusMinusAverage14.i3[1]";
connectAttr "quatToEuler3.ort" "RIGRN.phl[73]";
connectAttr "RIGRN.phl[74]" "multMatrix6.i[1]";
connectAttr "RIGRN.phl[75]" "quatToEuler3.iro";
connectAttr "quatToEuler4.ort" "RIGRN.phl[76]";
connectAttr "RIGRN.phl[77]" "multMatrix8.i[1]";
connectAttr "RIGRN.phl[78]" "quatToEuler4.iro";
connectAttr "quatToEuler5.ort" "RIGRN.phl[79]";
connectAttr "RIGRN.phl[80]" "multMatrix10.i[1]";
connectAttr "RIGRN.phl[81]" "quatToEuler5.iro";
connectAttr "quatToEuler6.ort" "RIGRN.phl[82]";
connectAttr "RIGRN.phl[83]" "quatToEuler6.iro";
connectAttr "RIGRN.phl[84]" "multMatrix12.i[1]";
connectAttr "RIGRN.phl[85]" "HIKRetargeterNode1.InputCharacterDefinitionDst";
connectAttr "RIGRN.phl[86]" "HIKRetargeterNode1.InputDstPropertySetState";
connectAttr "HIKRetargeterNode1.OutputCharacterState" "RIGRN.phl[87]";
connectAttr "HIKRetargeterNode1.OutputCharacterState" "RIGRN.phl[88]";
connectAttr "RIGRN.phl[89]" "decomposeMatrix22.imat";
connectAttr "RIGRN.phl[90]" "multMatrix39.i[1]";
connectAttr "RIGRN.phl[91]" "multMatrix33.i[1]";
connectAttr "RIGRN.phl[92]" "decomposeMatrix23.imat";
connectAttr "RIGRN.phl[93]" "multMatrix37.i[1]";
connectAttr "RIGRN.phl[94]" "decomposeMatrix25.imat";
connectAttr "RIGRN.phl[95]" "multMatrix35.i[1]";
connectAttr "RIGRN.phl[96]" "decomposeMatrix26.imat";
connectAttr "RIGRN.phl[97]" "multMatrix41.i[1]";
connectAttr "RIGRN.phl[98]" "decomposeMatrix28.imat";
connectAttr "RIGRN.phl[99]" "multMatrix5.i[1]";
connectAttr "RIGRN.phl[100]" "multMatrix7.i[1]";
connectAttr "RIGRN.phl[101]" "multMatrix9.i[1]";
connectAttr "RIGRN.phl[102]" "multMatrix11.i[1]";
connectAttr "RIGRN.phl[103]" "multMatrix13.i[1]";
connectAttr "RIGRN.phl[104]" "multMatrix15.i[1]";
connectAttr "RIGRN.phl[105]" "multMatrix17.i[1]";
connectAttr "RIGRN.phl[106]" "multMatrix19.i[1]";
connectAttr "RIGRN.phl[107]" "multMatrix1.i[1]";
connectAttr "RIGRN.phl[108]" "multMatrix3.i[1]";
connectAttr "RIGRN.phl[109]" "multMatrix23.i[1]";
connectAttr "RIGRN.phl[110]" "multMatrix21.i[1]";
connectAttr "RIGRN.phl[111]" "multMatrix27.i[1]";
connectAttr "RIGRN.phl[112]" "multMatrix25.i[1]";
connectAttr "RIGRN.phl[113]" "decomposeMatrix3.imat";
connectAttr "RIGRN.phl[114]" "multMatrix31.i[1]";
connectAttr "RIGRN.phl[115]" "multMatrix29.i[1]";
connectAttr "RIGRN.phl[116]" "decomposeMatrix19.imat";
connectAttr "MCP1RN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn";
connectAttr "MCP1RN.phl[2]" "MCP1RN.phl[3]";
connectAttr "MCP1RN.phl[4]" "MCP1RN.phl[5]";
connectAttr "MCP1RN.phl[6]" "MCP1RN.phl[7]";
connectAttr "MCP1RN.phl[8]" "MCP1RN.phl[9]";
connectAttr "MCP1RN.phl[10]" "MCP1RN.phl[11]";
connectAttr "MCP1RN.phl[12]" "MCP1RN.phl[13]";
connectAttr "MCP1RN.phl[14]" "HIKSK2State1.HipsGX";
connectAttr "MCP1RN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn";
connectAttr "MCP1RN.phl[16]" "MCP1RN.phl[17]";
connectAttr "MCP1RN.phl[18]" "MCP1RN.phl[19]";
connectAttr "MCP1RN.phl[20]" "MCP1RN.phl[21]";
connectAttr "MCP1RN.phl[22]" "MCP1RN.phl[23]";
connectAttr "MCP1RN.phl[24]" "MCP1RN.phl[25]";
connectAttr "MCP1RN.phl[26]" "MCP1RN.phl[27]";
connectAttr "MCP1RN.phl[28]" "HIKSK2State1.SpineGX";
connectAttr "MCP1RN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn";
connectAttr "MCP1RN.phl[30]" "MCP1RN.phl[31]";
connectAttr "MCP1RN.phl[32]" "MCP1RN.phl[33]";
connectAttr "MCP1RN.phl[34]" "MCP1RN.phl[35]";
connectAttr "MCP1RN.phl[36]" "MCP1RN.phl[37]";
connectAttr "MCP1RN.phl[38]" "MCP1RN.phl[39]";
connectAttr "MCP1RN.phl[40]" "MCP1RN.phl[41]";
connectAttr "MCP1RN.phl[42]" "HIKSK2State1.Spine1GX";
connectAttr "MCP1RN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn";
connectAttr "MCP1RN.phl[44]" "MCP1RN.phl[45]";
connectAttr "MCP1RN.phl[46]" "MCP1RN.phl[47]";
connectAttr "MCP1RN.phl[48]" "MCP1RN.phl[49]";
connectAttr "MCP1RN.phl[50]" "MCP1RN.phl[51]";
connectAttr "MCP1RN.phl[52]" "MCP1RN.phl[53]";
connectAttr "MCP1RN.phl[54]" "MCP1RN.phl[55]";
connectAttr "MCP1RN.phl[56]" "HIKSK2State1.Spine2GX";
connectAttr "MCP1RN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "MCP1RN.phl[58]" "MCP1RN.phl[59]";
connectAttr "MCP1RN.phl[60]" "MCP1RN.phl[61]";
connectAttr "MCP1RN.phl[62]" "MCP1RN.phl[63]";
connectAttr "MCP1RN.phl[64]" "MCP1RN.phl[65]";
connectAttr "MCP1RN.phl[66]" "MCP1RN.phl[67]";
connectAttr "MCP1RN.phl[68]" "MCP1RN.phl[69]";
connectAttr "MCP1RN.phl[70]" "HIKSK2State1.Spine3GX";
connectAttr "MCP1RN.phl[71]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn";
connectAttr "MCP1RN.phl[72]" "MCP1RN.phl[73]";
connectAttr "MCP1RN.phl[74]" "MCP1RN.phl[75]";
connectAttr "MCP1RN.phl[76]" "MCP1RN.phl[77]";
connectAttr "MCP1RN.phl[78]" "MCP1RN.phl[79]";
connectAttr "MCP1RN.phl[80]" "MCP1RN.phl[81]";
connectAttr "MCP1RN.phl[82]" "MCP1RN.phl[83]";
connectAttr "MCP1RN.phl[84]" "HIKSK2State1.LeftShoulderGX";
connectAttr "MCP1RN.phl[85]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn";
connectAttr "MCP1RN.phl[86]" "MCP1RN.phl[87]";
connectAttr "MCP1RN.phl[88]" "MCP1RN.phl[89]";
connectAttr "MCP1RN.phl[90]" "MCP1RN.phl[91]";
connectAttr "MCP1RN.phl[92]" "MCP1RN.phl[93]";
connectAttr "MCP1RN.phl[94]" "MCP1RN.phl[95]";
connectAttr "MCP1RN.phl[96]" "MCP1RN.phl[97]";
connectAttr "MCP1RN.phl[98]" "HIKSK2State1.LeftArmGX";
connectAttr "MCP1RN.phl[99]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn";
connectAttr "MCP1RN.phl[100]" "MCP1RN.phl[101]";
connectAttr "MCP1RN.phl[102]" "MCP1RN.phl[103]";
connectAttr "MCP1RN.phl[104]" "MCP1RN.phl[105]";
connectAttr "MCP1RN.phl[106]" "MCP1RN.phl[107]";
connectAttr "MCP1RN.phl[108]" "MCP1RN.phl[109]";
connectAttr "MCP1RN.phl[110]" "MCP1RN.phl[111]";
connectAttr "MCP1RN.phl[112]" "HIKSK2State1.LeftForeArmGX";
connectAttr "MCP1RN.phl[113]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn";
connectAttr "MCP1RN.phl[114]" "MCP1RN.phl[115]";
connectAttr "MCP1RN.phl[116]" "MCP1RN.phl[117]";
connectAttr "MCP1RN.phl[118]" "MCP1RN.phl[119]";
connectAttr "MCP1RN.phl[120]" "MCP1RN.phl[121]";
connectAttr "MCP1RN.phl[122]" "MCP1RN.phl[123]";
connectAttr "MCP1RN.phl[124]" "MCP1RN.phl[125]";
connectAttr "MCP1RN.phl[126]" "HIKSK2State1.LeftHandGX";
connectAttr "MCP1RN.phl[127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn";
connectAttr "MCP1RN.phl[128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn";
connectAttr "MCP1RN.phl[129]" "MCP1RN.phl[130]";
connectAttr "MCP1RN.phl[131]" "MCP1RN.phl[132]";
connectAttr "MCP1RN.phl[133]" "MCP1RN.phl[134]";
connectAttr "MCP1RN.phl[135]" "MCP1RN.phl[136]";
connectAttr "MCP1RN.phl[137]" "MCP1RN.phl[138]";
connectAttr "MCP1RN.phl[139]" "MCP1RN.phl[140]";
connectAttr "MCP1RN.phl[141]" "HIKSK2State1.LeftInHandIndexGX";
connectAttr "MCP1RN.phl[142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn";
connectAttr "MCP1RN.phl[143]" "MCP1RN.phl[144]";
connectAttr "MCP1RN.phl[145]" "MCP1RN.phl[146]";
connectAttr "MCP1RN.phl[147]" "MCP1RN.phl[148]";
connectAttr "MCP1RN.phl[149]" "MCP1RN.phl[150]";
connectAttr "MCP1RN.phl[151]" "MCP1RN.phl[152]";
connectAttr "MCP1RN.phl[153]" "MCP1RN.phl[154]";
connectAttr "MCP1RN.phl[155]" "HIKSK2State1.LeftHandIndex1GX";
connectAttr "MCP1RN.phl[156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn";
connectAttr "MCP1RN.phl[157]" "MCP1RN.phl[158]";
connectAttr "MCP1RN.phl[159]" "MCP1RN.phl[160]";
connectAttr "MCP1RN.phl[161]" "MCP1RN.phl[162]";
connectAttr "MCP1RN.phl[163]" "MCP1RN.phl[164]";
connectAttr "MCP1RN.phl[165]" "MCP1RN.phl[166]";
connectAttr "MCP1RN.phl[167]" "MCP1RN.phl[168]";
connectAttr "MCP1RN.phl[169]" "HIKSK2State1.LeftHandIndex2GX";
connectAttr "MCP1RN.phl[170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn";
connectAttr "MCP1RN.phl[171]" "MCP1RN.phl[172]";
connectAttr "MCP1RN.phl[173]" "MCP1RN.phl[174]";
connectAttr "MCP1RN.phl[175]" "MCP1RN.phl[176]";
connectAttr "MCP1RN.phl[177]" "MCP1RN.phl[178]";
connectAttr "MCP1RN.phl[179]" "MCP1RN.phl[180]";
connectAttr "MCP1RN.phl[181]" "MCP1RN.phl[182]";
connectAttr "MCP1RN.phl[183]" "HIKSK2State1.LeftHandIndex3GX";
connectAttr "MCP1RN.phl[184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn";
connectAttr "MCP1RN.phl[185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn";
connectAttr "MCP1RN.phl[186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn";
connectAttr "MCP1RN.phl[187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn";
connectAttr "MCP1RN.phl[188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn";
connectAttr "MCP1RN.phl[189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn";
connectAttr "MCP1RN.phl[190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn";
connectAttr "MCP1RN.phl[191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn";
connectAttr "MCP1RN.phl[192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn";
connectAttr "MCP1RN.phl[193]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn";
connectAttr "MCP1RN.phl[194]" "MCP1RN.phl[195]";
connectAttr "MCP1RN.phl[196]" "MCP1RN.phl[197]";
connectAttr "MCP1RN.phl[198]" "MCP1RN.phl[199]";
connectAttr "MCP1RN.phl[200]" "MCP1RN.phl[201]";
connectAttr "MCP1RN.phl[202]" "MCP1RN.phl[203]";
connectAttr "MCP1RN.phl[204]" "MCP1RN.phl[205]";
connectAttr "MCP1RN.phl[206]" "HIKSK2State1.LeftInHandPinkyGX";
connectAttr "MCP1RN.phl[207]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn";
connectAttr "MCP1RN.phl[208]" "MCP1RN.phl[209]";
connectAttr "MCP1RN.phl[210]" "MCP1RN.phl[211]";
connectAttr "MCP1RN.phl[212]" "MCP1RN.phl[213]";
connectAttr "MCP1RN.phl[214]" "MCP1RN.phl[215]";
connectAttr "MCP1RN.phl[216]" "MCP1RN.phl[217]";
connectAttr "MCP1RN.phl[218]" "MCP1RN.phl[219]";
connectAttr "MCP1RN.phl[220]" "HIKSK2State1.LeftHandPinky1GX";
connectAttr "MCP1RN.phl[221]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn";
connectAttr "MCP1RN.phl[222]" "MCP1RN.phl[223]";
connectAttr "MCP1RN.phl[224]" "MCP1RN.phl[225]";
connectAttr "MCP1RN.phl[226]" "MCP1RN.phl[227]";
connectAttr "MCP1RN.phl[228]" "MCP1RN.phl[229]";
connectAttr "MCP1RN.phl[230]" "MCP1RN.phl[231]";
connectAttr "MCP1RN.phl[232]" "MCP1RN.phl[233]";
connectAttr "MCP1RN.phl[234]" "HIKSK2State1.LeftHandPinky2GX";
connectAttr "MCP1RN.phl[235]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn";
connectAttr "MCP1RN.phl[236]" "MCP1RN.phl[237]";
connectAttr "MCP1RN.phl[238]" "MCP1RN.phl[239]";
connectAttr "MCP1RN.phl[240]" "MCP1RN.phl[241]";
connectAttr "MCP1RN.phl[242]" "MCP1RN.phl[243]";
connectAttr "MCP1RN.phl[244]" "MCP1RN.phl[245]";
connectAttr "MCP1RN.phl[246]" "MCP1RN.phl[247]";
connectAttr "MCP1RN.phl[248]" "HIKSK2State1.LeftHandPinky3GX";
connectAttr "MCP1RN.phl[249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn";
connectAttr "MCP1RN.phl[250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn";
connectAttr "MCP1RN.phl[251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn";
connectAttr "MCP1RN.phl[252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn";
connectAttr "MCP1RN.phl[253]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn";
connectAttr "MCP1RN.phl[254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn";
connectAttr "MCP1RN.phl[255]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn";
connectAttr "MCP1RN.phl[256]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn";
connectAttr "MCP1RN.phl[257]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn";
connectAttr "MCP1RN.phl[258]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn";
connectAttr "MCP1RN.phl[259]" "MCP1RN.phl[260]";
connectAttr "MCP1RN.phl[261]" "MCP1RN.phl[262]";
connectAttr "MCP1RN.phl[263]" "MCP1RN.phl[264]";
connectAttr "MCP1RN.phl[265]" "MCP1RN.phl[266]";
connectAttr "MCP1RN.phl[267]" "MCP1RN.phl[268]";
connectAttr "MCP1RN.phl[269]" "MCP1RN.phl[270]";
connectAttr "MCP1RN.phl[271]" "HIKSK2State1.LeftInHandMiddleGX";
connectAttr "MCP1RN.phl[272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn";
connectAttr "MCP1RN.phl[273]" "MCP1RN.phl[274]";
connectAttr "MCP1RN.phl[275]" "MCP1RN.phl[276]";
connectAttr "MCP1RN.phl[277]" "MCP1RN.phl[278]";
connectAttr "MCP1RN.phl[279]" "MCP1RN.phl[280]";
connectAttr "MCP1RN.phl[281]" "MCP1RN.phl[282]";
connectAttr "MCP1RN.phl[283]" "MCP1RN.phl[284]";
connectAttr "MCP1RN.phl[285]" "HIKSK2State1.LeftHandMiddle1GX";
connectAttr "MCP1RN.phl[286]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn";
connectAttr "MCP1RN.phl[287]" "MCP1RN.phl[288]";
connectAttr "MCP1RN.phl[289]" "MCP1RN.phl[290]";
connectAttr "MCP1RN.phl[291]" "MCP1RN.phl[292]";
connectAttr "MCP1RN.phl[293]" "MCP1RN.phl[294]";
connectAttr "MCP1RN.phl[295]" "MCP1RN.phl[296]";
connectAttr "MCP1RN.phl[297]" "MCP1RN.phl[298]";
connectAttr "MCP1RN.phl[299]" "HIKSK2State1.LeftHandMiddle2GX";
connectAttr "MCP1RN.phl[300]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn";
connectAttr "MCP1RN.phl[301]" "MCP1RN.phl[302]";
connectAttr "MCP1RN.phl[303]" "MCP1RN.phl[304]";
connectAttr "MCP1RN.phl[305]" "MCP1RN.phl[306]";
connectAttr "MCP1RN.phl[307]" "MCP1RN.phl[308]";
connectAttr "MCP1RN.phl[309]" "MCP1RN.phl[310]";
connectAttr "MCP1RN.phl[311]" "MCP1RN.phl[312]";
connectAttr "MCP1RN.phl[313]" "HIKSK2State1.LeftHandMiddle3GX";
connectAttr "MCP1RN.phl[314]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn";
connectAttr "MCP1RN.phl[315]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn";
connectAttr "MCP1RN.phl[316]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn";
connectAttr "MCP1RN.phl[317]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn";
connectAttr "MCP1RN.phl[318]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn";
connectAttr "MCP1RN.phl[319]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn";
connectAttr "MCP1RN.phl[320]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn";
connectAttr "MCP1RN.phl[321]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn";
connectAttr "MCP1RN.phl[322]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn";
connectAttr "MCP1RN.phl[323]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn";
connectAttr "MCP1RN.phl[324]" "MCP1RN.phl[325]";
connectAttr "MCP1RN.phl[326]" "MCP1RN.phl[327]";
connectAttr "MCP1RN.phl[328]" "MCP1RN.phl[329]";
connectAttr "MCP1RN.phl[330]" "MCP1RN.phl[331]";
connectAttr "MCP1RN.phl[332]" "MCP1RN.phl[333]";
connectAttr "MCP1RN.phl[334]" "MCP1RN.phl[335]";
connectAttr "MCP1RN.phl[336]" "HIKSK2State1.LeftInHandRingGX";
connectAttr "MCP1RN.phl[337]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn";
connectAttr "MCP1RN.phl[338]" "MCP1RN.phl[339]";
connectAttr "MCP1RN.phl[340]" "MCP1RN.phl[341]";
connectAttr "MCP1RN.phl[342]" "MCP1RN.phl[343]";
connectAttr "MCP1RN.phl[344]" "MCP1RN.phl[345]";
connectAttr "MCP1RN.phl[346]" "MCP1RN.phl[347]";
connectAttr "MCP1RN.phl[348]" "MCP1RN.phl[349]";
connectAttr "MCP1RN.phl[350]" "HIKSK2State1.LeftHandRing1GX";
connectAttr "MCP1RN.phl[351]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn";
connectAttr "MCP1RN.phl[352]" "MCP1RN.phl[353]";
connectAttr "MCP1RN.phl[354]" "MCP1RN.phl[355]";
connectAttr "MCP1RN.phl[356]" "MCP1RN.phl[357]";
connectAttr "MCP1RN.phl[358]" "MCP1RN.phl[359]";
connectAttr "MCP1RN.phl[360]" "MCP1RN.phl[361]";
connectAttr "MCP1RN.phl[362]" "MCP1RN.phl[363]";
connectAttr "MCP1RN.phl[364]" "HIKSK2State1.LeftHandRing2GX";
connectAttr "MCP1RN.phl[365]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn";
connectAttr "MCP1RN.phl[366]" "MCP1RN.phl[367]";
connectAttr "MCP1RN.phl[368]" "MCP1RN.phl[369]";
connectAttr "MCP1RN.phl[370]" "MCP1RN.phl[371]";
connectAttr "MCP1RN.phl[372]" "MCP1RN.phl[373]";
connectAttr "MCP1RN.phl[374]" "MCP1RN.phl[375]";
connectAttr "MCP1RN.phl[376]" "MCP1RN.phl[377]";
connectAttr "MCP1RN.phl[378]" "HIKSK2State1.LeftHandRing3GX";
connectAttr "MCP1RN.phl[379]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn";
connectAttr "MCP1RN.phl[380]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn";
connectAttr "MCP1RN.phl[381]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn";
connectAttr "MCP1RN.phl[382]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn";
connectAttr "MCP1RN.phl[383]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn";
connectAttr "MCP1RN.phl[384]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn";
connectAttr "MCP1RN.phl[385]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn";
connectAttr "MCP1RN.phl[386]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn";
connectAttr "MCP1RN.phl[387]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn";
connectAttr "MCP1RN.phl[388]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn";
connectAttr "MCP1RN.phl[389]" "MCP1RN.phl[390]";
connectAttr "MCP1RN.phl[391]" "MCP1RN.phl[392]";
connectAttr "MCP1RN.phl[393]" "MCP1RN.phl[394]";
connectAttr "MCP1RN.phl[395]" "MCP1RN.phl[396]";
connectAttr "MCP1RN.phl[397]" "MCP1RN.phl[398]";
connectAttr "MCP1RN.phl[399]" "MCP1RN.phl[400]";
connectAttr "MCP1RN.phl[401]" "HIKSK2State1.LeftHandThumb1GX";
connectAttr "MCP1RN.phl[402]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn";
connectAttr "MCP1RN.phl[403]" "MCP1RN.phl[404]";
connectAttr "MCP1RN.phl[405]" "MCP1RN.phl[406]";
connectAttr "MCP1RN.phl[407]" "MCP1RN.phl[408]";
connectAttr "MCP1RN.phl[409]" "MCP1RN.phl[410]";
connectAttr "MCP1RN.phl[411]" "MCP1RN.phl[412]";
connectAttr "MCP1RN.phl[413]" "MCP1RN.phl[414]";
connectAttr "MCP1RN.phl[415]" "HIKSK2State1.LeftHandThumb2GX";
connectAttr "MCP1RN.phl[416]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn";
connectAttr "MCP1RN.phl[417]" "MCP1RN.phl[418]";
connectAttr "MCP1RN.phl[419]" "MCP1RN.phl[420]";
connectAttr "MCP1RN.phl[421]" "MCP1RN.phl[422]";
connectAttr "MCP1RN.phl[423]" "MCP1RN.phl[424]";
connectAttr "MCP1RN.phl[425]" "MCP1RN.phl[426]";
connectAttr "MCP1RN.phl[427]" "MCP1RN.phl[428]";
connectAttr "MCP1RN.phl[429]" "HIKSK2State1.LeftHandThumb3GX";
connectAttr "MCP1RN.phl[430]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn";
connectAttr "MCP1RN.phl[431]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn";
connectAttr "MCP1RN.phl[432]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn";
connectAttr "MCP1RN.phl[433]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn";
connectAttr "MCP1RN.phl[434]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn";
connectAttr "MCP1RN.phl[435]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn";
connectAttr "MCP1RN.phl[436]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn";
connectAttr "MCP1RN.phl[437]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn";
connectAttr "MCP1RN.phl[438]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn";
connectAttr "MCP1RN.phl[439]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn";
connectAttr "MCP1RN.phl[440]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn";
connectAttr "MCP1RN.phl[441]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn";
connectAttr "MCP1RN.phl[442]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn";
connectAttr "MCP1RN.phl[443]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn";
connectAttr "MCP1RN.phl[444]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn";
connectAttr "MCP1RN.phl[445]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn";
connectAttr "MCP1RN.phl[446]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn";
connectAttr "MCP1RN.phl[447]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn";
connectAttr "MCP1RN.phl[448]" "MCP1RN.phl[449]";
connectAttr "MCP1RN.phl[450]" "MCP1RN.phl[451]";
connectAttr "MCP1RN.phl[452]" "MCP1RN.phl[453]";
connectAttr "MCP1RN.phl[454]" "MCP1RN.phl[455]";
connectAttr "MCP1RN.phl[456]" "MCP1RN.phl[457]";
connectAttr "MCP1RN.phl[458]" "MCP1RN.phl[459]";
connectAttr "MCP1RN.phl[460]" "HIKSK2State1.NeckGX";
connectAttr "MCP1RN.phl[461]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn";
connectAttr "MCP1RN.phl[462]" "MCP1RN.phl[463]";
connectAttr "MCP1RN.phl[464]" "MCP1RN.phl[465]";
connectAttr "MCP1RN.phl[466]" "MCP1RN.phl[467]";
connectAttr "MCP1RN.phl[468]" "MCP1RN.phl[469]";
connectAttr "MCP1RN.phl[470]" "MCP1RN.phl[471]";
connectAttr "MCP1RN.phl[472]" "MCP1RN.phl[473]";
connectAttr "MCP1RN.phl[474]" "HIKSK2State1.HeadGX";
connectAttr "MCP1RN.phl[475]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn";
connectAttr "MCP1RN.phl[476]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn";
connectAttr "MCP1RN.phl[477]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn";
connectAttr "MCP1RN.phl[478]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn";
connectAttr "MCP1RN.phl[479]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn";
connectAttr "MCP1RN.phl[480]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn";
connectAttr "MCP1RN.phl[481]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn";
connectAttr "MCP1RN.phl[482]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn";
connectAttr "MCP1RN.phl[483]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn";
connectAttr "MCP1RN.phl[484]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn";
connectAttr "MCP1RN.phl[485]" "MCP1RN.phl[486]";
connectAttr "MCP1RN.phl[487]" "MCP1RN.phl[488]";
connectAttr "MCP1RN.phl[489]" "MCP1RN.phl[490]";
connectAttr "MCP1RN.phl[491]" "MCP1RN.phl[492]";
connectAttr "MCP1RN.phl[493]" "MCP1RN.phl[494]";
connectAttr "MCP1RN.phl[495]" "MCP1RN.phl[496]";
connectAttr "MCP1RN.phl[497]" "HIKSK2State1.RightShoulderGX";
connectAttr "MCP1RN.phl[498]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn";
connectAttr "MCP1RN.phl[499]" "MCP1RN.phl[500]";
connectAttr "MCP1RN.phl[501]" "MCP1RN.phl[502]";
connectAttr "MCP1RN.phl[503]" "MCP1RN.phl[504]";
connectAttr "MCP1RN.phl[505]" "MCP1RN.phl[506]";
connectAttr "MCP1RN.phl[507]" "MCP1RN.phl[508]";
connectAttr "MCP1RN.phl[509]" "MCP1RN.phl[510]";
connectAttr "MCP1RN.phl[511]" "HIKSK2State1.RightArmGX";
connectAttr "MCP1RN.phl[512]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn";
connectAttr "MCP1RN.phl[513]" "MCP1RN.phl[514]";
connectAttr "MCP1RN.phl[515]" "MCP1RN.phl[516]";
connectAttr "MCP1RN.phl[517]" "MCP1RN.phl[518]";
connectAttr "MCP1RN.phl[519]" "MCP1RN.phl[520]";
connectAttr "MCP1RN.phl[521]" "MCP1RN.phl[522]";
connectAttr "MCP1RN.phl[523]" "MCP1RN.phl[524]";
connectAttr "MCP1RN.phl[525]" "HIKSK2State1.RightForeArmGX";
connectAttr "MCP1RN.phl[526]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn";
connectAttr "MCP1RN.phl[527]" "MCP1RN.phl[528]";
connectAttr "MCP1RN.phl[529]" "MCP1RN.phl[530]";
connectAttr "MCP1RN.phl[531]" "MCP1RN.phl[532]";
connectAttr "MCP1RN.phl[533]" "MCP1RN.phl[534]";
connectAttr "MCP1RN.phl[535]" "MCP1RN.phl[536]";
connectAttr "MCP1RN.phl[537]" "MCP1RN.phl[538]";
connectAttr "MCP1RN.phl[539]" "HIKSK2State1.RightHandGX";
connectAttr "MCP1RN.phl[540]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn";
connectAttr "MCP1RN.phl[541]" "MCP1RN.phl[542]";
connectAttr "MCP1RN.phl[543]" "MCP1RN.phl[544]";
connectAttr "MCP1RN.phl[545]" "MCP1RN.phl[546]";
connectAttr "MCP1RN.phl[547]" "MCP1RN.phl[548]";
connectAttr "MCP1RN.phl[549]" "MCP1RN.phl[550]";
connectAttr "MCP1RN.phl[551]" "MCP1RN.phl[552]";
connectAttr "MCP1RN.phl[553]" "HIKSK2State1.RightHandThumb1GX";
connectAttr "MCP1RN.phl[554]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn";
connectAttr "MCP1RN.phl[555]" "MCP1RN.phl[556]";
connectAttr "MCP1RN.phl[557]" "MCP1RN.phl[558]";
connectAttr "MCP1RN.phl[559]" "MCP1RN.phl[560]";
connectAttr "MCP1RN.phl[561]" "MCP1RN.phl[562]";
connectAttr "MCP1RN.phl[563]" "MCP1RN.phl[564]";
connectAttr "MCP1RN.phl[565]" "MCP1RN.phl[566]";
connectAttr "MCP1RN.phl[567]" "HIKSK2State1.RightHandThumb2GX";
connectAttr "MCP1RN.phl[568]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn";
connectAttr "MCP1RN.phl[569]" "MCP1RN.phl[570]";
connectAttr "MCP1RN.phl[571]" "MCP1RN.phl[572]";
connectAttr "MCP1RN.phl[573]" "MCP1RN.phl[574]";
connectAttr "MCP1RN.phl[575]" "MCP1RN.phl[576]";
connectAttr "MCP1RN.phl[577]" "MCP1RN.phl[578]";
connectAttr "MCP1RN.phl[579]" "MCP1RN.phl[580]";
connectAttr "MCP1RN.phl[581]" "HIKSK2State1.RightHandThumb3GX";
connectAttr "MCP1RN.phl[582]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn";
connectAttr "MCP1RN.phl[583]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn";
connectAttr "MCP1RN.phl[584]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn";
connectAttr "MCP1RN.phl[585]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn";
connectAttr "MCP1RN.phl[586]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn";
connectAttr "MCP1RN.phl[587]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn";
connectAttr "MCP1RN.phl[588]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn";
connectAttr "MCP1RN.phl[589]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn";
connectAttr "MCP1RN.phl[590]" "MCP1RN.phl[591]";
connectAttr "MCP1RN.phl[592]" "MCP1RN.phl[593]";
connectAttr "MCP1RN.phl[594]" "MCP1RN.phl[595]";
connectAttr "MCP1RN.phl[596]" "MCP1RN.phl[597]";
connectAttr "MCP1RN.phl[598]" "MCP1RN.phl[599]";
connectAttr "MCP1RN.phl[600]" "MCP1RN.phl[601]";
connectAttr "MCP1RN.phl[602]" "HIKSK2State1.RightInHandRingGX";
connectAttr "MCP1RN.phl[603]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn";
connectAttr "MCP1RN.phl[604]" "MCP1RN.phl[605]";
connectAttr "MCP1RN.phl[606]" "MCP1RN.phl[607]";
connectAttr "MCP1RN.phl[608]" "MCP1RN.phl[609]";
connectAttr "MCP1RN.phl[610]" "MCP1RN.phl[611]";
connectAttr "MCP1RN.phl[612]" "MCP1RN.phl[613]";
connectAttr "MCP1RN.phl[614]" "MCP1RN.phl[615]";
connectAttr "MCP1RN.phl[616]" "HIKSK2State1.RightHandRing1GX";
connectAttr "MCP1RN.phl[617]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[448].dn";
connectAttr "MCP1RN.phl[618]" "MCP1RN.phl[619]";
connectAttr "MCP1RN.phl[620]" "MCP1RN.phl[621]";
connectAttr "MCP1RN.phl[622]" "MCP1RN.phl[623]";
connectAttr "MCP1RN.phl[624]" "MCP1RN.phl[625]";
connectAttr "MCP1RN.phl[626]" "MCP1RN.phl[627]";
connectAttr "MCP1RN.phl[628]" "MCP1RN.phl[629]";
connectAttr "MCP1RN.phl[630]" "HIKSK2State1.RightHandRing2GX";
connectAttr "MCP1RN.phl[631]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[468].dn";
connectAttr "MCP1RN.phl[632]" "MCP1RN.phl[633]";
connectAttr "MCP1RN.phl[634]" "MCP1RN.phl[635]";
connectAttr "MCP1RN.phl[636]" "MCP1RN.phl[637]";
connectAttr "MCP1RN.phl[638]" "MCP1RN.phl[639]";
connectAttr "MCP1RN.phl[640]" "MCP1RN.phl[641]";
connectAttr "MCP1RN.phl[642]" "MCP1RN.phl[643]";
connectAttr "MCP1RN.phl[644]" "HIKSK2State1.RightHandRing3GX";
connectAttr "MCP1RN.phl[645]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn";
connectAttr "MCP1RN.phl[646]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn";
connectAttr "MCP1RN.phl[647]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn";
connectAttr "MCP1RN.phl[648]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[481].dn";
connectAttr "MCP1RN.phl[649]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn";
connectAttr "MCP1RN.phl[650]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn";
connectAttr "MCP1RN.phl[651]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn";
connectAttr "MCP1RN.phl[652]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn";
connectAttr "MCP1RN.phl[653]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn";
connectAttr "MCP1RN.phl[654]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn";
connectAttr "MCP1RN.phl[655]" "MCP1RN.phl[656]";
connectAttr "MCP1RN.phl[657]" "MCP1RN.phl[658]";
connectAttr "MCP1RN.phl[659]" "MCP1RN.phl[660]";
connectAttr "MCP1RN.phl[661]" "MCP1RN.phl[662]";
connectAttr "MCP1RN.phl[663]" "MCP1RN.phl[664]";
connectAttr "MCP1RN.phl[665]" "MCP1RN.phl[666]";
connectAttr "MCP1RN.phl[667]" "HIKSK2State1.RightInHandMiddleGX";
connectAttr "MCP1RN.phl[668]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn";
connectAttr "MCP1RN.phl[669]" "MCP1RN.phl[670]";
connectAttr "MCP1RN.phl[671]" "MCP1RN.phl[672]";
connectAttr "MCP1RN.phl[673]" "MCP1RN.phl[674]";
connectAttr "MCP1RN.phl[675]" "MCP1RN.phl[676]";
connectAttr "MCP1RN.phl[677]" "MCP1RN.phl[678]";
connectAttr "MCP1RN.phl[679]" "MCP1RN.phl[680]";
connectAttr "MCP1RN.phl[681]" "HIKSK2State1.RightHandMiddle1GX";
connectAttr "MCP1RN.phl[682]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn";
connectAttr "MCP1RN.phl[683]" "MCP1RN.phl[684]";
connectAttr "MCP1RN.phl[685]" "MCP1RN.phl[686]";
connectAttr "MCP1RN.phl[687]" "MCP1RN.phl[688]";
connectAttr "MCP1RN.phl[689]" "MCP1RN.phl[690]";
connectAttr "MCP1RN.phl[691]" "MCP1RN.phl[692]";
connectAttr "MCP1RN.phl[693]" "MCP1RN.phl[694]";
connectAttr "MCP1RN.phl[695]" "HIKSK2State1.RightHandMiddle2GX";
connectAttr "MCP1RN.phl[696]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn";
connectAttr "MCP1RN.phl[697]" "MCP1RN.phl[698]";
connectAttr "MCP1RN.phl[699]" "MCP1RN.phl[700]";
connectAttr "MCP1RN.phl[701]" "MCP1RN.phl[702]";
connectAttr "MCP1RN.phl[703]" "MCP1RN.phl[704]";
connectAttr "MCP1RN.phl[705]" "MCP1RN.phl[706]";
connectAttr "MCP1RN.phl[707]" "MCP1RN.phl[708]";
connectAttr "MCP1RN.phl[709]" "HIKSK2State1.RightHandMiddle3GX";
connectAttr "MCP1RN.phl[710]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn";
connectAttr "MCP1RN.phl[711]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn";
connectAttr "MCP1RN.phl[712]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn";
connectAttr "MCP1RN.phl[713]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[476].dn";
connectAttr "MCP1RN.phl[714]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn";
connectAttr "MCP1RN.phl[715]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn";
connectAttr "MCP1RN.phl[716]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn";
connectAttr "MCP1RN.phl[717]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[470].dn";
connectAttr "MCP1RN.phl[718]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[471].dn";
connectAttr "MCP1RN.phl[719]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn";
connectAttr "MCP1RN.phl[720]" "MCP1RN.phl[721]";
connectAttr "MCP1RN.phl[722]" "MCP1RN.phl[723]";
connectAttr "MCP1RN.phl[724]" "MCP1RN.phl[725]";
connectAttr "MCP1RN.phl[726]" "MCP1RN.phl[727]";
connectAttr "MCP1RN.phl[728]" "MCP1RN.phl[729]";
connectAttr "MCP1RN.phl[730]" "MCP1RN.phl[731]";
connectAttr "MCP1RN.phl[732]" "HIKSK2State1.RightInHandPinkyGX";
connectAttr "MCP1RN.phl[733]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[485].dn";
connectAttr "MCP1RN.phl[734]" "MCP1RN.phl[735]";
connectAttr "MCP1RN.phl[736]" "MCP1RN.phl[737]";
connectAttr "MCP1RN.phl[738]" "MCP1RN.phl[739]";
connectAttr "MCP1RN.phl[740]" "MCP1RN.phl[741]";
connectAttr "MCP1RN.phl[742]" "MCP1RN.phl[743]";
connectAttr "MCP1RN.phl[744]" "MCP1RN.phl[745]";
connectAttr "MCP1RN.phl[746]" "HIKSK2State1.RightHandPinky1GX";
connectAttr "MCP1RN.phl[747]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn";
connectAttr "MCP1RN.phl[748]" "MCP1RN.phl[749]";
connectAttr "MCP1RN.phl[750]" "MCP1RN.phl[751]";
connectAttr "MCP1RN.phl[752]" "MCP1RN.phl[753]";
connectAttr "MCP1RN.phl[754]" "MCP1RN.phl[755]";
connectAttr "MCP1RN.phl[756]" "MCP1RN.phl[757]";
connectAttr "MCP1RN.phl[758]" "MCP1RN.phl[759]";
connectAttr "MCP1RN.phl[760]" "HIKSK2State1.RightHandPinky2GX";
connectAttr "MCP1RN.phl[761]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn";
connectAttr "MCP1RN.phl[762]" "MCP1RN.phl[763]";
connectAttr "MCP1RN.phl[764]" "MCP1RN.phl[765]";
connectAttr "MCP1RN.phl[766]" "MCP1RN.phl[767]";
connectAttr "MCP1RN.phl[768]" "MCP1RN.phl[769]";
connectAttr "MCP1RN.phl[770]" "MCP1RN.phl[771]";
connectAttr "MCP1RN.phl[772]" "MCP1RN.phl[773]";
connectAttr "MCP1RN.phl[774]" "HIKSK2State1.RightHandPinky3GX";
connectAttr "MCP1RN.phl[775]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn";
connectAttr "MCP1RN.phl[776]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[475].dn";
connectAttr "MCP1RN.phl[777]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn";
connectAttr "MCP1RN.phl[778]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[486].dn";
connectAttr "MCP1RN.phl[779]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn";
connectAttr "MCP1RN.phl[780]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[488].dn";
connectAttr "MCP1RN.phl[781]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn";
connectAttr "MCP1RN.phl[782]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[477].dn";
connectAttr "MCP1RN.phl[783]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn";
connectAttr "MCP1RN.phl[784]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn";
connectAttr "MCP1RN.phl[785]" "MCP1RN.phl[786]";
connectAttr "MCP1RN.phl[787]" "MCP1RN.phl[788]";
connectAttr "MCP1RN.phl[789]" "MCP1RN.phl[790]";
connectAttr "MCP1RN.phl[791]" "MCP1RN.phl[792]";
connectAttr "MCP1RN.phl[793]" "MCP1RN.phl[794]";
connectAttr "MCP1RN.phl[795]" "MCP1RN.phl[796]";
connectAttr "MCP1RN.phl[797]" "HIKSK2State1.RightInHandIndexGX";
connectAttr "MCP1RN.phl[798]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn";
connectAttr "MCP1RN.phl[799]" "MCP1RN.phl[800]";
connectAttr "MCP1RN.phl[801]" "MCP1RN.phl[802]";
connectAttr "MCP1RN.phl[803]" "MCP1RN.phl[804]";
connectAttr "MCP1RN.phl[805]" "MCP1RN.phl[806]";
connectAttr "MCP1RN.phl[807]" "MCP1RN.phl[808]";
connectAttr "MCP1RN.phl[809]" "MCP1RN.phl[810]";
connectAttr "MCP1RN.phl[811]" "HIKSK2State1.RightHandIndex1GX";
connectAttr "MCP1RN.phl[812]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[496].dn";
connectAttr "MCP1RN.phl[813]" "MCP1RN.phl[814]";
connectAttr "MCP1RN.phl[815]" "MCP1RN.phl[816]";
connectAttr "MCP1RN.phl[817]" "MCP1RN.phl[818]";
connectAttr "MCP1RN.phl[819]" "MCP1RN.phl[820]";
connectAttr "MCP1RN.phl[821]" "MCP1RN.phl[822]";
connectAttr "MCP1RN.phl[823]" "MCP1RN.phl[824]";
connectAttr "MCP1RN.phl[825]" "HIKSK2State1.RightHandIndex2GX";
connectAttr "MCP1RN.phl[826]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn";
connectAttr "MCP1RN.phl[827]" "MCP1RN.phl[828]";
connectAttr "MCP1RN.phl[829]" "MCP1RN.phl[830]";
connectAttr "MCP1RN.phl[831]" "MCP1RN.phl[832]";
connectAttr "MCP1RN.phl[833]" "MCP1RN.phl[834]";
connectAttr "MCP1RN.phl[835]" "MCP1RN.phl[836]";
connectAttr "MCP1RN.phl[837]" "MCP1RN.phl[838]";
connectAttr "MCP1RN.phl[839]" "HIKSK2State1.RightHandIndex3GX";
connectAttr "MCP1RN.phl[840]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn";
connectAttr "MCP1RN.phl[841]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn";
connectAttr "MCP1RN.phl[842]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn";
connectAttr "MCP1RN.phl[843]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn";
connectAttr "MCP1RN.phl[844]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn";
connectAttr "MCP1RN.phl[845]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[493].dn";
connectAttr "MCP1RN.phl[846]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn";
connectAttr "MCP1RN.phl[847]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn";
connectAttr "MCP1RN.phl[848]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[520].dn";
connectAttr "MCP1RN.phl[849]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn";
connectAttr "MCP1RN.phl[850]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn";
connectAttr "MCP1RN.phl[851]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn";
connectAttr "MCP1RN.phl[852]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn";
connectAttr "MCP1RN.phl[853]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn";
connectAttr "MCP1RN.phl[854]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn";
connectAttr "MCP1RN.phl[855]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[499].dn";
connectAttr "MCP1RN.phl[856]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn";
connectAttr "MCP1RN.phl[857]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn";
connectAttr "MCP1RN.phl[858]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn";
connectAttr "MCP1RN.phl[859]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn";
connectAttr "MCP1RN.phl[860]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[503].dn";
connectAttr "MCP1RN.phl[861]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[522].dn";
connectAttr "MCP1RN.phl[862]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn";
connectAttr "MCP1RN.phl[863]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[509].dn";
connectAttr "MCP1RN.phl[864]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn";
connectAttr "MCP1RN.phl[865]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn";
connectAttr "MCP1RN.phl[866]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn";
connectAttr "MCP1RN.phl[867]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn";
connectAttr "MCP1RN.phl[868]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn";
connectAttr "MCP1RN.phl[869]" "MCP1RN.phl[870]";
connectAttr "MCP1RN.phl[871]" "MCP1RN.phl[872]";
connectAttr "MCP1RN.phl[873]" "MCP1RN.phl[874]";
connectAttr "MCP1RN.phl[875]" "MCP1RN.phl[876]";
connectAttr "MCP1RN.phl[877]" "MCP1RN.phl[878]";
connectAttr "MCP1RN.phl[879]" "MCP1RN.phl[880]";
connectAttr "MCP1RN.phl[881]" "HIKSK2State1.RightUpLegGX";
connectAttr "MCP1RN.phl[882]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn";
connectAttr "MCP1RN.phl[883]" "MCP1RN.phl[884]";
connectAttr "MCP1RN.phl[885]" "MCP1RN.phl[886]";
connectAttr "MCP1RN.phl[887]" "MCP1RN.phl[888]";
connectAttr "MCP1RN.phl[889]" "MCP1RN.phl[890]";
connectAttr "MCP1RN.phl[891]" "MCP1RN.phl[892]";
connectAttr "MCP1RN.phl[893]" "MCP1RN.phl[894]";
connectAttr "MCP1RN.phl[895]" "HIKSK2State1.RightLegGX";
connectAttr "MCP1RN.phl[896]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn";
connectAttr "MCP1RN.phl[897]" "MCP1RN.phl[898]";
connectAttr "MCP1RN.phl[899]" "MCP1RN.phl[900]";
connectAttr "MCP1RN.phl[901]" "MCP1RN.phl[902]";
connectAttr "MCP1RN.phl[903]" "MCP1RN.phl[904]";
connectAttr "MCP1RN.phl[905]" "MCP1RN.phl[906]";
connectAttr "MCP1RN.phl[907]" "MCP1RN.phl[908]";
connectAttr "MCP1RN.phl[909]" "HIKSK2State1.RightFootGX";
connectAttr "MCP1RN.phl[910]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn";
connectAttr "MCP1RN.phl[911]" "MCP1RN.phl[912]";
connectAttr "MCP1RN.phl[913]" "MCP1RN.phl[914]";
connectAttr "MCP1RN.phl[915]" "MCP1RN.phl[916]";
connectAttr "MCP1RN.phl[917]" "MCP1RN.phl[918]";
connectAttr "MCP1RN.phl[919]" "MCP1RN.phl[920]";
connectAttr "MCP1RN.phl[921]" "MCP1RN.phl[922]";
connectAttr "MCP1RN.phl[923]" "HIKSK2State1.RightToeBaseGX";
connectAttr "MCP1RN.phl[924]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn";
connectAttr "MCP1RN.phl[925]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn";
connectAttr "MCP1RN.phl[926]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn";
connectAttr "MCP1RN.phl[927]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[514].dn";
connectAttr "MCP1RN.phl[928]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[515].dn";
connectAttr "MCP1RN.phl[929]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn";
connectAttr "MCP1RN.phl[930]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn";
connectAttr "MCP1RN.phl[931]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[531].dn";
connectAttr "MCP1RN.phl[932]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[532].dn";
connectAttr "MCP1RN.phl[933]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[521].dn";
connectAttr "MCP1RN.phl[934]" "MCP1RN.phl[935]";
connectAttr "MCP1RN.phl[936]" "MCP1RN.phl[937]";
connectAttr "MCP1RN.phl[938]" "MCP1RN.phl[939]";
connectAttr "MCP1RN.phl[940]" "MCP1RN.phl[941]";
connectAttr "MCP1RN.phl[942]" "MCP1RN.phl[943]";
connectAttr "MCP1RN.phl[944]" "MCP1RN.phl[945]";
connectAttr "MCP1RN.phl[946]" "HIKSK2State1.LeftUpLegGX";
connectAttr "MCP1RN.phl[947]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn";
connectAttr "MCP1RN.phl[948]" "MCP1RN.phl[949]";
connectAttr "MCP1RN.phl[950]" "MCP1RN.phl[951]";
connectAttr "MCP1RN.phl[952]" "MCP1RN.phl[953]";
connectAttr "MCP1RN.phl[954]" "MCP1RN.phl[955]";
connectAttr "MCP1RN.phl[956]" "MCP1RN.phl[957]";
connectAttr "MCP1RN.phl[958]" "MCP1RN.phl[959]";
connectAttr "MCP1RN.phl[960]" "HIKSK2State1.LeftLegGX";
connectAttr "MCP1RN.phl[961]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[533].dn";
connectAttr "MCP1RN.phl[962]" "MCP1RN.phl[963]";
connectAttr "MCP1RN.phl[964]" "MCP1RN.phl[965]";
connectAttr "MCP1RN.phl[966]" "MCP1RN.phl[967]";
connectAttr "MCP1RN.phl[968]" "MCP1RN.phl[969]";
connectAttr "MCP1RN.phl[970]" "MCP1RN.phl[971]";
connectAttr "MCP1RN.phl[972]" "MCP1RN.phl[973]";
connectAttr "MCP1RN.phl[974]" "HIKSK2State1.LeftFootGX";
connectAttr "MCP1RN.phl[975]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[538].dn";
connectAttr "MCP1RN.phl[976]" "MCP1RN.phl[977]";
connectAttr "MCP1RN.phl[978]" "MCP1RN.phl[979]";
connectAttr "MCP1RN.phl[980]" "MCP1RN.phl[981]";
connectAttr "MCP1RN.phl[982]" "MCP1RN.phl[983]";
connectAttr "MCP1RN.phl[984]" "MCP1RN.phl[985]";
connectAttr "MCP1RN.phl[986]" "MCP1RN.phl[987]";
connectAttr "MCP1RN.phl[988]" "HIKSK2State1.LeftToeBaseGX";
connectAttr "MCP1RN.phl[989]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[539].dn";
connectAttr "MCP1RN.phl[990]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[540].dn";
connectAttr "MCP1RN.phl[991]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[535].dn";
connectAttr "MCP1RN.phl[992]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[541].dn";
connectAttr "MCP1RN.phl[993]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[536].dn";
connectAttr "MCP1RN.phl[994]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[534].dn";
connectAttr "MCP1RN.phl[995]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[542].dn";
connectAttr "MCP1RN.phl[996]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[544].dn";
connectAttr "MCP1RN.phl[997]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[543].dn";
connectAttr "MCP1RN.phl[998]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[549].dn";
connectAttr "MCP1RN.phl[999]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[546].dn";
connectAttr "MCP1RN.phl[1000]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[545].dn";
connectAttr "MCP1RN.phl[1001]" "HIKSK2State1.ReferenceGX";
connectAttr "MCP1RN.phl[1002]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[551].dn";
connectAttr "MCP1RN.phl[1003]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[547].dn";
connectAttr "MCP1RN.phl[1004]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[548].dn";
connectAttr "MCP1RN.phl[1005]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[550].dn";
connectAttr "MCP1RN.phl[1006]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[537].dn";
connectAttr "MCP1RN.phl[1007]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[552].dn";
connectAttr "MCP1RN.phl[1008]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[553].dn";
connectAttr "MCP1RN.phl[1009]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[554].dn";
connectAttr "MCP1RN.phl[1010]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[555].dn";
connectAttr "MCP1RN.phl[1011]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[557].dn";
connectAttr "MCP1RN.phl[1012]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[558].dn";
connectAttr "MCP1RN.phl[1013]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[565].dn";
connectAttr "MCP1RN.phl[1014]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[560].dn";
connectAttr "MCP1RN.phl[1015]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[559].dn";
connectAttr "MCP1RN.phl[1016]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[567].dn";
connectAttr "MCP1RN.phl[1017]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[570].dn";
connectAttr "MCP1RN.phl[1018]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[566].dn";
connectAttr "MCP1RN.phl[1019]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[569].dn";
connectAttr "MCP1RN.phl[1020]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[562].dn";
connectAttr "MCP1RN.phl[1021]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[556].dn";
connectAttr "MCP1RN.phl[1022]" "HIKRetargeterNode1.InputCharacterDefinitionSrc";
connectAttr "MCP1RN.phl[1023]" "HIKSK2State1.InputCharacterDefinition";
connectAttr "MCP1RN.phl[1024]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[563].dn";
connectAttr "MCP1RN.phl[1025]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[561].dn";
connectAttr "MCP1RN.phl[1026]" "HIKRetargeterNode1.InputSrcPropertySetState";
connectAttr "MCP1RN.phl[1027]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[568].dn";
connectAttr "MCP1RN.phl[1028]" "MCP1RN.phl[1029]";
connectAttr "MCP1RN.phl[1030]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[571].dn";
connectAttr "MCP1RN.phl[1031]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[747].dn";
connectAttr "MCP1RN.phl[1032]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[739].dn";
connectAttr "MCP1RN.phl[1033]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[745].dn";
connectAttr "MCP1RN.phl[1034]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[746].dn";
connectAttr "MCP1RN.phl[1035]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[751].dn";
connectAttr "MCP1RN.phl[1036]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[752].dn";
connectAttr "MCP1RN.phl[1037]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[740].dn";
connectAttr "MCP1RN.phl[1038]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[753].dn";
connectAttr "MCP1RN.phl[1039]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[748].dn";
connectAttr "MCP1RN.phl[1040]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[733].dn";
connectAttr "MCP1RN.phl[1041]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[754].dn";
connectAttr "MCP1RN.phl[1042]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[755].dn";
connectAttr "MCP1RN.phl[1043]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[749].dn";
connectAttr "MCP1RN.phl[1044]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[734].dn";
connectAttr "MCP1RN.phl[1045]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[735].dn";
connectAttr "MCP1RN.phl[1046]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[736].dn";
connectAttr "MCP1RN.phl[1047]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[756].dn";
connectAttr "MCP1RN.phl[1048]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[757].dn";
connectAttr "MCP1RN.phl[1049]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[758].dn";
connectAttr "MCP1RN.phl[1050]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[737].dn";
connectAttr "MCP1RN.phl[1051]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[741].dn";
connectAttr "MCP1RN.phl[1052]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[742].dn";
connectAttr "MCP1RN.phl[1053]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[759].dn";
connectAttr "MCP1RN.phl[1054]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[738].dn";
connectAttr "MCP1RN.phl[1055]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[743].dn";
connectAttr "MCP1RN.phl[1056]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[744].dn";
connectAttr "MCP1RN.phl[1057]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[761].dn";
connectAttr "MCP1RN.phl[1058]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[762].dn";
connectAttr "MCP1RN.phl[1059]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[770].dn";
connectAttr "MCP1RN.phl[1060]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[763].dn";
connectAttr "MCP1RN.phl[1061]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[771].dn";
connectAttr "MCP1RN.phl[1062]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[764].dn";
connectAttr "MCP1RN.phl[1063]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[783].dn";
connectAttr "MCP1RN.phl[1064]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[774].dn";
connectAttr "MCP1RN.phl[1065]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[775].dn";
connectAttr "MCP1RN.phl[1066]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[777].dn";
connectAttr "MCP1RN.phl[1067]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[788].dn";
connectAttr "MCP1RN.phl[1068]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[786].dn";
connectAttr "MCP1RN.phl[1069]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[784].dn";
connectAttr "MCP1RN.phl[1070]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[766].dn";
connectAttr "MCP1RN.phl[1071]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[772].dn";
connectAttr "MCP1RN.phl[1072]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[787].dn";
connectAttr "MCP1RN.phl[1073]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[780].dn";
connectAttr "MCP1RN.phl[1074]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[773].dn";
connectAttr "MCP1RN.phl[1075]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[776].dn";
connectAttr "MCP1RN.phl[1076]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[785].dn";
connectAttr "MCP1RN.phl[1077]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[781].dn";
connectAttr "MCP1RN.phl[1078]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[789].dn";
connectAttr "MCP1RN.phl[1079]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[779].dn";
connectAttr "MCP1RN.phl[1080]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[778].dn";
connectAttr "MCP1RN.phl[1081]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[782].dn";
connectAttr "MCP1RN.phl[1082]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[765].dn";
connectAttr "MCP1RN.phl[1083]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[790].dn";
connectAttr "MCP1RN.phl[1084]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[767].dn";
connectAttr "MCP1RN.phl[1085]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[791].dn";
connectAttr "MCP1RN.phl[1086]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[768].dn";
connectAttr "MCP1RN.phl[1087]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[760].dn";
connectAttr "MCP1RN.phl[1088]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[792].dn";
connectAttr "MCP1RN.phl[1089]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[793].dn";
connectAttr "MCP1RN.phl[1090]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[794].dn";
connectAttr "MCP1RN.phl[1091]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[795].dn";
connectAttr "MCP1RN.phl[1092]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[796].dn";
connectAttr "MCP1RN.phl[1093]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[797].dn";
connectAttr "MCP1RN.phl[1094]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[798].dn";
connectAttr "MCP1RN.phl[1095]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[799].dn";
connectAttr "MCP1RN.phl[1096]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[800].dn";
connectAttr "MCP1RN.phl[1097]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[801].dn";
connectAttr "MCP1RN.phl[1098]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[802].dn";
connectAttr "MCP1RN.phl[1099]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[803].dn";
connectAttr "MCP1RN.phl[1100]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[804].dn";
connectAttr "MCP1RN.phl[1101]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[769].dn";
connectAttr "MCP1RN.phl[1102]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[805].dn";
connectAttr "MCP1RN.phl[1103]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[838].dn";
connectAttr "MCP1RN.phl[1104]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[822].dn";
connectAttr "MCP1RN.phl[1105]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[850].dn";
connectAttr "MCP1RN.phl[1106]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[851].dn";
connectAttr "MCP1RN.phl[1107]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[807].dn";
connectAttr "MCP1RN.phl[1108]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[811].dn";
connectAttr "MCP1RN.phl[1109]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[812].dn";
connectAttr "MCP1RN.phl[1110]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[848].dn";
connectAttr "MCP1RN.phl[1111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[849].dn";
connectAttr "MCP1RN.phl[1112]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[808].dn";
connectAttr "MCP1RN.phl[1113]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[843].dn";
connectAttr "MCP1RN.phl[1114]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[839].dn";
connectAttr "MCP1RN.phl[1115]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[816].dn";
connectAttr "MCP1RN.phl[1116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[832].dn";
connectAttr "MCP1RN.phl[1117]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[852].dn";
connectAttr "MCP1RN.phl[1118]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[834].dn";
connectAttr "MCP1RN.phl[1119]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[817].dn";
connectAttr "MCP1RN.phl[1120]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[840].dn";
connectAttr "MCP1RN.phl[1121]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[853].dn";
connectAttr "MCP1RN.phl[1122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[854].dn";
connectAttr "MCP1RN.phl[1123]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[855].dn";
connectAttr "MCP1RN.phl[1124]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[818].dn";
connectAttr "MCP1RN.phl[1125]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[823].dn";
connectAttr "MCP1RN.phl[1126]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[806].dn";
connectAttr "MCP1RN.phl[1127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[813].dn";
connectAttr "MCP1RN.phl[1128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[856].dn";
connectAttr "MCP1RN.phl[1129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[833].dn";
connectAttr "MCP1RN.phl[1130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[810].dn";
connectAttr "MCP1RN.phl[1131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[819].dn";
connectAttr "MCP1RN.phl[1132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[857].dn";
connectAttr "MCP1RN.phl[1133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[837].dn";
connectAttr "MCP1RN.phl[1134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[858].dn";
connectAttr "MCP1RN.phl[1135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[844].dn";
connectAttr "MCP1RN.phl[1136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[842].dn";
connectAttr "MCP1RN.phl[1137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[829].dn";
connectAttr "MCP1RN.phl[1138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[846].dn";
connectAttr "MCP1RN.phl[1139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[809].dn";
connectAttr "MCP1RN.phl[1140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[845].dn";
connectAttr "MCP1RN.phl[1141]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[859].dn";
connectAttr "MCP1RN.phl[1142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[820].dn";
connectAttr "MCP1RN.phl[1143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[830].dn";
connectAttr "MCP1RN.phl[1144]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[860].dn";
connectAttr "MCP1RN.phl[1145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[835].dn";
connectAttr "MCP1RN.phl[1146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[815].dn";
connectAttr "MCP1RN.phl[1147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[836].dn";
connectAttr "MCP1RN.phl[1148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[847].dn";
connectAttr "MCP1RN.phl[1149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[861].dn";
connectAttr "MCP1RN.phl[1150]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[814].dn";
connectAttr "MCP1RN.phl[1151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[862].dn";
connectAttr "MCP1RN.phl[1152]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[863].dn";
connectAttr "MCP1RN.phl[1153]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[841].dn";
connectAttr "MCP1RN.phl[1154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[864].dn";
connectAttr "MCP1RN.phl[1155]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[821].dn";
connectAttr "MCP1RN.phl[1156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[865].dn";
connectAttr "MCP1RN.phl[1157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[825].dn";
connectAttr "MCP1RN.phl[1158]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[866].dn";
connectAttr "MCP1RN.phl[1159]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[867].dn";
connectAttr "MCP1RN.phl[1160]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[868].dn";
connectAttr "MCP1RN.phl[1161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[869].dn";
connectAttr "MCP1RN.phl[1162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[831].dn";
connectAttr "MCP1RN.phl[1163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[824].dn";
connectAttr "MCP1RN.phl[1164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[826].dn";
connectAttr "MCP1RN.phl[1165]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[827].dn";
connectAttr "MCP1RN.phl[1166]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[828].dn";
connectAttr "MCP1RN.phl[1167]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[875].dn";
connectAttr "MCP1RN.phl[1168]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[882].dn";
connectAttr "MCP1RN.phl[1169]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[896].dn";
connectAttr "MCP1RN.phl[1170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[885].dn";
connectAttr "MCP1RN.phl[1171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[891].dn";
connectAttr "MCP1RN.phl[1172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[904].dn";
connectAttr "MCP1RN.phl[1173]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[894].dn";
connectAttr "MCP1RN.phl[1174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[903].dn";
connectAttr "MCP1RN.phl[1175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[906].dn";
connectAttr "MCP1RN.phl[1176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[892].dn";
connectAttr "MCP1RN.phl[1177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[908].dn";
connectAttr "MCP1RN.phl[1178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[901].dn";
connectAttr "MCP1RN.phl[1179]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[893].dn";
connectAttr "MCP1RN.phl[1180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[905].dn";
connectAttr "MCP1RN.phl[1181]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[890].dn";
connectAttr "MCP1RN.phl[1182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[873].dn";
connectAttr "MCP1RN.phl[1183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[877].dn";
connectAttr "MCP1RN.phl[1184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[874].dn";
connectAttr "MCP1RN.phl[1185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[914].dn";
connectAttr "MCP1RN.phl[1186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[887].dn";
connectAttr "MCP1RN.phl[1187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[902].dn";
connectAttr "MCP1RN.phl[1188]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[919].dn";
connectAttr "MCP1RN.phl[1189]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[871].dn";
connectAttr "MCP1RN.phl[1190]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[895].dn";
connectAttr "MCP1RN.phl[1191]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[907].dn";
connectAttr "MCP1RN.phl[1192]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[897].dn";
connectAttr "MCP1RN.phl[1193]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[909].dn";
connectAttr "MCP1RN.phl[1194]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[898].dn";
connectAttr "MCP1RN.phl[1195]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[899].dn";
connectAttr "MCP1RN.phl[1196]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[900].dn";
connectAttr "MCP1RN.phl[1197]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[912].dn";
connectAttr "MCP1RN.phl[1198]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[910].dn";
connectAttr "MCP1RN.phl[1199]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[911].dn";
connectAttr "MCP1RN.phl[1200]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[913].dn";
connectAttr "MCP1RN.phl[1201]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[915].dn";
connectAttr "MCP1RN.phl[1202]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[916].dn";
connectAttr "MCP1RN.phl[1203]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[917].dn";
connectAttr "MCP1RN.phl[1204]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[876].dn";
connectAttr "MCP1RN.phl[1205]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[878].dn";
connectAttr "MCP1RN.phl[1206]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[918].dn";
connectAttr "MCP1RN.phl[1207]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[888].dn";
connectAttr "MCP1RN.phl[1208]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[886].dn";
connectAttr "MCP1RN.phl[1209]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[870].dn";
connectAttr "MCP1RN.phl[1210]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[920].dn";
connectAttr "MCP1RN.phl[1211]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[921].dn";
connectAttr "MCP1RN.phl[1212]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[879].dn";
connectAttr "MCP1RN.phl[1213]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[872].dn";
connectAttr "MCP1RN.phl[1214]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[922].dn";
connectAttr "MCP1RN.phl[1215]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[923].dn";
connectAttr "MCP1RN.phl[1216]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[928].dn";
connectAttr "MCP1RN.phl[1217]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[924].dn";
connectAttr "MCP1RN.phl[1218]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[925].dn";
connectAttr "MCP1RN.phl[1219]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[926].dn";
connectAttr "MCP1RN.phl[1220]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[927].dn";
connectAttr "MCP1RN.phl[1221]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[929].dn";
connectAttr "MCP1RN.phl[1222]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[880].dn";
connectAttr "MCP1RN.phl[1223]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[889].dn";
connectAttr "MCP1RN.phl[1224]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[930].dn";
connectAttr "MCP1RN.phl[1225]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[881].dn";
connectAttr "MCP1RN.phl[1226]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[931].dn";
connectAttr "MCP1RN.phl[1227]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[932].dn";
connectAttr "MCP1RN.phl[1228]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[883].dn";
connectAttr "MCP1RN.phl[1229]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[933].dn";
connectAttr "MCP1RN.phl[1230]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[884].dn";
connectAttr "MCP1RN.phl[1231]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[937].dn";
connectAttr "MCP1RN.phl[1232]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[952].dn";
connectAttr "MCP1RN.phl[1233]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[934].dn";
connectAttr "MCP1RN.phl[1234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[950].dn";
connectAttr "MCP1RN.phl[1235]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[943].dn";
connectAttr "MCP1RN.phl[1236]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[946].dn";
connectAttr "MCP1RN.phl[1237]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[938].dn";
connectAttr "MCP1RN.phl[1238]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[953].dn";
connectAttr "MCP1RN.phl[1239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[941].dn";
connectAttr "MCP1RN.phl[1240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[935].dn";
connectAttr "MCP1RN.phl[1241]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[940].dn";
connectAttr "MCP1RN.phl[1242]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[954].dn";
connectAttr "MCP1RN.phl[1243]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[951].dn";
connectAttr "MCP1RN.phl[1244]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[936].dn";
connectAttr "MCP1RN.phl[1245]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[948].dn";
connectAttr "MCP1RN.phl[1246]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[947].dn";
connectAttr "MCP1RN.phl[1247]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[949].dn";
connectAttr "MCP1RN.phl[1248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[942].dn";
connectAttr "MCP1RN.phl[1249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[944].dn";
connectAttr "MCP1RN.phl[1250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[939].dn";
connectAttr "MCP1RN.phl[1251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[945].dn";
connectAttr "MCP1RN.phl[1252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[672].dn";
connectAttr "MCP1RN.phl[1253]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[670].dn";
connectAttr "MCP1RN.phl[1254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[657].dn";
connectAttr "MCP1RN.phl[1255]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[673].dn";
connectAttr "MCP1RN.phl[1256]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[680].dn";
connectAttr "MCP1RN.phl[1257]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[642].dn";
connectAttr "MCP1RN.phl[1258]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[656].dn";
connectAttr "MCP1RN.phl[1259]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[663].dn";
connectAttr "MCP1RN.phl[1260]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[645].dn";
connectAttr "MCP1RN.phl[1261]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[641].dn";
connectAttr "MCP1RN.phl[1262]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[665].dn";
connectAttr "MCP1RN.phl[1263]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[682].dn";
connectAttr "MCP1RN.phl[1264]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[646].dn";
connectAttr "MCP1RN.phl[1265]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[671].dn";
connectAttr "MCP1RN.phl[1266]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[661].dn";
connectAttr "MCP1RN.phl[1267]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[676].dn";
connectAttr "MCP1RN.phl[1268]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[650].dn";
connectAttr "MCP1RN.phl[1269]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[683].dn";
connectAttr "MCP1RN.phl[1270]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[660].dn";
connectAttr "MCP1RN.phl[1271]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[643].dn";
connectAttr "MCP1RN.phl[1272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[651].dn";
connectAttr "MCP1RN.phl[1273]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[674].dn";
connectAttr "MCP1RN.phl[1274]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[664].dn";
connectAttr "MCP1RN.phl[1275]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[688].dn";
connectAttr "MCP1RN.phl[1276]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[662].dn";
connectAttr "MCP1RN.phl[1277]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[684].dn";
connectAttr "MCP1RN.phl[1278]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[675].dn";
connectAttr "MCP1RN.phl[1279]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[644].dn";
connectAttr "MCP1RN.phl[1280]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[659].dn";
connectAttr "MCP1RN.phl[1281]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[677].dn";
connectAttr "MCP1RN.phl[1282]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[685].dn";
connectAttr "MCP1RN.phl[1283]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[678].dn";
connectAttr "MCP1RN.phl[1284]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[640].dn";
connectAttr "MCP1RN.phl[1285]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[681].dn";
connectAttr "MCP1RN.phl[1286]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[679].dn";
connectAttr "MCP1RN.phl[1287]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[668].dn";
connectAttr "MCP1RN.phl[1288]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[690].dn";
connectAttr "MCP1RN.phl[1289]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[648].dn";
connectAttr "MCP1RN.phl[1290]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[695].dn";
connectAttr "MCP1RN.phl[1291]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[652].dn";
connectAttr "MCP1RN.phl[1292]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[653].dn";
connectAttr "MCP1RN.phl[1293]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[658].dn";
connectAttr "MCP1RN.phl[1294]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[666].dn";
connectAttr "MCP1RN.phl[1295]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[649].dn";
connectAttr "MCP1RN.phl[1296]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[654].dn";
connectAttr "MCP1RN.phl[1297]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[686].dn";
connectAttr "MCP1RN.phl[1298]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[687].dn";
connectAttr "MCP1RN.phl[1299]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[655].dn";
connectAttr "MCP1RN.phl[1300]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[689].dn";
connectAttr "MCP1RN.phl[1301]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[667].dn";
connectAttr "MCP1RN.phl[1302]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[692].dn";
connectAttr "MCP1RN.phl[1303]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[669].dn";
connectAttr "MCP1RN.phl[1304]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[691].dn";
connectAttr "MCP1RN.phl[1305]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[693].dn";
connectAttr "MCP1RN.phl[1306]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[694].dn";
connectAttr "MCP1RN.phl[1307]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[647].dn";
connectAttr "MCP1RN.phl[1308]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[696].dn";
connectAttr "MCP1RN.phl[1309]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[697].dn";
connectAttr "MCP1RN.phl[1310]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[698].dn";
connectAttr "MCP1RN.phl[1311]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[699].dn";
connectAttr "MCP1RN.phl[1312]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[700].dn";
connectAttr "MCP1RN.phl[1313]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[701].dn";
connectAttr "MCP1RN.phl[1314]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[702].dn";
connectAttr "MCP1RN.phl[1315]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[703].dn";
connectAttr "MCP1RN.phl[1316]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[704].dn";
connectAttr "MCP1RN.phl[1317]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[713].dn";
connectAttr "MCP1RN.phl[1318]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[724].dn";
connectAttr "MCP1RN.phl[1319]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[709].dn";
connectAttr "MCP1RN.phl[1320]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[714].dn";
connectAttr "MCP1RN.phl[1321]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[722].dn";
connectAttr "MCP1RN.phl[1322]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[705].dn";
connectAttr "MCP1RN.phl[1323]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[725].dn";
connectAttr "MCP1RN.phl[1324]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[707].dn";
connectAttr "MCP1RN.phl[1325]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[708].dn";
connectAttr "MCP1RN.phl[1326]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[721].dn";
connectAttr "MCP1RN.phl[1327]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[718].dn";
connectAttr "MCP1RN.phl[1328]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[727].dn";
connectAttr "MCP1RN.phl[1329]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[715].dn";
connectAttr "MCP1RN.phl[1330]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[723].dn";
connectAttr "MCP1RN.phl[1331]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[716].dn";
connectAttr "MCP1RN.phl[1332]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[710].dn";
connectAttr "MCP1RN.phl[1333]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[717].dn";
connectAttr "MCP1RN.phl[1334]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[726].dn";
connectAttr "MCP1RN.phl[1335]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[720].dn";
connectAttr "MCP1RN.phl[1336]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[719].dn";
connectAttr "MCP1RN.phl[1337]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[728].dn";
connectAttr "MCP1RN.phl[1338]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[729].dn";
connectAttr "MCP1RN.phl[1339]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[730].dn";
connectAttr "MCP1RN.phl[1340]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[706].dn";
connectAttr "MCP1RN.phl[1341]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[731].dn";
connectAttr "MCP1RN.phl[1342]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[732].dn";
connectAttr "MCP1RN.phl[1343]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[711].dn";
connectAttr "MCP1RN.phl[1344]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[712].dn";
connectAttr "MCP1RN.phl[1345]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn";
connectAttr "MCP1RN.phl[1346]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn";
connectAttr "MCP1RN.phl[1347]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn";
connectAttr "MCP1RN.phl[1348]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn";
connectAttr "MCP1RN.phl[1349]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn";
connectAttr "MCP1RN.phl[1350]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn";
connectAttr "MCP1RN.phl[1351]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn";
connectAttr "MCP1RN.phl[1352]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn";
connectAttr "MCP1RN.phl[1353]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn";
connectAttr "MCP1RN.phl[1354]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn";
connectAttr "MCP1RN.phl[1355]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn";
connectAttr "MCP1RN.phl[1356]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn";
connectAttr "MCP1RN.phl[1357]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn";
connectAttr "MCP1RN.phl[1358]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn";
connectAttr "MCP1RN.phl[1359]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn";
connectAttr "MCP1RN.phl[1360]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn";
connectAttr "MCP1RN.phl[1361]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn";
connectAttr "MCP1RN.phl[1362]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn";
connectAttr "MCP1RN.phl[1363]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn";
connectAttr "MCP1RN.phl[1364]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn";
connectAttr "MCP1RN.phl[1365]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn";
connectAttr "MCP1RN.phl[1366]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn";
connectAttr "MCP1RN.phl[1367]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn";
connectAttr "MCP1RN.phl[1368]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn";
connectAttr "MCP1RN.phl[1369]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn";
connectAttr "MCP1RN.phl[1370]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn";
connectAttr "MCP1RN.phl[1371]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn";
connectAttr "MCP1RN.phl[1372]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn";
connectAttr "MCP1RN.phl[1373]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn";
connectAttr "MCP1RN.phl[1374]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn";
connectAttr "MCP1RN.phl[1375]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn";
connectAttr "MCP1RN.phl[1376]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn";
connectAttr "MCP1RN.phl[1377]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn";
connectAttr "MCP1RN.phl[1378]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn";
connectAttr "MCP1RN.phl[1379]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn";
connectAttr "MCP1RN.phl[1380]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn";
connectAttr "MCP1RN.phl[1381]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn";
connectAttr "MCP1RN.phl[1382]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn";
connectAttr "MCP1RN.phl[1383]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn";
connectAttr "MCP1RN.phl[1384]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn";
connectAttr "MCP1RN.phl[1385]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn";
connectAttr "MCP1RN.phl[1386]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn";
connectAttr "MCP1RN.phl[1387]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn";
connectAttr "MCP1RN.phl[1388]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn";
connectAttr "MCP1RN.phl[1389]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn";
connectAttr "MCP1RN.phl[1390]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn";
connectAttr "MCP1RN.phl[1391]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn";
connectAttr "MCP1RN.phl[1392]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn";
connectAttr "MCP1RN.phl[1393]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn";
connectAttr "MCP1RN.phl[1394]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn";
connectAttr "MCP1RN.phl[1395]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn";
connectAttr "MCP1RN.phl[1396]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn";
connectAttr "MCP1RN.phl[1397]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn";
connectAttr "MCP1RN.phl[1398]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn";
connectAttr "MCP1RN.phl[1399]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn";
connectAttr "MCP1RN.phl[1400]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn";
connectAttr "MCP1RN.phl[1401]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn";
connectAttr "MCP1RN.phl[1402]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn";
connectAttr "MCP1RN.phl[1403]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn";
connectAttr "MCP1RN.phl[1404]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn";
connectAttr "MCP1RN.phl[1405]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn";
connectAttr "MCP1RN.phl[1406]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn";
connectAttr "MCP1RN.phl[1407]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn";
connectAttr "MCP1RN.phl[1408]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn";
connectAttr "MCP1RN.phl[1409]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn";
connectAttr "MCP1RN.phl[1410]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn";
connectAttr "MCP1RN.phl[1411]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn";
connectAttr "MCP1RN.phl[1412]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn";
connectAttr "MCP1RN.phl[1413]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn";
connectAttr "MCP1RN.phl[1414]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn";
connectAttr "MCP1RN.phl[1415]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn";
connectAttr "MCP1RN.phl[1416]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn";
connectAttr "MCP1RN.phl[1417]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn";
connectAttr "MCP1RN.phl[1418]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn";
connectAttr "MCP1RN.phl[1419]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn";
connectAttr "MCP1RN.phl[1420]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn";
connectAttr "MCP1RN.phl[1421]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn";
connectAttr "MCP1RN.phl[1422]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn";
connectAttr "MCP1RN.phl[1423]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn";
connectAttr "MCP1RN.phl[1424]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn";
connectAttr "MCP1RN.phl[1425]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn";
connectAttr "MCP1RN.phl[1426]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn";
connectAttr "MCP1RN.phl[1427]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn";
connectAttr "MCP1RN.phl[1428]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn";
connectAttr "MCP1RN.phl[1429]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn";
connectAttr "MCP1RN.phl[1430]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn";
connectAttr "MCP1RN.phl[1431]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn";
connectAttr "MCP1RN.phl[1432]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn";
connectAttr "MCP1RN.phl[1433]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn";
connectAttr "MCP1RN.phl[1434]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn";
connectAttr "MCP1RN.phl[1435]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn";
connectAttr "MCP1RN.phl[1436]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn";
connectAttr "MCP1RN.phl[1437]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn";
connectAttr "MCP1RN.phl[1438]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn";
connectAttr "MCP1RN.phl[1439]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn";
connectAttr "MCP1RN.phl[1440]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn";
connectAttr "MCP1RN.phl[1441]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn";
connectAttr "MCP1RN.phl[1442]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn";
connectAttr "MCP1RN.phl[1443]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn";
connectAttr "MCP1RN.phl[1444]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn";
connectAttr "MCP1RN.phl[1445]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn";
connectAttr "MCP1RN.phl[1446]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn";
connectAttr "MCP1RN.phl[1447]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn";
connectAttr "MCP1RN.phl[1448]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn";
connectAttr "MCP1RN.phl[1449]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn";
connectAttr "MCP1RN.phl[1450]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn";
connectAttr "MCP1RN.phl[1451]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn";
connectAttr "MCP1RN.phl[1452]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn";
connectAttr "MCP1RN.phl[1453]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn";
connectAttr "MCP1RN.phl[1454]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn";
connectAttr "MCP1RN.phl[1455]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn";
connectAttr "MCP1RN.phl[1456]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn";
connectAttr "MCP1RN.phl[1457]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn";
connectAttr "MCP1RN.phl[1458]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn";
connectAttr "MCP1RN.phl[1459]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn";
connectAttr "MCP1RN.phl[1460]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn";
connectAttr "MCP1RN.phl[1461]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn";
connectAttr "MCP1RN.phl[1462]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn";
connectAttr "MCP1RN.phl[1463]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn";
connectAttr "MCP1RN.phl[1464]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn";
connectAttr "MCP1RN.phl[1465]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[436].dn";
connectAttr "MCP1RN.phl[1466]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn";
connectAttr "MCP1RN.phl[1467]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn";
connectAttr "MCP1RN.phl[1468]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn";
connectAttr "MCP1RN.phl[1469]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn";
connectAttr "MCP1RN.phl[1470]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn";
connectAttr "MCP1RN.phl[1471]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[440].dn";
connectAttr "MCP1RN.phl[1472]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn";
connectAttr "MCP1RN.phl[1473]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn";
connectAttr "MCP1RN.phl[1474]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn";
connectAttr "MCP1RN.phl[1475]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn";
connectAttr "MCP1RN.phl[1476]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn";
connectAttr "MCP1RN.phl[1477]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn";
connectAttr "MCP1RN.phl[1478]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn";
connectAttr "MCP1RN.phl[1479]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn";
connectAttr "MCP1RN.phl[1480]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn";
connectAttr "MCP1RN.phl[1481]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn";
connectAttr "MCP1RN.phl[1482]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn";
connectAttr "MCP1RN.phl[1483]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "MCP1RN.phl[1484]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn";
connectAttr "MCP1RN.phl[1485]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn";
connectAttr "MCP1RN.phl[1486]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn";
connectAttr "MCP1RN.phl[1487]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn";
connectAttr "MCP1RN.phl[1488]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn";
connectAttr "MCP1RN.phl[1489]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn";
connectAttr "MCP1RN.phl[1490]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn";
connectAttr "MCP1RN.phl[1491]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "MCP1RN.phl[1492]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "MCP1RN.phl[1493]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn";
connectAttr "MCP1RN.phl[1494]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn";
connectAttr "MCP1RN.phl[1495]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn";
connectAttr "MCP1RN.phl[1496]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn";
connectAttr "MCP1RN.phl[1497]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn";
connectAttr "MCP1RN.phl[1498]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn";
connectAttr "MCP1RN.phl[1499]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn";
connectAttr "MCP1RN.phl[1500]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn";
connectAttr "MCP1RN.phl[1501]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn";
connectAttr "MCP1RN.phl[1502]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn";
connectAttr "MCP1RN.phl[1503]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn";
connectAttr "MCP1RN.phl[1504]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn";
connectAttr "MCP1RN.phl[1505]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn";
connectAttr "MCP1RN.phl[1506]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn";
connectAttr "MCP1RN.phl[1507]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn";
connectAttr "MCP1RN.phl[1508]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn";
connectAttr "MCP1RN.phl[1509]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn";
connectAttr "MCP1RN.phl[1510]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn";
connectAttr "MCP1RN.phl[1511]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn";
connectAttr "MCP1RN.phl[1512]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn";
connectAttr "MCP1RN.phl[1513]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn";
connectAttr "MCP1RN.phl[1514]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn";
connectAttr "MCP1RN.phl[1515]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn";
connectAttr "MCP1RN.phl[1516]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn";
connectAttr "MCP1RN.phl[1517]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn";
connectAttr "MCP1RN.phl[1518]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn";
connectAttr "MCP1RN.phl[1519]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn";
connectAttr "MCP1RN.phl[1520]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn";
connectAttr "MCP1RN.phl[1521]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn";
connectAttr "MCP1RN.phl[1522]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn";
connectAttr "MCP1RN.phl[1523]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn";
connectAttr "MCP1RN.phl[1524]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn";
connectAttr "MCP1RN.phl[1525]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn";
connectAttr "MCP1RN.phl[1526]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn";
connectAttr "MCP1RN.phl[1527]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn";
connectAttr "MCP1RN.phl[1528]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn";
connectAttr "MCP1RN.phl[1529]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn";
connectAttr "MCP1RN.phl[1530]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn";
connectAttr "MCP1RN.phl[1531]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn";
connectAttr "MCP1RN.phl[1532]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn";
connectAttr "MCP1RN.phl[1533]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn";
connectAttr "MCP1RN.phl[1534]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn";
connectAttr "MCP1RN.phl[1535]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn";
connectAttr "MCP1RN.phl[1536]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn";
connectAttr "MCP1RN.phl[1537]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn";
connectAttr "MCP1RN.phl[1538]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn";
connectAttr "MCP1RN.phl[1539]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn";
connectAttr "MCP1RN.phl[1540]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn";
connectAttr "MCP1RN.phl[1541]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn";
connectAttr "MCP1RN.phl[1542]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn";
connectAttr "MCP1RN.phl[1543]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn";
connectAttr "MCP1RN.phl[1544]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn";
connectAttr "MCP1RN.phl[1545]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn";
connectAttr "MCP1RN.phl[1546]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn";
connectAttr "MCP1RN.phl[1547]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn";
connectAttr "MCP1RN.phl[1548]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn";
connectAttr "MCP1RN.phl[1549]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn";
connectAttr "MCP1RN.phl[1550]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn";
connectAttr "MCP1RN.phl[1551]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn";
connectAttr "MCP1RN.phl[1552]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn";
connectAttr "MCP1RN.phl[1553]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn";
connectAttr "MCP1RN.phl[1554]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn";
connectAttr "MCP1RN.phl[1555]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn";
connectAttr "MCP1RN.phl[1556]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn";
connectAttr "MCP1RN.phl[1557]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn";
connectAttr "MCP1RN.phl[1558]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn";
connectAttr "MCP1RN.phl[1559]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn";
connectAttr "MCP1RN.phl[1560]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn";
connectAttr "MCP1RN.phl[1561]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn";
connectAttr "MCP1RN.phl[1562]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn";
connectAttr "MCP1RN.phl[1563]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn";
connectAttr "MCP1RN.phl[1564]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn";
connectAttr "MCP1RN.phl[1565]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn";
connectAttr "MCP1RN.phl[1566]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn";
connectAttr "MCP1RN.phl[1567]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn";
connectAttr "MCP1RN.phl[1568]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn";
connectAttr "MCP1RN.phl[1569]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn";
connectAttr "MCP1RN.phl[1570]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn";
connectAttr "MCP1RN.phl[1571]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn";
connectAttr "MCP1RN.phl[1572]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn";
connectAttr "MCP1RN.phl[1573]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn";
connectAttr "MCP1RN.phl[1574]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn";
connectAttr "MCP1RN.phl[1575]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn";
connectAttr "MCP1RN.phl[1576]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn";
connectAttr "MCP1RN.phl[1577]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn";
connectAttr "MCP1RN.phl[1578]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn";
connectAttr "MCP1RN.phl[1579]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn";
connectAttr "MCP1RN.phl[1580]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn";
connectAttr "MCP1RN.phl[1581]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn";
connectAttr "MCP1RN.phl[1582]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn";
connectAttr "MCP1RN.phl[1583]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn";
connectAttr "MCP1RN.phl[1584]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn";
connectAttr "MCP1RN.phl[1585]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn";
connectAttr "MCP1RN.phl[1586]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn";
connectAttr "MCP1RN.phl[1587]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn";
connectAttr "MCP1RN.phl[1588]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn";
connectAttr "MCP1RN.phl[1589]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn";
connectAttr "MCP1RN.phl[1590]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn";
connectAttr "MCP1RN.phl[1591]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn";
connectAttr "MCP1RN.phl[1592]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn";
connectAttr "MCP1RN.phl[1593]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn";
connectAttr "MCP1RN.phl[1594]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn";
connectAttr "MCP1RN.phl[1595]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn";
connectAttr "MCP1RN.phl[1596]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn";
connectAttr "MCP1RN.phl[1597]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "RIGRN.sr";
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
// End of biped_standard_retarget.ma
