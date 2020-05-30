//Maya ASCII 2018ff09 scene
//Name: rune.ma
//Last modified: Wed, May 20, 2020 01:31:15 PM
//Codeset: 1252
file -rdi 1 -ns "RIG" -rfn "RIGRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_rig.ma";
file -rdi 2 -ns "MDL" -rfn "RIG:MDLRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_model.ma";
file -r -ns "RIG" -dr 1 -rfn "RIGRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_rig.ma";
requires maya "2018ff09";
requires -nodeType "HIKRetargeterNode" -nodeType "HIKSK2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2016.5";
requires -nodeType "vstExportNode" "PVstExportNode.py" "2.1.0";
requires -nodeType "composeMatrix" "matrixNodes" "1.0";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2018.0.0";
requires "stereoCamera" "10.0";
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
	setAttr ".t" -type "double3" -24.831597548383332 320.14848215013723 374.19848466255678 ;
	setAttr ".r" -type "double3" -37.538352729606537 2.6000000000036425 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA1BD692-4DBA-E741-4CC8-1E86A64239DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 445.36891379546074;
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
	rename -uid "D6867E1A-4963-5044-B04A-0680278DBC4D";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "345BA621-4C64-AA0C-9DBF-B69603ED88BC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FEB04413-42EE-ED2F-A423-C6BA35DF8885";
createNode displayLayerManager -n "layerManager";
	rename -uid "D267AA11-4CFC-D035-2C80-CF893E21ECFE";
createNode displayLayer -n "defaultLayer";
	rename -uid "5A16310C-4349-467E-4292-F8956478A955";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "40A341E3-4BB8-A657-BEAE-D293415481EB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BFB9FA2A-4785-AC21-8585-309C86166199";
	setAttr ".g" yes;
createNode reference -n "RIGRN";
	rename -uid "1021DC30-42B9-1684-7449-54AA01A48BED";
	setAttr ".fn[0]" -type "string" "d:/dev/source2/main/content/hlvr/models/characters/gen_man/maya/gen_man_rig.ma";
	setAttr -s 90 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"RIGRN"
		"RIGRN" 0
		"RIG:MDLRN" 0
		"RIGRN" 255
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translate" " -type \"double3\" -94.40937042236328125 -2.6495208740234375 1.2989431619644165"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"rotate" " -type \"double3\" 10.22236689900181972 -16.05946658905629576 -5.21839933325555183"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"rotateZ" " -av"
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
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translate" " -type \"double3\" -7.7827638733651838e-07 -5.045170041739766e-07 4.0388368915955652e-07"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotate" " -type \"double3\" 3.38655198083287434 -0.23310017769757763 2.3425323533024498"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translate" " -type \"double3\" -2.537825821491424e-06 -1.2065095233992906e-06 1.8323418089494226e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotate" " -type \"double3\" 1.3761911956821804 0.22289307594311972 3.14106328563009018"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translate" " -type \"double3\" -1.1866893601109041e-07 -5.332108230504673e-07 8.0856148088059854e-07"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotate" " -type \"double3\" 2.96203723062120439 1.70958554605468804 2.33924433275581078"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translate" " -type \"double3\" -0.17746813595294952 -0.37080639600753784 -0.38240218162536621"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotate" " -type \"double3\" 1.69273498191355309 6.94013739045635791 0.31954046908473122"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 2.82470441351794532 22.05944366683455726 -6.7427013187121565"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotate" " -type \"double3\" -6.2030126959007092e-06 -9.6896450160367453e-06 22.66118427100667532"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL" 
		"rotate" " -type \"double3\" 8.12365200703106538 -0.98180838259118108 14.73219281289906846"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL|RIG:LegFkchildParent_R_NUL|RIG:__RightFoot|RIG:FootFK_0_R_CTRL_HmNUL|RIG:FootFK_0_R_CTRL_SpaceNUL|RIG:FootFK_0_R_CTRL_AnimNUL|RIG:FootFK_0_R_CTRL|RIG:FootFK_1_R_CTRL_HmNUL|RIG:FootFK_1_R_CTRL_SpaceNUL|RIG:FootFK_1_R_CTRL_AnimNUL|RIG:FootFK_1_R_CTRL|RIG:Foot_R_staleSharedShapeParent_SHP" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL|RIG:LegFkchildParent_R_NUL|RIG:__RightFoot|RIG:FootFK_0_R_CTRL_HmNUL|RIG:FootFK_0_R_CTRL_SpaceNUL|RIG:FootFK_0_R_CTRL_AnimNUL|RIG:FootFK_0_R_CTRL|RIG:FootFK_1_R_CTRL_HmNUL|RIG:FootFK_1_R_CTRL_SpaceNUL|RIG:FootFK_1_R_CTRL_AnimNUL|RIG:FootFK_1_R_CTRL|RIG:Foot_R_staleSharedShapeParent_SHP" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL|RIG:LegFkchildParent_R_NUL|RIG:__RightFoot|RIG:FootFK_0_R_CTRL_HmNUL|RIG:FootFK_0_R_CTRL_SpaceNUL|RIG:FootFK_0_R_CTRL_AnimNUL|RIG:FootFK_0_R_CTRL|RIG:FootFK_1_R_CTRL_HmNUL|RIG:FootFK_1_R_CTRL_SpaceNUL|RIG:FootFK_1_R_CTRL_AnimNUL|RIG:FootFK_1_R_CTRL|RIG:Foot_R_staleSharedShapeParent_SHP" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotate" " -type \"double3\" 10.53184022922179075 -9.19531341358464083 -63.53416119967898368"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotate" " -type \"double3\" -0.0012403949290234388 6.2602385443647602e-05 79.02329078393087514"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL" 
		"rotate" " -type \"double3\" -5.50999996631826061 -18.3329344246836925 -7.45026755576885868"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL|RIG:LegFkchildParent_L_NUL|RIG:__LeftFoot|RIG:FootFK_0_L_CTRL_HmNUL|RIG:FootFK_0_L_CTRL_SpaceNUL|RIG:FootFK_0_L_CTRL_AnimNUL|RIG:FootFK_0_L_CTRL|RIG:FootFK_1_L_CTRL_HmNUL|RIG:FootFK_1_L_CTRL_SpaceNUL|RIG:FootFK_1_L_CTRL_AnimNUL|RIG:FootFK_1_L_CTRL|RIG:Foot_L_staleSharedShapeParent_SHP" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL|RIG:LegFkchildParent_L_NUL|RIG:__LeftFoot|RIG:FootFK_0_L_CTRL_HmNUL|RIG:FootFK_0_L_CTRL_SpaceNUL|RIG:FootFK_0_L_CTRL_AnimNUL|RIG:FootFK_0_L_CTRL|RIG:FootFK_1_L_CTRL_HmNUL|RIG:FootFK_1_L_CTRL_SpaceNUL|RIG:FootFK_1_L_CTRL_AnimNUL|RIG:FootFK_1_L_CTRL|RIG:Foot_L_staleSharedShapeParent_SHP" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL|RIG:LegFkchildParent_L_NUL|RIG:__LeftFoot|RIG:FootFK_0_L_CTRL_HmNUL|RIG:FootFK_0_L_CTRL_SpaceNUL|RIG:FootFK_0_L_CTRL_AnimNUL|RIG:FootFK_0_L_CTRL|RIG:FootFK_1_L_CTRL_HmNUL|RIG:FootFK_1_L_CTRL_SpaceNUL|RIG:FootFK_1_L_CTRL_AnimNUL|RIG:FootFK_1_L_CTRL|RIG:Foot_L_staleSharedShapeParent_SHP" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translate" " -type \"double3\" 3.033847519873234e-07 3.9393785300489981e-06 5.7957813623943366e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotate" " -type \"double3\" -5.64555238411713667 0.36847805322761851 0.22518001861735351"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 1.77300561441562587 7.81788254013889983 -12.63342411208521021"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL" 
		"rotateZ" " -av"
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
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 39.0303081045327076 -1.05743713217438917 18.46821020993965234"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotate" " -type \"double3\" -17.84349440202495884 -7.09596650531008688 93.55238196772867809"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL" 
		"rotate" " -type \"double3\" -0.50247334962298995 -4.56120237522840544 3.55273263399591155"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL|RIG:Arm_R_SharedShape_transform_SHP" 
		"ikBlend" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL|RIG:Arm_R_SharedShape_transform_SHP" 
		"fk_vis" " -k 1 1"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL|RIG:Arm_R_SharedShape_transform_SHP" 
		"ik_vis" " -k 1 0"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translate" " -type \"double3\" 8.6790132627356797e-06 5.4491585615323856e-05 9.6559560915920883e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotate" " -type \"double3\" 0.045161656609340579 13.39347656730982017 -2.9247096907739274"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL" 
		"rotate" " -type \"double3\" 2.35945522270317332 7.19531228479402163 -7.77785984064241642"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL" 
		"rotateZ" " -av"
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
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotate" " -type \"double3\" 2.86721477167751981 -1.06553384678504259 -32.10673352038976702"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotate" " -type \"double3\" -15.76922347902100796 -8.15585233758647199 82.18846576078061616"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL" 
		"rotate" " -type \"double3\" -1.38880696285422012 -2.62600421160641373 11.19356676831027464"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL" 
		"rotateZ" " -av"
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
		2 "RIG:CustomRigRetargeterNode1" "connected" " 0"
		2 "RIG:CustomRigRetargeterNode1" "pythonVar" " -type \"string\" \"\""
		3 "RIG:HIKSolverNode1.OutputCharacterState" "RIG:HIKState2GlobalSK1.InputCharacterState" 
		""
		3 "RIG:HIKSolverNode1.OutputCharacterState" "RIG:HIKState2SK1.InputCharacterState" 
		""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.translateX" 
		"RIGRN.placeHolderList[3]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.translateY" 
		"RIGRN.placeHolderList[4]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.translateZ" 
		"RIGRN.placeHolderList[5]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotateX" 
		"RIGRN.placeHolderList[6]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotateY" 
		"RIGRN.placeHolderList[7]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL.rotateZ" 
		"RIGRN.placeHolderList[8]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotateX" 
		"RIGRN.placeHolderList[9]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotateY" 
		"RIGRN.placeHolderList[10]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.rotateZ" 
		"RIGRN.placeHolderList[11]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.translateX" 
		"RIGRN.placeHolderList[12]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.translateY" 
		"RIGRN.placeHolderList[13]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL.translateZ" 
		"RIGRN.placeHolderList[14]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotateX" 
		"RIGRN.placeHolderList[15]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotateY" 
		"RIGRN.placeHolderList[16]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.rotateZ" 
		"RIGRN.placeHolderList[17]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.translateX" 
		"RIGRN.placeHolderList[18]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.translateY" 
		"RIGRN.placeHolderList[19]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL.translateZ" 
		"RIGRN.placeHolderList[20]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotateX" 
		"RIGRN.placeHolderList[21]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotateY" 
		"RIGRN.placeHolderList[22]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.rotateZ" 
		"RIGRN.placeHolderList[23]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.translateX" 
		"RIGRN.placeHolderList[24]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.translateY" 
		"RIGRN.placeHolderList[25]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL.translateZ" 
		"RIGRN.placeHolderList[26]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotateX" 
		"RIGRN.placeHolderList[27]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotateY" 
		"RIGRN.placeHolderList[28]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.rotateZ" 
		"RIGRN.placeHolderList[29]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.translateX" 
		"RIGRN.placeHolderList[30]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.translateY" 
		"RIGRN.placeHolderList[31]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL.translateZ" 
		"RIGRN.placeHolderList[32]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.rotateX" 
		"RIGRN.placeHolderList[33]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.rotateY" 
		"RIGRN.placeHolderList[34]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL.rotateZ" 
		"RIGRN.placeHolderList[35]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.rotateX" 
		"RIGRN.placeHolderList[36]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.rotateY" 
		"RIGRN.placeHolderList[37]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL.rotateZ" 
		"RIGRN.placeHolderList[38]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.rotateX" 
		"RIGRN.placeHolderList[39]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.rotateY" 
		"RIGRN.placeHolderList[40]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL.rotateZ" 
		"RIGRN.placeHolderList[41]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.rotateX" 
		"RIGRN.placeHolderList[42]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.rotateY" 
		"RIGRN.placeHolderList[43]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL.rotateZ" 
		"RIGRN.placeHolderList[44]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.rotateX" 
		"RIGRN.placeHolderList[45]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.rotateY" 
		"RIGRN.placeHolderList[46]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL.rotateZ" 
		"RIGRN.placeHolderList[47]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.rotateX" 
		"RIGRN.placeHolderList[48]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.rotateY" 
		"RIGRN.placeHolderList[49]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL.rotateZ" 
		"RIGRN.placeHolderList[50]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.translateX" 
		"RIGRN.placeHolderList[51]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.translateY" 
		"RIGRN.placeHolderList[52]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.translateZ" 
		"RIGRN.placeHolderList[53]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotateX" 
		"RIGRN.placeHolderList[54]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotateY" 
		"RIGRN.placeHolderList[55]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL.rotateZ" 
		"RIGRN.placeHolderList[56]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.rotateX" 
		"RIGRN.placeHolderList[57]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.rotateY" 
		"RIGRN.placeHolderList[58]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL.rotateZ" 
		"RIGRN.placeHolderList[59]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.rotateX" 
		"RIGRN.placeHolderList[60]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.rotateY" 
		"RIGRN.placeHolderList[61]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL.rotateZ" 
		"RIGRN.placeHolderList[62]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.rotateX" 
		"RIGRN.placeHolderList[63]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.rotateY" 
		"RIGRN.placeHolderList[64]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL.rotateZ" 
		"RIGRN.placeHolderList[65]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.rotateX" 
		"RIGRN.placeHolderList[66]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.rotateY" 
		"RIGRN.placeHolderList[67]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL.rotateZ" 
		"RIGRN.placeHolderList[68]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotateX" 
		"RIGRN.placeHolderList[69]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotateY" 
		"RIGRN.placeHolderList[70]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.rotateZ" 
		"RIGRN.placeHolderList[71]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.translateX" 
		"RIGRN.placeHolderList[72]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.translateY" 
		"RIGRN.placeHolderList[73]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL.translateZ" 
		"RIGRN.placeHolderList[74]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.rotateX" 
		"RIGRN.placeHolderList[75]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.rotateY" 
		"RIGRN.placeHolderList[76]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL.rotateZ" 
		"RIGRN.placeHolderList[77]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.rotateX" 
		"RIGRN.placeHolderList[78]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.rotateY" 
		"RIGRN.placeHolderList[79]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL.rotateZ" 
		"RIGRN.placeHolderList[80]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.rotateX" 
		"RIGRN.placeHolderList[81]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.rotateY" 
		"RIGRN.placeHolderList[82]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL.rotateZ" 
		"RIGRN.placeHolderList[83]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.rotateX" 
		"RIGRN.placeHolderList[84]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.rotateY" 
		"RIGRN.placeHolderList[85]" ""
		5 4 "RIGRN" "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL.rotateZ" 
		"RIGRN.placeHolderList[86]" ""
		5 3 "RIGRN" "RIG:GEN_MAN_CHAR.OutputCharacterDefinition" "RIGRN.placeHolderList[87]" 
		""
		5 3 "RIGRN" "RIG:HIKproperties1.OutputPropertySetState" "RIGRN.placeHolderList[88]" 
		""
		5 4 "RIGRN" "RIG:HIKState2SK1.InputCharacterState" "RIGRN.placeHolderList[89]" 
		""
		5 4 "RIGRN" "RIG:HIKState2GlobalSK1.InputCharacterState" "RIGRN.placeHolderList[90]" 
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
		+ "            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 0\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 1\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2200\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
		+ "            -pluginObjects \"vPlanarDisplay\" 0 \n            -pluginObjects \"vRigWidget\" 1 \n            -pluginObjects \"vstAttachment\" 0 \n            -pluginObjects \"vChainDisplay\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 1\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 1\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 1\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 1024\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"vPlanarDisplay\" 1 \n                -pluginObjects \"vRigWidget\" 1 \n                -pluginObjects \"vstAttachment\" 1 \n                -pluginObjects \"vChainDisplay\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2200\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2200\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "423FBE93-4A21-4C2D-F83F-FAAD3C38F3B6";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 18 -ast 0 -aet 18 ";
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
createNode composeMatrix -n "composeMatrix23";
	rename -uid "E85DDC2E-4887-7C68-01D9-D581D7CF9720";
	setAttr ".ir" -type "double3" -1.6932376638578717e-06 0 -1.4874164662614932e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999996625 -2.5960314684641911e-07 0 0 2.5960314684641901e-07 0.99999999999996592 -2.9552572253096849e-08 0
		 7.6719407543101132e-15 2.9552572253095856e-08 0.99999999999999956 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix24";
	rename -uid "27F40C87-4321-5396-D8A7-DB8E33D210A1";
	setAttr ".ir" -type "double3" -179.99998474121097 0 0 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 -0.99999999999996447 -2.6631610884375994e-07 0
		 0 2.6631610884375994e-07 -0.99999999999996447 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix25";
	rename -uid "96774F28-4192-0137-78D3-768B251653CF";
	setAttr ".ir" -type "double3" -1.866872707978473e-06 -4.5198401019625725e-29 1.39768771987292e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997025 2.4394252626474391e-07 7.8886090522101181e-31 0
		 -2.439425262647438e-07 0.99999999999996969 -3.2583075469846961e-08 0 -7.9483977435892776e-15 3.2583075469845995e-08 0.99999999999999944 0
		 0 0 0 1;
