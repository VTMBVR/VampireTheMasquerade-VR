//Maya ASCII 2018ff09 scene
//Name: walkne.ma
//Last modified: Wed, May 20, 2020 10:29:33 AM
//Codeset: 1252
file -rdi 1 -ns "RIG" -rfn "RIGRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_rig.ma";
file -rdi 2 -ns "MDL" -rfn "RIG:MDLRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_model.ma";
file -rdi 1 -ns "MCP1" -rfn "MCP1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/animations/walkne.ma";
file -rdi 2 -ns "ANM1" -rfn "MCP1:ANM1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_model.ma";
file -r -ns "RIG" -dr 1 -rfn "RIGRN" -typ "mayaAscii" "valve:///models/biped_standard/maya/biped_standard_rig.ma";
file -r -ns "MCP1" -dr 1 -rfn "MCP1RN" -op "v=0;" -typ "mayaAscii" "valve:///models/biped_standard/maya/animations/walkne.ma";
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
	setAttr ".t" -type "double3" 25.080885664253771 153.70532003862985 310.40617299469454 ;
	setAttr ".r" -type "double3" -23.738352729606561 5.4000000000036561 -1.9967081373053888e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA1BD692-4DBA-E741-4CC8-1E86A64239DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 303.75162582619203;
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
	rename -uid "EE55889C-4E7D-BC11-7D16-67B43EEA7FFB";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E0274130-4E58-C813-C735-3981B0A1BE08";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E959EFEB-4D92-105A-21AD-C1B7720B3B35";
createNode displayLayerManager -n "layerManager";
	rename -uid "2512BC0A-4DB5-185D-63FE-BCBF213927E6";
createNode displayLayer -n "defaultLayer";
	rename -uid "5A16310C-4349-467E-4292-F8956478A955";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D5CC87A6-4503-2A67-9A6C-7FACE76D45E2";
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
		"translate" " -type \"double3\" -44.57735061645507813 -0.81708526611328125 51.80338287353515625"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"rotate" " -type \"double3\" -2.74526857329598117 -5.17317574172888328 -1.040779245481261"
		
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
		"translate" " -type \"double3\" -2.1973356467697158e-07 -2.0752854652528185e-06 2.380839532634127e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotate" " -type \"double3\" 0.036578207657817816 0.16861431950913233 2.80527962591198721"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translate" " -type \"double3\" -1.0502412806090433e-06 -9.9960607258253731e-07 -9.5145672673879744e-08"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotate" " -type \"double3\" 3.46865825414913997 2.66556087221014337 3.76255544663856645"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translate" " -type \"double3\" 1.7145523543149466e-06 5.3500976093801e-08 -1.3748016272074892e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotate" " -type \"double3\" 3.37347425252621402 1.33189306538908347 3.89383347368543342"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translate" " -type \"double3\" 0.03771272674202919 0.13520270586013794 -0.096052899956703186"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotate" " -type \"double3\" 2.09267170861671437 -0.14655832198945931 -0.32767040741698855"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotate" " -type \"double3\" -2.16934956145897706 1.5681345015084216 10.1744459148084907"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotate" " -type \"double3\" 0.00011111691399899175 0.00046938656280527533 -0.86390103053162359"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL" 
		"rotate" " -type \"double3\" 4.51506003319792892 -3.58561371779227267 5.22960121793216981"
		
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
		"rotate" " -type \"double3\" 11.44614090882671853 0.58687655184829846 -18.30272811893879492"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotate" " -type \"double3\" -2.8070658127462796e-05 -2.4344656259254919e-05 40.34916938795949193"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL" 
		"rotate" " -type \"double3\" 4.71291504884072765 -4.9939884121273872 -4.42869039999766834"
		
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
		"translate" " -type \"double3\" 2.6691377570386976e-06 -2.6707732558861608e-06 1.5347160342571442e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotate" " -type \"double3\" 9.1893883734133187e-06 1.2476065902875246e-05 0.32262643680902398"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 4.20301843934172847 8.26599896483107344 -0.53479983826114674"
		
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
		"rotate" " -type \"double3\" 9.42854169158196598 -11.06681490640981735 18.07803429444380328"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotate" " -type \"double3\" -1.26918880210755458 -3.44621780715049697 10.89825785237887068"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL" 
		"rotate" " -type \"double3\" 9.81458527355575328 -4.40916862583649127 9.62242618636095237"
		
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
		"translate" " -type \"double3\" 2.458964900142746e-06 6.7294115524418885e-07 -1.3424927374217077e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotate" " -type \"double3\" 3.88060739028467161 -1.9652304572779471 -0.95665605854367519"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL" 
		"rotate" " -type \"double3\" 5.11191475990734023 9.11692333026184798 1.1779065270372393"
		
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
		"rotate" " -type \"double3\" 20.63406267062775967 -9.0515243939066039 6.42041917646113447"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotate" " -type \"double3\" -1.41470191821869506 -3.63570030352932916 11.77345121991569243"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL" 
		"rotate" " -type \"double3\" -0.51799457103979296 -9.13007343126047211 10.11010914781216741"
		
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
		+ "            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 0\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2224\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2224\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2224\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
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
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translate" " -type \"double3\" -44.5773468017578125 0 51.80338668823242188"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateX" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateY" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "translateZ" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateX" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateY" " -av"
		2 "|MCP1:ANM1:__GEN_MAN__|MCP1:ANM1:root_motion" "rotateZ" " -av"
		2 "MCP1:ANM1:HIKSolverNode1" "InputStance" " 1"
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
		3 "MCP1:ANM1:HIKSolverNode1.OutputCharacterState" "MCP1:ANM1:HIKState2SK1.InputCharacterState" 
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
	rename -uid "456977B6-41F0-BD0E-D166-E097246E849A";
	setAttr ".ei[0].exportFile" -type "string" "walkne";
	setAttr ".ei[0].t" 2;
	setAttr ".ei[0].fe" 26;
createNode animCurveTA -n "Body_CTRL_rotateX";
	rename -uid "CB230038-4351-BD90-4464-12A03CE682B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -2.7452704954346268 1 -2.7452778088932837
		 2 -2.7452721412342065 3 -2.7452717083376275 4 -2.7452689111941764 5 -2.7452700360837885
		 6 -2.7452788994018937 7 -2.745260033418544 8 -2.7452749215826606 9 -2.745273026362534
		 10 -2.745267500500975 11 -2.745263809052287 12 -2.7452702144957142 13 -2.7452673546996023
		 14 -2.7452671323187885 15 -2.7452616161953132 16 -2.7452719685696176 17 -2.7452652894432905
		 18 -2.7452665428414402 19 -2.7452754299332383 20 -2.7452772072303957 21 -2.7452703847093303
		 22 -2.7452562735171271 23 -2.7452545767707517 24 -2.7452708282385578 25 -2.7452766792212779
		 26 -2.7452685732959812;
createNode animCurveTA -n "Body_CTRL_rotateY";
	rename -uid "82730626-4056-EAEC-7BF8-63BDA8F5C275";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -5.1714744113923521 1 -5.3256986688363632
		 2 -5.4523120029971643 3 -5.5416428227503642 4 -5.5858200718387039 5 -5.576430506531671
		 6 -5.5160912386658252 7 -5.4131400255739317 8 -5.2759394637381183 9 -5.1148015663639521
		 10 -4.9370566361632777 11 -4.7515163075048896 12 -4.5685362710904318 13 -4.3953322787802627
		 14 -4.2408344899717756 15 -4.1150441103354201 16 -4.025599106448329 17 -3.9817384974914281
		 18 -3.9912855767705651 19 -4.051957782205907 20 -4.155560140183451 21 -4.2920305013111468
		 22 -4.4537647093656592 23 -4.6320394871853914 24 -4.816567570609533 25 -5.0000443189565296
		 26 -5.1731757417288833;
createNode animCurveTA -n "Body_CTRL_rotateZ";
	rename -uid "3BC5F8EE-4A6C-D320-EA4F-1791FCD2119B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -1.0448438735086987 1 -0.79589122061136341
		 2 -0.64838128155570807 3 -0.46334840161947333 4 -0.22912986259502971 5 0.062637275655604258
		 6 0.41185010866049437 7 0.84431372343300926 8 1.3619223412274859 9 1.8389024595982288
		 10 2.0749158745441578 11 2.0767769149201145 12 1.9159679461660832 13 1.6345919393802935
		 14 1.2754926332300214 15 0.9414289915084092 16 0.64853863827119596 17 0.36906622821473428
		 18 0.071105690074888747 19 -0.31306719154301471 20 -0.82113664675235476 21 -1.342834106190876
		 22 -1.7527875567020279 23 -2.0050995882024121 24 -1.9249081042012199 25 -1.5111223482248988
		 26 -1.040779245481261;
createNode animCurveTL -n "Body_CTRL_translateX";
	rename -uid "2E2F4647-4C02-2901-18A8-698EF20D3DE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.0086124539375305176 1 -1.626172661781311
		 2 -3.2785546779632568 3 -4.9784293174743652 4 -6.7283730506896973 5 -8.5105190277099609
		 6 -10.295010566711426 7 -12.084170341491699 8 -13.864095687866211 9 -15.605330467224121
		 10 -17.304729461669922 11 -18.940374374389648 12 -20.52630615234375 13 -22.097700119018555
		 14 -23.717041015625 15 -25.455310821533203 16 -27.223354339599609 17 -29.004989624023438
		 18 -30.778343200683594 19 -32.556011199951172 20 -34.33526611328125 21 -36.097461700439453
		 22 -37.855018615722656 23 -39.602615356445313 24 -41.307498931884766 25 -42.958538055419922
		 26 -44.577350616455078;
createNode animCurveTL -n "Body_CTRL_translateY";
	rename -uid "C2731008-4892-3D75-0CA2-2BB91AFFF6C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.81734466552734375 1 -0.8675689697265625
		 2 -1.0444869995117188 3 -1.3438148498535156 4 -1.7191200256347656 5 -2.0469093322753906
		 6 -2.2312469482421875 7 -2.2622337341308594 8 -2.1385269165039063 9 -1.8682975769042969
		 10 -1.4803695678710938 11 -1.0433807373046875 12 -0.66580963134765625 13 -0.4573211669921875
		 14 -0.5001068115234375 15 -0.76572418212890625 16 -1.2139205932617188 17 -1.7422218322753906
		 18 -2.1618728637695313 19 -2.3744964599609375 20 -2.4075393676757813 21 -2.283233642578125
		 22 -1.9899520874023438 23 -1.5790214538574219 24 -1.18292236328125 25 -0.91623306274414063
		 26 -0.81708526611328125;
