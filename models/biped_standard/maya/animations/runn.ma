//Maya ASCII 2018ff09 scene
//Name: runn.ma
//Last modified: Wed, May 20, 2020 01:34:04 PM
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
	setAttr ".t" -type "double3" 412.00385358985329 254.56149368308309 213.86236047394607 ;
	setAttr ".r" -type "double3" -29.738352729606831 71.400000000004013 -4.9858314034846437e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA1BD692-4DBA-E741-4CC8-1E86A64239DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 526.56451133116138;
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
	rename -uid "56715806-4C6C-092C-2632-399A3A37106A";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "381885B4-459B-476A-DF2F-82A1B54C0297";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F524701E-42DB-4F45-ED4B-D3B39C3E4ECB";
createNode displayLayerManager -n "layerManager";
	rename -uid "4EE9C0F2-4098-50A0-E67B-438AF028604F";
createNode displayLayer -n "defaultLayer";
	rename -uid "5A16310C-4349-467E-4292-F8956478A955";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7FD5BC92-4032-7A02-BCFD-3EB98025ADAC";
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
		"translate" " -type \"double3\" -0.76239705085754395 -3.54299545288085938 133.929473876953125"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"rotate" " -type \"double3\" 6.8656737448341687 -6.48178982058174036 -9.01146422429673599"
		
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
		"translate" " -type \"double3\" 1.2027386446789023e-06 2.5260014808736742e-06 -4.4226479190001555e-07"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotate" " -type \"double3\" 3.38655887191101934 -0.23307153737752595 2.34253467078755984"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translate" " -type \"double3\" -2.0856011815340025e-06 -4.2866854528256226e-06 -6.6033251755470701e-08"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotate" " -type \"double3\" 4.4690222611335102 0.72304226920204362 3.51805304223492588"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translate" " -type \"double3\" 2.2198505575943273e-06 2.8453389404603513e-06 1.0305043929292879e-07"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotate" " -type \"double3\" 6.59332684453645346 1.57651451692560229 2.67952231400107976"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translate" " -type \"double3\" -0.14113430678844452 -0.25387537479400635 -0.4858647882938385"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotate" " -type \"double3\" 2.94640544873847032 8.57336223633143746 5.98526813548309189"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 12.79796466842397606 10.49277604621199167 8.27475661164967491"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotate" " -type \"double3\" -1.0607481720882004e-05 2.3191626236753239e-06 14.94112107464305517"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL" 
		"rotate" " -type \"double3\" 8.65710225615737272 -5.60783399252841974 18.5546240681202157"
		
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
		"rotate" " -type \"double3\" 8.4372078107386006 -2.17276320100222309 -52.64925520829409322"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotate" " -type \"double3\" 0.00030797179628741592 -0.00011796000177506412 96.80125597883218802"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL" 
		"rotate" " -type \"double3\" 15.02207041232333928 -9.42438045092077026 -21.21995097513642392"
		
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
		"translate" " -type \"double3\" 3.5726548048842233e-06 2.1046898837084882e-06 -8.9917841705755563e-07"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotate" " -type \"double3\" -5.64556327592866314 0.36838319603199954 0.22519359399693187"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 1.77300086466582973 7.81787303224881036 -12.6334255959250541"
		
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
		"rotate" " -type \"double3\" 14.07189562428118457 -3.56361639032132427 5.71757503613325646"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotate" " -type \"double3\" -16.16836908409734974 -7.86430043742728468 85.31475315160423634"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL" 
		"rotate" " -type \"double3\" -0.68560507603325005 -5.76663900412782926 3.42344784008972436"
		
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
		"translate" " -type \"double3\" 3.4386329161861795e-07 4.3104619180667214e-06 -4.157805051363539e-07"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotate" " -type \"double3\" 0.17002518550719525 -2.24009728477111159 -1.50594755927080604"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL" 
		"rotate" " -type \"double3\" 1.93838137158511459 6.75602396422521423 -9.34117813652808593"
		
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
		"rotate" " -type \"double3\" 22.76174774098938869 6.94896576030502544 -8.30019195826691636"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotate" " -type \"double3\" -17.46906028693206636 -7.48379157559602426 90.22204758024635396"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL" 
		"rotate" " -type \"double3\" -0.3424207096406911 3.99029107788440296 11.94302327883857728"
		
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
		"track" " -k 1 1"
		2 "RIG:HIKSolverNode1" "InputStance" " 1"
		2 "RIG:CustomRigRetargeterNode1" "connected" " 0"
		2 "RIG:CustomRigRetargeterNode1" "pythonVar" " -type \"string\" \"\""
		3 "RIG:HIKSolverNode1.OutputCharacterState" "RIG:HIKState2SK1.InputCharacterState" 
		""
		3 "RIG:HIKSolverNode1.OutputCharacterState" "RIG:HIKState2GlobalSK1.InputCharacterState" 
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
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.76239693164825439 0 133.92945861816406 1;
	setAttr ".HipsGX" -type "matrix" 0.14218064149081389 0.98268837996906067 0.11877799905303982 0
		 -0.12941853669481462 -0.10051165819201824 0.98648276666511725 0 0.9813437254830919 -0.15563082741306178 0.11288728012354698 0
		 -0.76239693359530358 37.910819751379172 131.34336387794838 1;
	setAttr ".LeftUpLegGX" -type "matrix" 0.065860892646249225 -0.66826240928580571 0.74100451763492614 0
		 -0.020700477944940985 -0.74337210306683998 -0.66855770625641153 0 0.99761407018580617 0.028692659645172647 -0.062792501541155787 0
		 2.7757394993659013 34.523856899441654 131.98319526792622 1;
	setAttr ".LeftLegGX" -type "matrix" -0.042601767878466874 -0.45986271303510812 -0.88696751605321955 0
		 -0.054325583110702083 0.88752633975212458 -0.45754314251868972 0 0.99761406385100249 0.028692880757876592 -0.062792501148647234 0
		 3.9150987197616636 22.9632697079035 144.80217774834165 1;
	setAttr ".LeftFootGX" -type "matrix" -0.16724611353440863 -0.96416057657413634 -0.20596873570487376 0
		 -0.17987785010736881 -0.17556440427884973 0.96789519008566371 0 -0.9693671629204218 0.19892592221840047 -0.14406866738181517 0
		 3.1921269720321734 15.159154946698226 129.74989978972437 1;
	setAttr ".RightUpLegGX" -type "matrix" -0.040924972989771519 0.98939693335561418 0.13935155130924431 0
		 -0.16653185792836014 -0.14427193922275267 0.97542439371169887 0 0.98518642239969767 0.016712744221487774 0.17067043475620516 0
		 -5.2152914401507005 35.791148661241706 131.06396029667735 1;
	setAttr ".RightLegGX" -type "matrix" -0.1160783766276839 0.79756849775846705 0.59195464510618023 0
		 -0.12622811058428041 -0.60299682493549156 0.78769365442159001 0 0.98518641615574698 0.016712884281844531 0.17067045708375345 0
		 -4.5073083516920667 18.675108519704072 128.65324312144207 1;
	setAttr ".RightFootGX" -type "matrix" 0.021269147684446738 0.60198414751076412 -0.79822472368532671 0
		 -0.014727784250315998 -0.79813004475946903 -0.60230517515900817 0 -0.9996653018525018 0.024566599235269184 -0.0081096531467340083 0
		 -2.5374028381856055 5.1399853771870436 118.60748935320672 1;
	setAttr ".SpineGX" -type "matrix" -0.038360897807010325 0.94710557781601612 0.31862119513496057 0
		 -0.10734735751182164 -0.32091655435500743 0.94100430922293821 0 0.99348124610113797 0.0018946267970608999 0.11397992820944629 0
		 -0.66415489956992424 38.769386031297181 131.67298424502212 1;
	setAttr ".LeftArmGX" -type "matrix" 0.65942293832172583 -0.62040937555853681 -0.42456282825302621 0
		 -0.080794493167650736 -0.6199643319082202 0.78045914501361158 0 -0.74741798097779588 -0.48035032411840983 -0.45894436245629439 0
		 5.3039992856607103 53.340426797104691 133.80608706501343 1;
	setAttr ".LeftForeArmGX" -type "matrix" -0.39307533684262941 -0.34646681845843791 0.85173500765986043 0
		 -0.39285033039815231 0.90077780577664124 0.18511607851908221 0 -0.83136057007300812 -0.261839814251974 -0.49018314352941122 0
		 12.97177315749876 46.126302957791637 128.86927456601762 1;
	setAttr ".LeftHandGX" -type "matrix" -0.61398333614973888 -0.44506693489109012 0.65187413386104565 0
		 -0.64689449601486249 -0.18948388663786614 -0.73866323025468517 0 0.45227422428888764 -0.87522070369207983 -0.17157140167471557 0
		 8.6682468896362224 42.333049384682994 138.19437767705929 1;
	setAttr ".RightArmGX" -type "matrix" 0.42406605363076222 0.90505929411458874 0.032181614235987366 0
		 -0.46577392489503905 0.24843807079752489 -0.84931335552096099 0 -0.77667408418583284 0.34517560619952081 0.5269071719372318 0
		 -8.0483729211227981 51.944953610280962 135.82506816246931 1;
	setAttr ".RightForeArmGX" -type "matrix" -0.63504724767193077 -0.036001318982966247 -0.7716339146614748 0
		 -0.091061476342734843 -0.9884595216575125 0.12106023943014589 0 -0.76708721847687389 0.14714509531781694 0.62444016540684144 0
		 -12.979417737409076 41.420913426315508 135.45086046275048 1;
	setAttr ".RightHandGX" -type "matrix" -0.71516781792600415 0.19238000018072993 -0.67195604598323289 0
		 -0.63904134421770342 0.20945755849029782 0.74010383837115357 0 0.28312744936404344 0.9587061420068963 -0.026858531137519133 0
		 -6.026681902727816 41.815072983180542 143.898995842956 1;
	setAttr ".HeadGX" -type "matrix" 0.012004071011525399 0.93947828579022086 0.34239809112759201 0
		 0.013178745456213593 -0.34254166729639218 0.93941020158076238 0 0.9998410988488875 -0.006764369481062963 -0.016493039688701645 0
		 -1.5644599570400013 61.479643956393019 139.20855224406756 1;
	setAttr ".LeftToeBaseGX" -type "matrix" -0.23573418630137719 -0.65542099739376414 0.7175323752864331 0
		 0.03828228990518244 0.73150467752746895 0.68076087801448193 0 -0.9710632624543285 0.18794739405162439 -0.14734964330041703 0
		 2.16876647981523 9.2595598003353565 128.48959906570587 1;
	setAttr ".RightToeBaseGX" -type "matrix" 0.015691118829028627 0.0051087195354595988 -0.99986383561693093 0
		 -0.029626409484551624 -0.99954551090288912 -0.0055720279015712589 0 -0.9994378743328407 0.029709806774703914 -0.015532634369699823 0
		 -2.6675461201535198 1.4565113277438191 123.49173656254727 1;
	setAttr ".LeftShoulderGX" -type "matrix" 0.8387750145294024 -0.14568218424930959 -0.52462670175425885 0
		 0.43808490391478599 -0.39160064676006245 0.80915421918140784 0 -0.32332350975945817 -0.90852938017955798 -0.26464367248693954 0
		 -0.28511580177950258 54.311171860291232 137.30189036998706 1;
	setAttr ".RightShoulderGX" -type "matrix" 0.90778785941985862 0.33323415675951129 0.25470806634005227 0
		 0.095449006136857556 0.42720923148020967 -0.89910052817556219 0 -0.40842464362155895 0.84050417566295677 0.35600848469627316 0
		 -1.9994062365006517 54.165435047713856 137.52230343841433 1;
	setAttr ".NeckGX" -type "matrix" 0.0010317949110468603 0.80614254962601084 0.59172047884261758 0
		 0.054190832520447721 -0.5908963912973072 0.80492534338444133 0 0.99853006417934287 0.031235307494802633 -0.044295219783886605 0
		 -1.5704073515320676 56.8323128497575 135.79735851459677 1;
	setAttr ".Spine1GX" -type "matrix" -0.051741576475964647 0.97976761769096632 0.19333448887343099 0
		 0.0033393913616774767 -0.19342298003738084 0.98110977941247379 0 0.99865492425017166 0.051409786204845508 0.0067361823948443034 0
		 -0.81536906966995581 42.502792004110105 132.92896572002402 1;
	setAttr ".Spine2GX" -type "matrix" -0.064326090361963892 0.99603023519747824 0.061529868122735316 0
		 0.074222534085815681 -0.056711536378974352 0.99562785069292659 0 0.99516489564927124 0.068611749824596474 -0.070279856668768376 0
		 -1.0358516951819223 46.677806213248516 133.7528182171485 1;
	setAttr ".Spine3GX" -type "matrix" -0.037447275900958907 0.94252897642437927 0.33201932191968847 0
		 0.14766237142876093 -0.32338592821025203 0.93467500528238623 0 0.98832865262099556 0.084027793235370046 -0.12706614172296976 0
		 -1.3765713640784383 51.953555493051425 134.07874591332779 1;
	setAttr ".LeftHandThumb1GX" -type "matrix" -0.80202483636909239 -0.16533584388720574 0.57395140959251723 0
		 0.20415608013672162 -0.97893283847085644 0.0032852255024015398 0 0.56131671700595231 0.11981050241735347 0.81888276738502808 0
		 7.2036225120809219 42.700664208678916 138.62371413312172 1;
	setAttr ".LeftHandThumb2GX" -type "matrix" -0.46235076890021132 -0.56467585880735593 0.68364679548547547 0
		 0.55565977184533966 -0.78535008361013348 -0.27288727366138293 0 0.69099492360665704 0.25370538160183415 0.67687487388445655 0
		 5.755347825891346 42.402114734476569 139.66013679208768 1;
	setAttr ".LeftHandThumb3GX" -type "matrix" -0.12076129730216205 -0.80993791088710032 0.57394885624220837 0
		 0.7334573957225009 -0.46240945030234154 -0.4982145611391286 0 0.66892223593917632 0.36080199663932971 0.6498961159194655 0
		 5.0891122594401637 41.588417024507997 140.64527478045252 1;
	setAttr ".LeftHandIndex1GX" -type "matrix" -0.68197699143718482 -0.53845266083112953 0.49495293693983605 0
		 -0.40307921527730856 -0.28797778198602891 -0.86867482022551867 0 0.61027501714939625 -0.79192057328907406 -0.020644830946495156 0
		 6.0252221069207881 41.931556150379713 141.23615773949936 1;
	setAttr ".LeftHandIndex2GX" -type "matrix" -0.38012016011544603 -0.42433576603169237 -0.8218563265803247 0
		 0.59160308491683367 0.57148612080197969 -0.56869095618586452 0 0.71099539646237853 -0.70238363548491289 0.033804952481892865 0
		 4.6976277134785596 40.883364489871887 142.19967469592191 1;
	setAttr ".LeftHandIndex3GX" -type "matrix" 0.2381136905965906 -0.0034031665628832114 -0.97123132610507257 0
		 0.62418841347392584 0.76667172856160226 0.1503438894976096 0 0.7441039543204806 -0.6420302789446235 0.18467925190154369 0
		 4.2088486523098014 40.337729182939341 141.14289680224289 1;
	setAttr ".LeftHandMiddle1GX" -type "matrix" -0.7869971410150014 -0.61693645976406219 0.0049904556907282762 0
		 -0.087156422181008802 0.10316641147856398 -0.99083825603134779 0 0.6107693984695215 -0.78022182496801662 -0.13496164542846084 0
		 6.6023255138742263 40.937370831682024 141.1918437107237 1;
	setAttr ".LeftHandMiddle2GX" -type "matrix" -0.42646720414737943 -0.19681611826775111 -0.88283018716893291 0
		 0.66472118393715884 0.5937263794776142 -0.45346966154042484 0 0.61340970925793203 -0.78022586595319932 -0.12237698593150895 0
		 4.8613765149722568 39.572628844316249 141.20287581631732 1;
	setAttr ".LeftHandMiddle3GX" -type "matrix" 0.067645947648205779 0.14175717751118272 -0.98758832137080543 0
		 0.77392132792120827 0.61724596814724453 0.14160929699227287 0 0.62965848841097327 -0.7738942775858203 -0.067954654674502679 0
		 4.2508848572043831 39.290882888598546 139.93909714181621 1;
	setAttr ".LeftHandRing1GX" -type "matrix" -0.71299121669867827 -0.70087735759956216 0.020358155977280704 0
		 -0.29764727758775955 0.27624792076411292 -0.91383433094741007 0 0.63486189289886918 -0.65761540118656048 -0.40557657854849727 0
		 6.9747877703753272 40.145874141871779 140.6470600280243 1;
	setAttr ".LeftHandRing2GX" -type "matrix" -0.51177225331017517 -0.24869628198464311 -0.82233771655496979 0
		 0.40500479911652809 0.77431208299810972 -0.4862220797287084 0 0.75766765368095812 -0.58188569105121013 -0.29554825175502042 0
		 5.624496848241364 38.818523524924274 140.68561906502097 1;
	setAttr ".LeftHandRing3GX" -type "matrix" -0.09536323135680902 0.13521823432864852 -0.98621594147034131 0
		 0.5626081755041934 0.82463974905306814 0.058662808810495057 0 0.82120514791435162 -0.54925887647514304 -0.15471519528550848 0
		 4.9459330489953608 38.488769693774024 139.59528745624152 1;
	setAttr ".LeftHandPinky1GX" -type "matrix" -0.68038396567681736 -0.71819547984672183 -0.14585236363400411 0
		 -0.42803579137818759 0.55098443243474327 -0.7163808459987 0 0.59486386724118445 -0.42498400904304823 -0.68229434374656983 0
		 7.2764411330538774 39.439483623131729 139.88781333854175 1;
	setAttr ".LeftHandPinky2GX" -type "matrix" -0.57336625764972127 -0.34803600595353679 -0.74170214584337302 0
		 0.03916588997337081 0.89261015667484789 -0.44912486155132664 0 0.81836249159608287 -0.28656246572224742 -0.49816140515684149 0
		 6.204648969606664 38.308128384911583 139.65806177691428 1;
	setAttr ".LeftHandPinky3GX" -type "matrix" -0.31641473424565475 -0.055678931825044603 -0.94698551863430036 0
		 0.19232076330283959 0.97377976735957161 -0.12151415013796882 0 0.92892111610990225 -0.22057384530347551 -0.29741005163439538 0
		 5.624323108217375 37.955867899608286 138.90736012627181 1;
	setAttr ".RightHandThumb1GX" -type "matrix" -0.93617409849342892 -0.079419581968113384 -0.34244793372135601 0
		 -0.0056059728920577756 0.97739453952562172 -0.21134920670168802 0 0.35149200613662573 -0.19593989921787092 -0.91545667593641 0
		 -4.6426267754427428 42.516408705065196 144.13802501734787 1;
	setAttr ".RightHandThumb2GX" -type "matrix" -0.68121475216738425 0.39480170943752463 -0.61650472151860947 0
		 0.49516728676737354 0.86874899882853107 0.0091942998571798856 0 0.53921778489304995 -0.29900967753508356 -0.78729752520594043 0
		 -2.9520995738637019 42.659818220218327 144.75637239915113 1;
	setAttr ".RightHandThumb3GX" -type "matrix" -0.40649974694896868 0.6610503425832438 -0.6306904155772477 0
		 0.73659479860865784 0.64551680631237995 0.2018319980353383 0 0.54054237428077345 -0.38251862351896371 -0.749328662382577 0
		 -1.9704726805671158 42.090909306691024 145.64475442664229 1;
	setAttr ".RightHandIndex1GX" -type "matrix" -0.85514736778112344 0.49995884660576062 -0.13698222905783913 0
		 -0.019533345771498369 0.2329828357482247 0.97228465309789147 0 0.51801682190831166 0.83412238307538211 -0.18946878970600628 0
		 -3.2281461711864194 42.49307378533873 146.74641000550835 1;
	setAttr ".RightHandIndex2GX" -type "matrix" -0.094811070303309541 0.38747069603296636 0.91699363174651871 0
		 0.80625751873835616 -0.51041777850798165 0.29903595914345682 0 0.58391752365022465 0.76768492957639001 -0.26400790608518376 0
		 -1.563444249618279 41.519810794415143 147.01307268174372 1;
	setAttr ".RightHandIndex3GX" -type "matrix" 0.39229316939979103 0.15138794070161421 0.9072969528508249 0
		 0.71133251804751274 -0.67529671444314743 -0.19488559780157302 0 0.58319132196085743 0.7218421149201647 -0.37260145345547441 0
		 -1.4415279996422323 41.021569547605061 145.83393451576492 1;
	setAttr ".RightHandMiddle1GX" -type "matrix" -0.88468218431534751 0.45860042192109185 0.083803852947361951 0
		 0.10473881558962905 0.020355467414090965 0.99429244937305761 0 0.45427702547937893 0.888410244805657 -0.066041377894582476 0
		 -3.6054415910532978 41.421815486959865 146.92945141952526 1;
	setAttr ".RightHandMiddle2GX" -type "matrix" -0.18113769373909613 0.17979969515512662 0.96688220871469399 0
		 0.87233963548772675 -0.42458777401533759 0.24238148137562321 0 0.45410648119578972 0.88735409605119053 -0.079937550357472797 0
		 -1.6484004832199246 40.407327251060487 146.74407245615589 1;
	setAttr ".RightHandMiddle3GX" -type "matrix" 0.48827543839049725 -0.11724712530835449 0.8647786432642357 0
		 0.74598661947937506 -0.45815704804074425 -0.48331968387263385 0 0.45287202001665211 0.88110593316914188 -0.13624197043936948 0
		 -1.389101337397243 40.149942165286483 145.3599782215374 1;
	setAttr ".RightHandRing1GX" -type "matrix" -0.83287266862048015 0.55155537962428181 0.045932353222047528 0
		 -0.076356707654787706 -0.19670481665367021 0.97748497088260522 0 0.54817220931119948 0.81061327296853569 0.20594501845424099 0
		 -3.84229998000683 40.485902323184625 146.56902440768499 1;
	setAttr ".RightHandRing2GX" -type "matrix" -0.28891093526797357 0.21029302543019976 0.93397450756693356 0
		 0.6748570966736579 -0.64723027443262149 0.35448677115948274 0 0.67904231055025532 0.73271403865925222 0.045074139306472055 0
		 -2.2649746466575964 39.441346500636868 146.48203407687819 1;
	setAttr ".RightHandRing3GX" -type "matrix" 0.34056649847024539 -0.14218748864112857 0.92940689592537762 0
		 0.62770385908995718 -0.70156120962141588 -0.33734216225979191 0 0.70000166100038075 0.69827973422437661 -0.14967660928896956 0
		 -1.8819063714666844 39.162515096001435 145.243645784769 1;
	setAttr ".RightHandPinky1GX" -type "matrix" -0.77674829237651144 0.59719052900260117 0.20006389569276967 0
		 -0.18005404609349429 -0.51495890857250404 0.83809179865166195 0 0.6035251699602393 0.61496405956072764 0.50752002391339679 0
		 -4.0351964061043457 39.603234938981707 145.97730363012326 1;
	setAttr ".RightHandPinky2GX" -type "matrix" -0.38982232033037267 0.29017735789486188 0.87397692162745444 0
		 0.3453241627640069 -0.83374125731084514 0.43084421600976636 0 0.85369185376433232 0.46975804072191241 0.22480569831196112 0
		 -2.8116019862015369 38.662503838300182 145.66214858651378 1;
	setAttr ".RightHandPinky3GX" -type "matrix" 0.092421641204463445 0.0022827800440101131 0.99571734400498646 0
		 0.39622545485932942 -0.9174982902519474 -0.034673856235962482 0 0.91348980791172008 0.39773317223991456 -0.085701193348655669 0
		 -2.4170488871280811 38.368802870529052 144.77755112934469 1;
	setAttr ".LeftInHandIndexGX" -type "matrix" -0.55452035670035216 -0.26735236686051955 0.7880555122545434 0
		 -0.6716678910568844 -0.41528862670016908 -0.61351251059508605 0 0.49129411912413751 -0.86951606261732195 0.050713956308971436 0
		 7.8285176100978555 42.800986909930046 138.67341199959671 1;
	setAttr ".LeftInHandMiddleGX" -type "matrix" -0.4839552306989191 -0.40405255314253202 0.77622733073382499 0
		 -0.70208881936852818 -0.35020207245622648 -0.62002403031259279 0 0.52235871237767573 -0.84504440282529902 -0.11419865523188735 0
		 8.1722685208550487 42.24810378922232 138.67376301789733 1;
	setAttr ".LeftInHandRingGX" -type "matrix" -0.48706700232854516 -0.50913718880780323 0.70960908831241276 0
		 -0.78701740476807969 -0.096385743166453597 -0.60935489914036789 0 0.3786414396692509 -0.85527136716198959 -0.35375351401513955 0
		 8.4666238652892929 41.705310474775217 138.47359831347694 1;
	setAttr ".LeftInHandPinkyGX" -type "matrix" -0.47234721220808606 -0.59128484074024634 0.6536591988414393 0
		 -0.86307240865601931 0.15977798336547538 -0.47914195542486132 0 0.17886902620618206 -0.79047658608110849 -0.58579231671438736 0
		 8.5335746700493385 41.013164114821016 138.14812838196067 1;
	setAttr ".RightInHandIndexGX" -type "matrix" -0.62863427969536756 0.0053042610201912144 -0.77768408141874401 0
		 -0.71194300504489993 0.39850856489194775 0.57821110442069368 0 0.31298048017091806 0.91714927278566605 -0.24673960051176749 0
		 -5.2724652455478278 42.51032434257381 144.21738587285606 1;
	setAttr ".RightInHandMiddleGX" -type "matrix" -0.58512637927566902 0.1521295170917826 -0.79654487023969189 0
		 -0.72902406513995599 0.33152634650562318 0.59884404816233028 0 0.3551774665185839 0.93109982902052768 -0.083078731787296412 0
		 -5.5035844481095175 41.915323133563945 144.34546805731424 1;
	setAttr ".RightInHandRingGX" -type "matrix" -0.60546312197678287 0.26582257879456872 -0.75016849075999803 0
		 -0.76412851338121279 0.069395052221571552 0.64132046728993719 0 0.22253544204001635 0.96152102594284017 0.16110646698963921 0
		 -5.6967702642694027 41.30009261118132 144.2713255226175 1;
	setAttr ".RightInHandPinkyGX" -type "matrix" -0.60437694195588354 0.35853711976028102 -0.71146303191807314 0
		 -0.79519142716986735 -0.2165702934730713 0.56636375426093222 0 0.048980671571595968 0.90804649756440947 0.41599573564329406 0
		 -5.6437236253086764 40.557462654370546 144.08377961619743 1;
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
	rename -uid "FCFF1451-4270-3D34-338F-55855336D1B6";
	setAttr ".ei[0].exportFile" -type "string" "runn";
	setAttr ".ei[0].t" 2;
	setAttr ".ei[0].fe" 18;