createNode composeMatrix -n "composeMatrix26";
	rename -uid "B7CC0941-4574-DC0F-1E50-0E9D205DF882";
	setAttr ".ir" -type "double3" -1.6932374364841962e-06 4.5198401019625725e-29 -1.4952180208638309e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999996592 -2.6096477499226822e-07 0 0 2.6096477499226811e-07 0.99999999999996547 -2.9552568284677587e-08 0
		 7.7121793328545278e-15 2.9552568284676581e-08 0.99999999999999956 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix27";
	rename -uid "172B667F-4075-7C67-1887-768F020EC491";
createNode composeMatrix -n "composeMatrix28";
	rename -uid "D19F797D-46B8-CEE7-3269-D88956969BC5";
	setAttr ".ir" -type "double3" 0 0 1.2863396477769129e-05 ;
	setAttr ".omat" -type "matrix" 0.9999999999999748 2.2450862152651101e-07 0 0 -2.2450862152651101e-07 0.9999999999999748 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix29";
	rename -uid "1D964329-4B4A-4D29-F716-A2B6FF5B7773";
	setAttr ".ir" -type "double3" 0 0 -1.282386074308306e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997491 -2.2381859278404417e-07 0 0 2.2381859278404417e-07 0.99999999999997491 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix30";
	rename -uid "B1B18614-47C3-AED9-9A7F-02B4146E518E";
createNode composeMatrix -n "composeMatrix31";
	rename -uid "7AEA5263-4A46-225A-04D4-548BFE5DFE69";
	setAttr ".ir" -type "double3" -179.99998474121097 0 0 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 -0.99999999999996447 -2.6631610884375994e-07 0
		 0 2.6631610884375994e-07 -0.99999999999996447 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix32";
	rename -uid "BDC09800-4590-F984-A922-C69600444D21";
	setAttr ".ir" -type "double3" 0 0 1.274955957342172e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997524 2.2252179273537092e-07 0 0 -2.2252179273537092e-07 0.99999999999997524 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix33";
	rename -uid "190ACDE3-4E70-EE82-BA76-DABE61918A93";
	setAttr ".ir" -type "double3" 0 0 -3.6432768411032157e-06 ;
	setAttr ".omat" -type "matrix" 0.999999999999998 -6.3587176438909354e-08 0 0 6.3587176438909354e-08 0.999999999999998 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix34";
	rename -uid "1ACC1F33-4882-5C7C-9F73-FD82033F4A52";
createNode composeMatrix -n "composeMatrix35";
	rename -uid "DA73F834-4A21-1DE1-EFC6-9F9659F058D7";
	setAttr ".ir" -type "double3" 0 0 -1.2937699466419872e-05 ;
	setAttr ".omat" -type "matrix" 0.99999999999997446 -2.258054533225384e-07 0 0 2.258054533225384e-07 0.99999999999997446 0 0
		 0 0 1 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix36";
	rename -uid "82110CCD-453C-C688-5274-E88D64F7B795";
createNode composeMatrix -n "composeMatrix37";
	rename -uid "2A29AB1C-44A3-BA39-5B41-3495DD98731D";
createNode composeMatrix -n "composeMatrix38";
	rename -uid "5EED54DE-47CA-6E87-3F01-01AFE463CA79";
createNode composeMatrix -n "composeMatrix39";
	rename -uid "524F9AD3-48A4-50A7-D7E8-4788EEE9F8E2";
createNode composeMatrix -n "composeMatrix40";
	rename -uid "DF1D2332-4F96-FEA4-1F58-848DE1E2E27C";
createNode composeMatrix -n "composeMatrix41";
	rename -uid "8A5FE72E-431F-E0D5-A1B4-92BAB47A7050";
	setAttr ".ir" -type "double3" -90 -90 0 ;
	setAttr ".omat" -type "matrix" 2.2204460492503131e-16 0 1 0 1 2.2204460492503131e-16 -2.2204460492503131e-16 0
		 -2.2204460492503131e-16 1 0 0 0 0 0 1;
createNode composeMatrix -n "composeMatrix42";
	rename -uid "57EC2F14-46E5-25AE-A119-2A9DC02C3E1E";
	setAttr ".ir" -type "double3" -90 -90 0 ;
	setAttr ".omat" -type "matrix" 2.2204460492503131e-16 0 1 0 1 2.2204460492503131e-16 -2.2204460492503131e-16 0
		 -2.2204460492503131e-16 1 0 0 0 0 0 1;