createNode animCurveTL -n "Body_CTRL_translateZ";
	rename -uid "4928AE68-4CA1-5088-9DE3-F7990D74DC02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 7.2349944114685059 1 8.8260126113891602
		 2 10.45462703704834 3 12.137778282165527 4 13.871926307678223 5 15.638310432434082
		 6 17.408439636230469 7 19.185731887817383 8 20.957555770874023 9 22.695722579956055
		 10 24.399997711181641 11 26.055948257446289 12 27.671407699584961 13 29.27690315246582
		 14 30.922094345092773 15 32.678031921386719 16 34.460090637207031 17 36.252727508544922
		 18 38.034706115722656 19 39.819072723388672 20 41.603267669677734 21 43.368679046630859
		 22 45.127693176269531 23 46.874767303466797 24 48.574531555175781 25 50.208824157714844
		 26 51.803382873535156;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateX";
	rename -uid "C79313CD-4838-E347-35E1-96995E7116B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.037710592150688171 1 0.037838779389858246
		 2 0.037889551371335983 3 0.037918299436569214 4 0.037906602025032043 5 0.037826422601938248
		 6 0.037627089768648148 7 0.037247836589813232 8 0.036597881466150284 9 0.035807739943265915
		 10 0.035356760025024414 11 0.035369712859392166 12 0.035696733742952347 13 0.036204308271408081
		 14 0.036746729165315628 15 0.037146855145692825 16 0.037416025996208191 17 0.037605643272399902
		 18 0.037736084312200546 19 0.037802040576934814 20 0.037701249122619629 21 0.03738875687122345
		 22 0.036994073539972305 23 0.036704860627651215 24 0.036845248192548752 25 0.037338651716709137
		 26 0.03771272674202919;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateY";
	rename -uid "20FF71DF-47CD-CD13-6FA9-E0B489D35010";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.13522025942802429 1 0.13435807824134827
		 2 0.13387420773506165 3 0.13313621282577515 4 0.13209578394889832 5 0.13072848320007324
		 6 0.12907712161540985 7 0.12709015607833862 8 0.12483379244804382 9 0.12289997190237045
		 10 0.12209045886993408 11 0.12226258218288422 12 0.12303858995437622 13 0.12419365346431732
		 14 0.12553581595420837 15 0.12671348452568054 16 0.1276913583278656 17 0.12860831618309021
		 18 0.12959778308868408 19 0.13093645870685577 20 0.13280680775642395 21 0.1348944753408432
		 22 0.13674932718276978 23 0.13813918828964233 24 0.13825076818466187 25 0.13691605627536774
		 26 0.13520270586013794;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateZ";
	rename -uid "D698F15A-4C6C-948C-8B37-D89EDEA64D1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.096233241260051727 1 -0.085705563426017761
		 2 -0.079781919717788696 3 -0.071737967431545258 4 -0.060945548117160797 5 -0.046928092837333679
		 6 -0.029710127040743828 7 -0.0081307906657457352 8 0.017830463126301765 9 0.042073067277669907
		 10 0.054960649460554123 11 0.056734751909971237 12 0.050709374248981476 13 0.038824021816253662
		 14 0.023041373118758202 15 0.0081906840205192566 16 -0.0050217253156006336 17 -0.018005665391683578
		 18 -0.03235355019569397 19 -0.051284108310937881 20 -0.076523475348949432 21 -0.10269265621900558
		 22 -0.12373161315917969 23 -0.13736501336097717 24 -0.13515459001064301 25 -0.11699969321489334
		 26 -0.096052899956703186;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateX";
	rename -uid "ED6D5D9D-4C5B-4F82-7ECE-2D9ADD8C341B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -1.0414423741167411e-06 1 -1.1219065072509693e-06
		 2 1.007550054055173e-06 3 -5.6171309381625179e-08 4 2.5949586870410712e-06 5 1.050815171765862e-06
		 6 -8.3066817069266108e-07 7 -7.6440363727670047e-07 8 -1.1793412113547674e-06 9 -9.7215388450422324e-07
		 10 -6.4068586880239309e-07 11 1.3696326277568005e-06 12 1.1734539384633536e-06 13 -9.5784457698755432e-07
		 14 1.6899494994504494e-06 15 4.5511202984016563e-07 16 4.9426085979575873e-07 17 3.8693457327099168e-07
		 18 -1.5071364600771631e-08 19 1.532594183117908e-06 20 1.3809623169436236e-06 21 2.3074122168509348e-08
		 22 -1.6901617527764756e-07 23 1.2789530501322588e-07 24 7.1693091285851551e-07 25 8.882445712288245e-08
		 26 1.7145523543149466e-06;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateY";
	rename -uid "4E67C174-4B0C-F81A-9F5D-47BB97FAE2C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -1.1411922287152265e-06 1 -9.8368423095962498e-07
		 2 -9.7554402600508183e-07 3 -6.7407526671559026e-08 4 -1.6835161886774586e-07 5 -6.3074702438825625e-07
		 6 -7.393883834083681e-07 7 -1.1641022723551941e-07 8 1.7523510109640483e-07 9 -1.5491502836084692e-07
		 10 2.3374946067633573e-07 11 2.8559966835928208e-07 12 -5.394016397985979e-07 13 -1.7832160210673464e-06
		 14 -1.9755890434680623e-07 15 3.9082021885405993e-07 16 -1.1164827355969464e-06 17 6.1283770946829463e-08
		 18 1.8410443658467557e-07 19 3.7015655607319786e-07 20 -5.5792077091609826e-07 21 -1.8897404174822441e-07
		 22 -5.0882835012089345e-07 23 -1.6055591913755052e-06 24 -9.5283678547275485e-07
		 25 -2.0100505935261026e-06 26 5.3500976093801e-08;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateZ";
	rename -uid "44FA6FBA-4F29-E9F1-C0AE-F0A4AECB7A6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -8.4886906392966921e-08 1 -3.160687924719241e-07
		 2 1.0179801890330964e-08 3 -3.6492406252364162e-07 4 1.931943316435536e-08 5 4.2663199906201044e-07
		 6 -4.6862245994816476e-07 7 -8.5762428625457687e-07 8 -1.0989981547027128e-07 9 -4.6373415329981071e-07
		 10 -1.2895096688225749e-06 11 -6.9642015887438902e-07 12 4.5158279249335465e-07 13 -1.5583106005578884e-07
		 14 7.9940781461118604e-07 15 -6.4434402702318039e-07 16 -8.5071610556042287e-07 17 7.5616497952069039e-08
		 18 6.2937260736362077e-07 19 -1.3202071613704902e-06 20 -2.0116424366278807e-06 21 -4.7417290716111893e-07
		 22 -8.2895729747178848e-07 23 1.2717073332169093e-06 24 -3.4358123457423062e-08 25 5.8660680224420503e-07
		 26 -1.3748016272074892e-06;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateX";
	rename -uid "B1B6B822-4E9D-792B-579A-93A1B0C8D1E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -2.101223230965843e-07 1 1.6679356917848054e-07
		 2 1.3423324389805202e-06 3 7.2183996735475375e-07 4 -5.4840251095811254e-07 5 -2.4731814391998341e-06
		 6 -9.2212582103456953e-07 7 -6.6571493562150863e-07 8 -7.7688287092314567e-07 9 -2.2480717234429903e-06
		 10 3.8039183891669381e-07 11 -1.2453334647943848e-06 12 -1.451980097044725e-06 13 -1.9096414689556696e-06
		 14 -3.4868986631408916e-07 15 1.1647861128949444e-06 16 3.0363942471467453e-08 17 -5.909803348913556e-07
		 18 2.087382569015972e-07 19 -3.7848913052584976e-06 20 -1.3912369922763901e-06 21 -1.2464238352549728e-06
		 22 -1.2545293657240109e-06 23 -1.7666000076133059e-06 24 -2.1995178940414917e-06
		 25 5.0889178737634211e-07 26 -1.0502412806090433e-06;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateY";
	rename -uid "5AA16840-4116-4E47-038E-BFAF333ED020";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -4.8992365009326022e-07 1 9.1410811364767142e-08
		 2 -2.9156274194974685e-07 3 4.2843811343118432e-07 4 -4.0632585296407342e-07 5 -5.9272139196764329e-07
		 6 -3.3688090184114117e-07 7 -3.8560631310247118e-07 8 8.6017358569279168e-08 9 -1.3433259482553694e-06
		 10 8.5920430592523189e-07 11 8.1312936117683421e-07 12 2.5370010803271725e-07 13 -9.6494068202446215e-07
		 14 -3.5659078889693774e-07 15 1.1032119573428645e-06 16 5.3642980901713599e-07 17 1.4296830386228976e-07
		 18 9.6752728495630436e-07 19 -2.0861034499830566e-07 20 6.9729685492347926e-07 21 -4.9513164412928745e-07
		 22 -1.3068480484434986e-06 23 1.1100382835138589e-06 24 -1.6836291933941538e-06 25 -1.002875706035411e-06
		 26 -9.9960607258253731e-07;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateZ";
	rename -uid "161BEB5D-405B-0FE4-9CC4-04A4167A4E86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1.3926477038239682e-07 1 3.9698593923276349e-07
		 2 1.8490946729343705e-07 3 -4.3069226762781909e-07 4 -7.3864470095941215e-07 5 -6.7744389298241003e-07
		 6 -5.543635097637889e-07 7 -2.9467301487784425e-07 8 2.221798638402106e-07 9 2.2970282032019895e-07
		 10 -5.3279637768355315e-07 11 6.9747017050758586e-07 12 5.7800974673227756e-07 13 2.6831392574422352e-07
		 14 -9.8557654837350128e-07 15 5.5125273235034911e-08 16 -5.5472452231697389e-07 17 -6.0077570651628776e-07
		 18 -8.0120457823795732e-07 19 -6.6771895035344642e-07 20 -7.8949381077109138e-07
		 21 -4.8250132067551021e-07 22 -7.117482709873002e-07 23 1.1635090686468175e-06 24 3.875967138355918e-07
		 25 -1.2106078202123172e-06 26 -9.5145672673879744e-08;