createNode animCurveTA -n "Body_CTRL_rotateX";
	rename -uid "66D0F5F4-4F94-71D7-362D-359426564AEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.8459771896355956 1 6.0826987023927508
		 2 6.0910405011497089 3 6.7211317341333059 4 8.0752583693587496 5 9.3077872374454618
		 6 9.7647534604973725 7 9.132333745570854 8 7.9014811674784049 9 6.7364334642520021
		 10 6.0461147150517931 11 6.2109458425376411 12 6.9186446897301002 13 8.0460344180913363
		 14 9.1403024299876332 15 9.6446609419633891 16 9.127748766523748 17 8.0184301059932697
		 18 6.8656737448341687;
createNode animCurveTA -n "Body_CTRL_rotateY";
	rename -uid "0EAC439A-495F-0F3C-6008-BEA9A176BB1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -6.5257279391336089 1 -8.5700360675384353
		 2 -9.5471992051407515 3 -9.1970039483150607 4 -7.6087463387649699 5 -5.0819630122619968
		 6 -2.1200139093382813 7 0.71267344449960113 8 3.5334676007640291 9 6.309776604725756
		 10 8.5273335121709355 11 9.5501834056465409 12 9.1257368107084087 13 7.4439962220280886
		 14 4.8284133245843366 15 1.7811492657675498 16 -1.1592678854995702 17 -3.9037780026691804
		 18 -6.4817898205817404;