createNode HIKRetargeterNode -n "HIKRetargeterNode1";
	rename -uid "9E1BB13F-436C-A0D9-2164-F9AE94DCFBED";
	setAttr ".ihi" 0;
	setAttr ".InputCharacterDefinitionSrc" -type "HIKCharacter" ;
	setAttr ".InputSrcPropertySetState" -type "HIKPropertySetState" ;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKSK2State -n "HIKSK2State1";
	rename -uid "CC453916-4FED-B106-0DFB-BD9780E3E39B";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
	setAttr ".InputCharacterDefinition" -type "HIKCharacter" ;
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -94.409370422363281 0 1.2989397048950195 1;
	setAttr ".HipsGX" -type "matrix" 0.04061809402044525 0.98451265241613217 0.1705432721355436 0
		 -0.28725655771067793 -0.15197217848179845 0.94572095621261776 0 0.95699207963825805 -0.087403056010921021 0.2766348953216019 0
		 -94.409366990567477 38.804294183039723 -1.2871560976361764 1;
	setAttr ".LeftUpLegGX" -type "matrix" 0.11381559870374847 -0.5408704646449819 0.83336975585056416 0
		 0.17943010072058516 -0.81383630768922444 -0.55269820267680492 0 0.97716469873154321 0.21243729606990261 0.0044211753415417943 0
		 -90.772243850787021 35.663665400889336 -0.14388625960200585 1;
	setAttr ".LeftLegGX" -type "matrix" 0.17349073188446251 -0.78566013257591749 -0.59383425467969186 0
		 -0.12267897471455193 0.58104090948583198 -0.80457524860441987 0 0.9771646919087793 0.21243732625098902 0.0044212331029983608 0
		 -88.803294886778161 26.306887055423829 14.272961539346152 1;
	setAttr ".LeftFootGX" -type "matrix" -0.1452252199893983 -0.88934403290439734 0.43356294423805836 0
		 0.0079110552456910094 0.43715078283374759 0.89935343901757669 0 -0.98936699494370195 0.13403874143390099 -0.056449668828836529 0
		 -85.859063864838902 12.973836079686631 4.1952987546410281 1;
	setAttr ".RightUpLegGX" -type "matrix" -0.18544511819955747 0.96977057392389887 -0.158603726586937 0
		 -0.45461948216273901 0.058420945820946077 0.88876775342463266 0 0.87116659404159591 0.23692198513582025 0.43004271693085 0
		 -98.564968235613449 36.375381086979331 -2.3965074781273561 1;
	setAttr ".RightLegGX" -type "matrix" -0.41955535960141555 0.81416970979607795 0.40137387045035311 0
		 -0.25503345987476173 -0.53009023440341962 0.80867934172602418 0 0.87116659404159591 0.23692198513582025 0.43004271693085 0
		 -95.356862652694588 19.59886599291417 0.3472420284083646 1;
	setAttr ".RightFootGX" -type "matrix" 0.20087587093435683 0.58205704497702415 -0.78794573472351392 0
		 0.32619180560404104 -0.7981829211000212 -0.50646118352842473 0 -0.92371412809003772 -0.15528561059174831 -0.35019792790650395 0
		 -88.23679210092439 5.7819988663039119 -6.4642688541448052 1;
	setAttr ".SpineGX" -type "matrix" -0.11253893450425734 0.96013552044811334 0.25588038337175506 0
		 -0.26189677739213368 -0.27707215016733416 0.92446801004321677 0 0.95851190196692992 0.037024397030608405 0.28263780322571558 0
		 -94.437908566130787 39.652850675044512 -0.92033151115665857 1;
	setAttr ".LeftArmGX" -type "matrix" 0.5812510079572194 -0.54207652087145564 -0.60687750927894357 0
		 0.18957893933716902 -0.63506850299973827 0.74883097041820124 0 -0.79133247848708343 -0.5503099508618472 -0.26636791562408713 0
		 -89.303905648235542 54.390929576937758 1.9285250290765232 1;
	setAttr ".LeftForeArmGX" -type "matrix" -0.040469741860431341 -0.50272931894781525 0.86349605202572643 0
		 -0.43730682832239576 0.78595037530555056 0.43708665669369329 0 -0.89840132340527912 -0.35992393561324793 -0.25165417277747193 0
		 -82.545115953309477 48.087653496853733 -5.1282570315961031 1;
	setAttr ".LeftHandGX" -type "matrix" -0.2328477769705013 -0.70066449435991673 0.6744265557518162 0
		 -0.82778713186291053 -0.22119607768546751 -0.51559747821216262 0 0.51044135518399436 -0.67833735085127556 -0.5284960372207167 0
		 -82.98818605686327 42.583583358734387 4.3256243444779692 1;
	setAttr ".RightArmGX" -type "matrix" 0.44763271364073143 0.88546843809147746 -0.12478220555220969 0
		 -0.62303657286026115 0.2087339460148257 -0.75382728038962654 0 -0.64144398240000322 0.41518162883841397 0.64511536372799694 0
		 -102.62954300305151 52.919082672420032 0.30033110429612275 1;
	setAttr ".RightForeArmGX" -type "matrix" -0.79828944649220679 -0.1940912461871247 -0.57014256793603413 0
		 0.026053816011045838 -0.95689248397406979 0.2892714517286431 0 -0.60171019460403785 0.21606795752138461 0.76893398900172727 0
		 -107.83462146749596 42.62284058000126 1.7512969358970449 1;
	setAttr ".RightHandGX" -type "matrix" -0.875242132101828 0.024246235605964957 -0.48307694030328807 0
		 -0.45358883204840766 0.30565651241323238 0.83715665670192285 0 0.16795351033785519 0.95183308225671515 -0.25652563592528649 0
		 -99.094647401224151 44.747824519195078 7.9934452063704802 1;
	setAttr ".HeadGX" -type "matrix" -0.059297190741779034 0.95713112065487682 0.28352047729233248 0
		 0.012157741972167457 -0.28330673172316884 0.95895228508538144 0 0.9981663350766099 0.060310145367718747 0.0051627401109654303 0
		 -97.361469461832783 62.704631426834339 4.8708670615755523 1;
	setAttr ".LeftToeBaseGX" -type "matrix" -0.1191635054693657 -0.57460790328808475 0.80970724119469539 0
		 0.076190704928496861 0.80782130582130018 0.58448243287858404 0 -0.9899469861799427 0.13134114107940736 -0.052483037385502106 0
		 -86.747689971188379 7.5320417058492231 6.8482207500993297 1;
	setAttr ".RightToeBaseGX" -type "matrix" 0.33640560939746039 0.13260623137335062 -0.9323340889224635 0
		 0.19130689048768795 -0.97901536111714915 -0.070218205250420038 0 -0.92208076632031233 -0.15474013731936462 -0.35471474494941607 0
		 -89.465933769276177 2.2204582553628223 -1.6429199720532219 1;
	setAttr ".LeftShoulderGX" -type "matrix" 0.94602613202658747 -0.16086881012138621 -0.281346376292539 0
		 0.21174075370641793 -0.35042282403373809 0.9123429714838921 0 -0.24535771995731409 -0.92267278616330073 -0.29744666569151379 0
		 -95.607670121343745 55.462863476237473 3.8032526607178871 1;
	setAttr ".RightShoulderGX" -type "matrix" 0.79776790219951088 0.3582541945788294 0.48499516109634122 0
		 0.34976915136543774 0.38023278640687513 -0.85620357911793699 0 -0.49114958512992068 0.85268807908164013 0.17803124674834175 0
		 -97.313694280040679 55.306281505205575 3.5320576853513157 1;
	setAttr ".NeckGX" -type "matrix" -0.1663432359270168 0.8362842788362268 0.52245433564350896 0
		 -0.17984120431101028 -0.54667919235081708 0.81780132176624876 0 0.96952930285437688 0.042076901288351946 0.24133475772187496 0
		 -96.40251560665304 57.883536843728912 1.8589682543714854 1;
	setAttr ".Spine1GX" -type "matrix" -0.1053023542397315 0.98689362817926318 0.12227992824147246 0
		 -0.22477156118639252 -0.1434020502737986 0.9638016379209482 0 0.96870488771008156 0.074005531120589385 0.23692619502739173 0
		 -94.88151965993903 43.43763290579296 0.08833195826568252 1;
	setAttr ".Spine2GX" -type "matrix" -0.076797110184495879 0.99695084600954431 -0.013828033416341158 0
		 -0.21390228790008817 -0.0029280819948562685 0.97685067311587548 0 0.97383161537219465 0.077977156761993183 0.21347493512095847 0
		 -95.33023483515808 47.643012413197269 0.60939504726657667 1;
	setAttr ".Spine3GX" -type "matrix" -0.12856932041329744 0.95820711671813352 0.25555635644449021 0
		 -0.12674718045111044 -0.27145891918029791 0.9540677163834641 0 0.98356752797972968 0.090272790297990541 0.15635133909135085 0
		 -95.737011212457645 52.92363709706283 0.53614929389526855 1;
	setAttr ".LeftHandThumb1GX" -type "matrix" -0.48493471545325206 -0.47195462850697434 0.73627247020319686 0
		 0.36920464696244015 -0.87366575069025232 -0.31685341205702339 0 0.79279647477118254 0.11818199821327026 0.59791869421243649 0
		 -84.22872566879326 42.465591032871224 5.2804853439441892 1;
	setAttr ".LeftHandThumb2GX" -type "matrix" -0.060864557481580844 -0.77920196345183212 0.62381071311366632 0
		 0.55001325369153498 -0.5477076447097502 -0.63047740379029404 0 0.83293512736960706 0.30473043182345183 0.46190739062551256 0
		 -85.104404866660019 41.613349563681979 6.6100274885710464 1;
	setAttr ".LeftHandThumb3GX" -type "matrix" 0.25461366410919789 -0.90113104320854254 0.35090557848910353 0
		 0.56769272748873156 -0.15447901519901716 -0.80861684438276882 0 0.78287728872748275 0.40509144255220386 0.47223307165602124 0
		 -85.19210489059077 40.490527752137751 7.5089361558793772 1;
	setAttr ".LeftHandIndex1GX" -type "matrix" -0.33566978868446878 -0.77949195368437973 0.52888598175508295 0
		 -0.6361125265977865 -0.22653116185539274 -0.73759371351295189 0 0.69475672361666019 -0.58401825404507124 -0.41980444725084887 0
		 -84.184933556820283 40.960543067371404 7.8374201557681999 1;
	setAttr ".LeftHandIndex2GX" -type "matrix" -0.57241612833003097 -0.35789085438484902 -0.73773566565223114 0
		 0.21990124336381997 0.79975504526148122 -0.55860120904438804 0 0.78992608464001512 -0.48198133151242362 -0.37909204275321778 0
		 -84.838376554621334 39.443120281671511 8.8669943393034707 1;
	setAttr ".LeftHandIndex3GX" -type "matrix" -0.14423278976584386 0.23211179962043035 -0.96193607627187316 0
		 0.48072203069549491 0.86611862207650714 0.13691187565836774 0 0.8649296107547495 -0.44267668220639039 -0.23650396079216252 0
		 -85.574422304899613 38.982919020077688 7.9183745104950836 1;
	setAttr ".LeftHandMiddle1GX" -type "matrix" -0.59885844501385666 -0.79512881093960941 0.095596740788316342 0
		 -0.46715114523616186 0.24986938529703265 -0.84813624954710276 0 0.65049086875999174 -0.55257168250376876 -0.52108172617625559 0
		 -83.491466937511575 40.180241053559385 7.3540257662543507 1;
	setAttr ".LeftHandMiddle2GX" -type "matrix" -0.67962660425964005 -0.14388735864228647 -0.71930807503145466 0
		 0.32511931293342999 0.81992106474500293 -0.4711972834653389 0 0.65757517527671749 -0.55409915683960997 -0.51045960981200889 0
		 -84.816227259725395 38.421303509328553 7.5654991476061095 1;
	setAttr ".LeftHandMiddle3GX" -type "matrix" -0.33236560123699227 0.32711082041589801 -0.88460916929363509 0
		 0.64145922539790012 0.76599338039782738 0.042239831186159801 0 0.69142126387788894 -0.55340115749461294 -0.46441769425930152 0
		 -85.789119923409231 38.21533273398758 6.5358078950818825 1;
	setAttr ".LeftHandRing1GX" -type "matrix" -0.51021028977814242 -0.85765637683418849 0.064117076353778724 0
		 -0.66213990773521869 0.34413376840125709 -0.66568963641500867 0 0.54886811055926776 -0.38209617731875095 -0.74346910392396104 0
		 -83.20806546690433 39.62599930903604 6.5327717708406139 1;
	setAttr ".LeftHandRing2GX" -type "matrix" -0.7250237428358095 -0.22647997007567505 -0.65042093714676463 0
		 0.043131562058466022 0.92760098270571734 -0.37107423143864932 0 0.687371981301792 -0.29709129916224242 -0.66276430145515564 0
		 -84.174313177883207 38.001739252738503 6.6541935636000851 1;
	setAttr ".LeftHandRing3GX" -type "matrix" -0.47886367614889747 0.27723191943579684 -0.8329658111297894 0
		 0.37981515172895708 0.92085464078905666 0.088131612117142877 0 0.79147332878769427 -0.27417000817595122 -0.54626072203163734 0
		 -85.135631774116675 37.701446395156395 5.7917932313795131 1;
	setAttr ".LeftHandPinky1GX" -type "matrix" -0.53917960160143374 -0.8359603228465351 -0.1022530969860373 0
		 -0.75840712582968639 0.53474138275176497 -0.37265303576314129 0 0.36620211455926099 -0.12337743796597084 -0.92231991146959369 0
		 -83.084713368549686 39.171477966974521 5.5608457538501588 1;
	setAttr ".LeftHandPinky2GX" -type "matrix" -0.73252496400267764 -0.35128422500679429 -0.58310082350675174 0
		 -0.29776238154842077 0.93562398024588189 -0.1895925413181283 0 0.61216398231804614 0.034744220385977381 -0.78996714988807093 0
		 -83.934071011652321 37.854610176752203 5.3997724898742101 1;
	setAttr ".LeftHandPinky3GX" -type "matrix" -0.62971484959550938 0.030514486458350004 -0.7762268188584367 0
		 -0.051714614703694525 0.99536486098396948 0.081082625416370568 0 0.77510309432033242 0.091201204128817048 -0.62521798881710078 0
		 -84.675487594210665 37.499061493337841 4.8095856109418431 1;
	setAttr ".RightHandThumb1GX" -type "matrix" -0.97863834427189744 -0.19425751102497615 -0.067312781335647665 0
		 -0.15785079612989583 0.91975092922459012 -0.35936242757369707 0 0.13171984391851335 -0.34106047499070247 -0.93076722928839695 0
		 -97.773854230780216 45.55869941955995 7.7432888787056902 1;
	setAttr ".RightHandThumb2GX" -type "matrix" -0.84950784209696595 0.23501761523140902 -0.47233795818957619 0
		 0.39037070361357301 0.88226113082392543 -0.26310836322232722 0 0.35489032105144891 -0.40789951896052667 -0.8412317412317315 0
		 -96.006665158123724 45.909479846145935 7.8648362184428242 1;
	setAttr ".RightHandThumb3GX" -type "matrix" -0.61563074038911803 0.50925966603169881 -0.60137624166675319 0
		 0.69356119568730901 0.71245561424079007 -0.10667645276052629 0 0.37412786494023254 -0.48276452882338033 -0.79181232017770664 0
		 -94.782536415512155 45.570826191675401 8.5454684182295502 1;
	setAttr ".RightHandIndex1GX" -type "matrix" -0.9089534946451916 0.41672121477541368 0.012123272181927477 0
		 0.19837203199420222 0.40674701405265029 0.89174290212019303 0 0.36667708067833343 0.81295774534434184 -0.45237995400974507 0
		 -95.762156613866154 46.097056402224354 9.8571219051966796 1;
	setAttr ".RightHandIndex2GX" -type "matrix" 0.096330781528851328 0.54386189008452823 0.83362738981137441 0
		 0.90310058731017029 -0.39988537536780011 0.156528003139946 0 0.41848501733044924 0.73777092046287462 -0.52968326308209546 0
		 -93.992709191351949 45.285830383717531 9.8335214038379561 1;
	setAttr ".RightHandIndex3GX" -type "matrix" 0.58735068068166796 0.33810466316179233 0.73532606009241408 0
		 0.70608341708877265 -0.6581207264744755 -0.26138729406180161 0 0.39555705785009587 0.67272754227321385 -0.62527775256442419 0
		 -94.116572395896839 44.586493457459873 8.761597170610429 1;
	setAttr ".RightHandMiddle1GX" -type "matrix" -0.8784371269386354 0.41516563769317932 0.2366129905449226 0
		 0.34531305111509925 0.20923279113644752 0.9148675178777913 0 0.33031432751810375 0.8853590604794247 -0.32715993277219357 0
		 -95.970609931442823 45.058229944636068 10.305272178938123 1;
	setAttr ".RightHandMiddle2GX" -type "matrix" 0.046793949682462019 0.34438429704725448 0.9376618698765472 0
		 0.94392971896224576 -0.32235786487700968 0.071288797239055846 0 0.32681342067450508 0.88175102092325519 -0.34015897043562665 0
		 -94.027380438386771 44.139826351829385 9.781844329823155 1;
	setAttr ".RightHandMiddle3GX" -type "matrix" 0.69677476130609894 0.07213159169441645 0.71365528055279981 0
		 0.64573405524002869 -0.49626644978286061 -0.5803007622376517 0 0.3123049796951346 0.865169958340963 -0.39236354230604265 0
		 -94.09436644202404 43.646837839338176 8.4395706129168069 1;
	setAttr ".RightHandRing1GX" -type "matrix" -0.84743038429817807 0.50233640048765515 0.17181351667825348 0
		 0.18890625139868855 -0.01713879397631362 0.98184555298862208 0 0.4961614373878106 0.8645024016659193 -0.080370551591478712 0
		 -96.192319334909115 44.059996249068313 10.17760441279386 1;
	setAttr ".RightHandRing2GX" -type "matrix" -0.068310249567763021 0.36211395186620621 0.92962802319784144 0
		 0.80426674171017509 -0.53137153391248704 0.26608138064582687 0 0.59032933431808621 0.76584457860062416 -0.25493795023808652 0
		 -94.587422737086769 43.108652613099004 9.8522155542804342 1;
	setAttr ".RightHandRing3GX" -type "matrix" 0.57305332440740053 0.05118148639434833 0.81791829838688179 0
		 0.59289160963115783 -0.71490676451492352 -0.37065868029735677 0 0.56576446213473142 0.69734408544223536 -0.44002477189827616 0
		 -94.49684652763689 42.628527189097149 8.619614191141558 1;
	setAttr ".RightHandPinky1GX" -type "matrix" -0.75982317125016186 0.57871914785044232 0.29623115356526031 0
		 0.087030916978775144 -0.36100531657302104 0.92849382383290346 0 0.64427817588459502 0.73127239064337024 0.22393374636608204 0
		 -96.434483852649336 43.073851322517434 9.8097321791996919 1;
	setAttr ".RightHandPinky2GX" -type "matrix" -0.18857546641393486 0.42370254736497082 0.885954538801626 0
		 0.52483071293457484 -0.71902654283885814 0.45558045771716937 0 0.83005542961139245 0.55088744952996849 -0.086781344325916471 0
		 -95.237553941952115 42.162203480024637 9.3430859894070917 1;
	setAttr ".RightHandPinky3GX" -type "matrix" 0.33565051205993274 0.19106245495453095 0.92240656549086508 0
		 0.46703462622834879 -0.8841406599947792 0.013189057879248166 0 0.81805708337355776 0.42636889151384294 -0.38599504749621494 0
		 -95.046689447671653 41.733355410027514 8.4463740202224269 1;
	setAttr ".LeftInHandIndexGX" -type "matrix" -0.16120703862640728 -0.54054249182204317 0.82572859323623826 0
		 -0.76168719241263638 -0.46388518210020624 -0.4523750200247737 0 0.62757067594648142 -0.70187236814233944 -0.33694246620208201 0
		 -83.660694329985191 42.718383374351369 5.1521504009881633 1;
	setAttr ".LeftInHandMiddleGX" -type "matrix" -0.075979776641055791 -0.6491608414695561 0.75684692999583003 0
		 -0.80389540893844758 -0.40917375000835227 -0.43165844575519313 0 0.58989765640258485 -0.64122308458651112 -0.49076848998697797 0
		 -83.244999163805218 42.286105657813586 4.8988231282659447 1;
	setAttr ".LeftInHandRingGX" -type "matrix" -0.084023881340500428 -0.73776310292415248 0.66981011587479311 0
		 -0.92442920842059484 -0.19321632486611984 -0.3287827404595669 0 0.37198202373683403 -0.64681763718142093 -0.66577497568449784 0
		 -82.950710512180237 41.885688309817382 4.4812134777195798 1;
	setAttr ".LeftInHandPinkyGX" -type "matrix" -0.076156411277520944 -0.80176962018330578 0.5927610624631533 0
		 -0.99285012289694907 0.0061739943938519115 -0.11920786575028661 0 0.09191754176892869 -0.59760133696666207 -0.79650725519031873 0
		 -82.882023049419089 41.305358424117379 3.9832348234064083 1;
	setAttr ".RightInHandIndexGX" -type "matrix" -0.79893976931521538 -0.17389012067257631 -0.57572492930585073 0
		 -0.58330691142886693 0.45716726246757489 0.67138002741161396 0 0.14645610968856218 0.8722157830311249 -0.46668001432061912 0
		 -98.360310549390022 45.531569299143719 7.9848636298944733 1;
	setAttr ".RightInHandMiddleGX" -type "matrix" -0.7767320343046481 -0.030827866083033045 -0.62907629867745751 0
		 -0.58779010852041236 0.39427683802429869 0.70643369350783569 0 0.2262523706185755 0.91847450572692901 -0.32436776522821681 0
		 -98.490307839999602 44.958227913536639 8.2645653103301004 1;
	setAttr ".RightInHandRingGX" -type "matrix" -0.79646507466588334 0.088123590047799266 -0.59822873360827178 0
		 -0.58424403825680515 0.14290556407055088 0.79889730473888743 0 0.15589191319260304 0.98580537259378131 -0.06233360864240825 0
		 -98.6318102175983 44.329905324628669 8.3452909530437775 1;
	setAttr ".RightInHandPinkyGX" -type "matrix" -0.79531423578759464 0.18629401699425771 -0.57686203340637521 0
		 -0.60347745443274625 -0.15327152973792274 0.78251057511267541 0 0.05736051207030339 0.97046503152042496 0.2343232686932569 0
		 -98.551182802636816 43.569662918842596 8.2744348049037413 1;
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
	rename -uid "7C8B9C8F-4F7B-C6B5-3F35-34873F73ABE7";
	setAttr ".ei[0].exportFile" -type "string" "rune";
	setAttr ".ei[0].t" 2;
	setAttr ".ei[0].fe" 18;