createNode animCurveTA -n "Head_CTRL_rotateX";
	rename -uid "9DCED773-4B8F-78B7-3210-C4A0E607EF9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 3.8816723790563894 1 3.7697914452922605
		 2 3.6463325453641735 3 3.516920386823482 4 3.3850946805857247 5 3.2575596296602765
		 6 3.1475486701120894 7 3.0942980705664946 8 3.4320491213668407 9 3.9557537116727732
		 10 4.0603271469945392 11 4.0147382774228584 12 3.9314696318606575 13 3.8186905407121992
		 14 3.6857216635676169 15 3.5437471529525317 16 3.4019710764777225 17 3.2720532298837153
		 18 3.1677511511726846 19 3.1026498781590344 20 3.1002268439784895 21 3.5604741094797117
		 22 4.0163866892989768 23 4.092656297542713 24 4.0502731569702499 25 3.9765928420441243
		 26 3.8806073902846716;
createNode animCurveTA -n "Head_CTRL_rotateY";
	rename -uid "ADBC51E4-4669-C493-89DF-FCA8C511C3EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -1.9640437244712712 1 -2.0110055665032918
		 2 -1.9210995924366749 3 -1.7131802152321109 4 -1.4073523075369665 5 -1.0251986867599037
		 6 -0.59315913818042154 7 -0.13097011750772228 8 0.32932902416975879 9 0.76352417918790816
		 10 1.1725845484849138 11 1.527854932283836 12 1.8016521972237807 13 1.9739133800112367
		 14 2.0209900588669361 15 1.9321213563627142 16 1.7234177751737323 17 1.4161617157121873
		 18 1.0362404344009486 19 0.60332844086615978 20 0.14044850830363795 21 -0.31742962424621668
		 22 -0.75789429571156686 23 -1.169015222466061 24 -1.5216300603933446 25 -1.7948277619126176
		 26 -1.9652304572779471;
createNode animCurveTA -n "Head_CTRL_rotateZ";
	rename -uid "A1430919-4FF7-2BB1-25E2-CF8853BD1FBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.95924997362403486 1 -0.68846784841776221
		 2 -0.37521708354762834 3 -0.039043103209165576 4 0.30765451881289141 5 0.65043405080646188
		 6 0.97225135004408925 7 1.2616488337421947 8 1.5057025096810006 9 1.6909937758786333
		 10 1.7883038923905341 11 1.7723028953380036 12 1.6541668299436032 13 1.4512259475984748
		 14 1.1811761954212312 15 0.86552225535396787 16 0.51960508915921688 17 0.16114064581800042
		 18 -0.18950148168909922 19 -0.51873833947302328 20 -0.81048069486170315 21 -1.0495768747879024
		 22 -1.2262625831985499 23 -1.314493168352997 24 -1.2950554817003546 25 -1.1673182114155565
		 26 -0.95665605854367519;
createNode animCurveTL -n "Head_CTRL_translateX";
	rename -uid "E9D01F21-446D-855B-8B61-F19E7DE13DD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -8.2314693372609327e-07 1 -1.3600320016848855e-06
		 2 5.8417231230123434e-07 3 -2.116436235155561e-06 4 3.4294609463358938e-07 5 -1.4809534150117543e-06
		 6 2.3567896789700171e-07 7 -1.683682029351985e-07 8 -1.437936248294136e-06 9 -5.4656629799865186e-07
		 10 1.1210713637410663e-06 11 -1.1186862991507951e-07 12 3.7568975130852778e-07 13 -6.9047939632582711e-07
		 14 -2.1239328873434715e-07 15 5.2930414540242054e-07 16 -5.3760857099405257e-07 17 -4.3778715053122141e-07
		 18 -8.3677201700993464e-07 19 1.8186681245424552e-06 20 3.3644752761574637e-07 21 1.6483244280607323e-06
		 22 1.3816056707582902e-06 23 5.159500915397075e-07 24 -2.3349734874500427e-06 25 -1.1448727263996261e-06
		 26 2.458964900142746e-06;
createNode animCurveTL -n "Head_CTRL_translateY";
	rename -uid "E477AA65-4452-39F2-B0DF-87A628BD2CA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -3.4847396364057204e-06 1 5.631982276099734e-06
		 2 9.6574978670105338e-05 3 7.5753287092084065e-06 4 -2.749360874076956e-06 5 -5.2440454965108074e-06
		 6 1.7317330502919503e-06 7 7.7502634667325765e-05 8 6.4962980104610324e-05 9 7.8248296631500125e-05
		 10 2.5644842025940306e-05 11 -3.7852930745430058e-06 12 2.3284226244868478e-06 13 -6.3283965801019804e-07
		 14 -7.6742867349821609e-07 15 6.9854486355325207e-06 16 -2.9548415113822557e-05 17 7.4523231887724251e-06
		 18 3.8417133509938139e-06 19 1.8397362509858795e-05 20 -2.9540055948018562e-06 21 2.8753447622875683e-05
		 22 1.1063733836635947e-05 23 -4.2990234305761987e-07 24 -3.963551080232719e-06 25 5.1844529025402153e-07
		 26 6.7294115524418885e-07;