createNode animCurveTA -n "Body_CTRL_rotateZ";
	rename -uid "048BF65F-4ED9-7F8C-50FB-F5844015A05D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.013355230632401 1 -7.6992981934635747
		 2 -4.5784129045822537 3 -1.1164960317281838 4 0.54972675678253224 5 0.88944858572956453
		 6 1.4369095015724171 7 4.2499279536345771 8 7.6655764545252811 9 9.0105793800644296
		 10 7.5080765851284248 11 4.4452067568063338 12 1.3450620799785016 13 -0.40873805461682339
		 14 -0.98528203413825166 15 -1.571638463208751 16 -3.868191364399626 17 -7.2154433097762096
		 18 -9.011464224296736;
createNode animCurveTL -n "Body_CTRL_translateX";
	rename -uid "A4E4572F-4344-3853-2451-228F82B320E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.75823187828063965 1 -0.49750891327857971
		 2 -0.19672787189483643 3 0.11831047385931015 4 0.43221291899681091 5 0.72243475914001465
		 6 0.94914895296096802 7 1.0412009954452515 8 0.95123499631881714 9 0.75989145040512085
		 10 0.50553309917449951 11 0.21709179878234863 12 -0.084079273045063019 13 -0.38827186822891235
		 14 -0.67877686023712158 15 -0.92197281122207642 16 -1.0383470058441162 17 -0.95236897468566895
		 18 -0.76239705085754395;
createNode animCurveTL -n "Body_CTRL_translateY";
	rename -uid "E900BA8F-47B3-01FD-6B51-A6B7C4FD4E51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.5304450988769531 1 -2.5144996643066406
		 2 -1.3327903747558594 3 -0.88566207885742188 4 -1.007781982421875 5 -1.6747474670410156
		 6 -2.8268966674804688 7 -3.5511627197265625 8 -3.7206954956054688 9 -3.2969856262207031
		 10 -2.3073844909667969 11 -1.0431060791015625 12 -0.40100860595703125 13 -0.48674774169921875
		 14 -1.2722206115722656 15 -2.7253227233886719 16 -3.6994094848632813 17 -3.9443130493164063
		 18 -3.5429954528808594;