createNode animCurveTA -n "Body_CTRL_rotateX";
	rename -uid "E593FFD7-46F1-C4E5-4714-F4BB94B5FB1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 10.203311260913152 1 9.2289549093085466
		 2 8.6903977555482861 3 8.6949463131575886 4 9.7470350791101232 5 10.920249546687025
		 6 11.282268208372638 7 10.15643423869574 8 8.3273699098296525 9 6.9294890305275043
		 10 6.5050734474468994 11 7.2073941101564785 12 8.4561441038869827 13 9.8877805782528085
		 14 11.081911915171952 15 11.68876742751811 16 11.572782244197988 17 11.049660458376614
		 18 10.22236689900182;
createNode animCurveTA -n "Body_CTRL_rotateY";
	rename -uid "49096F72-4DDF-ACD3-9EDF-9DBE6F661662";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -16.103273002370873 1 -18.221628855717579
		 2 -19.35327415481861 3 -19.139026886038099 4 -17.60298915083964 5 -15.085992712377015
		 6 -12.139024943871158 7 -9.3687285221502439 8 -6.5910462509185157 9 -3.8215950763649889
		 10 -1.5949458593826569 11 -0.53340109925727475 12 -0.89043981442643727 13 -2.521193869449005
		 14 -5.1177912434375585 15 -8.1446646441947461 16 -10.995278004461591 17 -13.580617850356942
		 18 -16.059466589056296;
createNode animCurveTA -n "Body_CTRL_rotateZ";
	rename -uid "E097DEAC-46C6-5B2D-088C-499715341B2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.2217508472687078 1 -3.9242651961022363
		 2 -0.70192664644032565 3 2.9059722304841018 4 4.6367721058981859 5 4.9803711794999765
		 6 5.5281453666381744 7 8.3517104838295939 8 11.735372404604398 9 13.011451502395785
		 10 11.472087310048144 11 8.436482823948328 12 5.3906177094595984 13 3.6641621297389522
		 14 3.0875900120112267 15 2.4901065565452432 16 0.14934311886020898 17 -3.3052120922510402
		 18 -5.2183993332555518;
createNode animCurveTL -n "Body_CTRL_translateX";
	rename -uid "2808BA55-47E4-D818-C395-4583F1CA125B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.0033676624298095703 1 -5.6596207618713379
		 2 -11.350760459899902 3 -16.844446182250977 4 -22.19206428527832 5 -27.543050765991211
		 6 -32.860710144042969 7 -38.201591491699219 8 -43.574771881103516 9 -48.7928466796875
		 10 -53.825729370117188 11 -58.745536804199219 12 -63.567440032958984 13 -68.402793884277344
		 14 -73.356788635253906 15 -78.421600341796875 16 -83.649871826171875 17 -89.028335571289063
		 18 -94.409370422363281;
createNode animCurveTL -n "Body_CTRL_translateY";
	rename -uid "A4639D17-4D78-FCCE-B25E-18934D687A19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.6330604553222656 1 -1.5877876281738281
		 2 -0.89479827880859375 3 -0.94860076904296875 4 -1.480804443359375 5 -2.3666419982910156
		 6 -3.1444320678710938 7 -3.67486572265625 8 -3.8031768798828125 9 -3.2453498840332031
		 10 -2.3604736328125 11 -1.6134490966796875 12 -1.5620498657226563 13 -1.9336357116699219
		 14 -2.4532928466796875 15 -2.967193603515625 16 -3.3329887390136719 17 -3.2816543579101563
		 18 -2.6495208740234375;
createNode animCurveTL -n "Body_CTRL_translateZ";
	rename -uid "428265F6-4F68-52CF-F300-63AB3D06040E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.2986022233963013 1 1.2249794006347656
		 2 1.2137422561645508 3 1.210053563117981 4 1.1827045679092407 5 1.1337031126022339
		 6 1.0682553052902222 7 0.99057352542877197 8 0.9164588451385498 9 0.8732304573059082
		 10 0.88675296306610107 11 1.0060806274414063 12 1.2367477416992188 13 1.519813060760498
		 14 1.7594435214996338 15 1.8568859100341797 16 1.7405171394348145 17 1.4974714517593384
		 18 1.2989431619644165;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateX";
	rename -uid "A7820433-4F0F-7347-A7C1-43B719D85013";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.17697478830814362 1 -0.15322534739971161
		 2 -0.14830003678798676 3 -0.16726057231426239 4 -0.20352268218994141 5 -0.23292739689350128
		 6 -0.24390527606010437 7 -0.2367737889289856 8 -0.22279873490333557 9 -0.20024576783180237
		 10 -0.17038926482200623 11 -0.15746481716632843 12 -0.16676098108291626 13 -0.19305844604969025
		 14 -0.22037427127361298 15 -0.23373816907405853 16 -0.22214891016483307 17 -0.20060639083385468
		 18 -0.17746813595294952;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateY";
	rename -uid "25B20156-4426-5550-3A94-DF8754DBD1C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.36965638399124146 1 -0.33333778381347656
		 2 -0.3541092574596405 3 -0.40872099995613098 4 -0.47752067446708679 5 -0.52839547395706177
		 6 -0.5427737832069397 7 -0.50340783596038818 8 -0.4202304482460022 9 -0.3370438814163208
		 10 -0.29805752635002136 11 -0.32383927702903748 12 -0.38312357664108276 13 -0.45018801093101501
		 14 -0.50565654039382935 15 -0.53246200084686279 16 -0.50960671901702881 17 -0.44448083639144897
		 18 -0.37080639600753784;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateZ";
	rename -uid "8AFF8A00-449E-4966-3B9C-E1B875F41F9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.38288453221321106 1 -0.33935374021530151
		 2 -0.20201721787452698 3 -0.036750465631484985 4 0.056484565138816833 5 0.096749931573867798
		 6 0.15090265870094299 7 0.31037676334381104 8 0.49651965498924255 9 0.58337527513504028
		 10 0.53229427337646484 11 0.39855542778968811 12 0.25026789307594299 13 0.15293684601783752
		 14 0.10166902840137482 15 0.045467954128980637 16 -0.090944461524486542 17 -0.27470141649246216
		 18 -0.38240218162536621;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateX";
	rename -uid "6E0082F9-4E89-09B7-C6FE-72A99765A583";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.528440851776395e-07 1 6.5393260229029693e-07
		 2 1.2370891226964886e-06 3 -2.0348856821783556e-08 4 -1.5755390450067353e-06 5 1.6581541331106564e-06
		 6 3.0400784112316614e-08 7 2.2886351871420629e-06 8 2.0876498183497461e-06 9 1.7856035583463381e-06
		 10 1.116141106649593e-06 11 -4.0838284576238948e-07 12 1.8566988728707656e-06 13 3.1840829706197837e-06
		 14 2.2078118036006344e-06 15 6.6572670220921282e-07 16 9.9309602319408441e-07 17 -7.4426708351893467e-07
		 18 -1.1866893601109041e-07;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateY";
	rename -uid "D53B177A-4BDB-7ECD-9A16-169015E2A36C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.3321122095439932e-07 1 -1.7170916066788777e-07
		 2 -5.4560160833716509e-07 3 -2.382036683457045e-07 4 2.5421181248930225e-07 5 -4.6501233441631484e-07
		 6 -2.9819506153216935e-07 7 -6.6272781396037317e-07 8 -4.2242703557349159e-07 9 -2.6737876623883494e-07
		 10 -3.5780826124209852e-07 11 -5.6408379123240593e-07 12 -6.602032271985081e-07 13 -1.773206150801343e-07
		 14 -2.4127444930854836e-07 15 -1.2343517710178276e-06 16 1.3042024704645883e-07 17 7.4125483706666273e-07
		 18 -5.332108230504673e-07;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateZ";
	rename -uid "87A1C07B-4EB1-8BC9-7EAD-D396CA4A01D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.616027702766587e-07 1 -3.6142645853942668e-07
		 2 -5.3220310292090289e-07 3 -3.4275024063390447e-07 4 -1.3144565400580177e-06 5 -1.2300596381464857e-06
		 6 -5.5342633231703076e-07 7 -1.566111677675508e-06 8 1.4208376342139672e-06 9 6.1828353636883548e-07
		 10 -1.5936718682496576e-06 11 1.3715692830373882e-06 12 -1.0847596740859444e-06 13 7.7815963095417828e-07
		 14 -1.4050162917556008e-06 15 3.0187140964699211e-06 16 -1.7733802906150231e-06 17 -3.0421858809859259e-06
		 18 8.0856148088059854e-07;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateX";
	rename -uid "BC4CCC8C-4167-5F9B-245C-D3AE798FD2F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.9504902815679088e-06 1 -2.4952539661171613e-06
		 2 -2.1846503841516096e-06 3 -1.177074864244787e-06 4 1.1469343235148699e-06 5 -1.9557983250706457e-06
		 6 -6.2794572386337677e-07 7 -9.7092606665682979e-07 8 -1.4797186622672598e-06 9 -2.1880005078855902e-06
		 10 -2.0178308659524191e-06 11 -2.3040133783069905e-06 12 -1.745825812804469e-07 13 -1.622561399017286e-06
		 14 1.5043560779304244e-06 15 -7.7910141271786415e-07 16 3.0075995027800673e-07 17 7.21487026567047e-07
		 18 -2.537825821491424e-06;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateY";
	rename -uid "434BD4EC-4940-5636-B030-7A9044849A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.2895368090303236e-07 1 -3.2388143722528184e-07
		 2 -6.4445526959389099e-07 3 1.3440643442663713e-07 4 1.1969454760674125e-07 5 -5.1227783615104272e-07
		 6 -5.2484887191894813e-07 7 2.8652814876295452e-07 8 -1.9826551067581022e-07 9 -3.9062479118001647e-07
		 10 -7.7391490549416631e-07 11 -6.8037003586596256e-08 12 -7.0182829858822515e-07
		 13 -5.6828707073464102e-08 14 7.8653776824921806e-08 15 -4.2567941704874102e-07 16 -3.8132202462293208e-07
		 17 -5.486623422257253e-07 18 -1.2065095233992906e-06;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateZ";
	rename -uid "FD9FE9E1-44E8-FDA7-B1AE-269D2EB1CA0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -6.0518823374877684e-07 1 1.7038725275142497e-07
		 2 6.1804513507013326e-08 3 -5.0159508191427449e-07 4 -1.629839175620873e-06 5 2.3662985881856002e-07
		 6 1.3546913351092371e-06 7 -1.6307244550262112e-06 8 -7.1231659148907056e-07 9 1.0225928690488217e-06
		 10 -1.7796456859286991e-06 11 -8.4095279362372821e-07 12 1.0848428928511566e-06 13 -3.1264169138012221e-06
		 14 -3.4578870327095501e-06 15 -1.3850273035131977e-06 16 -3.2517795034436858e-07
		 17 1.6507267446286278e-06 18 1.8323418089494226e-06;
createNode animCurveTA -n "Head_CTRL_rotateX";
	rename -uid "3D4DA578-4C12-B88D-FE43-36884DD524FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.046408652978069113 1 0.094496017279715752
		 2 0.10563728278064823 3 0.093401875929028405 4 0.067388316963069003 5 0.036297167017614027
		 6 0.0089809437313039375 7 0.0075259605955767719 8 0.032012500036102808 9 0.054100844636568973
		 10 0.044125929430236792 11 -0.0033999650351502282 12 -0.061044197145445851 13 -0.11535038965932429
		 14 -0.152227586446505 15 -0.15800439329427171 16 -0.10605214779694357 17 -0.029081863837488262
		 18 0.045161656609340579;