createNode animCurveTL -n "Head_CTRL_translateZ";
	rename -uid "FB4E566E-4DF6-290F-6D5C-3C893035D07B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 2.5420104066142812e-06 1 1.438996332581155e-05
		 2 1.4568318874808028e-05 3 1.5623580111423507e-05 4 -1.3938569054516847e-06 5 1.8244080592921819e-06
		 6 -2.9451391583279474e-06 7 2.4706703698029742e-05 8 1.9779763533733785e-05 9 2.7020150810130872e-05
		 10 8.1551143011893146e-06 11 6.8576146077248268e-06 12 9.7971587820211425e-06 13 -6.9578888428623031e-08
		 14 4.2076076169905718e-06 15 -4.6044733608141541e-06 16 7.0425412559416145e-06 17 4.6749287321290467e-06
		 18 9.8553448424354428e-07 19 -5.3802154980076011e-06 20 3.1984703241505485e-07 21 -8.2650353760982398e-07
		 22 -8.0992629136744654e-07 23 5.3034227676107548e-07 24 6.6408119892003015e-08 25 -1.088982116925763e-06
		 26 -1.3424927374217077e-06;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateX";
	rename -uid "37170E9F-4D3C-FB25-98F4-AFBC6F0F8438";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 5.1109744023917552 1 5.1954140013269692
		 2 5.2635770966168813 3 5.3109603281993385 4 5.33425527473619 5 5.3292788330092389
		 6 5.297512156272095 7 5.2425778600118349 8 5.1684337030840464 9 5.0794691644274401
		 10 4.9794556335757285 11 4.8727060205417851 12 4.7650316887410078 13 4.6611132983545023
		 14 4.5665779524915919 15 4.488569703728972 16 4.4323248093771879 17 4.4045773896664961
		 18 4.4106759223751704 19 4.449025128008981 20 4.5138285599392569 21 4.5981242067270607
		 22 4.6963647267272872 23 4.8027193876667305 24 4.9103726905844631 25 5.0151647507828532
		 26 5.1119147599073402;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateY";
	rename -uid "F366E401-466D-AEE2-CF80-EA942464A685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 9.1141679057937424 1 9.3604716543052398
		 2 9.5632114197756071 3 9.7067175018043113 4 9.7776829119182835 5 9.7625456941767919
		 6 9.6656524123513972 7 9.500480439013586 8 9.2809611322283612 9 9.023835025476993
		 10 8.7412280056673826 11 8.4472067345400408 12 8.1584218468713985 13 7.8860672653423762
		 14 7.644017936852511 15 7.4475422564059421 16 7.3081639335726347 17 7.2398294209500706
		 18 7.254604675831116 19 7.3491607920146311 20 7.5107313066712802 21 7.7241166682649114
		 22 7.9777968312819478 23 8.2586084928717529 24 8.5501231216225246 25 8.8412310127176461
		 26 9.116923330261848;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateZ";
	rename -uid "24D2F81A-450B-C717-5319-12ABF5840078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1.180091857148007 1 0.98307737272677964
		 2 0.82157839066883886 3 0.70764861870141282 4 0.65139465027959265 5 0.66340740442314172
		 6 0.74023403949623734 7 0.87150593454703429 8 1.0466256032078047 9 1.2525770915780408
		 10 1.4801607666118282 11 1.7182559767925358 12 1.9534696247890739 13 2.1766017354558471
		 14 2.3759581945157131 15 2.5385721440671563 16 2.6543490944254011 17 2.7111793955959249
		 18 2.6988929011669183 19 2.6202484070902274 20 2.4861867513064326 21 2.3098892480086963
		 22 2.1012857505479214 23 1.8717232234155996 24 1.6346980844425403 25 1.3994659195914179
		 26 1.1779065270372393;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateX";
	rename -uid "54C57DED-4AD1-F357-C745-4CA304114AF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 20.638002284421013 1 20.24810548422905
		 2 19.895579834525048 3 19.538204295329237 4 18.964944033183549 5 18.25563009995107
		 6 17.553364989898444 7 16.93327057259285 8 16.494211451174667 9 16.208030512581797
		 10 16.06371963907073 11 16.020819430789913 12 15.991540034824306 13 15.921756575423245
		 14 15.889489243404473 15 16.01129437902889 16 16.410961520184266 17 17.110644542637331
		 18 18.01573410376718 19 19.009405541409848 20 19.948776910222847 21 20.685950554497857
		 22 21.130337380079148 23 21.272704705643264 24 21.169297553773045 25 20.941947601438429
		 26 20.63406267062776;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateY";
	rename -uid "E2EDC9E6-41F6-B0FE-ACE6-548479CFEF9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -9.0502560427994077 1 -9.3048434683875954
		 2 -9.6669172775066894 3 -10.022609868074245 4 -10.382453322041835 5 -10.745001060165071
		 6 -11.099903343264751 7 -11.422968583812917 8 -11.672105595042073 9 -11.789413261111546
		 10 -12.033945662738747 11 -12.540094883838826 12 -13.441525102435717 13 -14.720488471516223
		 14 -16.081394073872183 15 -17.185759980380301 16 -17.815917524491375 17 -17.951548405032682
		 18 -17.564489826614157 19 -16.675243333416002 20 -15.37689068924383 21 -13.796214793188739
		 22 -12.102979481394986 23 -10.613941445809035 24 -9.5885068006723984 25 -9.1019456878679357
		 26 -9.0515243939066039;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateZ";
	rename -uid "3023B2E5-47E4-B873-A0DF-7C83D9B7A459";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 6.446880326817003 1 3.9814843374215525
		 2 1.8434401999347094 3 0.53796836061909248 4 0.13273317531825693 5 0.73234776565529336
		 6 2.1541277716704821 7 4.2570782479428892 8 6.8939760682348821 9 9.827045374207227
		 10 12.791906308579563 11 15.590397586201512 12 18.081728492587732 13 20.232672773518726
		 14 21.935670649875821 15 23.016578038332511 16 23.265978183747873 17 22.881605320156325
		 18 22.034544500654636 19 20.835287265002087 20 19.391440206309476 21 17.781858325713937
		 22 15.982321252721102 23 13.903361971897567 24 11.55032936573072 25 8.998137892393304
		 26 6.4204191764611345;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateX";
	rename -uid "48DCF464-4FE0-23B5-80EA-678572B08A91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -1.4200159688184233 1 -0.96550441821988675
		 2 -0.61377779195018189 3 -0.34648169983760885 4 -0.14428882990249248 5 0.0052935904418152302
		 6 0.11126222202083494 7 0.1819075047102057 8 0.206675027168988 9 0.12841333799196578
		 10 -0.032269613574259344 11 -0.32521504076726421 12 -0.7634321160035249 13 -1.2899280296515139
		 14 -1.8882145139264923 15 -2.5721912733464567 16 -3.2952409921586869 17 -3.9659598951185249
		 18 -4.4742428799537421 19 -4.7471009989576141 20 -4.7562750637282249 21 -4.5226630864882287
		 22 -4.0728136542686899 23 -3.4542710946221082 24 -2.7096409087745568 25 -1.9942494101669728
		 26 -1.4147019182186951;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateY";
	rename -uid "9922234A-42F2-7C02-B002-C48B175AFCE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -3.6426509524840562 1 -3.0104092810457579
		 2 -2.4603615698307717 3 -1.9976444845895243 4 -1.6160210305343263 5 -1.3126852556933035
		 6 -1.0851895522814619 7 -0.92693290823614916 8 -0.8701803296357663 9 -1.0472982136600588
		 10 -1.3907660327299134 11 -1.9588603603642794 12 -2.7017712385687576 13 -3.4696535658685055
		 14 -4.220060588200746 15 -4.9569218283210539 16 -5.6256399693290629 17 -6.1631440159340469
		 18 -6.5249557343017024 19 -6.7045603576678516 20 -6.7104348310664923 21 -6.5575358287778469
		 22 -6.2422844081828588 23 -5.7597708756401955 24 -5.0920339562680184 25 -4.341978164533753
		 26 -3.6357003035293292;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateZ";
	rename -uid "FED539B5-43E9-9321-E9D1-9ABBA7B8F301";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 11.811772331648239 1 8.4331562228516859
		 2 5.605222301006255 3 3.2941646919732634 4 1.4285492327433189 5 -0.032151806079804494
		 6 -1.1153335483814453 7 -1.8627560131325516 8 -2.1301316251189646 9 -1.2938504730663363
		 10 0.34156721171722904 11 3.1028083162530518 12 6.8356501389624773 13 10.8705331908301
		 14 15.041704798217948 15 19.421327508376692 16 23.720884809724712 17 27.479590587543054
		 18 30.212168476850799 19 31.64297010120989 20 31.690492964333924 21 30.467196696915234
		 22 28.06068495849965 23 24.628529565766822 24 20.261077825332563 25 15.745306093832589
		 26 11.773451219915692;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateX";
	rename -uid "B32339CA-4A60-ED5E-2102-AC9A532B659B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.51748440771307191 1 -0.52782891575373492
		 2 -0.50917220430289922 3 -0.55914256889643676 4 -0.43000900243582008 5 -0.15192236646277843
		 6 0.029710388905966233 7 0.15524399110825382 8 0.20594118360681382 9 0.22317943835152507
		 10 0.22653083869245089 11 0.2503466604848682 12 0.30446963936625665 13 0.3882451107769288
		 14 0.47689908013585924 15 0.54866959623452416 16 0.61024266490212919 17 0.65211180083793652
		 18 0.63387826010430814 19 0.51114134033109426 20 0.30894989049847443 21 0.11783042801905012
		 22 -0.036262350148550143 23 -0.20243446990867922 24 -0.34649215880789885 25 -0.44974036512897453
		 26 -0.51799457103979296;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateY";
	rename -uid "2C0E8A6C-41C6-3130-3EF9-01BB6065D1AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -9.1263036287324102 1 -9.3846473420898455
		 2 -9.4139233763146635 3 -9.0360397302646316 4 -7.3697333972572512 5 -4.9451871049980562
		 6 -3.4138742482820241 7 -2.4596662308651558 8 -2.1710508532970985 9 -2.2483820496543436
		 10 -2.5365376771736772 11 -2.7746932528543096 12 -2.8433623162492214 13 -2.6869545899824532
		 14 -2.3859920313229908 15 -1.9932798938907572 16 -1.5976224530297953 17 -1.3296116817572621
		 18 -1.4462701189415013 19 -2.2354770262120613 20 -3.5516253490444383 21 -4.8134844358238249
		 22 -5.8433153842859182 23 -6.9659042736771708 24 -7.9485412438143808 25 -8.658213931335883
		 26 -9.1300734312604721;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateZ";
	rename -uid "E3D4AFE3-46EE-2934-C1B5-0398544154C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 10.11040728729415 1 10.089468364263711
		 2 10.088610692458762 3 10.114306385417134 4 10.258753595215529 5 10.487416553070368
		 6 10.639528101985464 7 10.738184614595706 8 10.769423026581347 9 10.763392894007138
		 10 10.736376401394553 11 10.715814207762788 12 10.713591558642339 13 10.73471377218276
		 14 10.769785363574158 15 10.812669525978857 16 10.855422992228245 17 10.884621199468945
		 18 10.871869465783732 19 10.78666990956761 20 10.648331166425518 21 10.519888724440259
		 22 10.417997953994636 23 10.309937704535614 24 10.21777362586025 25 10.152731065080184
		 26 10.110109147812167;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateX";
	rename -uid "BF400317-44E9-D1A1-8071-77A72C113050";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 11.475194804754627 1 8.5192893020522877
		 2 7.2662556006775789 3 6.4096522753263683 4 6.2636956770786565 5 6.5323759378667745
		 6 6.2495952703509738 7 5.0107887146596406 8 5.3605530603285079 9 6.6728105991713207
		 10 8.3233551331783726 11 9.8724961511677449 12 10.860877130490023 13 11.39376940565278
		 14 11.535247670458254 15 11.329138951100646 16 10.823626263520046 17 9.5646708662957405
		 18 7.4365167385949835 19 6.7294748595537692 20 7.9432960947177911 21 11.796672121999146
		 22 14.955530356160576 23 16.637991212878369 24 16.358115355306694 25 14.420439814308359
		 26 11.446140908826719;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateY";
	rename -uid "759AFD61-4AC2-1C4E-F97E-BC9B01C7F46D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.52868236033656224 1 6.5958586975352826
		 2 10.606391142371148 3 13.873098166885518 4 16.171268574538644 5 17.679696942279328
		 6 18.50680314219364 7 18.019965873571078 8 15.978615537414045 9 13.574616985501459
		 10 10.653094058792982 11 7.2413488457174564 12 3.7631764921605226 13 0.16591664734823044
		 14 -3.4912992853483331 15 -7.3147692315353074 16 -11.121422885952992 17 -15.202624370565944
		 18 -19.22211246297266 19 -22.420936242540495 20 -24.597252271938263 21 -24.583651684397047
		 22 -22.589385533603863 23 -18.856389950998373 24 -13.248223592306186 25 -6.3434359727646452
		 26 0.58687655184829846;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateZ";
	rename -uid "BB39B128-4706-8E19-A7E5-B282713D27EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -18.309785193558099 1 -18.151943841462927
		 2 -12.979584350061089 3 -11.194289911536448 4 -8.7990512991472158 5 -6.530197954449819
		 6 -7.0924062256957185 7 -12.084106173276226 8 -13.885288255598164 9 -12.529020634343425
		 10 -9.2921024688061546 11 -4.6902645287084974 12 -0.80961746041508331 13 2.699113528346976
		 14 5.3942151656932795 15 7.8718720940907696 16 10.011785696503424 17 13.705648760944829
		 18 18.416915455781535 19 17.97137501444951 20 13.381907491407206 21 3.8331584253944468
		 22 -4.1922814217856628 23 -10.240135437375013 24 -14.151826926623698 25 -16.922942196047121
		 26 -18.302728118938795;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateX";
	rename -uid "638DDC94-41B8-254D-38BD-C385680C9A09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.00010869313480611343 1 -1.3383953822132924e-05
		 2 -1.6757319346248392e-05 3 -3.3555311547663406e-05 4 -4.24387475541277e-05 5 -1.9627548619276358e-05
		 6 1.5984511745813883e-06 7 5.8899436632943692e-06 8 -1.5783499503719414e-05 9 -1.7824943570755493e-05
		 10 -1.9772181021573446e-05 11 -3.05393640834619e-06 12 2.6163955175450457e-05 13 0.00023105870783443077
		 14 -2.2726310957376753e-05 15 0 16 -3.2216803815386311e-06 17 5.3146940156683142e-06
		 18 -2.8342856219177542e-06 19 -1.1550551589153172e-05 20 6.3378223693542375e-06 21 -4.0820779375306485e-05
		 22 -1.6102976354846885e-05 23 -1.6886972087774341e-05 24 -1.071187133461513e-05 25 -7.6804682718274176e-06
		 26 -2.8070658127462796e-05;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateY";
	rename -uid "44214DC8-4B5F-BC1F-90A5-1DA9F6948010";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -7.6539305778918049e-05 1 5.9500047185311229e-06
		 2 -1.7879149801087587e-05 3 -4.1045883326369316e-05 4 -0.00014272056194073563 5 -8.0877784407466314e-05
		 6 -0.00013843232170548356 7 5.9058685864544015e-05 8 -1.152749517725463e-05 9 -1.8621843865977509e-05
		 10 4.3057747058584683e-06 11 -3.9923099882085652e-05 12 8.6890419668420949e-05 13 0.00063357793623035601
		 14 -0.0001139617506797417 15 -8.478410514924911e-05 16 -4.3764806692166594e-05 17 -0.00015114195077829814
		 18 -3.5212858072270416e-06 19 -0.00016716476517400302 20 -3.1085440394391356e-05
		 21 -2.8705060005810603e-05 22 -5.9340745733298495e-06 23 -3.0376394341738512e-05
		 24 0 25 -2.5312543556841167e-05 26 -2.4344656259254919e-05;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateZ";
	rename -uid "1AF482FB-4B5B-BC12-C98A-4EA36F4628F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 40.416298807891849 1 32.333655406745436
		 2 15.893094834287551 3 8.2959330382536045 4 0.70530944012012153 5 -6.4275973578228092
		 6 -7.2745430125478672 7 3.8424779811203895 8 12.000105771517042 9 14.775066531748585
		 10 13.788751257712464 11 9.5270255198585456 12 5.877110261669892 13 2.6835448769252936
		 14 1.1874881825806372 15 0.50838124243227178 16 0.76219732039801336 17 -1.8993315275773452
		 18 -6.8149535412520894 19 -3.0623659023577696 20 6.2996291620086282 21 22.236125805029783
		 22 33.185788236913581 23 40.351659505823122 24 44.197250124019348 25 44.541683613602203
		 26 40.349169387959492;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateX";
	rename -uid "CE854B8B-4E90-115F-1885-F4829E8CAAEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 4.7127929355906684 1 5.6561978167258582
		 2 6.2442370227632891 3 6.6901385621204117 4 7.9837217423105331 5 11.018480948086552
		 6 13.941139655765074 7 14.887672835215669 8 13.862204799652604 9 11.714911893796785
		 10 9.2200580962865661 11 6.8000261809579854 12 4.6011713670035386 13 2.5079132021347532
		 14 1.0945570847163548 15 0.58956703860941906 16 0.65371812288079167 17 0.92394741027455218
		 18 1.3745700708727104 19 2.1801137502805794 20 3.1340278199118017 21 4.0617507537701689
		 22 4.9253060942928109 23 5.2066049065851692 24 4.6530425846265704 25 4.3309434859188229
		 26 4.7129150488407276;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateY";
	rename -uid "E017CD50-43B3-133F-E95D-61A7CF658671";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -5.000223579030405 1 -3.8832821779340261
		 2 -3.7845417603419436 3 -4.1521764424612639 4 -4.2598426454300711 5 -3.3749344985544223
		 6 -1.3818793779276808 7 0.13099262629857605 8 0.33321849509299656 9 -0.78220942394476356
		 10 -2.2400925460984942 11 -3.592400208863717 12 -4.7695074960840156 13 -6.0366529235830226
		 14 -7.0366654587454596 15 -7.5347846073005345 16 -7.6626742738023008 17 -7.6011704784655949
		 18 -7.5320658439009867 19 -7.6465770351264064 20 -7.9178733300012256 21 -8.5138863008061154
		 22 -8.9730269235654916 23 -8.989746079367384 24 -8.2055900849992423 25 -6.6544746692729682
		 26 -4.9939884121273872;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateZ";
	rename -uid "A14A769F-4303-C062-6C07-EC8C598DEBB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -4.5202630863011573 1 -0.85332441067334441
		 2 -0.54036630588015611 3 3.6805544043628178 4 4.8157051868380352 5 -0.83105313645543799
		 6 -8.1214651277532752 7 -7.3188380855921382 8 -4.5142312442212589 9 -1.103152711716618
		 10 1.4855923269750679 11 2.3611776698088076 12 1.7553689136937409 13 1.1931336742319985
		 14 1.6699559303119269 15 2.6739054146073231 16 4.2334165171440103 17 4.3157646366397557
		 18 0.7578376104150566 19 -4.4026305617980217 20 -10.199156082545029 21 -13.883546906916223
		 22 -18.635227874812237 23 -20.027743329277818 24 -15.204012879068529 25 -9.2937923876768025
		 26 -4.4286903999976683;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateX";
	rename -uid "BB875B5D-4F71-74E8-788B-4BB7FFDBB4D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 4.2047256709075338 1 4.056192925909027
		 2 3.935567740018064 3 3.8511563626828695 4 3.8096655708466112 5 3.8185192964005514
		 6 3.8752213428627074 7 3.9727846392313282 8 4.1038538342955517 9 4.2596538140356559
		 10 4.4337740442727238 11 4.6180871104747192 12 4.8023166847738112 13 4.9790116313234085
		 14 5.1384152905349856 15 5.2695289114161854 16 5.3634865053452909 17 5.4098285154076384
		 18 5.3997646830366444 19 5.3357554762305099 20 5.2272072558377207 21 5.0854234319663769
		 22 4.9191291613219095 23 4.7380160412465324 24 4.5531819781786087 25 4.3718268924649628
		 26 4.2030184393417285;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateY";
	rename -uid "662C1849-481B-C7CE-4285-A2866951A915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 8.2681046281361184 1 8.0779302459760203
		 2 7.9210144298397651 3 7.8097643050101748 4 7.7546845814212571 5 7.7664285265667452
		 6 7.8415868889723184 7 7.9695992251052177 8 8.1393545139637133 9 8.3377273525044391
		 10 8.5551137601060372 11 8.7804764558939876 12 9.0011373440164899 13 9.2085800343837825
		 14 9.39237284976819 15 9.5411046502475738 16 9.6464443686301173 17 9.6979476718519653
		 18 9.6867996869405903 19 9.615472644895517 20 9.4933312970116326 21 9.3315443550806201
		 22 9.1387602239675765 23 8.9246875512041814 24 8.7016568535097303 25 8.4782148460149607
		 26 8.2659989648310734;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateZ";
	rename -uid "5665CDB3-42E6-DF6C-B3DA-31B65359327C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.53193500788849635 1 -0.7858547100894413
		 2 -0.99388157786276254 3 -1.1405325033177554 4 -1.2129164733155833 5 -1.1974522623187067
		 6 -1.0986303048047579 7 -0.92955555896778508 8 -0.70400350570278736 9 -0.43851721373829455
		 10 -0.1449779781804672 11 0.16231823432981196 12 0.46610093412417347 13 0.75441403345142677
		 14 1.0121343781192012 15 1.2224635732337861 16 1.3722426452531249 17 1.4457792042167767
		 18 1.4298462595098524 19 1.3280900416955539 20 1.1547108761918139 21 0.92671027111055004
		 22 0.65707054664263675 23 0.36047112326140063 24 0.054462151098555442 25 -0.24909432065509982
		 26 -0.53479983826114674;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateX";
	rename -uid "0966FB77-4CAF-59E1-E514-58A188BC98DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 9.4314898866860624 1 9.2086522642158464
		 2 9.1893635914718441 3 9.4350554398611806 4 10.011233527466219 5 10.871990345252943
		 6 11.888981986791128 7 12.924616360031093 8 13.821602846059603 9 14.462175543846667
		 10 14.817635507090502 11 14.94877842618625 12 14.977494643096371 13 14.889160860156849
		 14 14.612271721211618 15 14.287626379872901 16 13.988531160928527 17 13.505991470204313
		 18 12.876650468608842 19 12.204887895473254 20 11.565026848555839 21 11.07236384847832
		 22 10.671625549742483 23 10.330947000797599 24 10.040693240024332 25 9.7429760236176666
		 26 9.428541691581966;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateY";
	rename -uid "CB8A5B99-48E3-9ABB-2138-4699069079FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -11.053877487012986 1 -12.175217447943702
		 2 -13.001628950022356 3 -13.507652124411315 4 -13.655791518010576 5 -13.371868288869297
		 6 -12.627021068881989 7 -11.450332019074114 8 -9.9604146365033497 9 -8.3493523516629846
		 10 -6.8427457160233143 11 -5.7728249987887539 12 -5.266511377929386 13 -5.165453057257678
		 14 -5.3174097972008552 15 -5.5874617565470661 16 -5.9159910553045014 17 -6.285591156176773
		 18 -6.6468349459545166 19 -6.9603699548669056 20 -7.2102274142011753 21 -7.4320637630149662
		 22 -7.6336087548831042 23 -7.9949284554617996 24 -8.6842229587094497 25 -9.7788667435742749
		 26 -11.066814906409817;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateZ";
	rename -uid "E7C06946-4E16-FDA1-EDE9-B5A1AC109064";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 18.060729583240651 1 19.479573850364861
		 2 20.337276006997307 3 20.463704912673375 4 19.995987339645257 5 19.074069775302338
		 6 17.825959435215147 7 16.346284266498806 8 14.714532109488951 9 12.945244680206448
		 10 10.971850862678272 11 8.8078963293300223 12 6.6078033779817389 13 4.5900446253659597
		 14 2.938409553967507 15 1.830245360993187 16 1.0348395990308887 17 0.65851753983575234
		 18 1.1684429521641391 19 2.4075389508127967 20 4.2525673813807154 21 6.5398451875125598
		 22 9.1063390492926839 23 11.686317695566643 24 14.086317453411624 25 16.236977630861787
		 26 18.078034294443803;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateX";
	rename -uid "528924A7-4435-E7C0-50F9-15BD0DBF2186";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -1.2635510849089964 1 -1.8484232605876989
		 2 -2.5236217544566628 3 -3.2323442193541068 4 -3.8901202855442407 5 -4.3931872535303391
		 6 -4.661934664128899 7 -4.6727496426274548 8 -4.4424256186290103 9 -4.0024193989567802
		 10 -3.3975192729033106 11 -2.6621851480632976 12 -1.9612362743375558 13 -1.3915871321824882
		 14 -0.94507157854355983 15 -0.60250370930165753 16 -0.34004863884199021 17 -0.14186793148661303
		 18 0.0036395590277678806 19 0.10757306114805401 20 0.1765808894095538 21 0.20048255078548388
		 22 0.12321178131086523 23 -0.035424137491169447 24 -0.32112682724018476 25 -0.75267819189953111
		 26 -1.2691888021075546;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateY";
	rename -uid "DF723203-4A47-6E95-15CE-689D26058429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -3.4385678254627563 1 -4.1767976923636416
		 2 -4.9084546096028001 3 -5.5675458141318579 4 -6.0977146400002225 5 -6.457862683033337
		 6 -6.6357423686112549 7 -6.6426755832552677 8 -6.4912092562937032 9 -6.1813444377876046
		 10 -5.7074583684109887 11 -5.0453207871489472 12 -4.3071557989802942 13 -3.6099328170104354
		 14 -2.9849610522593801 15 -2.4457842166032275 16 -1.9885071404688266 17 -1.6119220458408405
		 18 -1.3148141408597622 19 -1.0900453840431525 20 -0.93433561099413476 21 -0.87913959372653061
		 22 -1.0552441348042552 23 -1.3964830125154351 24 -1.9537673043393091 25 -2.6894020078803189
		 26 -3.446217807150497;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateZ";
	rename -uid "E18F3536-4C5E-3508-CB99-6A9ECF1E94A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 10.856894765953404 1 15.015346026620856
		 2 19.422638050548453 3 23.712345810249076 4 27.468271100854579 5 30.22025308550166
		 6 31.654220918646484 7 31.712571177697985 8 30.48443300067267 9 28.090332736022624
		 10 24.67550235316622 11 20.283562886257762 12 15.777116706545598 13 11.800021943316498
		 14 8.4140624779821991 15 5.6024452352784291 16 3.2853531241686511 17 1.4160017973489838
		 18 -0.036121261225661734 19 -1.1214040119702291 20 -1.8687232265978204 21 -2.1319406413029962
		 22 -1.2894139254429642 23 0.36071203302714033 24 3.1108496206565794 25 6.8609101616316703
		 26 10.898257852378871;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateX";
	rename -uid "C69060F7-46A8-AF04-F625-28A519578E8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 9.8144844766182899 1 9.8042376316535798
		 2 9.7484911578127864 3 9.6824838547516681 4 9.6375136353976458 5 9.6568695212411395
		 6 9.7881198451177838 7 10.008945547925691 8 10.226003561425255 9 10.402738870665921
		 10 10.597773772681359 11 10.771875018687107 12 10.897788296142465 13 10.982315893877272
		 14 11.054597110923982 15 11.081628551448738 16 10.911842455516656 17 10.505661855364449
		 18 10.009818852858167 19 9.7018255840766354 20 9.522129392392003 21 9.4800126051202156
		 22 9.5211662422721446 23 9.6151608828900006 24 9.7118488826622631 25 9.7846560084983238
		 26 9.8145852735557533;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateY";
	rename -uid "D1E70338-4BE4-6482-8AD6-7F9859CB674F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -4.4065876633416723 1 -4.7194711174304089
		 2 -5.1175405844611577 3 -5.5119574571565098 4 -5.7811889477208762 5 -5.6651856993181617
		 6 -4.8817845005321763 7 -3.5752056111984589 8 -2.3054450785372191 9 -1.2828645149649032
		 10 -0.16701169005838762 11 0.8178785612963777 12 1.5233490957988807 13 1.9941002765071225
		 14 2.2408671055121765 15 2.2619974292789706 16 1.9158793572665416 17 0.28235398490074831
		 18 -2.0954851396180323 19 -3.6054997376759488 20 -4.5483216770752062 21 -4.8359233955968488
		 22 -4.7663789923480797 23 -4.4937554805822595 24 -4.2777538207743495 25 -4.2318217371454123
		 26 -4.4091686258364913;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateZ";
	rename -uid "4B2E8EEA-441E-75B9-1DA4-789B0C2ABC6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 9.6226165142577074 1 9.5960055461903053
		 2 9.5601145606366167 3 9.5243678757508832 4 9.5002574472767822 5 9.5106297390623276
		 6 9.5816642522122955 7 9.7040705171390282 8 9.8277679321482641 9 9.9308507777394865
		 10 10.046963669313552 11 10.152625887847361 12 10.230205254709862 13 10.282890134843276
		 14 10.312264242771617 15 10.315982739903484 16 10.270953813112886 17 10.085210484956473
		 18 9.8345876867410187 19 9.6842000648627646 20 9.594268614259617 21 9.5680857673372373
		 22 9.576126512767388 23 9.6041185883815334 24 9.6276721361641879 25 9.6356158669419756
		 26 9.6224261863609524;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateX";
	rename -uid "2664D690-44D5-035C-E868-62B7BC0F72E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -2.174001698758695 1 -2.9564734727032533
		 2 -5.5740090641464182 3 -8.9939912445826327 4 -12.868761108574525 5 -17.023998119991877
		 6 -20.407685777983509 7 -22.494595194874979 8 -23.331635443500765 9 -23.531404131490504
		 10 -23.092639406673733 11 -21.692588864334734 12 -19.90786501264709 13 -18.041414330300629
		 14 -16.377509678368025 15 -15.387085193804918 16 -13.421138120716341 17 -11.296971472366335
		 18 -9.0322609806867131 19 -6.9463143599796568 20 -5.4646254510753884 21 -4.7402102665716734
		 22 -4.3099651201138158 23 -3.8959534046795348 24 -3.325878097118669 25 -2.6750965449710167
		 26 -2.1693495614589771;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateY";
	rename -uid "54ADB260-47CD-2ADF-22AC-E9A43D67B00E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1.5508376573491134 1 2.9171889611723043
		 2 4.3550181701498287 3 6.1684353299889487 4 7.693865185333892 5 7.6756787630580243
		 6 6.6391077996534875 7 5.4878288090676284 8 3.9223606384560776 9 1.1860908818412061
		 10 -2.7064609964849247 11 -7.0526191948532428 12 -9.8876797271043184 13 -11.661610668151758
		 14 -12.464630295763753 15 -12.062244761010888 16 -12.847909001634259 17 -13.485936107025456
		 18 -13.58138647940312 19 -12.914413100528179 20 -11.229420871883663 21 -8.739458164114879
		 22 -6.1490709417684073 23 -3.5929783690021497 24 -1.4263024980183781 25 0.21836644221877394
		 26 1.5681345015084216;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateZ";
	rename -uid "101F4696-4E8F-5E6E-AE61-58B1DE17FAC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 10.108684773008646 1 14.642179320394195
		 2 19.567632566586564 3 26.065491773388562 4 29.306880692200018 5 26.578933382035355
		 6 21.84213851429951 7 17.934097585307818 8 13.95595778430695 9 8.643308405113638
		 10 1.7629083559424772 11 -6.0494088093087361 12 -11.225663423122592 13 -14.519610628774876
		 14 -15.644761593175298 15 -13.141035125649184 16 -13.731917585680183 17 -14.422716668039801
		 18 -16.128382498112359 19 -17.882640331567217 20 -18.675844854761888 21 -17.372900497796927
		 22 -13.679155165923897 23 -8.2369528859125225 24 -1.8756024803431601 25 5.0845170364777443
		 26 10.174445914808491;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateX";
	rename -uid "C870B890-4B13-B7DE-0F38-19936B75EB8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.00021210962772205187 1 9.6757875869064873e-06
		 2 -2.6536122490393674e-05 3 -4.17592596942344e-06 4 1.0618274760833103e-05 5 -1.5899880719974212e-05
		 6 4.702516371258434e-05 7 -7.221711402442894e-05 8 0.00025020389365027238 9 0.0030463837318614089
		 10 0.00022245752028263982 11 -9.344440832667283e-06 12 -3.4933022912986008e-05 13 -5.743312077327291e-05
		 14 -4.0294306426891933e-06 15 -2.9539232543703555e-05 16 -2.4023971853010591e-05
		 17 1.6852355891447413e-05 18 -5.7032953408493739e-06 19 -2.1225435471062534e-05 20 -1.6559726657493318e-05
		 21 -1.008905386818121e-05 22 4.1749120658292347e-05 23 7.3801655935372174e-05 24 3.6761944054938365e-05
		 25 0.0035083668543231996 26 0.00011111691399899175;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateY";
	rename -uid "72A0CFC8-4707-4E01-00EC-899042593BEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.0010027541520661403 1 4.9952387984168765e-05
		 2 -0.00014979407485391177 3 1.3427701645903735e-05 4 -1.3813253963388705e-05 5 -9.4062373811102686e-05
		 6 8.3448357925999919e-05 7 -8.551715352252362e-05 8 0.00022018403203858116 9 0.002476069685193788
		 10 0.00014682816748239023 11 0 12 -2.7671078749783275e-05 13 -3.1416632235632268e-05
		 14 -1.7977751124974018e-05 15 -7.406916610964878e-05 16 -1.04103447102679e-05 17 -3.5347801251188613e-05
		 18 -9.5024590082117951e-05 19 -4.1206408846152183e-05 20 -1.440358044940041e-05 21 -2.9948210489819349e-05
		 22 6.2061639147709829e-05 23 0.00013959811393921305 24 4.7099635342269732e-05 25 0.011359907324876425
		 26 0.00046938656280527533;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateZ";
	rename -uid "54A18561-472C-4576-F525-89B05764E876";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.81668282312733409 1 -3.7672398886453977
		 2 -7.294576565687696 3 -13.853334602747406 4 -13.85326313900479 5 -2.3291984724946682
		 6 12.489887586964949 7 23.363109440045452 8 30.62025399097374 9 37.033924378281938
		 10 42.408679975547408 11 45.172363596661057 12 41.979238119360474 13 35.9097013703553
		 14 27.044198839890946 15 12.896530188123101 16 6.236234459415912 17 1.9941190121201404
		 18 4.0281424631494929 19 9.1940564316657056 20 15.385182809033568 21 18.81118182901773
		 22 19.075794457087447 23 16.098039392256865 24 10.615669722384087 25 3.3095872796684689
		 26 -0.86390103053162359;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateX";
	rename -uid "3B034C7F-4A69-B4C5-9A82-3EB6924BEBB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 4.4961392228406902 1 6.3719274681552536
		 2 8.9199943591862798 3 11.850429459853917 4 15.129982839996236 5 19.259391233993291
		 6 23.540320321018051 7 26.261691509488216 8 27.050558103320022 9 26.780467464933988
		 10 25.713555364532326 11 23.320927989305233 12 19.273769696061382 13 13.534885941006848
		 14 6.6812342079114959 15 -0.03396825829254306 16 -5.8622635346272993 17 -9.5502058183989451
		 18 -9.9158851852514278 19 -8.0353785020365542 20 -4.7068522975610421 21 -0.95677283076289132
		 22 0.32282821661120253 23 1.1054769351234128 24 2.0645891513437058 25 3.1593080186253126
		 26 4.5150600331979289;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateY";
	rename -uid "8F67CA9A-4F30-807C-2CB5-E38FAC828380";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -3.5968267012491837 1 -3.8467061596631602
		 2 -5.8682947868792033 3 -8.7282035735342198 4 -11.467991819168152 5 -12.326432029840381
		 6 -10.333861446235288 7 -7.3020652634803964 8 -5.3399275663353185 9 -5.9718411568678347
		 10 -9.2958698918833242 11 -14.279171048766679 12 -19.037982194462817 13 -22.724655471539442
		 14 -24.579741340749408 15 -24.274495268603907 16 -22.500467065274403 17 -19.900219381977386
		 18 -17.464115103373121 19 -15.273452988494506 20 -13.413993986644096 21 -11.49061062179687
		 22 -9.445027258310061 23 -7.5934409206047198 24 -5.9476029717887586 25 -4.6002319002131316
		 26 -3.5856137177922727;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateZ";
	rename -uid "9AE3C918-4784-4C7C-C7EB-B090AE4119E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 5.2393820871214034 1 4.3707802432254494
		 2 2.764922069171639 3 -0.87081806221351787 4 -2.3431962759836313 5 -2.4508050841787199
		 6 -4.8353650863871831 7 -8.4897892426343358 8 -11.815647647376226 9 -13.146940226783387
		 10 -13.42043821757121 11 -14.006450216889489 12 -14.343075239850474 13 -12.912538807547239
		 14 -10.50212915376817 15 -9.7539600300157296 16 -6.0849537119358255 17 -3.3005571796719613
		 18 0.010597609468157224 19 3.3984655208838372 20 4.6475114103227586 21 0.96330584891586557
		 22 2.7547310006047541 23 5.1843172175909968 24 6.1247031064601929 25 5.9253517046857915
		 26 5.2296012179321698;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateX";
	rename -uid "36404B5A-4DD8-3727-2F08-F9B162E9ED23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 4.9987860578243156e-06 1 5.0671909482501595e-06
		 2 8.0553017115823637e-06 3 8.4742195761700097e-06 4 1.0227716682381617e-05 5 -1.1342626824810614e-05
		 6 2.5771059578188036e-06 7 -1.5110792478280819e-06 8 3.2697249270147029e-06 9 -1.705181974735292e-06
		 10 0 11 -1.7249202247748439e-05 12 3.7633917634209975e-06 13 1.6089279038618581e-05
		 14 1.8276508206371042e-05 15 -9.1882805771961177e-06 16 -1.5578525275535608e-05 17 -4.1606217152094345e-06
		 18 3.6658040543458141e-06 19 -1.5635781617897822e-06 20 -1.2625377693428282e-06 21 3.6562066072151762e-06
		 22 0 23 7.4894333338541967e-06 24 8.7335988832305937e-06 25 1.353322931434439e-05
		 26 9.1893883734133187e-06;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateY";
	rename -uid "D93A504E-44CC-1637-BAD1-8CA2755C042A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -8.213577663330555e-06 1 -3.568459962625287e-06
		 2 3.3074438909406766e-05 3 0 4 3.2801438340570248e-05 5 -1.3164767166318881e-05 6 -2.0655357890022189e-06
		 7 -3.8684451446888635e-06 8 -1.2937167163698277e-05 9 5.1515479527783013e-06 10 5.5543027796084749e-06
		 11 -1.3274099485435805e-05 12 1.8150137318688471e-05 13 9.3622079859736851e-06 14 1.1570298124889587e-05
		 15 1.1423520261285191e-05 16 1.7490184477728802e-05 17 1.2176892001083994e-05 18 9.2044671214945802e-06
		 19 3.9728606818872582e-06 20 6.3461364345732456e-06 21 4.5745659909465028e-05 22 5.7281720599004452e-06
		 23 -7.779989166073879e-06 24 1.8059090321828143e-05 25 8.4520814275672067e-06 26 1.2476065902875246e-05;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateZ";
	rename -uid "BC5F55CE-4170-CA21-8FF8-F78FBE24BC65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.32260622756534368 1 0.32255484541001544
		 2 0.32298533891622794 3 0.32256578847584444 4 0.32263056255070821 5 0.32267373407360389
		 6 0.32265273524965798 7 0.32294304309557809 8 0.32285693923168729 9 0.3229502232912832
		 10 0.32249761692242362 11 0.32258601640144091 12 0.32258233761469429 13 0.32264199726289761
		 14 0.3226192768237427 15 0.32264570965645811 16 0.32280818606282735 17 0.32260193914984586
		 18 0.32263880243497467 19 0.3226557709778286 20 0.32263508280574066 21 0.32289739094395054
		 22 0.32274505839073608 23 0.32262551614787804 24 0.32264916706232694 25 0.32263109730499057
		 26 0.32262643680902398;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateX";
	rename -uid "13FBF31F-4F0C-B1C8-3734-74B06D7F0E0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.03659406897123154 1 0.036830857155206204
		 2 0.036860510616576296 3 0.036647581823264455 4 0.036209002957382531 5 0.035462768569030675
		 6 0.03443576463613926 7 0.033277677111657709 8 0.031827060528270085 9 0.03027873107057457
		 10 0.028721710246723504 11 0.027249692623684027 12 0.026195805468139176 13 0.025521362299244309
		 14 0.025309796124776216 15 0.025336935905039666 16 0.025613087868102825 17 0.026147801193105218
		 18 0.026964850248764227 19 0.027989295759839303 20 0.029194037423001733 21 0.030580487331146388
		 22 0.032009613903394622 23 0.033470988533534134 24 0.034816332846603473 25 0.035862505976573957
		 26 0.036578207657817816;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateY";
	rename -uid "9BA9B581-4F08-9C56-005F-9598AABEBDF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.16857635035767957 1 0.17251465783985639
		 2 0.17297602694625464 3 0.16980203649534736 4 0.16289156003244099 5 0.15223641836391391
		 6 0.13812369867279078 7 0.1209044212863485 8 0.10021211786771594 9 0.07730231354630282
		 10 0.054328027518304144 11 0.033596264119777924 12 0.017583944540212157 13 0.0084177655802964001
		 14 0.0051582048003500384 15 0.0054157622911430794 16 0.0095603824588925291 17 0.017558084188673339
		 18 0.029276779628199585 19 0.044209719343494991 20 0.061825370680228441 21 0.081573004060794874
		 22 0.1027008969311186 23 0.12360587823651124 24 0.14273746123072911 25 0.15839807952759694
		 26 0.16861431950913233;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateZ";
	rename -uid "E6422862-42FA-026D-7AF2-81896A768C1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 2.8056824809938767 1 2.7596825166612251
		 2 2.6950941890844198 3 2.6207329523649543 4 2.5516351164004596 5 2.5044903259386895
		 6 2.4879842086888915 7 2.5115487213593952 8 2.5991238309580704 9 2.7247565530592057
		 10 2.7995278171136651 11 2.8132072593198898 12 2.8072062275796634 13 2.7842306133627313
		 14 2.7440169063225466 15 2.6890077286194383 16 2.6239679481604461 17 2.5590288642550401
		 18 2.508974015747401 19 2.4880694444715363 20 2.510167666387515 21 2.5985816049758532
		 22 2.7412478055572933 23 2.8263425806547193 24 2.839363790222166 25 2.8315223382839139
		 26 2.8052796259119872;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateX";
	rename -uid "130F01B6-4F35-74F5-8676-E5A8178A232E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1.4843510598439025e-06 1 -2.481957608324592e-07
		 2 -1.2861618188253487e-06 3 -1.8018237142314319e-06 4 -2.6455174975126283e-06 5 -1.5817679468455026e-06
		 6 -6.1795878991688369e-07 7 -1.4816365592196235e-06 8 1.0999158348568017e-06 9 -8.0141887792706257e-07
		 10 -1.1287567076578853e-06 11 -1.8603037688080803e-07 12 -3.2315006137650926e-06
		 13 -2.2468202587333508e-06 14 3.16022891411194e-07 15 -1.5839377738302574e-06 16 1.6517896028744872e-06
		 17 -1.2639668511837954e-06 18 -1.5501559573749546e-06 19 1.1356867162248818e-06 20 -2.6027331045952451e-07
		 21 -3.7718831435995526e-07 22 8.1514406247151783e-07 23 -2.3784839413565351e-06 24 -1.9289693682367215e-06
		 25 -9.4803944250543282e-08 26 -2.1973356467697158e-07;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateY";
	rename -uid "20AF5259-4813-E9B0-BB90-93AE2F9C3898";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -3.2333488775293517e-07 1 3.8597755747105111e-07
		 2 -2.4779652108009032e-07 3 4.4737902271663188e-07 4 -3.5919691754315863e-07 5 -3.7591387780366858e-08
		 6 2.8413086283762823e-07 7 1.0386838766862638e-06 8 2.6864452706831798e-07 9 -1.0290193586115493e-06
		 10 -1.6194627505683457e-07 11 -1.096410784384716e-07 12 -4.5094273559698195e-07 13 3.1977498338164878e-07
		 14 8.8588495827934821e-07 15 2.9569093840109417e-07 16 -1.2902399930680986e-06 17 1.9123085621686187e-06
		 18 1.8306053561900626e-07 19 1.1557463608369289e-07 20 -4.6411443577198952e-07 21 -2.9901407572197058e-08
		 22 -1.9308274659124436e-06 23 -1.7279230632993858e-06 24 -1.0752575008154963e-06
		 25 -6.3756192503205966e-07 26 -2.0752854652528185e-06;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateZ";
	rename -uid "4E9E1CD4-4E92-7E51-191F-CEA041C139F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -6.9484974574152147e-07 1 1.2359679146811686e-07
		 2 -9.0383917950020987e-07 3 -9.1538043989203288e-07 4 -1.090940713766031e-06 5 -4.5617250066243287e-07
		 6 4.4796678366765263e-07 7 -1.0797158438435872e-06 8 -3.5850007407134399e-08 9 -7.3447421300443239e-07
		 10 -1.2692373729805695e-06 11 6.5489012968100724e-07 12 -1.5338051184698998e-07 13 -7.7419332455974654e-07
		 14 -3.1352527685157838e-07 15 -1.1799977528426098e-06 16 1.2447418384908815e-07 17 8.9258890056953533e-08
		 18 -4.7532168423458643e-08 19 1.650749936743523e-06 20 -1.0700165375965298e-06 21 -9.3348097607304226e-07
		 22 1.1970187188126147e-06 23 -1.5566754427709384e-06 24 -2.0335403405624675e-06 25 5.0531673423392931e-07
		 26 2.380839532634127e-06;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateX";
	rename -uid "C5A2969E-46F6-581D-E557-7EA7466394D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 2.0931787727222981 1 2.045853844292747
		 2 1.9976679748917887 3 1.9512553660579199 4 1.9086736527286521 5 1.8722483135287071
		 6 1.8443414417450257 7 1.827107559128599 8 1.8229096107093901 9 1.8326431487451973
		 10 1.8545019585082496 11 1.8863315401894176 12 1.92539606219568 13 1.9698372917823279
		 14 2.0173661947244059 15 2.0652498125572527 16 2.1116780136752369 17 2.154347418985985
		 18 2.1906292377169096 19 2.2185127190722027 20 2.2356876378915786 21 2.2398226214311134
		 22 2.229966356037596 23 2.2079445282512871 24 2.1763666939898965 25 2.1371522885281853
		 26 2.0926717086167144;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateY";
	rename -uid "C45FCBDD-43C4-0CAD-91C2-E1ABADE49F4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.14427388703337043 1 -0.36619618193707387
		 2 -0.59195983215205894 3 -0.80891621729744279 4 -1.0083427921609012 5 -1.1792759409625757
		 6 -1.3098689130892636 7 -1.3905773143471181 8 -1.4101557331690555 9 -1.3645062983028913
		 10 -1.2621594189929917 11 -1.1132883143733519 12 -0.9302136279057196 13 -0.72213394508918893
		 14 -0.49947370065363617 15 -0.27505913785597491 16 -0.0575169003406861 17 0.14231795414041234
		 18 0.31219003512030824 19 0.44294768043912769 20 0.52335481662520711 21 0.54271327429125593
		 22 0.49656974658681791 23 0.39350763245448928 24 0.24542636964017742 25 0.06171103677569581
		 26 -0.14655832198945931;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateZ";
	rename -uid "3354386F-47FC-71E3-AB52-D292EC349BE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.32766530316753872 1 -0.32745304760592686
		 2 -0.32703180373475016 3 -0.32644213698655006 4 -0.32582818418368675 5 -0.32508756759793644
		 6 -0.32448586509637162 7 -0.32411314721003132 8 -0.3240093996301997 9 -0.32419277239393496
		 10 -0.32472796477748772 11 -0.32540063570606309 12 -0.32609009816110857 13 -0.32671157255086347
		 14 -0.32722342170842189 15 -0.32756806842452096 16 -0.32768661090652645 17 -0.32763562750257724
		 18 -0.32750497582681115 19 -0.32732391883221695 20 -0.32720974229911398 21 -0.32713846774609479
		 22 -0.32725582052191116 23 -0.32743174656677254 24 -0.32760192755712081 25 -0.32765648542454479
		 26 -0.32767040741698855;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateX";
	rename -uid "C85EDF8B-42AB-6144-4736-AFB6F759DA25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 3.3722028427263768 1 3.4661304481347761
		 2 3.4794674992730767 3 3.399988326530722 4 3.239525031534269 5 3.0119149797656513
		 6 2.7344099449389385 7 2.4182016710771732 8 2.0779664277041148 9 1.7383632177257133
		 10 1.4226307440378483 11 1.1456074268394361 12 0.92032668395534001 13 0.75739982834066222
		 14 0.66992063922206169 15 0.66725957578006201 16 0.75332554875434254 17 0.91735787232347399
		 18 1.1442234629192674 19 1.4246529202604039 20 1.7461007604817043 21 2.084699804696037
		 22 2.4214894485338361 23 2.7387573080453169 24 3.0095593954672131 25 3.2212775630733783
		 26 3.373474252526214;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateY";
	rename -uid "9DDB5CF1-44E4-887C-E6C9-3B9C438C0FD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1.3379364699389988 1 0.96050560876499558
		 2 0.7384281288782597 3 0.463406648786997 4 0.1173720072210801 5 -0.31265709151865639
		 6 -0.8270204889666134 7 -1.4650886906764522 8 -2.2302086198272724 9 -2.9343336292197257
		 10 -3.2771841818443108 11 -3.26983084870727 12 -3.0200533878981939 13 -2.5912750554507475
		 14 -2.0486052585107455 15 -1.5466389098925444 16 -1.1097762592291205 17 -0.69593179872849009
		 18 -0.2566261138314947 19 0.31015347144734484 20 1.061603963740158 21 1.8329642503675343
		 22 2.4364787415152818 23 2.803880337453438 24 2.6733957493051612 25 2.0440025120433529
		 26 1.3318930653890835;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateZ";
	rename -uid "59FEF25B-4F9E-1912-54D4-539536A6274D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 3.8943547731325254 1 3.8314683000610628
		 2 3.7544160537076694 3 3.6723779716441758 4 3.5930379048276202 5 3.5251101775898399
		 6 3.4776457943317061 7 3.4589768194709563 8 3.5211813920425543 9 3.6534179767951742
		 10 3.792738530265586 11 3.8753983770008862 12 3.8707276004825673 13 3.8338064476419298
		 14 3.7762529957271007 15 3.7069310564061104 16 3.6333138197998482 17 3.5635454258548229
		 18 3.5062324766713968 19 3.4690053689924731 20 3.460732080009306 21 3.5382563280213217
		 22 3.6911951526300832 23 3.8493339197500824 24 3.9411700638625491 25 3.934789939568482
		 26 3.8938334736854334;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateX";
	rename -uid "6BD76A83-4345-487D-8E65-31AD69272204";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 3.4686607098331153 1 3.409199284935938
		 2 3.2430281981349416 3 2.9916636883600134 4 2.6720521674690541 5 2.3031875361344083
		 6 1.9078310492572943 7 1.5016758669045958 8 1.1041772811740613 9 0.73785282536476715
		 10 0.41869692118116747 11 0.16653562289646026 12 0.0021795366786728429 13 -0.056619228795590441
		 14 0.003849904432437747 15 0.16925206499850473 16 0.42169842727466633 17 0.74257909445850745
		 18 1.1092991909014209 19 1.5059081001229522 20 1.9132223384794789 21 2.3083991414121909
		 22 2.6756830666616818 23 2.9954061873029274 24 3.2460020545038062 25 3.4103945687437611
		 26 3.46865825414914;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateY";
	rename -uid "AEF76FE8-4FD1-C6BD-0E1B-98929B30090C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 2.6655353734128302 1 2.6559726454682959
		 2 2.6291230001500621 3 2.5884686043244312 4 2.5367646887518456 5 2.4771066931228041
		 6 2.4131921216331693 7 2.3473795938675504 8 2.283045020368955 9 2.2237037140780496
		 10 2.1720198380545983 11 2.1312176350942411 12 2.1045547300490708 13 2.0950183712534742
		 14 2.1048661699794686 15 2.1316244205114407 16 2.1725342403552839 17 2.2245015247558175
		 18 2.2838659574176514 19 2.3480703388620396 20 2.4140000041120189 21 2.4779201168524976
		 22 2.5374087506452785 23 2.5891147311375042 24 2.629584594777358 25 2.6561596170129476
		 26 2.6655608722101434;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateZ";
	rename -uid "CFEA47E3-459B-7F6F-0566-378528F0EDD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 3.7632454687757622 1 3.6895584232157699
		 2 3.6155091212722197 3 3.559174109040685 4 3.5316677492135757 5 3.5396845084541617
		 6 3.6061781026759663 7 3.7282225969527927 8 3.8210704304295962 9 3.8450226739566702
		 10 3.8429052447898799 11 3.8241875552651061 12 3.7887354984386397 13 3.7372561509646296
		 14 3.6738860458499842 15 3.6080041568935766 16 3.552602746383593 17 3.5231262753118426
		 18 3.5326555968481661 19 3.6024766712578602 20 3.7418242288476917 21 3.8524262964875025
		 22 3.8809828455900162 23 3.8802071141674852 24 3.8613462017469269 25 3.8220453161084476
		 26 3.7625554466385664;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateX";
	rename -uid "8E93A405-4DEF-E1D7-4C35-50AE939FEFDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 5.5210688287843368e-07 1 6.1846054677516804e-07
		 2 8.3050959801767021e-05 3 4.0658128455106635e-06 4 -1.1352179853929556e-06 5 1.7353526345686987e-05
		 6 6.9138116032263497e-07 7 7.4999472417403013e-05 8 4.304829053580761e-05 9 7.2306756919715554e-05
		 10 -4.5666278310818598e-05 11 7.4036061050719582e-06 12 8.9520779056329047e-07 13 -3.5932464470533887e-06
		 14 1.9569786218198715e-06 15 4.6238965296652168e-06 16 7.918846677057445e-05 17 2.8905168392157066e-07
		 18 2.3342406620940892e-06 19 -3.2224747315012792e-08 20 2.6722746042651124e-06 21 4.789883314515464e-05
		 22 2.0727067749248818e-05 23 -3.8160546864673961e-06 24 -6.3257692772822338e-07 25 -1.1869624358951114e-06
		 26 2.6691377570386976e-06;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateY";
	rename -uid "7B83550C-4A73-FD07-4F0B-6B8C4B045B90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -1.709272623884317e-06 1 1.6329866525666148e-07
		 2 -2.6152292775805108e-05 3 -1.044120608639787e-06 4 -1.2604306220964645e-06 5 -7.3112259997287765e-06
		 6 -2.8892566206195625e-07 7 -3.2105341233545914e-05 8 -1.6876878362381831e-05 9 -3.2650576031301171e-05
		 10 2.1142192053957842e-05 11 -2.1067464786028722e-06 12 -1.3125987834428088e-06 13 -4.5009147697783192e-07
		 14 -1.3810241625833442e-06 15 1.7374382821344625e-08 16 -3.5421144275460392e-05 17 2.5089909740927396e-06
		 18 1.7125277906870906e-07 19 5.073770239505393e-07 20 4.4191571646479133e-07 21 -2.0703420887002721e-05
		 22 -1.0385975656390656e-05 23 7.0231732252068468e-07 24 -2.1010523596487474e-06 25 -5.0561047828523442e-06
		 26 -2.6707732558861608e-06;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateZ";
	rename -uid "6F2423DA-4BB8-1463-4E3C-2D9850CA8CB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -2.6613102477313078e-07 1 1.8363200737780971e-08
		 2 1.3459329011311638e-06 3 -1.3087070556139224e-06 4 -3.275256858614739e-06 5 -1.2608325050678104e-07
		 6 -1.2211893363200943e-06 7 -1.5444364862560178e-06 8 7.6810505333924084e-07 9 -1.5781090496602701e-06
		 10 -3.4272745779162506e-06 11 -2.4537325771234464e-07 12 -6.1127462913646013e-07
		 13 -1.4889201338519342e-06 14 -1.614720076759113e-06 15 -1.9639633137558121e-06 16 2.33354853662604e-06
		 17 -5.8493543519944069e-07 18 -7.685242735533393e-07 19 -1.7669449334789533e-06 20 -5.7775710047280882e-06
		 21 -2.1272418848639063e-07 22 1.3351323104870971e-06 23 -6.3264269556384534e-07 24 -4.4046641960449051e-06
		 25 -2.3830689315218478e-06 26 1.5347160342571442e-06;
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
	setAttr -s 6 ".u";
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
connectAttr "MCP1RN.phl[1603]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn";
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
connectAttr "MCP1RN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[750].dn";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of walkne.ma