createNode animCurveTL -n "Body_CTRL_translateZ";
	rename -uid "869D4934-484D-4435-428B-048C5A810801";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.7612367868423462 1 9.0920066833496094
		 2 16.464424133300781 3 23.804140090942383 4 31.171340942382813 5 38.554775238037109
		 6 45.881523132324219 7 53.211292266845703 8 60.548789978027344 9 67.843742370605469
		 10 75.175834655761719 11 82.550628662109375 12 89.890647888183594 13 97.254310607910156
		 14 104.63579559326172 15 111.96327209472656 16 119.29484558105469 17 126.63461303710938
		 18 133.92947387695313;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateX";
	rename -uid "A5F62519-4841-042D-E7C0-0CB8D25E787A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.14067316055297852 1 -0.11537979543209076
		 2 -0.1038544774055481 3 -0.11469287425279617 4 -0.14569918811321259 5 -0.17340156435966492
		 6 -0.18426182866096497 7 -0.17524644732475281 8 -0.15979412198066711 9 -0.13898834586143494
		 10 -0.11390026658773422 11 -0.1058783233165741 12 -0.11848964542150497 13 -0.14482361078262329
		 14 -0.16987688839435577 15 -0.18168929219245911 16 -0.17354127764701843 17 -0.15921071171760559
		 18 -0.14113430678844452;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateY";
	rename -uid "7882664F-4254-87AE-192D-7991FA0E3DDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.25262480974197388 1 -0.21287547051906586
		 2 -0.23356123268604279 3 -0.29115286469459534 4 -0.36483597755432129 5 -0.42135879397392273
		 6 -0.44144919514656067 7 -0.40753859281539917 8 -0.32908359169960022 9 -0.24959209561347961
		 10 -0.21314890682697296 11 -0.24004048109054565 12 -0.29835274815559387 13 -0.362833172082901
		 14 -0.4144248366355896 15 -0.43609404563903809 16 -0.40646576881408691 17 -0.33383405208587646
		 18 -0.25387537479400635;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateZ";
	rename -uid "6D98C24F-43F9-DED3-2698-C993CA3D4ECD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.48630788922309875 1 -0.44077253341674805
		 2 -0.30162143707275391 3 -0.13498774170875549 4 -0.041874300688505173 5 -0.0029955434147268534
		 6 0.049889892339706421 7 0.21011680364608765 8 0.39769071340560913 9 0.48443517088890076
		 10 0.43143913149833679 11 0.29536134004592896 12 0.1451946496963501 13 0.047107357531785965
		 14 -0.0038677342236042023 15 -0.059400569647550583 16 -0.19582571089267731 17 -0.37948206067085266
		 18 -0.4858647882938385;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateX";
	rename -uid "1DE9B75C-421B-710E-3E59-73ADCBFEBE76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.1901769287069328e-06 1 -1.3806311471853405e-06
		 2 6.9930763402226148e-07 3 1.7407386394552304e-06 4 4.8289297183146118e-07 5 3.7083830761730496e-07
		 6 1.8341355598749942e-06 7 2.3596298888151068e-06 8 2.0861805296590319e-06 9 -9.5900202268239809e-07
		 10 1.4345847603181028e-06 11 1.4894152400302119e-07 12 2.7150697405886604e-06 13 2.6097930003743386e-06
		 14 -1.2573382264235988e-06 15 1.2170564787084004e-06 16 2.094030378430034e-06 17 1.9855635855492437e-06
		 18 2.2198505575943273e-06;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateY";
	rename -uid "CF9BED35-46F3-8E9B-2124-0FB5D6BF14A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.7642749829465174e-07 1 -1.0410140305339155e-07
		 2 1.089545165200434e-07 3 -8.3311152820897405e-07 4 7.1202315155005635e-09 5 -1.9752351363422349e-06
		 6 5.5267452125917771e-07 7 -3.6309074857854284e-07 8 -2.7161144089404843e-07 9 -1.2825223620893667e-06
		 10 -3.1948568448569858e-06 11 6.6879323412649683e-08 12 -2.0927818695781752e-06 13 -1.1997495903415256e-06
		 14 -3.2809221011120826e-06 15 1.4956222003092989e-06 16 -2.7022454105463112e-06 17 -1.5299370943466784e-06
		 18 2.8453389404603513e-06;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateZ";
	rename -uid "D0F7E3D1-433C-19ED-DA97-3082C39397CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.6385355757556681e-08 1 -6.4944458699756069e-07
		 2 -3.8296391835501709e-07 3 -6.068849529583531e-07 4 -1.6630031041131588e-07 5 -6.9580659101120546e-07
		 6 -8.1030538012782927e-07 7 -1.0097146230236831e-08 8 -4.9633825938144582e-07 9 1.7821173514676047e-07
		 10 -5.0905691750813276e-07 11 -2.485288348452741e-07 12 4.2639889841211698e-08 13 -2.8241419158803183e-07
		 14 -6.9586016948619545e-09 15 -2.4752719696152781e-07 16 5.2703104103102305e-08 17 -1.931641158137154e-08
		 18 1.0305043929292879e-07;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateX";
	rename -uid "19EF73B4-4391-42B3-645B-8EAAEDF5C018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.0630550068290177e-07 1 1.7604454569664085e-06
		 2 -4.0063218875729945e-06 3 -2.4797150217636954e-06 4 1.1751617421396077e-06 5 -3.8957186916377395e-06
		 6 1.3615431271318812e-06 7 -1.5085381619428517e-06 8 -1.2619542530956096e-06 9 -5.8235372080162051e-07
		 10 -1.4105950185694383e-07 11 -7.8902996847318718e-07 12 -1.6539145519800513e-07
		 13 -1.5188817314992775e-06 14 -2.068670710286824e-06 15 -2.8955194011359708e-06 16 -1.0511711252547684e-06
		 17 -2.0225188563927077e-06 18 -2.0856011815340025e-06;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateY";
	rename -uid "07BFDF65-4A77-FF4E-F83D-8C9EF4E8184D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.1611150310200173e-07 1 -7.7626800987218303e-08
		 2 -4.0296922065863328e-07 3 -5.565328109469192e-08 4 6.0338425100781024e-07 5 1.1241583024457213e-06
		 6 -9.8441228146839421e-07 7 1.4381263326868066e-06 8 5.0057809630743577e-07 9 1.7363267943437677e-06
		 10 3.1791089440957876e-06 11 8.6603768068016507e-07 12 -2.3591376248077722e-06 13 2.6818447622645181e-06
		 14 1.313608208874939e-06 15 -4.0022337088885251e-06 16 -2.2437523057305953e-06 17 -3.1217364266922232e-06
		 18 -4.2866854528256226e-06;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateZ";
	rename -uid "5D4BF50A-4421-BA75-24CB-06B3554DB472";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.182416794648816e-08 1 5.6352706678808318e-07
		 2 -7.4249567205697531e-07 3 -7.276123170640858e-08 4 -1.0721928447310347e-06 5 -8.3381439708318794e-07
		 6 4.3885112432917595e-08 7 5.8653849777101641e-08 8 1.8142951319077838e-07 9 -5.2232803682272788e-07
		 10 -3.9602127799298614e-07 11 -8.0980328220903175e-07 12 -4.8844157163330237e-07
		 13 -1.7438200927699654e-07 14 -2.8860085876658559e-07 15 1.4083741461945465e-07 16 -8.9178735152017907e-07
		 17 -1.381130800837127e-07 18 -6.6033251755470701e-08;
createNode animCurveTA -n "Head_CTRL_rotateX";
	rename -uid "48BA23BB-4CA9-F968-43EC-538B4AD318BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.17040511753473961 1 0.18367605589713434
		 2 0.16704108316182054 3 0.13664143582976371 4 0.10367881656299147 5 0.079875144116841088
		 6 0.076998776790987628 7 0.11121755570324458 8 0.16206015820080538 9 0.19673260906434742
		 10 0.20168601176054723 11 0.17655236362762966 12 0.13294622129013708 13 0.087159316376167667
		 14 0.055968030581876625 15 0.055269241235760116 16 0.096495900911658675 17 0.14069829589184676
		 18 0.17002518550719525;
createNode animCurveTA -n "Head_CTRL_rotateY";
	rename -uid "7D1BBC65-48FC-12FF-40A8-F28B54231A41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.2693538729937504 1 -3.5535232989167653
		 2 -4.5239405265911081 3 -5.1839086070313671 4 -5.4795966539298684 5 -5.2625076229071217
		 6 -4.1611391418593007 7 -1.5460088963990686 8 1.9205480572870872 9 5.2472641223267207
		 10 7.3629148057665468 11 8.2238565110432322 12 8.7420867254197461 13 8.8074654625251032
		 14 8.2611680234449683 15 6.8615213422310291 16 3.9582909336104795 17 0.33093606805093462
		 18 -2.2400972847711116;
createNode animCurveTA -n "Head_CTRL_rotateZ";
	rename -uid "7CB91D48-49BC-3F87-FC9B-CF941D713527";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.5057475354151924 1 -1.3889186810718448
		 2 -1.0621934435056672 3 -0.57469477001706315 4 0.0047291750649149393 5 0.56182096458990394
		 6 1.0111009996918192 7 1.2914561315335695 8 1.3740123841700014 9 1.2515101532476127
		 10 1.0450618338894626 11 0.84376028034112238 12 0.56195597611830883 13 0.19318770718953573
		 14 -0.26312389685772442 15 -0.76444627305015767 16 -1.1712267079495322 17 -1.4586740968305367
		 18 -1.505947559270806;
createNode animCurveTL -n "Head_CTRL_translateX";
	rename -uid "AAD9BE57-4B88-C883-6BF5-03A27E5A2BB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.3922935926966602e-07 1 -1.2561506537167588e-06
		 2 1.0179795708609163e-06 3 4.7373367451086779e-09 4 -5.9708969502025866e-07 5 7.6207106758374721e-07
		 6 9.5044043746383977e-07 7 1.5506384443142451e-07 8 -4.3838514329763711e-07 9 -1.9976575913460692e-06
		 10 -2.2375261323759332e-06 11 -5.423437414719956e-06 12 -2.9559125778177986e-06 13 -3.9512801777163986e-06
		 14 -4.7650901251472533e-06 15 -1.8600010207592277e-06 16 -7.924334113340592e-07 17 -1.098066945814935e-06
		 18 3.4386329161861795e-07;
createNode animCurveTL -n "Head_CTRL_translateY";
	rename -uid "ADC75A68-4F34-6D0A-45CB-38A97EF0EDC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.3319425306690391e-05 1 4.3067111619166099e-06
		 2 8.3628418678927119e-07 3 -3.89371825804119e-06 4 -8.0922200140776113e-06 5 1.5982925560820149e-06
		 6 1.6345889889635146e-05 7 2.9300572350621223e-06 8 1.2174263247288764e-05 9 -1.4958776546336594e-06
		 10 9.7490246844245121e-06 11 8.7083739344961941e-05 12 -5.2231412155379076e-06 13 7.9407817565879668e-07
		 14 1.9647778515263781e-07 15 9.4249771791510284e-06 16 2.8684971198345011e-07 17 -5.0048383855028078e-06
		 18 4.3104619180667214e-06;