createNode animCurveTA -n "Head_CTRL_rotateY";
	rename -uid "A3417C05-4B61-90AB-B1D1-5D9A7C1E29F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 13.359213956836006 1 11.835401698191699
		 2 10.545742271193921 3 9.6962011418408398 4 9.3836355139572341 5 9.694044594833068
		 6 10.678413321627644 7 12.070557422344525 8 13.505552810621792 9 14.951463988633416
		 10 16.442235286152268 11 17.69216628357459 12 18.400966115644284 13 18.67668213464955
		 14 18.589280446098943 15 18.205953508853892 16 17.011056177779466 17 15.278445828825623
		 18 13.39347656730982;
createNode animCurveTA -n "Head_CTRL_rotateZ";
	rename -uid "52F55CC5-4567-8C8E-5A0F-FCA5A5F1ACA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.92884628591331 1 -3.1847138166182956
		 2 -3.4144256269250528 3 -3.5643028724611265 4 -3.5546179233831339 5 -3.2674021623223424
		 6 -2.7560190039648833 7 -2.1997426317952402 8 -1.6504892381031488 9 -1.2067082099215853
		 10 -0.90755897801154151 11 -0.7217829399129092 12 -0.65975110639707613 13 -0.77601624926239665
		 14 -1.156316654977624 15 -1.7423587519738066 16 -2.276798128521345 17 -2.6988000944304802
		 18 -2.9247096907739274;
createNode animCurveTL -n "Head_CTRL_translateX";
	rename -uid "E24FF1DA-45BC-0216-F93C-77A73ADCC6A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.0866209524683654e-06 1 -3.6587816794053651e-06
		 2 1.593255547049921e-06 3 8.1045243405242218e-07 4 -1.1096711887148558e-06 5 5.6432581914123148e-06
		 6 3.2324887797585689e-06 7 7.2883194661699235e-06 8 3.2620341698930133e-06 9 4.9265572670265101e-06
		 10 5.5583136600034777e-06 11 6.5059830376412719e-06 12 7.7409440564224496e-06 13 4.345053639553953e-06
		 14 9.111950930673629e-06 15 2.2315668957162416e-06 16 5.1644901759573258e-06 17 9.2688742370228283e-07
		 18 8.6790132627356797e-06;
createNode animCurveTL -n "Head_CTRL_translateY";
	rename -uid "CED6DD05-4ADC-0102-8A21-D2B84BE7F773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.0678850230760872e-06 1 1.756890696924529e-06
		 2 -9.6765033958945423e-06 3 -1.0115044460690115e-05 4 -1.6500645187988994e-06 5 5.2224175306037068e-05
		 6 1.635380249354057e-05 7 3.9381502574542537e-05 8 1.4986072528699879e-05 9 2.6053719921037555e-05
		 10 2.2491318304673769e-05 11 -7.6021510722057428e-06 12 -2.7070348096458474e-06 13 1.8615090084495023e-05
		 14 5.6711160141276196e-06 15 4.9658106036076788e-06 16 8.7203188741113991e-06 17 2.9805221402057214e-06
		 18 5.4491585615323856e-05;
createNode animCurveTL -n "Head_CTRL_translateZ";
	rename -uid "5B3222ED-4DFD-DAA2-3336-0DBED5BDE9C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.3284091437526513e-05 1 1.3707146990782348e-06
		 2 1.4681251741421875e-05 3 -2.9529376206482993e-06 4 3.9991004996409174e-06 5 1.0149702575290576e-05
		 6 7.5607326834870037e-06 7 1.6272877473966219e-05 8 6.6032475842803251e-06 9 1.0381540050730109e-05
		 10 7.256623575813137e-06 11 1.2563694326672703e-05 12 1.3506120012607425e-05 13 1.3283127373142634e-05
		 14 9.863997547654435e-06 15 1.0112222298630513e-05 16 9.7746878964244388e-06 17 5.9058029364678077e-06
		 18 9.6559560915920883e-06;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateX";
	rename -uid "FCBA6D03-4A6D-76BF-E7B3-1CA73782D8CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.3515601370825667 1 1.6319357408703439
		 2 0.73807412244009962 3 0.23115079780764994 4 0.13661785515561831 5 0.38180763422771119
		 6 0.85402580335405665 7 1.3308001316369127 8 1.5166995175174094 9 1.2850401253765842
		 10 0.82126270690821779 11 0.27179817869334794 12 -0.074110473010160022 13 -0.083546930705929626
		 14 0.32925066292237126 15 1.0792646503688639 16 1.9383597178131682 17 2.4956239917790688
		 18 2.3594552227031733;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateY";
	rename -uid "E15B6ADF-4BF1-C069-B4E2-F38EAA15CBA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.1713829549487755 1 5.1818627574071892
		 2 2.8259608520171184 3 1.5424804655306157 4 1.4423809745347034 5 2.478572522639217
		 6 4.516988208202422 7 6.8637410395517691 8 8.171648100919775 9 7.5929680680560168
		 10 5.7587708756932052 11 3.3816916109051522 12 1.8022747460556308 13 1.5563168612397651
		 14 2.7406337510483096 15 4.7402671111413524 16 6.7560226805811849 17 7.8352876930650579
		 18 7.1953122847940216;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateZ";
	rename -uid "E59BFFA9-4647-2914-D3BE-889654D267AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.7729703702748543 1 -7.7041484907136955
		 2 -7.9430534781947904 3 -8.4921152650186134 4 -9.4291750527086506 5 -10.713331423745176
		 6 -12.095954637732843 7 -13.281587117168483 8 -14.129385141043931 9 -14.65336946813154
		 10 -14.871374919237415 11 -14.79767339774436 12 -14.375301167913126 13 -13.544112182349691
		 14 -12.293376696798823 15 -10.784234478080975 16 -9.341185035144445 17 -8.2926300336063754
		 18 -7.7778598406424164;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateX";
	rename -uid "1831E8E6-443C-2EF4-AEAA-87AC66E46AE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.8865574979603803 1 2.6608219064810075
		 2 4.1412279948774726 3 6.1424303074127069 4 7.7267710941659384 5 8.7880940751036274
		 6 8.4149960818562111 7 6.2336325245777582 8 3.5546000576133245 9 1.5136879256516433
		 10 1.6058803139486024 11 2.9122110351809649 12 3.8351589483256019 13 4.5418305503374032
		 14 5.212829689608995 15 5.512257735243927 16 5.5081734501760806 17 4.2516326000786302
		 18 2.8672147716775198;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateY";
	rename -uid "38196D51-424D-2968-B847-239BF9CE5557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.1071571173589889 1 -5.8671868784776038
		 2 -9.4486150539483305 3 -10.610018523035462 4 -10.861703217607804 5 -11.972525570987614
		 6 -13.581040054402152 7 -13.527153706308152 8 -12.418927522003189 9 -12.083018937450991
		 10 -10.788504032248724 11 -9.0794081121818948 12 -8.1881110143965223 13 -7.3087461122775803
		 14 -5.1781530345333655 15 -1.5740633826261838 16 2.3047274982576704 17 2.5139722503688349
		 18 -1.0655338467850426;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateZ";
	rename -uid "0C896A04-4FD8-0018-DDA2-AC89C04BCFCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -32.113793607763064 1 -33.025377754070625
		 2 -32.94156816879925 3 -31.009945180514791 4 -27.390066115517346 5 -22.687605149507949
		 6 -17.536580925279726 7 -12.765572458582737 8 -9.5371963545700407 9 -8.1754811890463159
		 10 -8.018281050258647 11 -9.0570583897181169 12 -11.941662277554883 13 -16.604344630159986
		 14 -22.051892072333359 15 -26.600253921067672 16 -29.299454166129951 17 -30.987710711696238
		 18 -32.106733520389767;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateX";
	rename -uid "FA9FC9E1-42D1-C7EB-2B6E-4DB98CB9E621";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -15.752323300536323 1 -14.865458572961977
		 2 -14.246330483144014 3 -13.97657106588532 4 -14.177729063394658 5 -14.764614268414308
		 6 -15.553923071902723 7 -16.449466471617594 8 -17.371640946747195 9 -18.22924680394523
		 10 -18.886682166565251 11 -19.119379540586021 12 -19.01605372980822 13 -18.744691741739356
		 14 -18.385548312557486 15 -17.961930828901398 16 -17.467492609997603 17 -16.714785879463456
		 18 -15.769223479021008;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateY";
	rename -uid "96DC31A6-4DF4-F147-651F-329559B14E6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.1611919791889136 1 -8.4066651288302179
		 2 -8.5391069063681329 3 -8.5871268011631088 4 -8.5518798349298635 5 -8.4303351846045409
		 6 -8.2219506554419866 7 -7.9197511190860519 8 -7.529922241928805 9 -7.088588288650393
		 10 -6.6929524384772954 11 -6.5398179864997781 12 -6.6087118522667261 13 -6.7828942853560381
		 14 -6.9992684921205308 15 -7.2348508488721759 16 -7.4845193248190647 17 -7.815923659674068
		 18 -8.155852337586472;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateZ";
	rename -uid "16E71ED6-4A26-78B3-CBB8-56BD1FADFD32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 82.106282490105926 1 78.055182990397569
		 2 75.265925912642373 3 74.058342308927692 4 74.958284313150045 5 77.598906206441299
		 6 81.194390827160248 7 85.355171313346361 8 89.758354328595502 9 93.995152618973123
		 10 97.361163603124538 11 98.581929763094138 12 98.038102816327424 13 96.624495933781404
		 14 94.785177017300981 15 92.659348992655694 16 90.224643471073435 17 86.707747572585191
		 18 82.188465760780616;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateX";
	rename -uid "5B9D25EF-4C29-A735-EED4-64917EB16D2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.4131426029294061 1 -2.0894104671630234
		 2 -2.2436776410201613 3 -2.3227321570735593 4 -2.3696810430581334 5 -2.3935321384241104
		 6 -2.3962855704948169 7 -2.3756528236869987 8 -2.321655645670738 9 -2.1977059614903625
		 10 -1.1748038843103321 11 -0.45676878134305005 12 -0.29888176763863328 13 -0.23079840430438117
		 14 -0.21764316488854157 15 -0.25228548494932157 16 -0.34240143535941087 17 -0.52577451479434101
		 18 -1.3888069628542201;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateY";
	rename -uid "1B787564-498D-5753-7D94-4DBF4107BECC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.7872253730445902 1 -7.3636784066269776
		 2 -8.4371256739467562 3 -8.9911280669240057 4 -9.3212887358822787 5 -9.4894477388996599
		 6 -9.5091683006197272 7 -9.3634309384634555 8 -8.9835156075044793 9 -8.1160940675977127
		 10 -1.2270047543472706 11 3.2953590102260524 12 4.252754446606569 13 4.6619496293368865
		 14 4.741075961121143 15 4.5331746915587088 16 3.990278674840555 17 2.8720180785125264
		 18 -2.6260042116064137;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateZ";
	rename -uid "D4003D2D-4BB5-7A7B-B9DA-8ABCA0ABA8F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 11.176802387585093 1 10.72810861085126
		 2 10.63015969055806 3 10.580646502721693 4 10.551480025783412 5 10.536728395969167
		 6 10.534957743940627 7 10.547763802157821 8 10.581305060634589 9 10.659143104791088
		 10 11.341948033029176 11 11.85838647145161 12 11.975369476531002 13 12.026246066243598
		 14 12.036105492738889 15 12.010159924122888 16 11.943032639247509 17 11.807497345008265
		 18 11.193566768310275;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateX";
	rename -uid "A1AFB5B0-49A1-CFC6-D8B0-6794F292F406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 10.688090377939385 1 -0.22046033760504508
		 2 -8.4789029857830975 3 -12.307228543119018 4 -11.374285538118976 5 -8.5288442047194089
		 6 -6.1501673117856859 7 -4.7297613793989077 8 4.9127317794995822 9 8.1297516231861788
		 10 15.227568471535964 11 20.877101130526743 12 26.695582557239035 13 31.513403794547585
		 14 33.173240088567923 15 31.930430599407607 16 27.86737246030512 17 20.778988895848627
		 18 10.531840229221791;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateY";
	rename -uid "A9AEAF5A-4864-65A4-F9F3-A5BB6BB25041";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.3757194581306553 1 -5.6970809869980616
		 2 1.626274725994773 3 10.903213341265758 4 18.436228917689679 5 21.889789674566444
		 6 19.7818616828914 7 13.189126310950378 8 10.11158045525581 9 3.2115211375628889
		 10 -3.0798743408820655 11 -9.407738255936378 12 -13.624655831505818 13 -14.807906055255115
		 14 -14.241456455817131 15 -12.900475146990283 16 -10.147059916843316 17 -9.7004973616562147
		 18 -9.1953134135846408;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateZ";
	rename -uid "315B531B-4678-5ABF-972F-D5BEDD9F0A85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -63.429106892011646 1 -53.312594222500891
		 2 -43.12892334454618 3 -34.83355433976854 4 -28.385100999562443 5 -25.781108196427414
		 6 -29.081541308101176 7 -31.168646520120639 8 -28.145324030691061 9 -27.810027801022105
		 10 -31.409567381583166 11 -37.341705058720684 12 -45.020790826657226 13 -52.643794295685275
		 14 -58.822027291368151 15 -63.364878507736385 16 -67.634315215284047 17 -68.692729160182779
		 18 -63.534161199678984;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateX";
	rename -uid "2E921936-4502-FDC2-E9C5-AA8562D16C16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.0020494466619160557 1 -0.00169236386958158
		 2 9.8773128683899526e-05 3 0.005651241189512113 4 -1.1173918351826936e-05 5 -9.9322073361567992e-06
		 6 -5.3290835556726307e-05 7 3.3209132854113426e-05 8 0.00080940931430294031 9 6.1616075410969015e-05
		 10 9.5451988212552538e-05 11 1.6734728432891442e-05 12 6.4898687819472644e-05 13 0.00032265275373729013
		 14 6.0106185161929528e-06 15 -0.00065187712648865021 16 0 17 0.00029043425237425393
		 18 -0.0012403949290234388;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateY";
	rename -uid "20023B09-47F1-8639-A303-50AE4D1078FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.6692219198356762e-05 1 -0.00025037584894092505
		 2 2.3196005708251478e-05 3 0.0046032625047183855 4 -1.7492863628441874e-05 5 -9.1281591796082674e-06
		 6 -3.2380207150939534e-05 7 4.0909315888426789e-05 8 0.00082556066807330732 9 8.5440848157221914e-05
		 10 0.00013261168935742572 11 3.2916622674579136e-05 12 8.5970035283603017e-05 13 0.00016587703038086483
		 14 -1.6637283726186238e-06 15 -0.00012015816213821327 16 8.5393897097007611e-06 17 -3.2620988025178588e-05
		 18 6.2602385443647602e-05;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateZ";
	rename -uid "C8BD7662-4378-DFD3-FF81-EB851D0E256B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 78.861905412222356 1 67.93747023647559
		 2 52.718559294051239 3 36.951290554403592 4 22.844253952496999 5 17.647727339988261
		 6 26.051407915489573 7 34.170668113485242 8 30.696313828749837 9 28.231301049014448
		 10 28.853923382000801 11 30.183977506049441 12 35.214776390348526 13 43.68552491123998
		 14 53.547887491532776 15 63.735245893683874 16 75.675518402891569 17 81.64464113508437
		 18 79.023290783930875;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateX";
	rename -uid "911135E4-44FE-5C28-9044-1E9E250BF7F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.6203761922809914 1 -6.7032677429528151
		 2 -10.949638573786748 3 -8.304335215113019 4 8.0323727624490449 5 18.957985424849653
		 6 19.061247866559299 7 12.567331355103711 8 1.6081359435971174 9 -0.20682351037727345
		 10 5.2681241437740223 11 13.587060601478516 12 17.56515952716752 13 17.681974182779854
		 14 15.632026382555406 15 11.092546500569135 16 7.3272624439259415 17 -6.6686609268351527
		 18 -5.5099999663182606;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateY";
	rename -uid "91F3C65A-400A-37E6-1B84-8C8549DAF766";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -18.527715122074351 1 -13.709805443885919
		 2 -15.930971145121473 3 -19.785170957560336 4 -13.571268986739476 5 -7.9844741237201067
		 6 -7.7653347522534082 7 -15.124747077312422 8 -15.767001458029645 9 -22.508266284108565
		 10 -23.640316379817747 11 -20.07520234289661 12 -15.289285370953172 13 -10.993480937512471
		 14 -9.0322233634921201 15 -11.036634076558435 16 -29.507629965096978 17 -27.759686602555675
		 18 -18.332934424683692;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateZ";
	rename -uid "77C5211B-408E-0801-96C0-559521569DD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.4734355581651393 1 -7.0129571611376784
		 2 -4.9700833449283897 3 -4.5203630326992243 4 -6.625582251194059 5 -1.9346240615909538
		 6 7.3894350562457181 7 12.306277608301018 8 12.597861818587898 9 6.156407652330258
		 10 -5.694963901155921 11 -16.756929660922864 12 -20.324786411877248 13 -20.383841553308692
		 14 -20.443569420441758 15 -19.119478158078373 16 -12.489377785607569 17 -8.0833190300221975
		 18 -7.4502675557688587;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateX";
	rename -uid "545B63DD-4FA3-0503-3AE9-57A7B260CC0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.7798696289199329 1 1.9659549690849347
		 2 1.7201947735943026 3 1.183810057466274 4 0.59069480543513975 5 0.27950524937325388
		 6 0.27878432712461731 7 0.61524167708614375 8 1.3316445112171524 9 2.2359252034003507
		 10 2.8171772006851623 11 2.6639988396416823 12 1.9988532568053656 13 1.1173246437186508
		 14 0.53088149924514061 15 0.42305803566926181 16 0.76555813276602813 17 1.301693369888667
		 18 1.7730056144156259;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateY";
	rename -uid "2D34733B-4F0F-2D59-9949-D7BEC32FE2F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.853467329849698 1 9.0896488530269508
		 2 8.4942926503593998 3 6.4743728767303175 4 4.0258084904814799 5 2.6409006608645664
		 6 2.4380086282369482 7 3.3269061937656264 8 5.1691258139413527 9 7.2510088729393392
		 10 8.3485647564278125 11 7.6916935092611869 12 5.9171170247699552 13 3.6685241237128827
		 14 2.2079971587441425 15 2.0755151377428147 16 3.3851566709841876 17 5.5845442301469355
		 18 7.8178825401388998;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateZ";
	rename -uid "9E9EE31B-4D5C-BFC0-DE52-76A03C6D7E3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -12.649131028179491 1 -13.40246697434001
		 2 -13.978329363454893 3 -14.36124167240229 4 -14.478144316120833 5 -14.1503532709757
		 6 -13.329103991952946 7 -12.008151014262781 8 -10.340042569312367 9 -8.7236843851216221
		 10 -7.5808633361481226 11 -7.1177801174710673 12 -7.1821368356002528 13 -7.6011178830776744
		 14 -8.2776731310812188 15 -9.2244099367447951 16 -10.398469716062976 17 -11.616297673056051
		 18 -12.63342411208521;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateX";
	rename -uid "BEC85EC2-418A-7AD1-B75B-08A304B2D83D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 39.028973134186352 1 38.207831206236925
		 2 35.649270914274695 3 32.090060083863683 4 28.635967101515469 5 26.267830488427311
		 6 24.952418358170419 7 24.594681144096992 8 24.271948282325109 9 22.979455765791013
		 10 21.753620584529347 11 23.281210667275126 12 27.802782965926102 13 33.123256865741368
		 14 37.476040905116875 15 39.377841098430494 16 39.375671200926647 17 39.073961171647142
		 18 39.030308104532708;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateY";
	rename -uid "888C18FA-46C2-9319-72E1-E492F4034BF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.99772583356679301 1 1.4379041901607168
		 2 2.0705402296028836 3 1.5014929811424313 4 0.71978123981001596 5 1.3959832184249559
		 6 3.5570106808927684 7 6.6457851123101168 8 9.5076874408845331 9 10.88568711250133
		 10 10.353384132230138 11 8.7201247044238617 12 6.8651833951660324 13 3.5753357236231493
		 14 -1.3116446646028879 15 -5.9074896825817573 16 -6.9044547843534927 17 -4.5108064068762799
		 18 -1.0574371321743892;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateZ";
	rename -uid "1879A1C1-42B5-6D22-2EF5-CC9E55D72652";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 18.488838309933932 1 18.411435464716607
		 2 15.659349757887787 3 10.57371845791423 4 3.9588414729384138 5 -2.7413798585836293
		 6 -7.8985268166676548 7 -10.790082114674522 8 -12.222947435915106 9 -13.264347296213746
		 10 -13.920687610174294 11 -12.91953525871104 12 -9.6863153815040519 13 -4.9091939706293228
		 14 0.71740056775371208 15 6.521446735810474 16 11.982033254351668 17 16.164139307774466
		 18 18.468210209939652;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateX";
	rename -uid "F55EA5EA-4AD7-A705-8DF2-E0A093D0F63E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -17.857214042792268 1 -18.476091738123404
		 2 -18.691805001866015 3 -18.593049204572438 4 -18.335241411906924 5 -17.995550630665001
		 6 -17.5966839055313 7 -17.135111137322461 8 -16.428312410425235 9 -15.530120317894264
		 10 -14.696990768385577 11 -14.114608946160859 12 -13.863968747754841 13 -14.045254017362335
		 14 -14.590290745859162 15 -15.328520862851637 16 -16.168437318275188 17 -17.035047634845359
		 18 -17.843494402024959;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateY";
	rename -uid "BF7A2D18-4A4A-CB9F-06FB-8DB3A5164C7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.0883856763077056 1 -6.724900957163042
		 2 -6.5868944694522957 3 -6.6508251599205455 4 -6.8117355314172672 5 -7.0111337870286254
		 6 -7.227914425611818 7 -7.4566724737421914 8 -7.7637452779478355 9 -8.0843552073397529
		 10 -8.3169979350983869 11 -8.4445819865669485 12 -8.4909344519908654 13 -8.457913670968173
		 14 -8.3424964084850313 15 -8.1462424940523981 16 -7.8642485158654241 17 -7.5031575188358515
		 18 -7.0959665053100869;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateZ";
	rename -uid "AB6762DA-4709-A9F3-7EED-30B1D82E8613";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 93.621011567441784 1 96.815501654767829
		 2 97.960868886035556 3 97.431371489514149 4 96.078890521074825 5 94.322151883735202
		 6 92.290953383484421 7 89.960144842745137 8 86.56212681905771 9 82.294649322377055
		 10 78.426369123769263 11 75.755410405134526 12 74.585174348808039 13 75.426810570649224
		 14 77.933863016375611 15 81.353258855999556 16 85.314577091137267 17 89.510297715586148
		 18 93.552381967728678;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateX";
	rename -uid "8289F56F-483F-57ED-7B15-1F8AC5A94D25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.4986872860697224 1 0.58424335024963336
		 2 1.3319659806516189 3 1.4983445474184209 4 1.5701760577498425 5 1.5838213171823536
		 6 1.5463429250162271 7 1.4499751942623813 8 1.2537972250335423 9 0.33212606471208034
		 10 -0.38554655136411636 11 -0.54740584214977572 12 -0.62986995579017491 13 -0.67879753094455531
		 14 -0.70370221262392885 15 -0.70679408659777598 16 -0.6856276118735587 17 -0.62999007860067224
		 18 -0.50247334962298995;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateY";
	rename -uid "64AC9211-4143-BB5D-3ACB-6DB962D54F3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -4.5360491769511979 1 2.2495504669663289
		 2 6.5830474391623461 3 7.508011603133883 4 7.9030727644508785 5 7.9775404400875649
		 6 7.7725394355976229 7 7.2403046207442765 8 6.1435318731657373 9 0.7229235983934762
		 10 -3.7998458134850566 11 -4.8552767754832056 12 -5.3978575620354308 13 -5.7212939018270159
		 14 -5.8865307058753826 15 -5.9070555206625013 16 -5.7666148575830025 17 -5.3988932743798612
		 18 -4.5612023752284054;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateZ";
	rename -uid "F174CA28-4F1C-526E-B57F-14B059990C1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.5554737829833201 1 4.3564375761866438
		 2 4.9401285909591373 3 5.0728826263556472 4 5.1305194346653638 5 5.141488616755665
		 6 5.111415839996714 7 5.0341812078730719 8 4.8780702431900771 9 4.164876551471246
		 10 3.6362978800588746 11 3.5208501196989261 12 3.4626265951195054 13 3.4282531517267874
		 14 3.4107508244250022 15 3.4086436762301227 16 3.4234501595740903 17 3.462477872219393
		 18 3.5527326339959115;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateX";
	rename -uid "161CAAC5-43F0-D5D7-5F5E-42B01D0C00FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.985927517030599 1 5.3750108140483777
		 2 5.3211945869195105 3 -0.30607898372506726 4 -9.5513060006580499 5 -17.356450543583986
		 6 -20.54245705715341 7 -16.47905924703317 8 -6.0625978487292933 9 4.2330922544340339
		 10 7.488353530939988 11 4.7372731928586749 12 0.89744273711541012 13 -1.7806576088628197
		 14 -2.0454545105068314 15 -1.5267780690997788 16 -2.5765867591281761 17 1.6166509059055119
		 18 2.8247044135179453;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateY";
	rename -uid "A7187EA1-4D7A-F1A1-3024-15B70151F911";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 22.185425463295971 1 26.655750586016712
		 2 26.22536633629921 3 22.224139126328531 4 14.293013482359138 5 4.4883794867615441
		 6 -5.4765537727906093 7 -16.773912666290599 8 -26.651902353440683 9 -31.494305738442975
		 10 -32.768118978848364 11 -31.394445535616534 12 -28.106371193929515 13 -24.05548765196594
		 14 -19.022247646843478 15 -11.722644482555477 16 -0.85232648976122083 17 13.089519020725671
		 18 22.059443666834557;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateZ";
	rename -uid "A3ABC1DB-44BF-5063-31AF-CCA140DA15A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -6.3861497773775717 1 -5.9544097497321635
		 2 -8.9281912468705986 3 -15.162328671520791 4 -20.469070953737521 5 -23.922074195530659
		 6 -28.088179309572613 7 -34.798628712192482 8 -44.443176369246238 9 -51.078776422048421
		 10 -48.528663207679791 11 -39.679315058387957 12 -30.007988109612619 13 -22.804235553760513
		 14 -21.033435396847167 15 -23.7805072671426 16 -22.346364494180563 17 -13.53896187650516
		 18 -6.7427013187121565;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateX";
	rename -uid "66642B27-4F01-AD98-290F-04846E99A017";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.2790232627826125e-05 1 -1.5340303247502639e-05
		 2 -4.4427952982508375e-06 3 3.9642930046304474e-06 4 -0.00011810906395920164 5 -0.0012929668108755835
		 6 -2.8654423531703585e-05 7 1.7766248094817133e-05 8 -2.4053141462215458e-05 9 0.00010194262752441024
		 10 -0.00028921444866293725 11 -0.00010268165792668701 12 5.6298153629617358e-05 13 0
		 14 2.8980104282188181e-05 15 -3.9436885545890658e-05 16 -0.00010549241371496081 17 -2.7547060600868347e-05
		 18 -6.2030126959007092e-06;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateY";
	rename -uid "1761D3F0-4B6D-BA93-FC24-49B56721E3E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.2801438702950599e-05 1 3.4787317022468892e-06
		 2 3.0265749467132783e-06 3 -1.4930612046866111e-05 4 -3.3118667341453565e-05 5 -2.5389620333820648e-05
		 6 3.2685465288452159e-05 7 -8.0603257223016891e-06 8 2.1050937015339285e-05 9 -4.2000840252388512e-05
		 10 9.0640573032541895e-06 11 -3.7317819819538884e-05 12 1.4840636460569232e-05 13 -4.3734186689100287e-05
		 14 1.7475082070939069e-05 15 -5.7739668399630441e-05 16 -0.0001116082764533852 17 -2.3721031447212251e-05
		 18 -9.6896450160367453e-06;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateZ";
	rename -uid "5FA50C51-43A7-92DB-BBF5-22B9368B6931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 22.176164412022313 1 27.347170420431308
		 2 35.804338208993052 3 49.101811580288896 4 62.427972925974991 5 75.160136670948717
		 6 86.684997914329756 7 96.308253329514542 8 100.32934613637531 9 94.039616128615251
		 10 79.05044936942204 11 58.914771457575092 12 39.105012088786545 13 23.329497577274434
		 14 18.756008586218098 15 27.202192625481569 16 33.037788263926942 17 26.34705521724414
		 18 22.661184271006675;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateX";
	rename -uid "D30591CC-46E0-F9B7-7C43-9897320AF681";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.2355624913696577 1 3.9011096702871879
		 2 -0.73700148313104596 3 -5.1875132082070001 4 -4.8035758174871814 5 -3.4524427632689383
		 6 -4.9264618679771726 7 -8.9271056453756259 8 -12.578466127065198 9 -17.556870093017192
		 10 -21.243755539270623 11 -21.285161569790606 12 -19.586071698814123 13 -17.002981664301672
		 14 -12.721781379500339 15 -5.9845303953867814 16 2.2562447229758482 17 9.4198109833976247
		 18 8.1236520070310654;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateY";
	rename -uid "853C4CD2-4ABD-C937-9FD4-ADAE648BAEAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.89166804859604887 1 -9.2001083292610986
		 2 -10.819607562705617 3 -13.515442146608635 4 -15.86407900599948 5 -16.839654374929829
		 6 -15.963377887662006 7 -14.410505360878743 8 -12.38056479533085 9 -9.0495815636504027
		 10 -3.4196016394237576 11 0.37155348117008435 12 -1.3443065486819747 13 -5.9185797286186368
		 14 -10.171696107785788 15 -11.011652242706823 16 -8.0294125293588152 17 -0.33018671305892355
		 18 -0.98180838259118108;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateZ";
	rename -uid "4B52C5EF-4D3B-C4C1-6968-3BB880DCCDB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 14.536420552104358 1 -3.030366045702932
		 2 -17.402740770697449 3 -19.010853723698748 4 -16.980392031303012 5 -14.182557104163052
		 6 -10.368747103838544 7 -5.1264548385066249 8 -1.6146834886783901 9 -1.1807983654956948
		 10 -0.56895458767150653 11 -0.51864165249679239 12 0.1053362019641549 13 2.6291033976765203
		 14 8.5211132248159469 15 17.111634855010276 16 22.71231840111318 17 22.383176282818294
		 18 14.732192812899068;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateX";
	rename -uid "0DFCA2A9-433C-F423-9A21-33A0D659BE97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.6734976690809642 1 -6.5255807599390598
		 2 -6.7315394173886229 3 -6.5302058410828403 4 -5.9783079477473402 5 -5.0579547798124773
		 6 -3.6076723745949364 7 -1.3313846116971124 8 1.3238568568579243 9 3.7581694236348229
		 10 5.3656165275821586 11 5.9029237157240431 12 5.8720441837528847 13 5.3532893080003294
		 14 4.3124153056744348 15 2.6569240535694849 16 -0.076403307983971686 17 -3.3227983589007057
		 18 -5.6455523841171367;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateY";
	rename -uid "7C776F33-481B-8FDE-C23A-1BAF0E506CCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.37679024328386934 1 0.71824237232453658
		 2 1.0613323684351215 3 1.4453438554509799 4 1.8239165576221574 5 2.082951285067324
		 6 2.1024291925487089 7 1.7570582774432704 8 1.1233468220288461 9 0.33885284482624178
		 10 -0.31938802083255496 11 -0.66333650014275447 12 -0.90138894142839721 13 -1.0833788760558751
		 14 -1.2140537658093842 15 -1.2357292543638765 16 -0.87630998694158202 17 -0.25117860139313947
		 18 0.36847805322761851;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateZ";
	rename -uid "731EA797-4CE2-48F2-20F0-CCBC02991E18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.22389977163116342 1 0.18914824105969388
		 2 0.17731447250767662 3 0.18284806838984524 4 0.20342298405385989 5 0.23709614454858449
		 6 0.28044083878919818 7 0.32120027624266878 8 0.32455961676907025 9 0.28454292468713382
		 10 0.23490774779021875 11 0.21306138708384945 12 0.21222908645241328 13 0.22907162793336175
		 14 0.26074603893168491 15 0.29899058753236252 16 0.32496088012756674 17 0.29240809312068705
		 18 0.22518001861735351;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateX";
	rename -uid "A0AEE864-428A-6F75-5361-5AB47053DCEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.4194436680819384 1 4.9058680593373367
		 2 5.7323898327933618 3 5.9830677902405993 4 5.7554492522066081 5 4.9901306901074616
		 6 3.5914795466139791 7 1.5355315813080617 8 -0.91083193075597957 9 -3.1672550654376899
		 10 -4.8035208098844597 11 -5.7129832254783279 12 -5.9888383435341233 13 -5.7281641451156817
		 14 -4.8536159386452082 15 -3.2990866705045625 16 -1.1305190777503424 17 1.2794910169466818
		 18 3.3865519808328743;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateY";
	rename -uid "E421041F-4FA3-D78C-1D19-41BF3CDAF91A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.23535876003348774 1 -0.33741733606607127
		 2 -0.39411754149515238 3 -0.41130738743428563 4 -0.39571794098693158 5 -0.34319985736879799
		 6 -0.24717655096132155 7 -0.10573679954410743 8 0.0627190461067995 9 0.21801765324114505
		 10 0.33040335682034772 11 0.39274526068422844 12 0.41167264730404701 13 0.39383359546004565
		 14 0.3338578406135137 15 0.22709216270047955 16 0.07786435697264836 17 -0.088118851029020021
		 18 -0.23310017769757763;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateZ";
	rename -uid "F3116FBB-46D7-942F-F98F-FC8E83711322";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.3424232939879883 1 2.3349797345378946
		 2 2.3296888566154319 3 2.3279796561422517 4 2.3295363261761706 5 2.3345382988991084
		 6 2.3416958571157558 7 2.3479975778001667 8 2.3489448708562537 9 2.3434193718323009
		 10 2.3355697469593375 11 2.3298500259826738 12 2.3279049270517702 13 2.3297517447702565
		 14 2.3353281068844196 15 2.3428981758165879 16 2.3486885674890741 17 2.3484551342607705
		 18 2.3425323533024498;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateX";
	rename -uid "CA0B246E-4C68-8641-0060-7297052BC23E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.280859790625982e-07 1 -4.6025502342672553e-07
		 2 1.9190790681022918e-06 3 -1.0259504961140919e-06 4 -2.1635880784742767e-06 5 -1.6664496342855273e-06
		 6 1.8578671756586118e-07 7 5.7721047141967574e-07 8 1.3877539117856941e-07 9 -2.949989266198827e-07
		 10 -1.3195290193834808e-06 11 -6.7847969376089168e-07 12 -1.4980474816184142e-06
		 13 1.8394860035186866e-06 14 5.7746717629925115e-07 15 -8.4749120787819265e-07 16 7.779709108035604e-07
		 17 -1.6828420257297694e-07 18 -7.7827638733651838e-07;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateY";
	rename -uid "E7E8C7F7-4E58-DA8A-8B40-38886AABB57B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.353016779783502e-07 1 -2.9071989615658822e-07
		 2 -4.7365546151922899e-07 3 3.0237850978664937e-07 4 2.3816274108412472e-07 5 7.629782885487657e-07
		 6 -8.9262286451230466e-08 7 -1.2679551275596168e-07 8 1.5044248868889554e-07 9 -2.5261735459025658e-07
		 10 2.4161542455658491e-07 11 -4.0493759456694534e-09 12 2.3339758570273261e-08 13 -6.8592657953558955e-07
		 14 6.3362762148244656e-07 15 3.167055808717123e-07 16 -1.8261059153701353e-07 17 1.2682959038556874e-07
		 18 -5.045170041739766e-07;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateZ";
	rename -uid "14A2B38C-4C17-4FD1-85C3-309FA9DEDFD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -6.8787846885243198e-07 1 -7.0704180643588188e-07
		 2 -1.1550076095545592e-07 3 3.8933973200983019e-07 4 -6.4782352637848817e-07 5 1.0546419844104093e-06
		 6 2.4420501176791731e-07 7 -1.3864867014490301e-06 8 9.7101451501657721e-07 9 -1.0671227101965997e-07
		 10 7.9655632134745247e-07 11 1.2618340861081379e-06 12 2.4897639150367468e-07 13 7.6908128221475636e-07
		 14 -2.7712442260963144e-06 15 -1.4560314411937725e-06 16 -2.0050283637829125e-06
		 17 -3.1718830086902017e-06 18 4.0388368915955652e-07;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateX";
	rename -uid "0EBF76DD-44BA-7E9C-37B3-68B2A3A72CCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.703743889368595 1 2.0504245718387013
		 2 2.034892579525831 3 1.8608485297172912 4 1.6338034956392131 5 1.2956109525712052
		 6 0.75118062604746572 7 -0.1683234393276791 8 -1.2871345428103906 9 -2.1490200992931943
		 10 -2.5141654258722061 11 -2.5544722925701868 12 -2.4153696714648882 13 -2.1604279487245122
		 14 -1.7812544520715861 15 -1.2213941462948719 16 -0.34817580460146491 17 0.77317785001630246
		 18 1.6927349819135531;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateY";
	rename -uid "9D510040-4FF3-9A0E-F5A3-CE9C9B4F3311";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.9419687815024078 1 5.7061380186941619
		 2 2.8561916509923275 3 -0.26158925896439539 4 -1.6067466599653168 5 -1.6838566838516056
		 6 -2.0607439875782663 7 -4.8273161449155237 8 -8.228518612296412 9 -9.572231241721413
		 10 -8.1605004465617554 11 -5.3063697243036989 12 -2.4755946847399328 13 -0.9903774664563888
		 14 -0.64736939883128852 15 -0.24479883351453335 16 1.9345231215298533 17 5.1964388554800802
		 18 6.9401373904563579;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateZ";
	rename -uid "DC2E2E71-45E9-A740-DE9B-D7871B50A9DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.31977845588440412 1 0.06223896253976538
		 2 -0.65596784587413648 3 -1.5570832647630957 4 -2.2434879573302946 5 -2.4809230237533346
		 6 -2.1467154423360642 7 -1.3897259423843773 8 -0.59962647630554289 9 -0.23027881193183602
		 10 -0.50538608331620194 11 -1.0892903912845329 12 -1.7097873373725865 13 -2.1955104896930409
		 14 -2.3941047141133596 15 -2.0272849501306007 16 -1.160419638366198 17 -0.19283059153547949
		 18 0.31954046908473122;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateX";
	rename -uid "28CF904A-4364-899E-64EE-0DBA81CCDBE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.9827984114867565 1 3.8051951564988378
		 2 4.045678510948246 3 3.802859009965871 4 3.0215495810697712 5 1.5901204813726411
		 6 -0.48537307115487843 7 -2.9512531893360712 8 -5.2369799228765483 9 -6.8727640678970765
		 10 -7.7769642052280341 11 -8.0417319687244238 12 -7.7658972127845285 13 -6.8764925423209347
		 14 -5.2894200446747934 15 -3.1017752727951584 16 -0.67147562027707264 17 1.4640053527732371
		 18 2.9620372306212044;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateY";
	rename -uid "FBCE5534-46F5-A8A0-5854-4096070A90DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.7083997715633912 1 1.5677921200947622
		 2 1.2835480917433797 3 0.88171823685514061 4 0.40887597860109232 5 -0.068069280219589218
		 6 -0.58520454629432739 7 -1.0999328492541673 8 -1.411085875531092 9 -1.4234503092287762
		 10 -1.2520724989908116 11 -0.94013210294870986 12 -0.53696480539773828 13 -0.090612558616324723
		 14 0.3485902210563202 15 0.85444185521706084 16 1.3820248932271859 17 1.702032602202159
		 18 1.709585546054688;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateZ";
	rename -uid "35CB3D76-4339-3141-98EE-D89A9C3D25E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.3539445209790806 1 2.8269762346954037
		 2 2.5880686903156747 3 1.9051950245665215 4 1.0124898336846175 5 0.32511984545198519
		 6 0.086538670514944224 7 0.41604830340439852 8 1.1510266393605877 9 1.8846223694865611
		 10 2.2230018875351951 11 1.9760135128296108 12 1.4400401111552663 13 0.84309301998538799
		 14 0.36538424780373174 15 0.16948492595564926 16 0.53803296624440788 17 1.4027134750618364
		 18 2.3392443327558108;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateX";
	rename -uid "CE490CE1-44CC-98F2-51BF-A7B1EA55F9B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.4087458800892578 1 2.8794777119410697
		 2 3.6973203861482231 3 3.9453652639597556 4 3.7200941344401461 5 2.9627916165126504
		 6 1.5789122154395483 7 -0.45528897508972621 8 -2.875788547919051 9 -5.1086632125014484
		 10 -6.7280905842538674 11 -7.6282223149763713 12 -7.9013323933388246 13 -7.643289077566763
		 14 -6.7776103974218334 15 -5.2391403212466594 16 -3.0932177631490037 17 -0.70864036072773273
		 18 1.3761911956821804;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateY";
	rename -uid "1008CD3E-4D56-9B95-B2BB-77BAA1310B6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.22816427554858693 1 0.46614732414764209
		 2 0.59839278346572911 3 0.63848706323767634 4 0.60210487259283763 5 0.4796895139987678
		 6 0.25573184162471285 7 -0.073745309595898575 8 -0.46562396258852567 9 -0.8263016286292314
		 10 -1.0871227773096392 11 -1.2317062471925253 12 -1.2755437753646597 13 -1.2341311563466379
		 14 -1.0951128879864362 15 -0.84734236492749204 16 -0.50074236265456618 17 -0.1147285717534339
		 18 0.22289307594311972;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateZ";
	rename -uid "8C3DFCFE-4A6D-E32C-0514-E78147BFC55F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.15591201449686 1 3.6397788874302055
		 2 3.4093859387559924 3 2.7288752610353906 4 1.8323177804922202 5 1.1357631872649552
		 6 0.8874041395600446 7 1.2160699314082259 8 1.9680878672218922 9 2.7330466279106331
		 10 3.102888809720286 11 2.875724810780929 12 2.3446233327285166 13 1.7380103404583063
		 14 1.236563211194756 15 1.0085273415483438 16 1.3484609983206268 17 2.2005001142855978
		 18 3.1410632856300902;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateX";
	rename -uid "57F0C261-42F2-44E0-2793-9B9E31E5542C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.771651477611158e-05 1 6.8376998569874559e-06
		 2 1.6487483662785962e-05 3 9.3222215582500212e-06 4 -2.6462264486326603e-06 5 7.9376281064469367e-05
		 6 6.3933716774045024e-06 7 2.8988952180952765e-06 8 2.6471474484424107e-05 9 1.7158205309897312e-06
		 10 -6.1428426079146448e-07 11 4.3727868614951149e-06 12 4.5233596210891847e-06 13 9.058676369022578e-06
		 14 5.9707781474571675e-06 15 6.1496593843912706e-06 16 2.258831500512315e-06 17 7.5188581831753254e-06
		 18 3.033847519873234e-07;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateY";
	rename -uid "7E6A76ED-4202-054C-613F-74857B30CDB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.1350779459462501e-05 1 2.0190918803564273e-06
		 2 4.4306179916020483e-06 3 7.1759864113118965e-06 4 8.3400072981021367e-07 5 -2.5985284082707949e-05
		 6 1.0352463277740753e-06 7 -5.668124458679813e-07 8 -3.2218752039625542e-06 9 2.6938192831948982e-07
		 10 8.4449908399619744e-08 11 1.0679307706595864e-05 12 3.4219051485706586e-06 13 5.6867943385441322e-06
		 14 1.5468604033230804e-06 15 -2.4803264295769623e-06 16 -5.4415653494288563e-07 17 -2.0840845991187962e-06
		 18 3.9393785300489981e-06;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateZ";
	rename -uid "F32B76E8-4E0D-6342-3AF0-448ACE63F8BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.5257997852750123e-06 1 -7.1789088451623684e-07
		 2 1.5312079995055683e-06 3 -4.6924293428673991e-07 4 -4.6590416786784772e-06 5 7.5877328526985366e-06
		 6 1.7417808351183339e-07 7 -6.4547116380708758e-06 8 5.5538935157528613e-06 9 2.1539494809985626e-06
		 10 -1.2767310408889898e-06 11 7.0065020736365113e-06 12 3.9736692087899428e-06 13 2.8760482564393897e-06
		 14 -8.3422200987115502e-06 15 -3.5692744404514087e-06 16 -2.5912931960192509e-06
		 17 -3.5401249078859109e-06 18 5.7957813623943366e-06;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 18;
	setAttr -av ".unw" 18;
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
	setAttr -s 4 ".st";
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
	setAttr -s 6 ".s";
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
	setAttr -s 3 ".r";
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
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "Body_CTRL_translateX.o" "RIGRN.phl[3]";
connectAttr "Body_CTRL_translateY.o" "RIGRN.phl[4]";
connectAttr "Body_CTRL_translateZ.o" "RIGRN.phl[5]";
connectAttr "Body_CTRL_rotateX.o" "RIGRN.phl[6]";
connectAttr "Body_CTRL_rotateY.o" "RIGRN.phl[7]";
connectAttr "Body_CTRL_rotateZ.o" "RIGRN.phl[8]";
connectAttr "SpineFwdFK_3_CTRL_rotateX.o" "RIGRN.phl[9]";
connectAttr "SpineFwdFK_3_CTRL_rotateY.o" "RIGRN.phl[10]";
connectAttr "SpineFwdFK_3_CTRL_rotateZ.o" "RIGRN.phl[11]";
connectAttr "SpineFwdFK_3_CTRL_translateX.o" "RIGRN.phl[12]";
connectAttr "SpineFwdFK_3_CTRL_translateY.o" "RIGRN.phl[13]";
connectAttr "SpineFwdFK_3_CTRL_translateZ.o" "RIGRN.phl[14]";
connectAttr "SpineFwdFK_2_CTRL_rotateX.o" "RIGRN.phl[15]";
connectAttr "SpineFwdFK_2_CTRL_rotateY.o" "RIGRN.phl[16]";
connectAttr "SpineFwdFK_2_CTRL_rotateZ.o" "RIGRN.phl[17]";
connectAttr "SpineFwdFK_2_CTRL_translateX.o" "RIGRN.phl[18]";
connectAttr "SpineFwdFK_2_CTRL_translateY.o" "RIGRN.phl[19]";
connectAttr "SpineFwdFK_2_CTRL_translateZ.o" "RIGRN.phl[20]";
connectAttr "SpineFwdFK_1_CTRL_rotateX.o" "RIGRN.phl[21]";
connectAttr "SpineFwdFK_1_CTRL_rotateY.o" "RIGRN.phl[22]";
connectAttr "SpineFwdFK_1_CTRL_rotateZ.o" "RIGRN.phl[23]";
connectAttr "SpineFwdFK_1_CTRL_translateX.o" "RIGRN.phl[24]";
connectAttr "SpineFwdFK_1_CTRL_translateY.o" "RIGRN.phl[25]";
connectAttr "SpineFwdFK_1_CTRL_translateZ.o" "RIGRN.phl[26]";
connectAttr "SpineFwdFK_0_CTRL_rotateX.o" "RIGRN.phl[27]";
connectAttr "SpineFwdFK_0_CTRL_rotateY.o" "RIGRN.phl[28]";
connectAttr "SpineFwdFK_0_CTRL_rotateZ.o" "RIGRN.phl[29]";
connectAttr "SpineFwdFK_0_CTRL_translateX.o" "RIGRN.phl[30]";
connectAttr "SpineFwdFK_0_CTRL_translateY.o" "RIGRN.phl[31]";
connectAttr "SpineFwdFK_0_CTRL_translateZ.o" "RIGRN.phl[32]";
connectAttr "LegFK_0_R_CTRL_rotateX.o" "RIGRN.phl[33]";
connectAttr "LegFK_0_R_CTRL_rotateY.o" "RIGRN.phl[34]";
connectAttr "LegFK_0_R_CTRL_rotateZ.o" "RIGRN.phl[35]";
connectAttr "LegFK_1_R_CTRL_rotateX.o" "RIGRN.phl[36]";
connectAttr "LegFK_1_R_CTRL_rotateY.o" "RIGRN.phl[37]";
connectAttr "LegFK_1_R_CTRL_rotateZ.o" "RIGRN.phl[38]";
connectAttr "LegFK_2_R_CTRL_rotateX.o" "RIGRN.phl[39]";
connectAttr "LegFK_2_R_CTRL_rotateY.o" "RIGRN.phl[40]";
connectAttr "LegFK_2_R_CTRL_rotateZ.o" "RIGRN.phl[41]";
connectAttr "LegFK_0_L_CTRL_rotateX.o" "RIGRN.phl[42]";
connectAttr "LegFK_0_L_CTRL_rotateY.o" "RIGRN.phl[43]";
connectAttr "LegFK_0_L_CTRL_rotateZ.o" "RIGRN.phl[44]";
connectAttr "LegFK_1_L_CTRL_rotateX.o" "RIGRN.phl[45]";
connectAttr "LegFK_1_L_CTRL_rotateY.o" "RIGRN.phl[46]";
connectAttr "LegFK_1_L_CTRL_rotateZ.o" "RIGRN.phl[47]";
connectAttr "LegFK_2_L_CTRL_rotateX.o" "RIGRN.phl[48]";
connectAttr "LegFK_2_L_CTRL_rotateY.o" "RIGRN.phl[49]";
connectAttr "LegFK_2_L_CTRL_rotateZ.o" "RIGRN.phl[50]";
connectAttr "NeckHeadFK_0_CTRL_translateX.o" "RIGRN.phl[51]";
connectAttr "NeckHeadFK_0_CTRL_translateY.o" "RIGRN.phl[52]";
connectAttr "NeckHeadFK_0_CTRL_translateZ.o" "RIGRN.phl[53]";
connectAttr "NeckHeadFK_0_CTRL_rotateX.o" "RIGRN.phl[54]";
connectAttr "NeckHeadFK_0_CTRL_rotateY.o" "RIGRN.phl[55]";
connectAttr "NeckHeadFK_0_CTRL_rotateZ.o" "RIGRN.phl[56]";
connectAttr "ClavicleFK_0_R_CTRL_rotateX.o" "RIGRN.phl[57]";
connectAttr "ClavicleFK_0_R_CTRL_rotateY.o" "RIGRN.phl[58]";
connectAttr "ClavicleFK_0_R_CTRL_rotateZ.o" "RIGRN.phl[59]";
connectAttr "ArmFK_0_R_CTRL_rotateX.o" "RIGRN.phl[60]";
connectAttr "ArmFK_0_R_CTRL_rotateY.o" "RIGRN.phl[61]";
connectAttr "ArmFK_0_R_CTRL_rotateZ.o" "RIGRN.phl[62]";
connectAttr "ArmFK_1_R_CTRL_rotateX.o" "RIGRN.phl[63]";
connectAttr "ArmFK_1_R_CTRL_rotateY.o" "RIGRN.phl[64]";
connectAttr "ArmFK_1_R_CTRL_rotateZ.o" "RIGRN.phl[65]";
connectAttr "ArmFK_2_R_CTRL_rotateX.o" "RIGRN.phl[66]";
connectAttr "ArmFK_2_R_CTRL_rotateY.o" "RIGRN.phl[67]";
connectAttr "ArmFK_2_R_CTRL_rotateZ.o" "RIGRN.phl[68]";
connectAttr "Head_CTRL_rotateX.o" "RIGRN.phl[69]";
connectAttr "Head_CTRL_rotateY.o" "RIGRN.phl[70]";
connectAttr "Head_CTRL_rotateZ.o" "RIGRN.phl[71]";
connectAttr "Head_CTRL_translateX.o" "RIGRN.phl[72]";
connectAttr "Head_CTRL_translateY.o" "RIGRN.phl[73]";
connectAttr "Head_CTRL_translateZ.o" "RIGRN.phl[74]";
connectAttr "ClavicleFK_0_L_CTRL_rotateX.o" "RIGRN.phl[75]";
connectAttr "ClavicleFK_0_L_CTRL_rotateY.o" "RIGRN.phl[76]";
connectAttr "ClavicleFK_0_L_CTRL_rotateZ.o" "RIGRN.phl[77]";
connectAttr "ArmFK_0_L_CTRL_rotateX.o" "RIGRN.phl[78]";
connectAttr "ArmFK_0_L_CTRL_rotateY.o" "RIGRN.phl[79]";
connectAttr "ArmFK_0_L_CTRL_rotateZ.o" "RIGRN.phl[80]";
connectAttr "ArmFK_1_L_CTRL_rotateX.o" "RIGRN.phl[81]";
connectAttr "ArmFK_1_L_CTRL_rotateY.o" "RIGRN.phl[82]";
connectAttr "ArmFK_1_L_CTRL_rotateZ.o" "RIGRN.phl[83]";
connectAttr "ArmFK_2_L_CTRL_rotateX.o" "RIGRN.phl[84]";
connectAttr "ArmFK_2_L_CTRL_rotateY.o" "RIGRN.phl[85]";
connectAttr "ArmFK_2_L_CTRL_rotateZ.o" "RIGRN.phl[86]";
connectAttr "RIGRN.phl[87]" "HIKRetargeterNode1.InputCharacterDefinitionDst";
connectAttr "RIGRN.phl[88]" "HIKRetargeterNode1.InputDstPropertySetState";
connectAttr "HIKRetargeterNode1.OutputCharacterState" "RIGRN.phl[89]";
connectAttr "HIKRetargeterNode1.OutputCharacterState" "RIGRN.phl[90]";
connectAttr "RIGRN.phl[1]" "biped_standard_retarget_exportNode.ei[0].objects[0]"
		;