createNode animCurveTL -n "Head_CTRL_translateZ";
	rename -uid "8DC956AA-4328-7C05-DC01-7B9B9609E533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.5333289954687643e-07 1 1.7578118786332197e-05
		 2 -1.0102897931574262e-06 3 5.9968224377371371e-06 4 1.6730158677091822e-05 5 -1.1300470532660256e-06
		 6 3.9197925616463181e-06 7 -3.8536845750059001e-06 8 -3.4782160582835786e-06 9 -2.9076454666210338e-06
		 10 2.2680858080548205e-07 11 -1.6070120182121173e-05 12 -4.2676251723605674e-06 13 -1.9537994830898242e-06
		 14 4.7088578867260367e-06 15 -1.4739485720838275e-07 16 -2.5752985948201967e-06 17 -5.7648310303193284e-07
		 18 -4.157805051363539e-07;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateX";
	rename -uid "2A39C26F-4D1F-833E-9E70-20A81527CEF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.9527815479093771 1 2.4984403441498295
		 2 2.3493882115255511 3 1.6319462894056405 4 0.73961765623679154 5 0.23088581075850381
		 6 0.13662548726174872 7 0.3803323611639024 8 0.85551857822657529 9 1.3307852606005133
		 10 1.5174062534872998 11 1.2836216182802307 12 0.82127843219868268 13 0.27280913430537168
		 14 -0.074141249591488115 15 -0.083557386435275063 16 0.32705825616447992 17 1.0817333949698826
		 18 1.9383813715851146;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateY";
	rename -uid "3D8937BC-4E4C-A987-C76B-769F791216F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.78758856269459 1 7.8369047968986738
		 2 7.1654345158884336 3 5.181869699839849 4 2.8298286007670836 5 1.5422079103229496
		 6 1.4423738812539784 7 2.4724552581111316 8 4.5240117732218623 9 6.8637622914935887
		 10 8.1733944334954387 11 7.5874750929384112 12 5.7587686419694224 13 3.3864286052700279
		 14 1.8015538781311011 15 1.5563202687264388 16 2.7345924040279477 17 4.7462951622551843
		 18 6.7560239642252142;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateZ";
	rename -uid "08E15535-446A-144F-BAE9-97A21BB2B820";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.3180603537353814 1 -8.2804597608397774
		 2 -7.7728004728689415 3 -7.7041282414526648 4 -7.9413703374135087 5 -8.4949083323128178
		 6 -9.4291758009226765 7 -10.709139997820859 8 -12.099542531704977 9 -13.281610006781774
		 10 -14.127819865867767 11 -14.654015557864843 12 -14.871345038703414 13 -14.79892784937933
		 14 -14.372818064071314 15 -13.544109760799861 16 -12.297862187363425 17 -10.779970593514902
		 18 -9.3411781365280859;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateX";
	rename -uid "D2E004D3-43AF-0AD1-C210-EB8DF13FFE50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 22.795011273977156 1 21.866832868307842
		 2 18.984327752190417 3 16.966718402315376 4 16.572197577874025 5 16.198227086111345
		 6 14.408352863941433 7 10.446653268602839 8 4.6098446325065776 9 -0.040203119859521491
		 10 -1.9694655781144674 11 -2.5013289746097498 12 -1.5894383749090069 13 0.40259791846729243
		 14 3.2474123771405607 15 7.6226463418404178 16 13.670122226626752 17 19.477961996505041
		 18 22.761747740989389;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateY";
	rename -uid "3F914753-4FEE-2D29-072A-21B24FA0C56E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.0548748885651289 1 9.5671916731979678
		 2 7.2358655466570676 3 3.0222370723594763 4 -0.96628642822180721 5 -3.9978343127792018
		 6 -7.9468594809266611 7 -12.898486602045363 8 -14.731435875692544 9 -12.210537116917253
		 10 -8.7128674584654782 11 -6.9974603785120806 12 -5.2619990705512887 13 -3.9867845101233654
		 14 -4.3407584969906194 15 -5.2174928717964715 16 -4.1595517144562884 17 0.54392078689639078
		 18 6.9489657603050254;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateZ";
	rename -uid "42F78535-42A5-5F9E-F039-FBBE85869395";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.3959572145606387 1 -13.313864808351775
		 2 -18.127289287010225 3 -21.249819100687318 4 -21.928813641291647 5 -20.100278270624152
		 6 -16.131234315388621 7 -10.343402137791761 8 -3.342966955619723 9 2.9428687434047864
		 10 7.0987636791884272 11 9.1865442722398409 12 9.8512927740728689 13 9.2831155863818822
		 14 7.4073478774496859 15 4.3293564423989466 16 0.17815882022736132 17 -4.2714962864198087
		 18 -8.3001919582669164;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateX";
	rename -uid "AB4A406B-463D-B767-02E4-7AB249CFDAA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -17.447095904137583 1 -16.712806150601335
		 2 -15.749063635488174 3 -14.847187090858945 4 -14.246870624964975 5 -13.977371683975015
		 6 -14.177708002935287 7 -14.762236602080478 8 -15.556543530640393 9 -16.44947841581212
		 10 -17.368973144809015 11 -18.231271044032827 12 -18.886621390844248 13 -19.119655552561486
		 14 -19.01524612933936 15 -18.74478241510662 16 -18.386695414853818 17 -17.960422773153393
		 18 -17.469060286932066;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateY";
	rename -uid "002BA656-4BAC-4B8A-48DF-8985E16B486A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.4941235476806538 1 -7.8168696182650006
		 2 -8.1621864781532487 3 -8.4108119129298107 4 -8.5390001159517794 5 -8.5870041342136219
		 6 -8.5518814903883698 7 -8.4309111485427142 8 -8.2211792424491819 9 -7.9197470883640664
		 10 -7.5311712011604675 11 -7.0874596275934927 12 -6.692973398423228 13 -6.5396673626934083
		 14 -6.6092369731796197 15 -6.7828592450842153 16 -6.9985875687920203 17 -7.2356254803283555
		 18 -7.4837915755960243;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateZ";
	rename -uid "D1139E53-4A01-F644-00C2-C394FBAEE46A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 90.195782703666879 1 86.599753675722638
		 2 82.095766540304538 3 78.087529664275223 4 75.269999539081724 5 74.06080466372957
		 6 74.958311518030413 7 77.588148470337146 8 81.206981794162701 9 85.355163159837147
		 10 89.7457246608692 11 94.005284207413254 12 97.361252105820128 13 98.583672755195849
		 14 98.033864630680355 15 96.624433512166334 16 94.791770312532805 17 92.651741962454423
		 18 90.222047580246354;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateX";
	rename -uid "964C1457-43EE-2ADF-2C4E-A39CB8AAE39C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.34471702488349376 1 -0.52785721141263053
		 2 -1.4152140309043293 3 -2.0894210733187002 4 -2.2434264567107571 5 -2.3228730411203782
		 6 -2.3696863525922187 7 -2.3935184617166292 8 -2.3962952318935309 9 -2.3756658438278682
		 10 -2.3220780816321849 11 -2.1947323161510286 12 -1.1747920267280727 13 -0.45723460597443571
		 14 -0.29868746278031183 15 -0.23077802348327309 16 -0.21749353298533453 17 -0.25260232458812187
		 18 -0.3424207096406911;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateY";
	rename -uid "1EF05D07-4D2A-1A77-6F8B-58811C1BA04F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.9765483943098716 1 2.8594163900259977
		 2 -2.8009198241290663 3 -7.3636825062808908 4 -8.4354487719062643 5 -8.9921543575134546
		 6 -9.3213092442542944 7 -9.4894263268204 8 -9.5087463841431266 9 -9.3634539835913042
		 10 -8.9861190709349437 11 -8.0954556686562711 12 -1.2270164670898669 13 3.2925009724295076
		 14 4.2539745297187332 15 4.6619555492540679 16 4.7416961449413071 17 4.5315684182895781
		 18 3.990291077884403;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateZ";
	rename -uid "1064026D-4E74-D1B6-802F-FD8FFBF33AB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 11.941367162129486 1 11.806005876138432
		 2 11.175384179287663 3 10.728077314614229 4 10.630278396871434 5 10.580527819851874
		 6 10.551473466159456 7 10.536724593772774 8 10.534989617723662 9 10.547732680234297
		 10 10.581074965764863 11 10.66100838724614 12 11.341968536214479 13 11.858018855623609
		 14 11.975517352874245 15 12.026236281124797 16 12.036201807555033 17 12.009971375122833
		 18 11.943023278838577;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateX";
	rename -uid "3CCFF7F1-4BFC-CB54-DAAC-92920596B2B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.3279475211188494 1 0.901063977889624
		 2 -3.9173846610749585 3 -7.1687523736491379 4 -5.8846770127996271 5 -3.5212206765801919
		 6 -3.2925148336820125 7 -2.8684108331906595 8 8.0315163228088604 9 12.988231871576856
		 10 17.148191381928669 11 14.7264770718901 12 11.200768059406789 13 9.3563567069657392
		 14 9.925251913206516 15 9.4069968520664684 16 8.8308610506005643 17 11.434095759064892
		 18 8.4372078107386006;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateY";
	rename -uid "96651E15-4E0E-9FE0-22D0-3EAFD6803C68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.1467566577852826 1 -4.2257657739750201
		 2 -1.60179501635677 3 4.0056988009507597 4 9.4921399412284728 5 11.786396489944407
		 6 12.510144487780039 7 13.939517580130909 8 16.523467293083627 9 10.818631195166715
		 10 0.79864820043379492 11 -5.5018121932762698 12 -10.593794676060362 13 -12.052346323665329
		 14 -9.1953692187141876 15 -5.1605679941217621 16 -3.0299876017656446 17 -1.7054803758120329
		 18 -2.1727632010022231;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateZ";
	rename -uid "65F4A95B-4E1A-B335-CBFE-2EA0D8128BB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -52.938819934327675 1 -54.9486753178683
		 2 -45.569065260400954 3 -38.899325436446375 4 -27.391860421265957 5 -25.432917524756888
		 6 -36.075393431893971 7 -29.633467999078906 8 -10.933230274415353 9 10.601339374173843
		 10 30.887194698957753 11 33.709507008826648 12 36.587425867915577 13 34.968207490688336
		 14 22.49282690232074 15 7.1223928133233949 16 -13.345041270896127 17 -34.574367650570771
		 18 -52.649255208294093;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateX";
	rename -uid "8AD56ED8-4A76-ACB9-46C7-718D022E3B34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.001816427699999554 1 0.0049922166644504233
		 2 0.00038632835003710083 3 0.00024760798392974459 4 4.8531412986198681e-20 5 -8.190795830746258e-06
		 6 0.00035593610434616301 7 6.0055765908042833e-05 8 4.4883749065981614e-06 9 -9.0743153086068353e-06
		 10 0 11 2.6981517577370849e-05 12 -1.3724717682080466e-05 13 -2.7237243961263233e-05
		 14 -2.1382087554650416e-05 15 -1.4660703624328128e-05 16 -2.8718044884658925e-05
		 17 -0.00012420530953948018 18 0.00030797179628741592;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateY";
	rename -uid "7881E6C3-4972-E48D-07C4-6FBD438C1E85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.00068848411389484869 1 -4.9204318471030097e-06
		 2 0.00025398913333439602 3 0.0004567193090623081 4 -0.0024333654907022408 5 0.00054103549094684528
		 6 0.00048908424797858806 7 4.1600420204378774e-05 8 -1.5532239576130618e-05 9 -3.4164580773107686e-05
		 10 0 11 0.00017870338943936959 12 -0.00011693671058032744 13 -6.4196178756727811e-05
		 14 -1.7115974297904238e-06 15 1.8257168378994526e-05 16 1.9500479483017187e-05 17 3.4650453177610172e-05
		 18 -0.00011796000177506412;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateZ";
	rename -uid "F09FDECD-4F86-44DC-9FC5-7D90661A6508";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 96.676534316133626 1 75.935061892682967
		 2 41.54062226210624 3 15.025047883395178 4 -13.844530239004406 5 -13.750038678326149
		 6 21.730922462180622 7 34.210444875932644 8 28.6202856698565 9 10.896362673130335
		 10 -13.853124415274445 11 -6.524126892900683 12 -2.9528369299753505 13 7.6407894725532577
		 14 38.47828583104917 15 69.507640403817575 16 91.89829599794902 17 99.629953106225955
		 18 96.801255978832188;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateX";
	rename -uid "C495C29E-4633-BB56-F0ED-A2BA23680DFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 14.922061703619308 1 16.372007377539841
		 2 8.9149672537757674 3 0.07647888029544557 4 -4.0389505413986058 5 -1.9901179661211372
		 6 2.5748177336055029 7 8.2563770867233739 8 8.0942880433568707 9 7.9132679810015407
		 10 6.2220381196325523 11 6.4379823819073421 12 7.1421435178822819 13 7.3319547873213056
		 14 12.968971197205709 15 19.614686760603256 16 23.716016335177262 17 21.028468504034301
		 18 15.022070412323339;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateY";
	rename -uid "2E77935B-44EC-10CF-B147-82B0DC23C9F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.1867063531122657 1 -5.1031294053107255
		 2 -11.511560356134654 3 -11.041857502080422 4 -7.6130766271787786 5 -5.2642704190913303
		 6 -4.6109645898228111 7 -5.8360678352969009 8 -1.8942991081018159 9 -4.3850843405690041
		 10 -2.982092915553376 11 -3.2306661324091817 12 -2.7639367112415263 13 -1.9117804994608507
		 14 -2.9089053119369765 15 -3.6366855451431737 16 -7.2575926224524085 17 -14.66753089191125
		 18 -9.4243804509207703;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateZ";
	rename -uid "599A7557-4B10-3A05-9BE1-86BFDC2335DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -21.126852339994752 1 -7.4395290625720252
		 2 0.77015935303584493 3 -2.2493899154752839 4 -11.008709000487547 5 -7.5999667469690033
		 6 7.1471101236900312 7 12.909721715088159 8 23.557734037458921 9 17.250894753829908
		 10 -5.2242763365860663 11 -16.558098499119179 12 -34.833039114181908 13 -45.033122239543147
		 14 -38.838911689911676 15 -28.149090111192514 16 -22.012890578087067 17 -22.69235252537441
		 18 -21.219950975136424;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateX";
	rename -uid "0250C578-49F0-328C-0196-848238464ABD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.7798406850849573 1 1.9659832612438024
		 2 1.7201993955313839 3 1.1838006748567589 4 0.59069552173728002 5 0.27952433291594869
		 6 0.27879383542440894 7 0.6152273357747905 8 1.33162088952264 9 2.2359330044021042
		 10 2.8171456644170934 11 2.6639873090193089 12 1.9988666005852287 13 1.1173414319388357
		 14 0.5308797612150612 15 0.42306409992828325 16 0.76555808230043754 17 1.3016884944831948
		 18 1.7730008646658297;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateY";
	rename -uid "061EA376-4F6F-53C3-8266-F69D18BAD802";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.8534616011229854 1 9.0896492198818475
		 2 8.4942762889597212 3 6.4743683185868379 4 4.0258054538986752 5 2.640900659954458
		 6 2.4379971049055302 7 3.3269035470296329 8 5.1691147793525563 9 7.2509941853549691
		 10 8.3485712672481949 11 7.6916822367493971 12 5.9171137424140987 13 3.6685253247277774
		 14 2.2080056149766882 15 2.0755136817989372 16 3.3851758985877676 17 5.5845570715806829
		 18 7.8178730322488104;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateZ";
	rename -uid "69F33035-4845-3463-C78B-24ADA8E0A176";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -12.649130361076086 1 -13.402476281480912
		 2 -13.978330168371139 3 -14.361239224648946 4 -14.478147888595775 5 -14.150367295156476
		 6 -13.329093591771041 7 -12.008143687597823 8 -10.340042205071041 9 -8.7236903384085558
		 10 -7.5808645494730689 11 -7.117795548241129 12 -7.1821336705420418 13 -7.601109457598711
		 14 -8.277660156312928 15 -9.2244105805146965 16 -10.39847162179413 17 -11.61629124048611
		 18 -12.633425595925054;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateX";
	rename -uid "CDAE7F26-4EFB-CFB8-C0F1-7C8817710694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 14.077319479870987 1 15.106770634877689
		 2 16.147126148122297 3 15.553676717997687 4 13.987589854923311 5 13.687403825738633
		 6 15.478041353606299 7 19.26474410955208 8 23.39194848485727 9 25.573788956634139
		 10 24.783689917642747 11 22.046613498657596 12 19.625093045216662 13 19.252864816573137
		 14 19.811400513436162 15 19.397782801245892 16 17.593399261944612 17 15.040058066767989
		 18 14.071895624281185;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateY";
	rename -uid "735B04E8-45A3-FE88-002D-F09D90B935D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.4901421842556228 1 0.077106588885070187
		 2 1.3646746859068084 3 0.14086187159200081 4 -2.6164835196227236 5 -5.0930416278840305
		 6 -6.3131391949472331 7 -4.7775002516015928 8 0.60934191340575006 9 7.6177513053103354
		 10 11.354621931143287 11 9.7803134796242617 12 5.8091810551252214 13 2.1648773668178918
		 14 -0.16015087916321388 15 -3.038468892370461 16 -6.4731313292286741 17 -6.8009175523559788
		 18 -3.5636163903213243;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateZ";
	rename -uid "6237BE25-4F7A-A19A-E4A1-0A833A30211C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.8169521831529849 1 10.391274417304439
		 2 12.906046788692965 3 13.122616104534751 4 11.101701599446804 5 7.4761913217051319
		 6 3.0824565792796546 7 -1.2729341738886633 8 -5.0532055987336957 9 -8.6023508226669207
		 10 -13.132157215670862 11 -18.024150976414649 12 -21.279553597992049 13 -21.747163697729693
		 14 -19.222159232885858 15 -14.407192353304479 16 -7.9655125995424187 17 -0.72014811939680268
		 18 5.7175750361332565;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateX";
	rename -uid "C57C47F7-48AF-4AD8-D9BA-DEB408C627A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -16.184061010088723 1 -17.048413554997889
		 2 -17.859694342279674 3 -18.475948227802533 4 -18.692643788064625 5 -18.591651071237113
		 6 -18.335005147920949 7 -17.99631665213073 8 -17.593339223315404 9 -17.127540543811421
		 10 -16.431366680132165 11 -15.52780039598686 12 -14.697820659310144 13 -14.113876704447026
		 14 -13.858713739180935 15 -14.042640187360977 16 -14.587825359155302 17 -15.331187633734613
		 18 -16.16836908409735;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateY";
	rename -uid "8DF6A219-4468-FEAA-9B92-6891F3EAA9EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.8584127624333835 1 -7.4969897397989449
		 2 -7.0870491557604547 3 -6.7249858381556278 4 -6.5863492962205639 5 -6.6517250508678876
		 6 -6.8118801099407156 7 -7.0107028485446072 8 -7.2296285956163562 9 -7.4601337780322234
		 10 -7.7625052146211484 11 -8.0850782322241432 12 -8.3168033329218307 13 -8.4447271643424067
		 14 -8.4917676802184108 15 -8.4583802340811207 16 -8.3431234616279362 17 -8.145404160514726
		 18 -7.8643004374272847;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateZ";
	rename -uid "2A9BEC2A-4998-3F67-C80F-A983CAE0FF93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 85.388839678548834 1 89.57331232405663
		 2 93.630251912685978 3 96.815268550850575 4 97.962063173017285 5 97.427836185341704
		 6 96.079062400117493 7 94.328792532272232 8 92.286628408865354 9 89.971796754294971
		 10 86.574260281956853 11 82.282767237951376 12 78.424886609505833 13 75.761259536469765
		 14 74.594828955590899 15 75.429005027865756 16 77.923724399166403 17 81.365187385781638
		 18 85.314753151604236;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateX";
	rename -uid "B4B43FC1-40FB-46C3-FED0-24B31B0BE3B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.68497429110148134 1 -0.62897003064890955
		 2 -0.49555039550440572 3 0.5842818980454938 4 1.3314408916893128 5 1.498531757185025
		 6 1.5702069301802608 7 1.5838913257723102 8 1.5461087533004054 9 1.4498938222707103
		 10 1.2566731574037611 11 0.32988053650710192 12 -0.38557057528064265 13 -0.54717623292128026
		 14 -0.62998337701473617 15 -0.67883399087726304 16 -0.70367960330170565 17 -0.70670378298071423
		 18 -0.68560507603325005;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateY";
	rename -uid "CB62324D-4BE9-2276-44A4-3AAE7766DEB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.7623489962463754 1 -5.3919328206141834
		 2 -4.5156791399068155 3 2.2495612574140122 4 6.580261325428836 5 7.5091799738410119
		 6 7.9030879295605905 7 7.9781285380122791 8 7.7709436692051606 9 7.2402738382646961
		 10 6.1598115563697107 11 0.70940012398110563 12 -3.7998131797797354 13 -4.8536500045643809
		 14 -5.398852961980495 15 -5.7212756086682841 16 -5.8864738351618779 17 -5.906646098233562
		 18 -5.7666390041278293;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateZ";
	rename -uid "2235EA93-4E8A-7B34-A496-539AAF763DCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.4238988073815855 1 3.4632354704123767
		 2 3.5577050532604582 3 4.3564588295343647 4 4.9397380180220516 5 5.0730320303811007
		 6 5.1305126131187162 7 5.1415730574341589 8 5.1111540679913796 9 5.0341845173064348
		 10 4.8803792955495275 11 4.1632029300247542 12 3.6363109880243258 13 3.5210016751301181
		 14 3.4624786955393265 15 3.4282708245305056 16 3.4107629335379817 17 3.408714321311122
		 18 3.4234478400897244;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateX";
	rename -uid "DD70B0F9-40BA-DA52-F72A-F59ED31117A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 12.899430089989314 1 16.764241330234867
		 2 14.555277953367675 3 11.018917808366584 4 9.0566541368855749 5 10.337270198371931
		 6 10.568763112582833 7 11.706303204962353 8 13.546286647439022 9 9.2918969997901399
		 10 1.5332554348960026 11 -4.1059862861733061 12 -7.00156285007695 13 -5.8667086978702523
		 14 -3.1134271671533691 15 -2.5373614922636092 16 -2.2591843773535918 17 7.9425442338547914
		 18 12.797964668423976;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateY";
	rename -uid "4559E40B-4060-8D95-E161-0DBDE4F55915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 10.354028452562124 1 0.1010809046366654
		 2 -5.3171312983711365 3 -11.147103982466904 4 -13.068367942311077 5 -10.201507541173665
		 6 -5.7917515462163047 7 -2.2204914704713876 8 -1.7576019398521621 9 -2.6419743242572853
		 10 -4.5871994565785137 11 -2.346785227447838 12 3.4319514954369095 13 8.4855764899573174
		 14 11.006349680212782 15 11.996842961468319 16 12.947956614323607 17 15.468279627660813
		 18 10.492776046211992;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateZ";
	rename -uid "7F22AFE8-418B-5C85-81B0-E387BC6AC282";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.6645602328408167 1 30.852278891810812
		 2 29.830133811526025 3 32.698076444641615 4 32.505954563244622 5 21.583372708801427
		 6 6.5141909227566925 7 -14.544153369390742 8 -37.144628180563629 9 -55.366806130480185
		 10 -56.212391348249739 11 -45.157608281891889 12 -35.149613729464193 13 -27.4958235190613
		 14 -25.243538829588982 15 -35.649507025033529 16 -30.84135852119098 17 -12.822895004641932
		 18 8.2747566116496749;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateX";
	rename -uid "7529DF89-494D-D32E-1AAE-7FA8840E1741";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.362152280295102e-05 1 -7.7800666827277485e-05
		 2 0.00059484349399773406 3 5.152598176756706e-06 4 -2.1297082182922078e-05 5 9.6869904561299271e-06
		 6 1.9956503396776029e-05 7 2.2256311103613392e-05 8 5.6448117802954117e-05 9 0.006574329462364692
		 10 0.026220059493928416 11 0.00071361607356338729 12 -0.0001812793664704401 13 0.0027870669905343173
		 14 -0.0011461391144443331 15 0.0004913457797993191 16 0.00030512006310536092 17 0
		 18 -1.0607481720882004e-05;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateY";
	rename -uid "94429168-445A-1D4F-8D80-E187FC50079F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.4496088867139661e-05 1 0.0075095922455643404
		 2 0.0021094757805080657 3 -1.9293903675701472e-05 4 -3.0602555227933267e-05 5 -9.7832546133660618e-06
		 6 1.16311371131757e-05 7 9.2450417992241047e-06 8 -7.44304390675462e-05 9 -0.002375945268203518
		 10 0.00073016756633264288 11 0.00052947996767057075 12 -0.00062564492288444808 13 -0.022731882928797707
		 14 0.0082059654511386516 15 0.0007043069325033762 16 0.00025148122064213191 17 1.5603812787064255e-05
		 18 2.3191626236753239e-06;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateZ";
	rename -uid "390D0648-4AC5-A706-5406-F2B90C9B3F01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 14.534395739373123 1 -13.883708180991269
		 2 1.8673689415644563 3 5.8080284785040703 4 13.18319619666946 5 40.485733095166928
		 6 70.12969553249836 7 92.412083487957389 8 100.0125741941018 9 96.053076547474049
		 10 74.588649855990496 11 38.377961468505823 12 6.1528472409254684 13 -13.761284806212812
		 14 -13.781804391431765 15 20.899228932242732 16 35.997255107725749 17 31.457130827630767
		 18 14.941121074643055;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateX";
	rename -uid "463675F9-4DC7-EBB4-3ED5-76868BB8F009";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.6320339051367192 1 7.1545747917123617
		 2 7.7908017025353038 3 8.9218910039327941 4 9.2356376863929075 5 14.001530830374904
		 6 19.851761550098185 7 22.39805027534636 8 22.033115472940022 9 16.970659806111939
		 10 17.547802917050952 11 11.437508504645699 12 4.4278221911836146 13 0.18962003389376503
		 14 -2.8363655908016896 15 0.13301972259809788 16 7.5698901091867281 17 8.5952496802494949
		 18 8.6571022561573727;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateY";
	rename -uid "845B062D-4E62-99B7-47C7-1CB5E65FB366";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.6138246579631295 1 -4.70270689153147
		 2 -5.1648876875759502 3 -4.8547182184114304 4 -3.9290422161778751 5 -4.6671539372901654
		 6 -5.3253811981629138 7 -9.330037409515592 8 -16.785603932179345 9 -10.945616253665607
		 10 -6.4418895646307659 11 -12.464577435449264 12 -11.96417867826065 13 -8.746938965430461
		 14 -6.7081231983338858 15 -6.7256641039352631 16 -7.9143485877344251 17 -3.474229495304066
		 18 -5.6078339925284197;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateZ";
	rename -uid "7736A188-4C9D-F874-9B75-949DEDE9214B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 18.272635107274102 1 -5.2845621856823701
		 2 -13.256768912041254 3 -31.118572774233737 4 -42.785189720709234 5 -38.4156330477865
		 6 -28.858222222272968 7 -23.376708715740506 8 -25.691473660556895 9 -25.501660065203481
		 10 -11.430802116329032 11 -3.0572322857425371 12 -8.2661743177849587 13 -15.150279149036621
		 14 -9.9010697627862196 15 5.868879286608272 16 12.542873360274596 17 23.980767010138059
		 18 18.554624068120216;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateX";
	rename -uid "B00BB8AB-4D43-3643-5ECD-E4BD02F63308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.6735092514803727 1 -6.5255839827882962
		 2 -6.731515849111263 3 -6.5302012328577588 4 -5.9782926550473388 5 -5.0579515484552262
		 6 -3.6076808350777476 7 -1.3313860741490089 8 1.3238442091554998 9 3.7581501903704746
		 10 5.3656238410826633 11 5.9029093734239275 12 5.8720554512853944 13 5.3532560921274062
		 14 4.3124187921009733 15 2.6569733333745522 16 -0.07639699260313508 17 -3.3227950133350679
		 18 -5.6455632759286631;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateY";
	rename -uid "14646CF2-4846-98F7-827F-239E6DF45726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.37687770221652639 1 0.71825307343846856
		 2 1.0613177789088895 3 1.4453049729483094 4 1.823906802964147 5 2.0828254872742074
		 6 2.1024003373446143 7 1.7570269423327034 8 1.1232692966122908 9 0.33877884253881274
		 10 -0.31945573716018311 11 -0.66360615486250041 12 -0.90147967446297206 13 -1.083498711884672
		 14 -1.214126715927154 15 -1.2358155627295917 16 -0.87633643396355509 17 -0.25119286259171986
		 18 0.36838319603199954;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateZ";
	rename -uid "F8AC58BB-4429-9909-4D13-E080981585C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.22417002078164935 1 0.18908764996712718
		 2 0.17747955879253527 3 0.18282818062624359 4 0.20327977947120274 5 0.23684258234543284
		 6 0.28054347214656977 7 0.32130055460803619 8 0.3247290055419404 9 0.28456625148642117
		 10 0.23496496571728434 11 0.21402959118272938 12 0.21237758089840408 13 0.22928207603939341
		 14 0.26078804402002687 15 0.29912137046159565 16 0.32503095536804694 17 0.29242861080348359
		 18 0.22519359399693187;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateX";
	rename -uid "A4AD0049-4FDD-4AF1-7522-9C8337EF723C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.4194433503508574 1 4.9058497757698909
		 2 5.7323866673455264 3 5.9830695131558178 4 5.7554476832222603 5 4.9901146122245725
		 6 3.5914896281941959 7 1.5355436441711299 8 -0.91081750929910343 9 -3.1672629190363581
		 10 -4.8035209519019277 11 -5.7130049236217282 12 -5.9888574142045172 13 -5.7281618292186716
		 14 -4.8535990741238662 15 -3.2991040139097279 16 -1.13051870726034 17 1.2794893481472405
		 18 3.3865588719110193;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateY";
	rename -uid "167398E0-425B-E8F4-D666-5BB5DA205104";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.23536564215626957 1 -0.33741799534850064
		 2 -0.3941112028557856 3 -0.41129260092206432 4 -0.39570858738977138 5 -0.34321071475759463
		 6 -0.24715111887921368 7 -0.10574012604024179 8 0.06271701389061686 9 0.21802980911538705
		 10 0.33039861986432212 11 0.39276513092727394 12 0.41166734916908448 13 0.39383352485568041
		 14 0.33384858297696596 15 0.22708191151459814 16 0.077863242113049139 17 -0.088125613662939917
		 18 -0.23307153737752595;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateZ";
	rename -uid "EC1A6F77-42D5-441F-4651-4B89B5ACDB2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.3424116643282371 1 2.3349707299875608
		 2 2.329698055911388 3 2.327980202880807 4 2.3295321233296482 5 2.3345125652938346
		 6 2.3417034819850566 7 2.3479994120071908 8 2.348955655597651 9 2.3434160835096058
		 10 2.3355749055815567 11 2.3298458445911745 12 2.3278923364857267 13 2.3297412772889161
		 14 2.3353200748495402 15 2.3428910360878015 16 2.3486841308040303 17 2.3484573511939231
		 18 2.3425346707875598;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateX";
	rename -uid "2AFA17BB-40CD-581E-0D1C-32B36B834110";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.3943201793154003e-06 1 -9.9788269380951533e-07
		 2 -1.4478928278549574e-08 3 -3.5472140780257178e-07 4 1.575898522787611e-07 5 -1.5526729839621112e-06
		 6 1.3961904414827586e-06 7 -2.3648970000067493e-06 8 6.6704171786113875e-07 9 1.0565745469648391e-06
		 10 -1.298089728152263e-06 11 2.285594746354036e-06 12 -2.3106140361051075e-06 13 5.5579357649548911e-07
		 14 -8.2872918483190006e-07 15 -1.4645187320638797e-06 16 -4.6711841150681721e-07
		 17 -1.3357418993109604e-06 18 1.2027386446789023e-06;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateY";
	rename -uid "CCBB1CEE-4DFA-854D-8E26-2891398208CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -6.6946432752956753e-07 1 -6.1854223076807102e-08
		 2 -1.0609701206476529e-07 3 5.7931578112402349e-07 4 9.000332568120939e-08 5 9.033178685058374e-07
		 6 -6.7647357582245604e-07 7 -4.7658048174525902e-07 8 -2.137438059435226e-06 9 -1.7056220258382382e-06
		 10 4.3381342038628645e-06 11 -2.5249410100514069e-06 12 -2.2587616967939539e-06 13 1.9979104592948715e-07
		 14 -3.5792320431937696e-06 15 1.4801121324126143e-06 16 -2.6642867396731162e-06 17 2.3107386368792504e-06
		 18 2.5260014808736742e-06;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateZ";
	rename -uid "D829001A-43FE-484B-446F-23BC2D78897C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.293888325601074e-08 1 -1.1243799917792785e-06
		 2 -9.415364843334828e-08 3 -8.735124765735236e-07 4 -1.0552006415309734e-06 5 -5.159303668733628e-07
		 6 -2.4779481577752449e-07 7 -3.7634443117440242e-08 8 1.6040539208006521e-07 9 -9.4637005076947389e-07
		 10 2.0925949684169609e-07 11 -1.0522825277803349e-06 12 -6.842530524409085e-07 13 -5.497386723618547e-07
		 14 -4.9879304242494982e-07 15 -4.2957151435984997e-07 16 -1.8205950880201272e-07
		 17 -6.2649337451148313e-07 18 -4.4226479190001555e-07;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateX";
	rename -uid "2EBB7D7A-4DE5-1DFA-EB37-19B3F1F80225";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.9567506731477091 1 3.1221767744332856
		 2 2.7391594951104952 3 2.1688556248192015 4 1.7243490138180093 5 1.3117241582132584
		 6 0.69645010184789158 7 -0.50100734599888852 8 -1.960986547682587 9 -2.9296500213066579
		 10 -3.0682522933356289 11 -2.721852349462607 12 -2.2135734349021239 13 -1.7399023270012282
		 14 -1.2709324925947412 15 -0.63622264341351109 16 0.45946703651162418 17 1.888281829380225
		 18 2.9464054487384703;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateY";
	rename -uid "978B5A90-4EED-BFE8-5E01-AAB8D1848E40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.5718336270818867 1 7.1465682259157992
		 2 4.0517771359943815 3 0.67105118084665638 4 -0.93085023314386572 5 -1.1978909509927222
		 6 -1.6383872251932994 7 -4.2933824461305177 8 -7.470650925269279 9 -8.5775220200078977
		 10 -6.9650154388415313 11 -3.9215790240102311 12 -0.89442602816285888 13 0.78999695687924931
		 14 1.2880200002076079 15 1.7649143112258543 16 3.9061121169257333 17 7.0214459619991549
		 18 8.5733622363314375;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateZ";
	rename -uid "D393A716-44A0-A41C-3B82-60A46441008B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.9854612621880783 1 5.6919369991026958
		 2 4.9093025253481617 3 3.9588055692319006 4 3.2498379032480047 5 3.0064836271929507
		 6 3.4457123116914121 7 4.4458016179831459 8 5.4978586024615703 9 5.9856852258810456
		 10 5.6062618342454513 11 4.819704810465832 12 3.9968232092170499 13 3.3563979889803353
		 14 3.0927314620935116 15 3.4735539516876366 16 4.3872683422828267 17 5.4294613741007662
		 18 5.9852681354830919;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateX";
	rename -uid "FD8C6EAC-4584-BC02-553E-F28F183A9202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.6210158992129911 1 7.7188991284273802
		 2 8.0430089671635869 3 7.7243467452025145 4 6.6888085270779181 5 4.7867443620871368
		 6 2.0265125811444826 7 -1.2541728024679362 8 -4.2971006146881745 9 -6.4774015381649042
		 10 -7.6847603485644758 11 -8.0414763954989805 12 -7.678670472169105 13 -6.498553671471849
		 14 -4.3883812328272569 15 -1.4786050942620921 16 1.7543385409469565 17 4.596727756257323
		 18 6.5933268445364535;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateY";
	rename -uid "97F404C5-4C84-53BE-F644-518EA380430D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.5751003919949313 1 1.424575364654995
		 2 1.1374045063976903 3 0.7382354443838206 4 0.27450917105724887 5 -0.18546301041698054
		 6 -0.67755324071757439 7 -1.1623152789951616 8 -1.4455650341892063 9 -1.4379511569619339
		 10 -1.2554289960322826 11 -0.94015043627723993 12 -0.54020502108567492 13 -0.10441608727069505
		 14 0.31556338592334071 15 0.79480883824422954 16 1.2928305756921865 17 1.5869687830259918
		 18 1.5765145169256023;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateZ";
	rename -uid "64497493-4408-7CCB-C301-6CA07905E30E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.694624600397356 1 3.1799627758403126
		 2 2.9325279085418052 3 2.2289245814051712 4 1.3110274441408094 5 0.6066366292409332
		 6 0.36575356347443 7 0.80291741368461289 8 1.7707985180957813 9 2.7351970827357333
		 10 3.1798906844414545 11 2.8522873913641766 12 2.1413017411501984 13 1.3491939282124934
		 14 0.71461661905094842 15 0.45240254503654714 16 0.82963824346965376 17 1.7173870484800287
		 18 2.6795223140010798;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateX";
	rename -uid "B76A094D-4AE8-7FE5-4225-BDB86209BC7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 4.5124527587126506 1 6.473885279889843
		 2 7.5647567431950735 3 7.8955896722468584 4 7.5951150528923916 5 6.5850759515712367
		 6 4.7394260558311538 7 2.0268048283310787 8 -1.200713722476163 9 -4.1777497728357105
		 10 -6.3369205143032534 11 -7.5371806901529794 12 -7.9012708214000869 13 -7.5572506663805852
		 14 -6.4030527780748008 15 -4.3517149659859768 16 -1.4905422065222078 17 1.6889621003237936
		 18 4.4690222611335102;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateY";
	rename -uid "9F9B4995-415B-FAF4-A8BA-A2B8C26A4AEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.73009176119048513 1 1.0461941749022483
		 2 1.221516809036284 3 1.2746176147385613 4 1.2264277747335632 5 1.0641251561228684
		 6 0.76671026262338349 7 0.32819936133151545 8 -0.19453512563106745 9 -0.67606321731750185
		 10 -1.0242018306128624 11 -1.2170614705569838 12 -1.275510540229994 13 -1.2203133233560419
		 14 -1.0348547233950032 15 -0.70415097874590893 16 -0.24140575496302966 17 0.27360061102050842
		 18 0.72304226920204362;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateZ";
	rename -uid "34E0351D-4DE8-A9F3-4E0A-60A9573B07EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.5337245172460241 1 4.0546759807046309
		 2 3.8307438387386714 3 3.1330801472550709 4 2.2040899189355789 5 1.4726621630741061
		 6 1.1960791788646163 7 1.6061832686664084 8 2.5752986890249105 9 3.5697910115166902
		 10 4.0521049833559566 11 3.7500708626890611 12 3.0454145926407712 13 2.2406784192934035
		 14 1.5760356908329516 15 1.2770634618736476 16 1.6305601029816013 17 2.5245713129826903
		 18 3.5180530422349259;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateX";
	rename -uid "A1803791-496A-0859-1141-13A5556565D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 4.6395698518608697e-06 1 1.7023402278937283e-06
		 2 -1.9896665435226168e-06 3 3.7498157325899228e-06 4 3.7080935726407915e-06 5 -3.2827458653628128e-06
		 6 1.0208153980784118e-05 7 -5.8348825859866338e-07 8 1.922292540257331e-05 9 2.1817284050484886e-06
		 10 2.9692441785300616e-06 11 6.9018620706629008e-05 12 2.1575920072791632e-06 13 5.5653185881965328e-06
		 14 -4.0028357943810988e-06 15 5.1881334002246149e-06 16 -3.1609789630238083e-07 17 7.1630472575634485e-07
		 18 3.5726548048842233e-06;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateY";
	rename -uid "7F2AB337-4001-05D7-B440-19BCFF021EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -4.7683220145700034e-06 1 -1.6332741097357939e-06
		 2 8.7336377418978373e-07 3 -5.0518087846285198e-07 4 -3.2084633403428597e-06 5 1.9068216943196603e-06
		 6 -6.2894987422623672e-06 7 -2.0343165374470118e-07 8 -1.3885000043956097e-05 9 4.9366570920028607e-07
		 10 2.3028294435789576e-06 11 -4.9494439736008644e-05 12 -8.6452628238475882e-06 13 2.091661372105591e-06
		 14 -5.0180610742245335e-06 15 9.3368743137034471e-07 16 -1.0121925697603729e-05 17 -2.255390683103542e-07
		 18 2.1046898837084882e-06;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateZ";
	rename -uid "B6B6F924-47F6-47C6-FAF1-F3BFA71719F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.2970254203992226e-07 1 -1.1350686008881894e-06
		 2 -1.4366605682880618e-06 3 -2.184116056014318e-06 4 -2.2400156467483612e-06 5 -2.069816218863707e-06
		 6 -9.6306234809162561e-07 7 -2.2953243217216368e-07 8 -2.2503532193240972e-07 9 -5.8801265367947053e-07
		 10 -1.5482326034543803e-06 11 -1.0184447091887705e-05 12 -5.7739971452974714e-06
		 13 -8.4154112300893757e-07 14 -2.3398624762194231e-06 15 -1.4030791817276622e-06
		 16 -1.4369112477652379e-06 17 -1.4826396181888413e-06 18 -8.9917841705755563e-07;
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
// End of runn.ma