connectAttr "RIGRN.phl[2]" "biped_standard_retarget_exportNode.ei[0].objects[1]"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "RIGRN.sr";
connectAttr "HIKSK2State1.OutputCharacterState" "HIKRetargeterNode1.InputCharacterState"
		;
connectAttr "composeMatrix24.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "composeMatrix25.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "composeMatrix27.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "composeMatrix22.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "composeMatrix23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "composeMatrix26.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "composeMatrix39.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "composeMatrix19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "composeMatrix14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "composeMatrix40.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "composeMatrix18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "composeMatrix41.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "HIKSK2State1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn";
connectAttr "composeMatrix17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "composeMatrix20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "composeMatrix15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "composeMatrix16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "composeMatrix42.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "composeMatrix21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "HIKRetargeterNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "composeMatrix33.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[572].dn"
		;
connectAttr "composeMatrix31.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[575].dn"
		;
connectAttr "composeMatrix8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[577].dn"
		;
connectAttr "composeMatrix9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[578].dn"
		;
connectAttr "composeMatrix2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[580].dn"
		;
connectAttr "composeMatrix7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[583].dn"
		;
connectAttr "composeMatrix36.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[586].dn"
		;
connectAttr "composeMatrix38.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[589].dn"
		;
connectAttr "composeMatrix3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[596].dn"
		;
connectAttr "composeMatrix37.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[598].dn"
		;
connectAttr "composeMatrix4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[602].dn"
		;
connectAttr "composeMatrix1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[603].dn"
		;
connectAttr "composeMatrix32.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[604].dn"
		;
connectAttr "composeMatrix5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[606].dn"
		;
connectAttr "composeMatrix34.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[608].dn"
		;
connectAttr "composeMatrix6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[609].dn"
		;
connectAttr "composeMatrix35.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[612].dn"
		;
connectAttr "composeMatrix29.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[619].dn"
		;
connectAttr "composeMatrix30.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[623].dn"
		;
connectAttr "composeMatrix28.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[628].dn"
		;
connectAttr "composeMatrix13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[629].dn"
		;
connectAttr "composeMatrix12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[631].dn"
		;
connectAttr "composeMatrix10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[632].dn"
		;
connectAttr "composeMatrix11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[635].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of rune.ma
