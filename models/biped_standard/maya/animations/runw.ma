//Maya ASCII 2018ff09 scene
//Name: runw.ma
//Last modified: Wed, May 20, 2020 01:46:03 PM
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
	setAttr ".t" -type "double3" 15.773589928204714 228.24737220129776 293.91278274672476 ;
	setAttr ".r" -type "double3" -34.538352729606608 3.0000000000038654 -9.9528734467243829e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA1BD692-4DBA-E741-4CC8-1E86A64239DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 377.73541808387131;
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
	rename -uid "88DFF206-4252-1B0E-829E-9D93A0600248";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2D47CE7F-435D-E4C8-21A7-7DA5C8C9803B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "86125407-4B27-C74F-078E-B994C4C1F63D";
createNode displayLayerManager -n "layerManager";
	rename -uid "EA3E0913-448E-087B-EE3E-C0B6D2590A0A";
createNode displayLayer -n "defaultLayer";
	rename -uid "5A16310C-4349-467E-4292-F8956478A955";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2965D513-4FFE-D505-1ED5-EBB1EB9E2326";
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
		"translate" " -type \"double3\" 94.43177032470703125 -3.66101455688476563 3.14493918418884277"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"rotate" " -type \"double3\" 9.02189646540005441 3.99337755480003276 -11.38727875675086132"
		
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
		"translate" " -type \"double3\" -2.2612937300436897e-06 1.8456104555752972e-07 -3.6328349324321607e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotate" " -type \"double3\" 3.38654125961058838 -0.23308635820694804 2.34253530763969708"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translate" " -type \"double3\" -8.8105514350900194e-07 -1.2327002707479551e-07 5.0327724920862238e-07"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotate" " -type \"double3\" 0.29486261445669326 0.047740775232825432 2.84107368596395915"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translate" " -type \"double3\" -1.4575877003153437e-06 -4.0808942003422999e-07 2.6135376174352132e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotate" " -type \"double3\" 2.78166376451345032 1.71624231182766573 2.04215805390818739"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translate" " -type \"double3\" -0.22842805087566376 -0.42738375067710876 -0.50572186708450317"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotate" " -type \"double3\" 1.42115732594327238 8.86446627133503462 -0.016053507713792881"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 30.15591642360422853 6.98116371340535746 -17.27156352234728587"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotate" " -type \"double3\" 0.0027670592439743851 0.0042122414354081629 19.59777759318921397"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL" 
		"rotate" " -type \"double3\" -4.93317719257096599 -14.89063220973766377 17.81212502296600775"
		
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
		"rotate" " -type \"double3\" -21.13611043289095903 -19.51684546873508452 -34.26646332766595293"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotate" " -type \"double3\" 1.5097055217887826e-05 -3.4307260423778166e-05 102.31248701785092692"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL" 
		"rotate" " -type \"double3\" -2.05285307554452379 4.44674147977416911 5.23769443219131769"
		
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
		"translate" " -type \"double3\" 8.3730374171864241e-06 1.7988428226090036e-05 -4.2272167775081471e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotate" " -type \"double3\" -5.64554928952122115 0.36833575866539248 0.22491473519032323"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 1.9676735327398942 9.08761440320854597 -13.39009033756278022"
		
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
		"rotate" " -type \"double3\" 18.42555761670371695 -5.15626259017265998 8.18477225382018503"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotate" " -type \"double3\" -17.03299016689280876 -7.50408226482638074 89.49798123585384246"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL" 
		"rotate" " -type \"double3\" -0.63034606387490766 -5.4014026753440687 3.46224688537457048"
		
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
		"translate" " -type \"double3\" -6.7597483166537131e-07 -1.2258199603820685e-05 9.8475775303086266e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotate" " -type \"double3\" -2.13543947095214293 -2.77864639494578114 2.49616797078995045"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL" 
		"rotate" " -type \"double3\" 2.49598150037992461 7.83721209099751626 -8.29417615387231955"
		
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
		"rotate" " -type \"double3\" 20.86469102896978711 14.87043835287135529 -21.3185574376213367"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotate" " -type \"double3\" -16.72915967169961959 -7.81026572438231792 86.67661984093189176"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL" 
		"rotate" " -type \"double3\" -0.52308693795295758 2.88851210293082028 11.80944684394629896"
		
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
		+ "            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 0\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2202\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2202\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2202\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
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
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 94.431770324707031 0 3.1449425220489502 1;
	setAttr ".HipsGX" -type "matrix" 0.20570264446609521 0.96603089921773466 0.15643121113201816 0
		 0.036464957873476596 -0.16730495502697718 0.9852306120247718 0 0.97793493081438743 -0.19696028477841909 -0.069641347725781788 0
		 94.431766979578896 37.792808430574269 0.55884662874064539 1;
	setAttr ".LeftUpLegGX" -type "matrix" 0.33444607319108149 -0.88868225533924372 0.31367128203299194 0
		 -0.62879834402404811 -0.45834385224900032 -0.62811906168986875 0 0.70196756811100647 0.012835970968397808 -0.71209323207682418 0
		 97.866596605741577 34.249046319265361 0.35135505022701785 1;
	setAttr ".LeftLegGX" -type "matrix" -0.71184107055084611 -0.019482699359877682 -0.7020703060966742 0
		 -0.022885117443099526 0.99972779653540988 -0.0045391887017019218 0 0.70196763577578181 0.012835780463483428 -0.71209316880816398 0
		 103.65233078186866 18.875313070388383 5.7776952093657483 1;
	setAttr ".LeftFootGX" -type "matrix" -0.10103110508384747 -0.97257852066605788 -0.20948445513822506 0
		 0.73329889466187792 -0.21509859780915286 0.64498474734539568 0 -0.67235812398840256 -0.088451197615174712 0.73492240321494928 0
		 91.572022462647567 18.544672999421035 -6.1367858909842772 1;
	setAttr ".RightUpLegGX" -type "matrix" 0.16536198095179772 0.9635635537999192 -0.21023960864729416 0
		 0.39317121828549495 0.13109417680683116 0.91007181580314789 0 0.90447322147623421 -0.23315144133333049 -0.35716746357499252 0
		 89.903332149243724 35.852882282422982 0.9184409647886248 1;
	setAttr ".RightLegGX" -type "matrix" 0.35463404981537044 0.87632964486387466 0.32600773647922016 0
		 0.23698733821287735 -0.42152903113213147 0.87530010707161532 0 0.90447315727904531 -0.23315151606961892 -0.357167577358463 0
		 87.042662158925424 19.183743016822696 4.5554714609070377 1;
	setAttr ".RightFootGX" -type "matrix" -0.46262119138334001 0.48074358226403957 -0.74489411421691132 0
		 -0.27036495321606524 -0.87669014405913037 -0.39789091894896983 0 -0.84432483402748104 0.017320491376393271 0.53555165504640756 0
		 81.024352792737432 4.3119841650485675 -0.97704226474261713 1;
	setAttr ".SpineGX" -type "matrix" 0.055442320347427271 0.95710887460371097 0.28437431541774488 0
		 0.035530733594076505 -0.28652322616852166 0.9574142300155396 0 0.99782950251270885 -0.042977238403601209 -0.049892292936284409 0
		 94.624500736908132 38.621318696779923 0.92194830870383737 1;
	setAttr ".LeftArmGX" -type "matrix" 0.61173763928630609 -0.51067913585840463 -0.60413895825325681 0
		 0.053485966041728644 -0.73525842448078982 0.67567322032666755 0 -0.78925047489184341 -0.44564769653723085 -0.42247108593850491 0
		 101.60635831461893 52.729125185383886 2.092006768956272 1;
	setAttr ".LeftForeArmGX" -type "matrix" -0.22171619103383677 -0.54165445620170005 0.81083437316771867 0
		 -0.41093629175166235 0.8059863215586518 0.42604860471752082 0 -0.88429253912652683 -0.23873939670107652 -0.40128569088364707 0
		 108.71964792314162 46.790941619200041 -4.9329241446883021 1;
	setAttr ".LeftHandGX" -type "matrix" -0.45649089167438445 -0.6346565448145074 0.62356004998912196 0
		 -0.75111085601920258 -0.1007780492319027 -0.65243870728453301 0 0.4769156610852972 -0.76619505017790557 -0.43069315909873807 0
		 106.29222569499758 40.860706037220922 3.9443961724985002 1;
	setAttr ".RightArmGX" -type "matrix" 0.42909124293035439 0.9006339610758376 -0.068841654522029672 0
		 -0.56200180978795422 0.20653490124966331 -0.80093526602395027 0 -0.70713129688590914 0.38236344323514848 0.59478023356683041 0
		 88.397679748745745 52.293384520609962 4.6718609123218968 1;
	setAttr ".RightForeArmGX" -type "matrix" -0.73316685825477679 -0.13944271107285339 -0.6655990446849156 0
		 -0.024479086838690017 -0.97270614864074734 0.23074558003140183 0 -0.67960807254208189 0.18546826878239017 0.70974248077066593 0
		 83.408200329844504 41.820796595581626 5.4723523422629246 1;
	setAttr ".RightHandGX" -type "matrix" -0.81155168852111015 0.089200061152101356 -0.57743155953670899 0
		 -0.53951615507597539 0.26497012156266997 0.79919531598420901 0 0.22429038158282838 0.9601219629659169 -0.16691207553650511 0
		 91.435184026190385 43.347467533049148 12.759586444589782 1;
	setAttr ".HeadGX" -type "matrix" 0.01614084637129419 0.96675375959760368 0.25519921900804743 0
		 0.0075904906606263575 -0.25534358851878874 0.96682058121136316 0 0.99984091611113279 -0.013668215181458266 -0.011459597017527814 0
		 95.571201784024083 61.680514360902315 7.3202638406615934 1;
	setAttr ".LeftToeBaseGX" -type "matrix" 0.26351132188296711 -0.9572514579550353 0.11929555516636156 0
		 0.69302564038434666 0.2738817598822646 0.66686148739724005 0 -0.67102700766016621 -0.093050673542714443 0.73557074924434673 0
		 90.953827480704305 12.593572763105277 -7.4185977965375827 1;
	setAttr ".RightToeBaseGX" -type "matrix" -0.53145869446596739 0.0053023010310225419 -0.84706761340539105 0
		 -0.01743060839270489 -0.99983713389173268 0.0046775615683344787 0 -0.84690485296023021 0.017250834615803821 0.5314645601895468 0
		 83.855079275436523 1.3703674288073247 3.5808819932276235 1;
	setAttr ".LeftShoulderGX" -type "matrix" 0.79613113322643381 -0.24292072151040589 -0.55422445071329918 0
		 0.44394278643186258 -0.38791016520666849 0.80773789443386179 0 -0.41120557034494087 -0.88910923220389459 -0.20098445742666993 0
		 96.301395817895411 54.347808106107792 5.7850350811626736 1;
	setAttr ".RightShoulderGX" -type "matrix" 0.92901453607189233 0.30632370478480248 0.20760004733631418 0
		 0.084296835766384859 0.37107499547393691 -0.92476883122961739 0 -0.36031380107748001 0.87662371381393223 0.31891194573450377 0
		 94.588093166675549 54.334548407479218 6.055188102002071 1;
	setAttr ".NeckGX" -type "matrix" 0.073075205513529584 0.83478988901969142 0.54569758614973429 0
		 0.036323427442432207 -0.54902515226144843 0.83501616200114803 0 0.99666474953114992 -0.041197370969332361 -0.070442555797085055 0
		 95.149929577815698 56.868037259948707 4.1743755232866153 1;
	setAttr ".Spine1GX" -type "matrix" 0.020100972346788686 0.9883381267369552 0.15094269822949305 0
		 0.091267974927740539 -0.1521567532731552 0.98413336453245048 0 0.99562347685422881 -0.0060058031484840416 -0.093262118061079355 0
		 94.843052404070022 42.394164858318099 2.0429269478280947 1;
	setAttr ".Spine2GX" -type "matrix" 0.0058990235073093766 0.99995435338173266 0.00751616089377355 0
		 0.098335227850272822 -0.008059937067856137 0.99512070643620754 0 0.99513586232498696 -0.0051311370458289891 -0.09837828493789566 0
		 94.928715259836011 46.605693332665489 2.6861266118627354 1;
	setAttr ".Spine3GX" -type "matrix" 0.036697916145539543 0.95934939029826882 0.27982496365570159 0
		 0.15155813337066992 -0.28211754180764903 0.94733300629377803 0 0.98776687288032361 0.0076446019353027337 -0.15575032873633879 0
		 94.959965308934102 51.902224967210557 2.7259372443963334 1;
	setAttr ".LeftHandThumb1GX" -type "matrix" -0.6749076868490953 -0.36689263387435933 0.64022606120083769 0
		 0.27142843021156998 -0.93023617530722846 -0.2469559989606698 0 0.68616777941323248 0.0071030527602267655 0.72740863696865632 0
		 104.90305027140214 40.970195635951804 4.6674356368473306 1;
	setAttr ".LeftHandThumb2GX" -type "matrix" -0.29343331440839632 -0.7411107414954563 0.60386402346501633 0
		 0.5541902412497357 -0.64657232560232902 -0.52423029697715473 0 0.77895447010647745 0.18082891529080911 0.60044220112837321 0
		 103.68432300991179 40.307674365972822 5.8235491883412198 1;
	setAttr ".LeftHandThumb3GX" -type "matrix" 0.040355705354830657 -0.91974043435513075 0.39044711608302252 0
		 0.66601295293493878 -0.26653748020511508 -0.6966954271191903 0 0.74484774522596031 0.28815847212626466 0.60180273460134692 0
		 103.26149418767359 39.23974604303595 6.6937117566556683 1;
	setAttr ".LeftHandIndex1GX" -type "matrix" -0.54406251845532028 -0.70019623173473411 0.46230239850960958 0
		 -0.52744097345718999 -0.14309721371996792 -0.83745400288261396 0 0.65253557354159442 -0.69946375850907239 -0.29145801720849007 0
		 104.25960122710957 39.551939787240165 7.1932057000513296 1;
	setAttr ".LeftHandIndex2GX" -type "matrix" -0.48687943400843064 -0.2829003103484023 -0.82638721622760336 0
		 0.44001739413064545 0.73784321319645174 -0.51183208731224739 0 0.75454165531275108 -0.61282526640528878 -0.23475962866979572 0
		 103.20048015807019 38.188882708624114 8.0931649527616081 1;
	setAttr ".LeftHandIndex3GX" -type "matrix" 0.063668077407973103 0.22432600883879783 -0.97243211468854118 0
		 0.5841067151593573 0.78169493043487459 0.2185689388686376 0 0.80917595195662961 -0.58191999234505798 -0.081261314807291707 0
		 102.57441974447735 37.825113116156189 7.0305480851141393 1;
	setAttr ".LeftHandMiddle1GX" -type "matrix" -0.72748237324928378 -0.68604816040711514 -0.010359450448899646 0
		 -0.26680627371045335 0.29676584306427056 -0.91692117801864237 0 0.63212641846416506 -0.66428002829557209 -0.39893387307585393 0
		 104.88995070041062 38.657166269757887 6.8389884394656368 1;
	setAttr ".LeftHandMiddle2GX" -type "matrix" -0.55944341527323438 -0.054066075004439593 -0.82710333371413347 0
		 0.53042210494412856 0.74344004723107404 -0.40736873561884734 0 0.63692657009584686 -0.66661364800510403 -0.38723479776392489 0
		 103.28065984297177 37.139527413033548 6.816068710991555 1;
	setAttr ".LeftHandMiddle3GX" -type "matrix" -0.11701618040368206 0.3503761976511241 -0.92927148765064205 0
		 0.74033783806053977 0.65446631491962159 0.15353738362814748 0 0.66197214685756711 -0.67000789497128399 -0.33597960869810661 0
		 102.47981007877848 37.06213481317991 5.6320624443170191 1;
	setAttr ".LeftHandRing1GX" -type "matrix" -0.64608639179201799 -0.76282782535477511 -0.025808587828000745 0
		 -0.47241858889737121 0.42622148028414808 -0.7714634966144579 0 0.5994939959710921 -0.48623961028375096 -0.63574994312679123 0
		 105.21700734417608 38.041275219650686 6.0802688241955121 1;
	setAttr ".LeftHandRing2GX" -type "matrix" -0.62885930326144557 -0.12631406576938214 -0.76719015471416019 0
		 0.25668364030018859 0.8976679232465915 -0.35819800163651716 0 0.73392743885466816 -0.42218130745327809 -0.53208407055019813 0
		 103.99342781937673 36.596611191522101 6.0313910733883169 1;
	setAttr ".LeftHandRing3GX" -type "matrix" -0.27635838393415285 0.32607531556840652 -0.90404697455733274 0
		 0.50339196772434558 0.85043046743346018 0.15285465937130477 0 0.81867122244519797 -0.41284731879699815 -0.3991672843585945 0
		 103.15961929046506 36.429134562407164 5.0141632295274103 1;
	setAttr ".LeftHandPinky1GX" -type "matrix" -0.64198142539647252 -0.74158976978205615 -0.19469068493513136 0
		 -0.58556266593992801 0.63814697366250461 -0.49988479098959476 0 0.49495071845915933 -0.20691315414923189 -0.84392578639165805 0
		 105.4308210960874 37.545021029521052 5.1451389700508079 1;
	setAttr ".LeftHandPinky2GX" -type "matrix" -0.66804724871759702 -0.24631742274639085 -0.70216849881807197 0
		 -0.10452011192780329 0.96533030076819237 -0.23919230050607951 0 0.7367417591554376 -0.086401028178876835 -0.67063137612714208 0
		 104.41952195230662 36.376808170730271 4.838446847195268 1;
	setAttr ".LeftHandPinky3GX" -type "matrix" -0.47279086116431357 0.1083947722796177 -0.87448234684409509 0
		 0.097488542361674757 0.99274736377634243 0.070346683101042778 0 0.87576525719378873 -0.051992740431452411 -0.47992912938758459 0
		 103.74335952570885 36.127502512325762 4.1277494289579924 1;
	setAttr ".RightHandThumb1GX" -type "matrix" -0.96921630530089631 -0.15291897060184703 -0.19296513148481262 0
		 -0.088012334582126012 0.94713915885973177 -0.30851457455991305 0 0.22994256348115177 -0.28203404437151147 -0.93144147176039171 0
		 92.799075681085668 44.123964357101471 12.721333853485515 1;
	setAttr ".RightHandThumb2GX" -type "matrix" -0.78117148145779713 0.2976674249143092 -0.54878522274375641 0
		 0.44384278961215851 0.8829713434178823 -0.1528567460471339 0 0.43906115139730562 -0.36298169492097632 -0.82186957267316296 0
		 94.549258741852498 44.400098671143269 13.069782820827639 1;
	setAttr ".RightHandThumb3GX" -type "matrix" -0.52595942898680947 0.57115867237534035 -0.63019397809746491 0
		 0.72158333044244471 0.69188201371955904 0.024834981758760664 0 0.45020459380981331 -0.44167527671560602 -0.77604044588586607 0
		 95.674922386069113 43.971170120624279 13.860574418398782 1;
	setAttr ".RightHandIndex1GX" -type "matrix" -0.8916875079326525 0.44829808286754014 -0.062627606485827811 0
		 0.10420758741265961 0.33794724873848891 0.93537823141001009 0 0.44049309520410018 0.82753881236312665 -0.34805940169766636 0
		 94.563977326973088 44.443456481725711 15.085234850423703 1;
	setAttr ".RightHandIndex2GX" -type "matrix" 0.013683482894424691 0.48235725966255122 0.8758677048200324 0
		 0.86660590551093941 -0.44269043452163409 0.23025938355821921 0 0.49880554009497757 0.75588137510715336 -0.42407119677794286 0
		 96.299817240294018 43.570760325827187 15.20715077349889 1;
	setAttr ".RightHandIndex3GX" -type "matrix" 0.50668479741730077 0.26568380674943648 0.82017231780724975 0
		 0.71252489386467599 -0.66463183065668452 -0.22488398186859876 0 0.48536459665834802 0.69833848849184343 -0.52606517067907732 0
		 96.282223943563167 42.950517389609303 14.080909072549629 1;
	setAttr ".RightHandMiddle1GX" -type "matrix" -0.88773890987835358 0.43045036900941996 0.16319346711080862 0
		 0.24165703045135856 0.13402036166382422 0.96106319340507829 0 0.39181872018929165 0.89260995242177044 -0.22299642574508588 0
		 94.274538264858009 43.38515631227493 15.431148959754243 1;
	setAttr ".RightHandMiddle2GX" -type "matrix" -0.0534449010059245 0.27827626558515728 0.95901301480660084 0
		 0.91936349957024111 -0.36114518238390586 0.15602856436836907 0 0.38976197635791249 0.89002049260276817 -0.23653567285443372 0
		 96.23834405063576 42.432946878870318 15.070136648865452 1;
	setAttr ".RightHandMiddle3GX" -type "matrix" 0.6101606734707381 -0.0020838894227247079 0.79227615383087591 0
		 0.69465659410278013 -0.47947800396379614 -0.53624145113450172 0 0.38099624308733449 0.87755280752525344 -0.29111087105587508 0
		 96.314851757680003 42.034585803719509 13.69730243612786 1;
	setAttr ".RightHandRing1GX" -type "matrix" -0.84684752990809975 0.52059309823435052 0.10877539776672779 0
		 0.072003627111370191 -0.090416600888853838 0.99329769755421882 0 0.52693902756519817 0.8490039248168797 0.039084483803393077 0
		 94.040537813399041 42.406709388152592 15.207907808495305 1;
	setAttr ".RightHandRing2GX" -type "matrix" -0.16625413212094886 0.30075521725973298 0.93909899834397559 0
		 0.75185895254151003 -0.57753122925297706 0.31806570818107421 0 0.63801858005573409 0.75894932303697982 -0.13010847999025749 0
		 95.644335748279971 41.420789284810454 15.001900861447107 1;
	setAttr ".RightHandRing3GX" -type "matrix" 0.47452318767556317 -0.025438323329731199 0.87987535257239347 0
		 0.61132030286001371 -0.70967768445977464 -0.35020718366554604 0 0.63333658639728296 0.70406709615347385 -0.32120755352988273 0
		 95.86477197719141 41.022016131523337 13.756741469476861 1;
	setAttr ".RightHandPinky1GX" -type "matrix" -0.77224893046327114 0.58510064196234191 0.24756580574382453 0
		 -0.032816226667905977 -0.42588678237166738 0.90418114549485507 0 0.63447197311277204 0.69012874695694526 0.34809140747513739 0
		 93.814738344044542 41.457311372519172 14.745179313170427 1;
	setAttr ".RightHandPinky2GX" -type "matrix" -0.27874444835009915 0.36956177131680606 0.88641165927303955 0
		 0.44684048620191802 -0.76709169697182544 0.46033021661381118 0 0.85007947416981677 0.52439910909351239 0.048687390329509139 0
		 95.031237630166146 40.535611823488793 14.355193318407414 1;
	setAttr ".RightHandPinky3GX" -type "matrix" 0.230656525410978 0.11575210026962457 0.96612577782010622 0
		 0.43652234429110609 -0.89968631347465777 0.0035749518845044591 0 0.86962394758880213 0.4209109034339098 -0.25804689719219237 0
		 95.313372582835399 40.161565732884718 13.458014073638369 1;
	setAttr ".LeftInHandIndexGX" -type "matrix" -0.38699764098898193 -0.48375056201879318 0.78499670322316728 0
		 -0.73724277826292706 -0.34898652890172266 -0.57851662771634071 0 0.55381057417003654 -0.80261707672906712 -0.22158446714592012 0
		 105.51811677170561 41.125095113068312 4.6403971161712363 1;
	setAttr ".LeftInHandMiddleGX" -type "matrix" -0.3099566392369123 -0.60654114861982977 0.7321439181089302 0
		 -0.77293499595991533 -0.28765465260258738 -0.5655318672334303 0 0.55362295275160367 -0.74119001333465251 -0.37965641087643121 0
		 105.89544372896202 40.624774691582267 4.4639288177533247 1;
	setAttr ".LeftInHandRingGX" -type "matrix" -0.31714108787844364 -0.6951917597556988 0.64508134955759777 0
		 -0.87270473172719587 -0.052324427923715527 -0.48543651022911194 0 0.37122497437570157 -0.71691740905785672 -0.59010291220221023 0
		 106.18838196017435 40.170581555014962 4.1044499488363293 1;
	setAttr ".LeftInHandPinkyGX" -type "matrix" -0.30659534687096252 -0.76182962119940179 0.57062677955056573 0
		 -0.94296022190736362 0.16140526696192997 -0.2911603676625022 0 0.12971242491561746 -0.62734676858984784 -0.76786113247278398 0
		 106.24680788140736 39.572597241613757 3.6264400704974387 1;
	setAttr ".RightInHandIndexGX" -type "matrix" -0.73067940673337473 -0.10491121625405125 -0.67461319625772087 0
		 -0.6444860242708691 0.43203134816176503 0.63086185391498839 0 0.2252693701828315 0.89573577012235805 -0.38328989157129711 0
		 92.187808568683025 44.102289191856983 12.891395843979103 1;
	setAttr ".RightInHandMiddleGX" -type "matrix" -0.69824870769846303 0.040508833173355435 -0.71470817585386492 0
		 -0.65486087710547325 0.36712512893709648 0.66058789826908759 0 0.28914697618006724 0.92928906920174925 -0.22981699682153645 0
		 92.00943322650788 43.516565355984284 13.112648172277513 1;
	setAttr ".RightInHandRingGX" -type "matrix" -0.71801343544867191 0.1577529458687969 -0.67791645103575382 0
		 -0.66943852787779834 0.11012246501821357 0.73465985332745554 0 0.19054858673840075 0.98131903617938088 0.026536490422989584 0
		 91.841342384321123 42.889894540951524 13.131516554432674 1;
	setAttr ".RightInHandPinkyGX" -type "matrix" -0.71653667826057099 0.25414536070921351 -0.64960397500114653 0
		 -0.69517224536136657 -0.18335584254721574 0.69506559710795379 0 0.057539012735210088 0.94962664802215002 0.30805598741084855 0
		 91.907710441428776 42.133710902530467 13.016289755488014 1;
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
	rename -uid "4408BD7C-463F-1875-07D3-4D9B44875729";
	setAttr ".ei[0].exportFile" -type "string" "runw";
	setAttr ".ei[0].t" 2;
	setAttr ".ei[0].fe" 18;
createNode animCurveTA -n "Body_CTRL_rotateX";
	rename -uid "B38BF4AE-4172-643E-AFC0-F381D0C50890";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 9.0018406488477751 1 8.4768718933952787
		 2 9.0455081349059085 3 10.287663988103581 4 11.931676271748044 5 13.222748649059838
		 6 13.774234112804484 7 13.62366415375481 8 12.972423553788108 9 12.046798836740633
		 10 11.122271496734214 11 10.764718500361667 12 10.921611186457547 13 11.734121821921999
		 14 12.726960611975437 15 13.129592076693218 16 12.207252853767971 17 10.498916262583954
		 18 9.0218964654000544;
createNode animCurveTA -n "Body_CTRL_rotateY";
	rename -uid "5B988563-4923-4C43-FB11-3D90C3D752EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.9495250226324048 1 1.8517969024522236
		 2 0.73037530150595686 3 0.88711312579166601 4 2.3692206571530559 5 4.8730168539366288
		 6 7.7972572368685986 7 10.422538716487333 8 12.960709748822513 9 15.617522811267724
		 10 17.970861432014022 11 19.247523586944244 12 19.050176751572426 13 17.484145767719806
		 14 14.904997104797511 15 11.893860155341276 16 9.084399804669081 17 6.5009637545188097
		 18 3.9933775548000328;
createNode animCurveTA -n "Body_CTRL_rotateZ";
	rename -uid "E2A0AEF7-43D8-EB45-BA99-2A99397B4D03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -11.388219910560791 1 -10.048772712456493
		 2 -6.969294238566401 3 -3.5830110390750201 4 -1.9523299018282736 5 -1.6137780618513491
		 6 -1.0616083681475419 7 1.7750280590417182 8 5.2768041903913048 9 6.7291647549749785
		 10 5.2553615444635708 11 2.1129756579028807 12 -1.1002461914098938 13 -2.9114371217832873
		 14 -3.4943385302614107 15 -4.0752864619022882 16 -6.3586471088189791 17 -9.6585533026748305
		 18 -11.387278756750861;
createNode animCurveTL -n "Body_CTRL_translateX";
	rename -uid "8EB8DAFE-4433-0851-4B86-8DBEA2BC04AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.02639472484588623 1 5.5741362571716309
		 2 11.316904067993164 3 16.969455718994141 4 22.508096694946289 5 27.881023406982422
		 6 33.064319610595703 7 38.1737060546875 8 43.230396270751953 9 48.216537475585938
		 10 53.207656860351563 11 58.233272552490234 12 63.268295288085938 13 68.374282836914063
		 14 73.544075012207031 15 78.71246337890625 16 83.926475524902344 17 89.186607360839844
		 18 94.431770324707031;
createNode animCurveTL -n "Body_CTRL_translateY";
	rename -uid "314490B0-4699-A393-9A24-B78A847DD14F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.6545181274414063 1 -3.1588897705078125
		 2 -2.43621826171875 3 -1.9062347412109375 4 -1.8098182678222656 5 -2.2781753540039063
		 6 -3.3610763549804688 7 -4.0344734191894531 8 -4.1879425048828125 9 -3.8704071044921875
		 10 -3.1720428466796875 11 -2.2629547119140625 12 -1.730712890625 13 -1.6353721618652344
		 14 -1.8633193969726563 15 -2.4708213806152344 16 -3.3005142211914063 17 -3.8211669921875
		 18 -3.6610145568847656;
createNode animCurveTL -n "Body_CTRL_translateZ";
	rename -uid "83B52254-4EC7-0DCD-9B86-F89ECBB0911A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.1444807052612305 1 2.9810469150543213
		 2 2.8219137191772461 3 2.671703577041626 4 2.5335280895233154 5 2.4065465927124023
		 6 2.2957627773284912 7 2.2052245140075684 8 2.1518166065216064 9 2.1984591484069824
		 10 2.3700411319732666 11 2.6277987957000732 12 2.913684606552124 13 3.1790413856506348
		 14 3.373790979385376 15 3.4475569725036621 16 3.4040358066558838 17 3.2945919036865234
		 18 3.1449391841888428;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateX";
	rename -uid "0384B0A9-4F93-22C0-8C05-4CB580B4DC6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.22788147628307343 1 -0.19914890825748444
		 2 -0.18748274445533752 3 -0.2005743682384491 4 -0.23596552014350891 5 -0.26776975393295288
		 6 -0.28026250004768372 7 -0.26800051331520081 8 -0.24582575261592865 9 -0.21931982040405273
		 10 -0.19286875426769257 11 -0.18838706612586975 12 -0.20644614100456238 13 -0.23782800137996674
		 14 -0.26633113622665405 15 -0.27941226959228516 16 -0.26974880695343018 17 -0.25146979093551636
		 18 -0.22842805087566376;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateY";
	rename -uid "E8593120-411E-B58F-D096-A68951BE94B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.42616167664527893 1 -0.38683053851127625
		 2 -0.40672698616981506 3 -0.4630596935749054 4 -0.53522861003875732 5 -0.59098565578460693
		 6 -0.61181008815765381 7 -0.58088338375091553 8 -0.50688254833221436 9 -0.43133601546287537
		 10 -0.39681053161621094 11 -0.42300289869308472 12 -0.47891104221343994 13 -0.54021167755126953
		 14 -0.58867001533508301 15 -0.60806000232696533 16 -0.57788026332855225 17 -0.50612366199493408
		 18 -0.42738375067710876;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateZ";
	rename -uid "8870F3F5-4D34-EAD6-40D3-22A925C432FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.50618952512741089 1 -0.46286222338676453
		 2 -0.32701557874679565 3 -0.16384081542491913 4 -0.072346724569797516 5 -0.033507376909255981
		 6 0.019227286800742149 7 0.17668581008911133 8 0.36161854863166809 9 0.44855737686157227
		 10 0.39803081750869751 11 0.26504433155059814 12 0.11777450889348984 13 0.021149409934878349
		 14 -0.029797907918691635 15 -0.085310518741607666 16 -0.21955457329750061 17 -0.40013712644577026
		 18 -0.50572186708450317;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateX";
	rename -uid "5FCDD974-4D19-EC9C-2986-28B0A98B9813";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.2612421187441214e-06 1 2.2738367988495156e-07
		 2 9.8635879908215429e-08 3 -1.2864599057138548e-06 4 -1.1259689927101135e-06 5 2.6754664759209845e-06
		 6 -1.4690756415802753e-06 7 2.7023102120438125e-06 8 -2.5444879270253296e-07 9 -4.6247347995631571e-07
		 10 3.662012431959738e-06 11 3.8529637436113262e-07 12 1.0462522368470673e-06 13 2.8393874345056247e-06
		 14 -1.9129447537125088e-07 15 2.8238628146937117e-07 16 2.6555906060821144e-06 17 -1.802513054371957e-07
		 18 -1.4575877003153437e-06;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateY";
	rename -uid "EF6108DF-4C67-B339-EFA0-7CA058E745FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.9985012512697722e-07 1 -6.0236760646148468e-07
		 2 -4.0403051571047399e-07 3 -3.5719318702831515e-07 4 -7.1217402819456765e-07 5 -6.4477552541575278e-07
		 6 -3.3819097211562621e-07 7 -1.0336461855331436e-06 8 -5.0815538088500034e-07 9 -7.3682855372680933e-07
		 10 -9.1699553195212502e-07 11 -6.4878560124270734e-07 12 -5.9929186591034522e-07
		 13 -6.7939532755190157e-07 14 6.3603366129427741e-08 15 3.9796098860733764e-08 16 -5.7013409104911261e-07
		 17 -4.6131708586472087e-07 18 -4.0808942003422999e-07;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateZ";
	rename -uid "CE26A8A7-4C0A-B3B9-4248-56B6A254BAA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.8696938159100682e-08 1 -7.1144575031212298e-07
		 2 -7.1592558015254326e-07 3 -1.4115651083557168e-06 4 -7.2135588879973511e-07 5 -1.2906617996577552e-07
		 6 -8.8087710992112989e-07 7 8.4805776623397833e-08 8 -5.5608450111321872e-07 9 -8.1547335639697849e-07
		 10 -4.3409610839262314e-07 11 -8.0847343042478315e-07 12 -3.3487796713416174e-07
		 13 -1.6458366189908702e-06 14 1.5091013665369246e-06 15 1.2142994592068135e-06 16 6.4784637743287021e-07
		 17 -1.5156218751144479e-06 18 2.6135376174352132e-06;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateX";
	rename -uid "7B7A997A-47D6-46EE-9932-7CA92EEB6C26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.841216079716105e-07 1 1.8491338948933844e-07
		 2 1.5836897659937677e-07 3 -1.4851127616566373e-06 4 1.7656379895925056e-06 5 8.6832557144589373e-07
		 6 -6.8245378770370735e-07 7 -1.938311697813333e-06 8 -4.7358476251702086e-08 9 -2.5923789053194923e-06
		 10 -1.5942598565743538e-06 11 1.9260220085470792e-08 12 -2.6460779736225959e-06 13 -5.0135122364736162e-07
		 14 1.0156521312865152e-07 15 2.2051915493648266e-07 16 -1.6779824818513589e-06 17 1.9522915408742847e-06
		 18 -8.8105514350900194e-07;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateY";
	rename -uid "6A874236-45C9-3643-237A-DD9AC8F37492";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.3274241673098004e-07 1 -5.6432128303640638e-07
		 2 1.3134180676388496e-07 3 -6.9870219476797502e-07 4 -5.2141029982522014e-07 5 -3.5968903944194608e-07
		 6 -4.4121347286818491e-07 7 -5.4314591579895932e-07 8 -2.7903294608222495e-07 9 -2.2873572902426531e-07
		 10 -1.6014314496715087e-07 11 -3.6957098359380325e-07 12 2.2612985617342929e-07 13 -3.0928600835977704e-07
		 14 -1.4154333882743231e-07 15 1.215385765362953e-07 16 -3.9643202853767434e-07 17 -4.469871726087149e-07
		 18 -1.2327002707479551e-07;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateZ";
	rename -uid "269A59E5-45B9-0D6C-9F99-0BBA8D5F8660";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.2413443180939794e-08 1 -4.1140660300698073e-07
		 2 -1.5696548416599398e-07 3 -9.663473292675917e-07 4 -5.3234771257848479e-07 5 -5.81933704779658e-07
		 6 -1.7379346672896645e-06 7 2.9645383392562508e-07 8 3.8810540559097717e-07 9 9.9560281796584604e-07
		 10 1.2102677828806918e-06 11 -4.2283991774638707e-07 12 1.1707750218192814e-06 13 1.5841519598325249e-06
		 14 3.5493005725584226e-06 15 1.4982213087932905e-06 16 -3.6579012885340489e-06 17 1.216263171954779e-06
		 18 5.0327724920862238e-07;
createNode animCurveTA -n "Head_CTRL_rotateX";
	rename -uid "28B75AFB-4DEB-6E06-CA79-A58649FA126A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.1351533483872416 1 -2.1442370265109418
		 2 -2.2018877401819301 3 -2.2865501062381002 4 -2.3794454381280792 5 -2.4569596424093225
		 6 -2.4864781070018149 7 -2.4149132718166895 8 -2.2814777484644022 9 -2.1548824818931394
		 10 -2.0800609359347746 11 -2.066428889917912 12 -2.0919959159158772 13 -2.1388504815274478
		 14 -2.1845495516266284 15 -2.2070210404798658 16 -2.189516953023384 17 -2.158452550841889
		 18 -2.1354394709521429;
createNode animCurveTA -n "Head_CTRL_rotateY";
	rename -uid "CC9CED51-4E06-FD6F-C309-ED972DD0C14F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.8226898067978494 1 -5.8417559861812256
		 2 -8.9017197047844832 3 -11.661709329328803 4 -13.986013745117141 5 -15.666070662665041
		 6 -16.311021691879272 7 -15.115620539424103 8 -12.617615980705919 9 -9.5704265114441665
		 10 -6.555887740584077 11 -3.7594056229618324 12 -1.1622177952436905 13 0.87355198379616483
		 14 2.1420181031349821 15 2.4615974754356138 16 1.5022497358557558 17 -0.43591056411524487
		 18 -2.7786463949457811;
createNode animCurveTA -n "Head_CTRL_rotateZ";
	rename -uid "20664D72-4911-8879-EDA4-7387DD7A5764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.4994110929331494 1 2.8791703256649055
		 2 3.5047243704271831 3 4.2875977588433685 4 5.1453864835368908 5 5.9450401745960413
		 6 6.5732896543431272 7 6.905422922903786 8 6.9345894284637639 9 6.6855369799157751
		 10 6.2752794287068463 11 5.8100532095294746 12 5.2651306190196729 13 4.6620897132506185
		 14 4.0091026377434922 15 3.3512397813385419 16 2.8184380720512539 17 2.4682516135705108
		 18 2.4961679707899505;
createNode animCurveTL -n "Head_CTRL_translateX";
	rename -uid "D1265FE8-44FA-A810-62E3-91A81FB0C823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 9.6222470347129274e-07 1 -1.1670223329929286e-06
		 2 -2.5394633667019662e-06 3 -4.4187931962369476e-06 4 -3.4193647024949314e-06 5 -2.1871558146813186e-06
		 6 -2.3183467874332564e-06 7 -5.1106867431371938e-06 8 -5.6336812122026458e-06 9 -2.0097049855394289e-06
		 10 -3.8186399251571856e-06 11 -2.3126081032387447e-06 12 -6.5125832406920381e-06
		 13 2.1940645638096612e-06 14 -9.1687581971200416e-07 15 -5.6895646594057325e-06 16 -2.2255869680520846e-06
		 17 -4.1976049942604732e-06 18 -6.7597483166537131e-07;
createNode animCurveTL -n "Head_CTRL_translateY";
	rename -uid "DA7D0ED4-4ACB-D920-FF11-20BDE66A2CA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.1780317486845888e-06 1 -3.2717491649236763e-06
		 2 2.4864188162609935e-05 3 3.7633657484548166e-05 4 1.4952288438507821e-05 5 -3.4791962661984144e-06
		 6 1.3120724361215252e-05 7 3.0250874260673299e-05 8 3.398227272555232e-05 9 1.3326778571354225e-05
		 10 2.7745078114094213e-05 11 2.1245046809781343e-05 12 6.5775711846072227e-05 13 -2.8135300453868695e-06
		 14 5.901315944356611e-06 15 5.062987474957481e-05 16 -5.3613132422469789e-07 17 3.0397228329093195e-05
		 18 -1.2258199603820685e-05;
createNode animCurveTL -n "Head_CTRL_translateZ";
	rename -uid "C750AD0C-4B50-C031-D478-088FCD58B187";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -4.613321834767703e-06 1 -4.5552106087143329e-08
		 2 7.5466941780177876e-06 3 1.0497431503608823e-05 4 6.5714675656636246e-06 5 8.9985178419738077e-06
		 6 1.0931959877780173e-05 7 1.1350924978614785e-05 8 9.8439304565545171e-06 9 4.0719152138990466e-07
		 10 9.5331715783686377e-06 11 7.3209052970923949e-06 12 1.3668358405993786e-05 13 1.2099668310838751e-05
		 14 2.287625648023095e-06 15 1.4424408618651796e-05 16 8.685172360856086e-06 17 1.1788698429882061e-05
		 18 9.8475775303086266e-06;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateX";
	rename -uid "FA8BFF02-45FA-5165-7537-12A88235A170";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.4984181361366291 1 2.3515481766074049
		 2 1.6292371384688198 3 0.73960966451106647 4 0.23112426873142533 5 0.13737111682356654
		 6 0.38032250717726201 7 0.85404157397306912 8 1.3313889079400631 9 1.5173724198690606
		 10 1.2850153027068998 11 0.8196291652812151 12 0.2728136226218924 13 -0.074112527751740709
		 14 -0.082349008945754185 15 0.32704401727725912 16 1.0792483053781754 17 1.9399849026861993
		 18 2.4959815003799246;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateY";
	rename -uid "12C26CB2-4C61-2ED0-AD3C-2EBB61FF4182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.836932149360976 1 7.1714157922126347
		 2 5.1748288193228689 3 2.8298191903550083 4 1.5424801118959288 5 1.4454533402792804
		 6 2.4724340046712769 7 4.5170009391050119 8 6.8676628660830854 9 8.1734068000444058
		 10 7.5929371920536015 11 5.7516680996387732 12 3.3864258231775035 13 1.8022988172085084
		 14 1.5598464894637767 15 2.734580968653229 16 4.7402756866714704 17 6.7592529286066148
		 18 7.8372120909975163;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateZ";
	rename -uid "E45FBA76-4037-A51C-A6CE-008ED386734F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.280472127627478 1 -7.7729732668478686
		 2 -7.7049017020523038 3 -7.9413928342041569 4 -8.4921205235480599 5 -9.4330234776879536
		 6 -10.709142800790671 7 -12.09594724735369 8 -13.284127506463438 9 -14.12782290248048
		 10 -14.653362960658315 11 -14.871179906928756 12 -14.798934819478481 13 -14.375306660495013
		 14 -13.540400642666244 15 -12.297851864975417 16 -10.784237859939156 17 -9.3380774590393791
		 18 -8.2941761538723195;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateX";
	rename -uid "806843C2-4DF2-FB88-8BF7-6399ABD51000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 20.884551814324855 1 19.733299518630968
		 2 19.546829896041253 3 21.261905599912669 4 23.639502159948048 5 25.369507349791306
		 6 26.121175269705997 7 24.827259821131879 8 21.590071838512397 9 18.073709068899763
		 10 15.100066976660839 11 13.815958187467634 12 13.525707541800648 13 13.588216334148672
		 14 14.664060781043281 15 16.891235361639577 16 19.364658379267738 17 21.205489956215636
		 18 20.864691028969787;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateY";
	rename -uid "391B9900-459E-A455-8D61-DDB32F8DC54D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 14.896245272430964 1 12.823245421074388
		 2 8.8555843585888745 3 5.5238940876735212 4 3.7864966071631323 5 2.4245797308798971
		 6 -0.82035640294267009 7 -5.0744667402747528 8 -6.9314393269124599 9 -6.7735746703529029
		 10 -6.6992840925087558 11 -5.4763789258576514 12 -3.8257045028870174 13 -3.0250444447397773
		 14 -2.2113767918527789 15 0.38035379855752821 16 5.7186049461067565 17 12.201853172863062
		 18 14.870438352871355;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateZ";
	rename -uid "C78420E3-4509-D80F-0E2D-8FAEA6EA48E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -21.356257424129801 1 -24.174476778236865
		 2 -25.622198543037381 3 -24.988383409072775 4 -22.014800136890898 5 -17.102115690467649
		 6 -10.962365460535775 7 -4.5143094735738103 8 1.210809854886773 9 5.1156502082069206
		 10 6.89941367133728 11 7.7101534394899076 12 6.960224958789432 13 3.6168819357431405
		 14 -2.0493841389394256 15 -8.6068943056167644 16 -14.263056988362477 17 -18.025319170125151
		 18 -21.318557437621337;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateX";
	rename -uid "8FF060FC-4BD2-5384-761D-CEBB3F35F4E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -16.712928039824913 1 -15.752137968994289
		 2 -14.863414976734026 3 -14.248895323324458 4 -13.976598148128339 5 -14.180520150324748
		 6 -14.762251884318198 7 -15.553689715395457 8 -16.45217034657156 9 -17.369027638998105
		 10 -18.229261053173278 11 -18.887403757548913 12 -19.119646774114909 13 -19.016117325044604
		 14 -18.743784450094907 15 -18.386592892106361 16 -17.967038206760595 17 -17.46518380811461
		 18 -16.72915967169962;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateY";
	rename -uid "8F04342B-4572-54B6-875C-5A90B95D1CB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.8168526397684435 1 -8.1612316669648042
		 2 -8.4071116521340024 3 -8.538625969040087 4 -8.587141438316058 5 -8.5513849259652801
		 6 -8.4308940984976299 7 -8.2220007931600634 8 -7.9187403876713098 9 -7.5311786408222607
		 10 -7.0885527044956333 11 -6.6924772010681872 12 -6.5396727240560173 13 -6.6086378661657257
		 14 -6.7834620149403708 15 -6.9986336176961785 16 -7.2321752892129183 17 -7.4856310903731034
		 18 -7.8102657243823179;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateZ";
	rename -uid "9BBAD177-4DAE-C6B8-257F-C8BBCA9AFBC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 86.599580723025639 1 82.107021798701808
		 2 78.047130010012424 3 75.266811413198695 4 74.058378693743066 5 74.964908796380158
		 6 77.588103560807397 7 81.194568618019474 8 85.368430109348907 9 89.745653285730668
		 10 93.995141714974125 11 97.364860025415695 12 98.583709388499997 13 98.037956332288545
		 14 96.618854942872943 15 94.791995835512225 16 92.649229024816393 17 90.214326209417493
		 18 86.676619840931892;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateX";
	rename -uid "8652E854-46CF-4105-C205-4CACCC19B62B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.52784883558709939 1 -1.4131414402943701
		 2 -2.0898958532511882 3 -2.2434053809882606 4 -2.3227385729561649 5 -2.3697976539736727
		 6 -2.3935408494646433 7 -2.396363766684487 8 -2.3754905348809801 9 -2.3220433171631596
		 10 -2.1976706581608387 11 -1.1726981142769122 12 -0.45720393404901705 13 -0.29892495755071824
		 14 -0.23077923919634885 15 -0.21750400129909209 16 -0.2523009906537686 17 -0.34298381234150621
		 18 -0.52308693795295758;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateY";
	rename -uid "7A643639-4EEA-5639-DB05-2B8BED5193E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.8594061462976086 1 -2.7872296234270775
		 2 -7.3668752981149712 3 -8.4354506214733682 4 -8.9911544912293984 5 -9.3217946756630639
		 6 -9.4893995456620424 7 -9.5091282283616696 8 -9.3623004672059658 9 -8.9861522976723922
		 10 -8.1160723529148733 11 -1.2134716701747188 12 3.2925032455023162 13 4.2527839472224844
		 14 4.662185054840088 15 4.7416925728040518 16 4.533193869828156 17 3.9869640240568662
		 18 2.8885121029308203;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateZ";
	rename -uid "0D623AD8-4598-C3A7-67F9-E08489B6E9FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 11.806011351997659 1 11.176806150765108
		 2 10.727848715793284 3 10.630297401582805 4 10.580614182246547 5 10.551471444405241
		 6 10.536696568885864 7 10.53498984654 8 10.547842902013077 9 10.581020297666406 10 10.659151857083256
		 11 11.343422613048133 12 11.858003667896417 13 11.975379638509073 14 12.026278878235306
		 15 12.036213103273658 16 12.010174202941048 17 11.942598955013349 18 11.809446843946299;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateX";
	rename -uid "266BFBA9-43FD-3A6C-D2DD-B9ACA564A2A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -22.107266126257695 1 -17.348008295610523
		 2 -18.831425976436368 3 -23.672072135565067 4 -25.611557244350777 5 -24.860456825943114
		 6 -21.77334581884941 7 -22.477254087164582 8 -18.979131699025189 9 -14.897666586529098
		 10 -9.1483759482368079 11 -17.727529488598378 12 -26.09228892787975 13 -29.910805992857703
		 14 -31.314968155741578 15 -31.996559692784384 16 -31.554217769336177 17 -28.263236226511317
		 18 -21.136110432890959;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateY";
	rename -uid "79AA80D9-4E9C-53BA-A0BC-1A9C29420C3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -18.152150577406662 1 -28.069076518178335
		 2 -29.628178164273269 3 -25.14536646753956 4 -20.835365586890486 5 -18.556030547672378
		 6 -15.866332276929123 7 -6.3541607599977041 8 7.1765206985971899 9 15.596656531215018
		 10 18.827044608500593 11 17.017122995832363 12 13.662976822289814 13 12.480739317871333
		 14 12.532124838190779 15 10.69561311432671 16 5.4109032949699163 17 -4.840013257364177
		 18 -19.516845468735085;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateZ";
	rename -uid "CC656192-46B7-C677-A63C-74B87A058184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -33.339787373921055 1 -37.628038293130196
		 2 -34.286218653713753 3 -25.423229506401043 4 -18.475656384454364 5 -14.775508236988722
		 6 -18.822891924126647 7 -17.338477300792196 8 -9.279804565511089 9 4.0943870444327759
		 10 12.105656062908906 11 13.675542584237403 12 9.8866082310804373 13 5.9518588572022537
		 14 0.61889490043272433 15 -7.195071257505619 16 -16.92468772600488 17 -26.447549256693492
		 18 -34.266463327665953;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateX";
	rename -uid "E4F44440-417E-07B4-33D0-F38E68884F20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.8047396755308137e-05 1 8.3552337608525672e-06
		 2 1.6015006494233989e-05 3 2.5172201862355521e-05 4 2.0009090349593551e-05 5 6.7129107797872425e-06
		 6 9.7659176242326473e-06 7 7.8091845161071982e-05 8 0.00045093750029699518 9 -6.6527620448832445e-06
		 10 -7.9459808510622797e-06 11 -2.3161149595572807e-05 12 -2.7940694399771669e-05
		 13 -2.4919466502779934e-05 14 -7.6249912340325827e-05 15 7.2767611128256754e-05 16 0.013545880859647213
		 17 -5.2834188466061377e-05 18 1.5097055217887826e-05;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateY";
	rename -uid "769D992E-4C55-1A13-B4EC-E893DDC6F9AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.7115017938500252e-05 1 2.076406115071162e-05
		 2 -1.3398177050004411e-05 3 0 4 3.0188351210341865e-05 5 -5.108685139379593e-06 6 1.8922686076374023e-05
		 7 7.9266404697404247e-05 8 0.0004949387132398939 9 -4.9341169994527631e-06 10 -4.6935717373368984e-05
		 11 1.5332121914930633e-05 12 -4.4227765762573016e-05 13 -4.0867843757840831e-05 14 -3.0345631980934935e-05
		 15 1.8472828610156525e-05 16 -0.0012503071717587337 17 8.5732288309955264e-06 18 -3.4307260423778166e-05;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateZ";
	rename -uid "5F68545E-45D1-9F28-02B1-71B76B9F7894";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 101.58918722607103 1 93.00260957623442
		 2 73.588110169438622 3 48.582924649436599 4 28.995505741404695 5 16.04240183787595
		 6 25.515854351225798 7 32.325158217592453 8 26.289091533625747 9 12.972027600758722
		 10 5.5313533790215992 11 6.7011239430173566 12 17.673906552756041 13 29.408349234427192
		 14 43.135301815686873 15 61.122868518896347 16 81.372829939792069 17 98.22256675280768
		 18 102.31248701785093;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateX";
	rename -uid "63B91E88-4C51-EE52-DEB8-789E83E0C2C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.1664100115853184 1 -5.9194142410616486
		 2 -8.8810149726232126 3 -5.035951811098152 4 -7.9698324514462051 5 -13.902742480998498
		 6 -14.011065327799743 7 -7.574150647890237 8 -1.7134946988166722 9 -5.7880975342989931
		 10 -11.276361898497976 11 0.55809228839836555 12 11.124231312455322 13 13.696484388779142
		 14 10.367375505503899 15 4.4911210207326748 16 -1.0347559148390666 17 -2.3458943952023663
		 18 -2.0528530755445238;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateY";
	rename -uid "A10C4E9F-4DC6-F6F8-BBD1-2F89CD5B9FA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.6047982132336225 1 3.7070989124541081
		 2 9.8847247853902349 3 16.024447389786978 4 9.0019685048752365 5 -2.9970824080030023
		 6 -7.8465017148349308 7 -6.810701501546002 8 -2.1052664111781882 9 -3.3099258105655953
		 10 -12.447389049242002 11 -25.429816685010724 12 -27.921312538468275 13 -23.210202425004539
		 14 -16.505027082559849 15 -8.5911155213965458 16 0.43954041732519483 17 6.8067134011174533
		 18 4.4467414797741691;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateZ";
	rename -uid "B2091C95-41D0-5D5A-A400-83AB34B145BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.8235405984927286 1 0.73388244250949064
		 2 5.4474798339388508 3 12.942665218854318 4 7.7332849438149776 5 7.4806697267649058
		 6 19.310046395244306 7 28.588516149688452 8 31.536667043352672 9 23.658496592381759
		 10 5.8786989230587743 11 -17.120382280945755 12 -25.268119827201602 13 -25.202459269879615
		 14 -18.813001912300326 15 -8.7240233178995279 16 1.5290173248698036 17 7.822386562655768
		 18 5.2376944321913177;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateX";
	rename -uid "707B6BA8-4B64-9D85-37BE-6B8C1DA4E8C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.9659543129012551 1 1.7218159850500909
		 2 1.1819959087320626 3 0.59070280817417431 4 0.27952314302938663 5 0.27977177507104406
		 6 0.61522255719732721 7 1.3289959755559158 8 2.2376288749448707 9 2.8171862397783376
		 10 2.6659921508635285 11 1.9961794685995908 12 1.1173492348425267 13 0.53119561960292894
		 14 0.42411987915138011 15 0.76555860293462763 16 1.300201468976659 17 1.773622457069167
		 18 1.9676735327398942;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateY";
	rename -uid "15BC03CC-47B6-2AD5-B3B0-F08D45F7111F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 9.0896511545553018 1 8.5003240450452591
		 2 6.4670555171113397 3 4.0257999566996467 4 2.6415335900126795 5 2.440657054196437
		 6 3.3269032907934992 7 5.1628255719664038 8 7.2543230353823924 9 8.3485672961068058
		 10 7.6970415733510027 11 5.9103837100917929 12 3.6685297735631908 13 2.2083877497620725
		 14 2.0794191339680834 15 3.3851827099517218 16 5.5778464208261971 17 7.8216888296311105
		 18 9.087614403208546;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateZ";
	rename -uid "41FA02EB-4855-9D0C-3467-11A989B233F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -13.402475907712924 1 -13.977143509560571
		 2 -14.36162404703779 3 -14.47814353696028 4 -14.152828604558628 5 -13.325150787575064
		 6 -12.008144349725603 7 -10.344842204091327 8 -8.7203002682328119 9 -7.580874152149895
		 10 -7.1175622271483174 11 -7.1834459197336189 12 -7.601109800424636 13 -8.2748243115290894
		 14 -9.2279181013650504 15 -10.398483520173897 16 -11.613226853882452 17 -12.635691142223116
		 18 -13.39009033756278;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateX";
	rename -uid "F79DF257-41FE-7060-7EA5-3883FCF12601";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 18.400662462558358 1 16.85957475936609
		 2 14.340144836095455 3 11.06608841037195 4 8.6245056833049158 5 7.7361076220180163
		 6 8.4729698125383148 7 10.133295764256159 8 11.639408570480661 9 12.146074798153842
		 10 11.8393130956324 11 11.77648527682716 12 13.697193637359893 13 16.959535787241375
		 14 19.995035284734943 15 21.8506494850742 16 21.432152519769815 17 19.839918498210292
		 18 18.425557616703717;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateY";
	rename -uid "3C807990-4411-0CEE-2420-8A998D8C8603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.1179782661238207 1 -3.7192218682959113
		 2 -4.4874005634117857 3 -6.8191503681690646 4 -9.0665745824564663 5 -10.609420535512635
		 6 -10.326852453379445 7 -7.1018331354813942 8 -1.5874975151991126 9 2.2253278165360486
		 10 1.5248258199622675 11 -1.6630032900993408 12 -4.1407570334711368 13 -4.8494498704380229
		 14 -5.7572529030335691 15 -8.2156412833007764 16 -9.6235874107931032 17 -7.961183355979168
		 18 -5.15626259017266;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateZ";
	rename -uid "08C8ECA3-48D7-4A5C-DEEF-DC983CA66064";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.2354932888108525 1 9.9554022707167675
		 2 9.4123135238907842 3 6.3730781640107725 4 1.2562460391378512 5 -5.2618076269973715
		 6 -11.821755742816574 7 -17.133578997205355 8 -20.809891426551054 9 -23.730350352482585
		 10 -26.491925390609588 11 -28.060452471633834 12 -27.094531596713008 13 -23.141244445755319
		 14 -17.063904281910766 15 -9.8700370067080154 16 -2.3900557470740904 17 4.0158835316800783
		 18 8.184772253820185;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateX";
	rename -uid "D9178594-45DB-6B60-C728-568F74335435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -17.048310974373596 1 -17.857620380537931
		 2 -18.476148922479595 3 -18.692545962600779 4 -18.59247405288243 5 -18.333936194630304
		 6 -17.996306325554379 7 -17.595229441696826 8 -17.126628815914188 9 -16.432810309651817
		 10 -15.532700643332779 11 -14.695157591297662 12 -14.115149513804049 13 -13.858456381954406
		 14 -14.044098236980952 15 -14.587796914462036 16 -15.328647183160225 17 -16.17114062834618
		 18 -17.032990166892809;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateY";
	rename -uid "FFA955B7-4161-AC00-6E7E-7E96C4083F31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.4970488087304492 1 -7.0881803691952463
		 2 -6.724834849560219 3 -6.586418470028959 4 -6.6512026418142698 5 -6.8125116657307005
		 6 -7.0106963835872431 7 -7.2286622771473228 8 -7.4605763180193181 9 -7.7619363182250698
		 10 -8.0835813510675401 11 -8.3174215251115164 12 -8.4444750023362722 13 -8.4918368463826308
		 14 -8.4581178248481628 15 -8.3430691638215073 16 -8.146186145096209 17 -7.863252985468244
		 18 -7.5040822648263807;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateZ";
	rename -uid "1F90B464-4FE1-2B74-69A0-E8B293F695AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 89.5734218835874 1 93.620890736375102
		 2 96.819257917569018 3 97.962157093676026 4 97.431782404417518 5 96.073867260495447
		 6 94.328757465587913 7 92.292915036354842 8 89.959952782588601 9 86.570815815337056
		 10 82.288677798825432 11 78.418600868961732 12 75.759239092878275 13 74.591929819057171
		 14 75.436731658577614 15 77.923724952591712 16 81.3532835944456 17 85.327063656793939
		 18 89.497981235853842;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateX";
	rename -uid "504CA265-4A9D-C1B2-63D5-7F96043F3EE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.62898472845832731 1 -0.49869202174343275
		 2 0.58641751842548173 3 1.3314682082648588 4 1.4983534016066824 5 1.5702287091995177
		 6 1.5839022386287145 7 1.5463680015555337 8 1.4493626185949542 9 1.2566646697350157
		 10 0.33210131654523811 11 -0.38603010217539213 12 -0.54718178629658398 13 -0.62986986508341403
		 14 -0.67888309723978535 15 -0.70370180712469477 16 -0.70676901319841012 17 -0.68544344282674385
		 18 -0.63034606387490766;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateY";
	rename -uid "B563405A-4323-EFA7-1CDC-B3BFF02C9BED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.3919189184496119 1 -4.5360294679004269
		 2 2.2625285124657761 3 6.5802734226764894 4 7.5080340175847926 5 7.9033292495468164
		 6 7.9781482422890901 7 7.7725372154818384 8 7.2370530400577611 9 6.1598198371470607
		 10 0.72291019334493489 11 -3.8029833712887795 12 -4.8536545352936065 13 -5.3978686747293851
		 14 -5.7218114520345322 15 -5.8864796151546166 16 -5.9070765246143395 17 -5.7655257320781717
		 18 -5.4014026753440687;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateZ";
	rename -uid "CE79DD51-403F-EEB2-12AC-99B4ECA57E19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.4632434557174339 1 3.5554833143465672
		 2 4.3581208762155965 3 4.9397437542713893 4 5.0728608978680052 5 5.1305739257157299
		 6 5.141564348085554 7 5.1114047308080179 8 5.0337027350304266 9 4.880357984034398
		 10 4.1648647240278374 11 3.6359490860790693 12 3.5210101045329658 13 3.4625937067499599
		 14 3.4282132627639812 15 3.4107603088462031 16 3.4086410837953509 17 3.4235737219556452
		 18 3.4622468853745705;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateX";
	rename -uid "D8B63F83-4276-4886-F814-E0AACD01EF05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 30.346433497040355 1 34.326697714477419
		 2 36.8664231014777 3 38.887105184103646 4 42.318486970652671 5 42.718218327289925
		 6 40.754096592173788 7 36.844635082480139 8 28.981185203276446 9 17.679639620996635
		 10 7.9240541167618535 11 3.7848511920222685 12 6.5477762638221941 13 15.876496654408513
		 14 20.420463667218893 15 19.312959655165859 16 19.140080811256276 17 27.102802739488478
		 18 30.155916423604229;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateY";
	rename -uid "CB2AB3D6-49FC-42F0-151C-D1A72DE4E1C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.9042750447038053 1 -4.9381306419297459
		 2 -14.848639763105016 3 -21.93736431913446 4 -17.194044059180833 5 -10.342977963049274
		 6 -2.8804079354225074 7 3.4273827462007644 8 9.0446836497215273 9 13.689388226563775
		 10 18.674057403211741 11 24.653064638127042 12 29.492704464667927 13 29.142241404597172
		 14 26.654903969424641 15 25.780432003835475 16 21.269866979473587 17 17.32513106973532
		 18 6.9811637134053575;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateZ";
	rename -uid "1566BC97-4F9C-8A92-4E6C-BC9CD6B4802C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -16.728671207208905 1 -17.526552932925263
		 2 -22.601795435788397 3 -27.469889245988981 4 -38.319616183897296 5 -46.001160922595531
		 6 -52.020033098440294 7 -55.536289999334961 8 -56.059137688043386 9 -53.430909356302088
		 10 -47.305853323318956 11 -38.786339776858284 12 -27.516855624172823 13 -12.058398689958558
		 14 -9.1765004275250757 15 -20.27744506684488 16 -25.148826362768659 17 -22.9708619721521
		 18 -17.271563522347286;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateX";
	rename -uid "7AE5420B-4B3E-41EB-0E78-61BEEDE4BF0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.299725820108088e-05 1 0 2 1.5945723039383368e-05
		 3 8.3752685106547628e-06 4 1.253891743940282e-05 5 -7.1656377967210068e-05 6 -1.715690214729039e-05
		 7 0.02727471087800936 8 -1.2588889447863161e-05 9 -3.5455867306002907e-05 10 -0.00066598616938386862
		 11 -2.7323262742459255e-05 12 4.608309559805989e-05 13 0 14 2.8814854005301264e-06
		 15 3.5697495119433327e-05 16 -9.4715697986531247e-05 17 -6.4369508796690767e-05 18 0.0027670592439743851;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateY";
	rename -uid "F5E2F681-4236-4040-6F7B-F3906409D3CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.8737375911894354e-06 1 6.2032006190010857e-05
		 2 -2.107677603864907e-06 3 1.0249537958036783e-05 4 -5.0350602285999471e-06 5 -4.7620870512791396e-05
		 6 -4.1517128580582341e-05 7 -0.0030578353483057758 8 -3.7371164705867656e-05 9 1.8163053547101586e-05
		 10 -6.7859812920854738e-05 11 -2.5209043428565596e-05 12 7.7049860033701455e-05 13 -8.9283246074621988e-05
		 14 6.881715997830712e-05 15 5.4090104586155266e-05 16 -0.00010263330627770055 17 -5.7355118588346129e-05
		 18 0.0042122414354081629;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateZ";
	rename -uid "23A4587E-4D32-3B7C-D226-A3AF4D8D11F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 18.094051969649982 1 11.098927674897073
		 2 5.9414608244865637 3 3.7732274868854772 4 25.36106751339323 5 46.60305535913502
		 6 67.323402630721986 7 82.523612453025692 8 88.92029871522746 9 84.383743518331073
		 10 70.16712194189698 11 50.292042294388402 12 27.394018606269235 13 -0.44607679122078664
		 14 -4.9613480539321628 15 18.429235595607917 16 31.427005147268499 17 32.228901213261452
		 18 19.597777593189214;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateX";
	rename -uid "234C8969-46B0-0288-A581-568AF197A529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.5703098247363521 1 -10.042133763405864
		 2 -1.6178715159247612 3 4.2542953625304811 4 10.437533510622451 5 15.241495561134858
		 6 17.042747313749864 7 17.20015549609365 8 16.18135215691267 9 14.542230613776843
		 10 5.0570604185464134 11 -5.9656819172662638 12 0.52693428938012477 13 9.9259429607827414
		 14 17.184724356434927 15 17.320097800077846 16 11.496920635711332 17 2.1805492907582682
		 18 -4.933177192570966;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateY";
	rename -uid "2C156F55-47B8-920D-B060-C4BF098C754B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -15.188762376275919 1 -13.626251463943337
		 2 -14.167921804646413 3 -8.985267704092287 4 -3.8224824332691925 5 -0.85339729502407047
		 6 -3.1954444729045508 7 -6.3417443976007029 8 -7.1285409535763877 9 -6.4953751595334204
		 10 -12.909106267566997 11 -9.7611035522571417 12 -5.7451323743096587 13 -3.0225917090563681
		 14 -0.58355078275450711 15 -1.4429989156035203 16 -8.1538684014380873 17 -9.163500666375219
		 18 -14.890632209737664;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateZ";
	rename -uid "599E4B51-4FBD-A788-45AE-C3AA4F4C2DA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 17.464873369014335 1 2.7843570250151743
		 2 -28.296480873045638 3 -50.283231585393978 4 -44.218882727983512 5 -32.276995541264917
		 6 -18.200481650512025 7 -6.4937995064629366 8 -0.54096373218549076 9 1.7873551745483218
		 10 3.7839441459530159 11 3.6255520161068397 12 -3.8714323283223027 13 -14.518064590956312
		 14 -12.039170270245213 15 4.9880704343726059 16 14.984054429990501 17 19.945655832867949
		 18 17.812125022966008;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateX";
	rename -uid "601F88B0-4747-7984-00EA-18A711285086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.6735010855696979 1 -6.5256092984102851
		 2 -6.7315183951924666 3 -6.5302170003967728 4 -5.978315000665301 5 -5.05798236160385
		 6 -3.607711368336342 7 -1.3313841770909018 8 1.3238611560869387 9 3.7581733666183363
		 10 5.3656472065842209 11 5.9029219570887292 12 5.872031069258834 13 5.3532705946577819
		 14 4.3124200442167098 15 2.6569872032782746 16 -0.076398641455821065 17 -3.3228073018171238
		 18 -5.6455492895212211;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateY";
	rename -uid "B8D49E09-4A41-0299-18D5-E7903EDBC819";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.37688289236898137 1 0.71824644778971269
		 2 1.0612442042295429 3 1.4452945680066667 4 1.8239194262229954 5 2.082797086300495
		 6 2.1023376734102923 7 1.7568989169753157 8 1.1231979322080978 9 0.33878720099441401
		 10 -0.31945122417789695 11 -0.66351410035285296 12 -0.90154846071559402 13 -1.0834563159882635
		 14 -1.2141034703642051 15 -1.2358001914899988 16 -0.87632396566872672 17 -0.25120252166065016
		 18 0.36833575866539248;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateZ";
	rename -uid "62A8E49E-4EA2-3467-963B-F4A5B0A3D52E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.22421652702109141 1 0.18919752299534121
		 2 0.17737753877179238 3 0.18292349288984266 4 0.20341155292917573 5 0.23677135703485971
		 6 0.28043264102229665 7 0.32150903692201116 8 0.32439935620213056 9 0.28457466950870147
		 10 0.23478728859212533 11 0.21346150841589073 12 0.21248480823158883 13 0.22913625145678737
		 14 0.26087793624796801 15 0.29917760911300212 16 0.32497608055998839 17 0.29240446412163457
		 18 0.22491473519032323;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateX";
	rename -uid "C4520611-4E95-FFAF-E088-BCB13BECCAAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.4194466083003334 1 4.9058596864754804
		 2 5.7323902307053878 3 5.9830566669034457 4 5.7554531529098787 5 4.9901026677939004
		 6 3.5914853049568203 7 1.5355238325884013 8 -0.91082167063259045 9 -3.167262374018883
		 10 -4.8035512326314631 11 -5.7129844298607981 12 -5.9888492868808116 13 -5.7281646046062527
		 14 -4.8535936994189415 15 -3.2991116920243542 16 -1.1305083274633814 17 1.2794838150073211
		 18 3.3865412596105884;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateY";
	rename -uid "19ABB8B4-4B07-DA49-87E4-3389BB8C8B22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.23536444527542721 1 -0.33740238789287902
		 2 -0.39409799539401447 3 -0.41128820862495252 4 -0.39571087889364503 5 -0.34320719624163559
		 6 -0.24715961723429611 7 -0.10573722127911478 8 0.062713074169252037 9 0.21800553133716885
		 10 0.33037028983805466 11 0.3927497910181097 12 0.41166663821216215 13 0.39383120552919304
		 14 0.33386017427732867 15 0.22708725039963434 16 0.07786328467680674 17 -0.088124772203540286
		 18 -0.23308635820694804;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateZ";
	rename -uid "3F15E9B0-468E-7305-B00B-E7979DBB0574";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.3424220400188425 1 2.3349666938969524
		 2 2.3296908436768331 3 2.3279760194268575 4 2.3295366680975405 5 2.3345254935837767
		 6 2.3417065560348926 7 2.3479969541876682 8 2.3489568373450784 9 2.3434155179286589
		 10 2.3355702750924459 11 2.3298668732600083 12 2.3278951066389881 13 2.3297379588318399
		 14 2.3353289413749927 15 2.3428906854776441 16 2.3486961425768733 17 2.348464795767693
		 18 2.3425353076396971;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateX";
	rename -uid "22CE787D-46D0-0084-CE05-5DBFC3A0859E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.4123326081971754e-06 1 -2.3648597107239766e-06
		 2 1.602181555426796e-06 3 1.0035957984655397e-06 4 3.3005397881424869e-07 5 -1.4099842928771977e-06
		 6 9.9356986993370811e-07 7 -2.5817769255809253e-06 8 -1.3111884982208721e-06 9 -1.3727419627684867e-06
		 10 -3.9495813553003245e-07 11 -2.3673437681281939e-06 12 -1.7277594679399044e-06
		 13 1.9247279396950034e-06 14 2.7620424702945456e-07 15 -3.9098472370824311e-06 16 -9.335481365724263e-08
		 17 -1.0168587323278189e-06 18 -2.2612937300436897e-06;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateY";
	rename -uid "491ED2A4-4254-6785-C5CA-DCBB345FD64D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.7797784102622245e-07 1 3.8520504119787802e-08
		 2 -1.1337028809066396e-06 3 -7.2505758907936979e-07 4 1.0519458015778582e-07 5 4.6900296979401901e-07
		 6 1.6808282055080781e-07 7 8.792152357273153e-07 8 -2.5059705421881517e-07 9 -6.3580495179849095e-07
		 10 -7.2295540576305939e-07 11 2.9853254090994596e-07 12 5.1667647937847505e-08 13 -8.439629368695023e-07
		 14 7.3115550947022712e-08 15 1.8137198765089124e-07 16 3.1752071549817629e-07 17 6.2536861378248432e-07
		 18 1.8456104555752972e-07;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateZ";
	rename -uid "6A4981A3-4844-815F-DB9B-46A42778FCAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.9571227483083931e-07 1 -7.3349048079762724e-07
		 2 -8.2300903159193695e-07 3 -4.1565914443708607e-07 4 -3.8543589653272647e-07 5 9.5007942491065478e-07
		 6 1.157005385721277e-06 7 5.9953964637315948e-07 8 -1.0517953796806978e-06 9 2.9379515353866736e-07
		 10 1.3737533208768582e-06 11 -1.0716754559325636e-06 12 -1.5401877817566856e-06 13 2.2629983504884876e-06
		 14 -3.1183394639811013e-06 15 -3.006764472957002e-06 16 -3.728284582393826e-06 17 -3.0601536309404764e-06
		 18 -3.6328349324321607e-06;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateX";
	rename -uid "6D2F88FD-4513-3FE9-D5BE-0696DEA74367";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.4325153036048388 1 1.8354476791544687
		 2 1.9257545774059734 3 1.9000853642800437 4 1.9094340426048273 5 1.7498525261890667
		 6 1.3442618392740848 7 0.52803903822759501 8 -0.53415410710208022 9 -1.3814180415583599
		 10 -1.7730367740487409 11 -1.9030585288454729 12 -1.939047920017231 13 -1.9206847111502285
		 14 -1.7314344770847243 15 -1.3089399346296804 16 -0.53416018356745232 17 0.5190690559921074
		 18 1.4211573259432724;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateY";
	rename -uid "9300A48D-41B6-AB6D-6BE4-83AA4B8CFEB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.8627035653011976 1 7.3890159774792972
		 2 4.2013203853225747 3 0.72103958483987662 4 -0.96614686759240298 5 -1.284261209912686
		 6 -1.7658962995049405 7 -4.4870544572718822 8 -7.7398129513414258 9 -8.8730290174307545
		 10 -7.2087523204808051 11 -4.0722656255326566 12 -0.94418236788129661 13 0.82552106214826726
		 14 1.3785343546016882 15 1.8968911107428696 16 4.0944674450294505 17 7.280195590920596
		 18 8.8644662713350346;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateZ";
	rename -uid "459D673C-459B-9074-ADCA-F18B1A0A28C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.015888630732599218 1 -0.24979303386750332
		 2 -0.88906741285086843 3 -1.6806784630658249 4 -2.2786973514559166 5 -2.4845095348026449
		 6 -2.1212695518273375 7 -1.3005224303074874 8 -0.44792773334078589 9 -0.052262263300147632
		 10 -0.35080975040923823 11 -0.98099520896269654 12 -1.6518494002503821 13 -2.1803112818308343
		 14 -2.3984132919486267 15 -2.0806546597048508 16 -1.3223978555901903 17 -0.46850706614196841
		 18 -0.016053507713792881;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateX";
	rename -uid "49A6FB9A-4BE9-2956-FE1C-0787BBE1352D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.8192124833529224 1 4.5123368117515898
		 2 5.4456790611433208 3 5.7164342956089804 4 5.4375068463778566 5 4.5431329768837285
		 6 2.9228102590656513 7 0.55118820270035629 8 -2.258186886102914 9 -4.8378356761978276
		 10 -6.7010411956666491 11 -7.7280604432369433 12 -8.027514998571732 13 -7.7116855053455264
		 14 -6.6937086092476434 15 -4.8955901067120751 16 -2.3949752973716114 17 0.37293767105878484
		 18 2.7816637645134503;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateY";
	rename -uid "7B1D533F-41C6-ADE2-8490-1B89DCE2041E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.7144118229148746 1 1.5418311397567439
		 2 1.2322683315993104 3 0.81158695305887574 4 0.32024735849510749 5 -0.17647714092317707
		 6 -0.71052898968896971 7 -1.2287277018832174 8 -1.5204257067620524 9 -1.4978971862431318
		 10 -1.2913384222757349 11 -0.95155279048686647 12 -0.52749424206323225 13 -0.060155954775202428
		 14 0.39994182816681473 15 0.92019691667194448 16 1.4453704394395632 17 1.7421284059497857
		 18 1.7162423118276657;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateZ";
	rename -uid "5B33659E-4EB1-F5AB-F1AA-428D07908CD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.0547649664356795 1 2.4605079643844978
		 2 2.250898125365246 3 1.6571341081548547 4 0.88258956142038092 5 0.2875330323197558
		 6 0.083837239875495642 7 0.44777236196047726 8 1.2519034756456475 9 2.0505398810631199
		 10 2.4162728277021608 11 2.1435435312346152 12 1.5557764426520284 13 0.90156602694915045
		 14 0.37831022815573018 15 0.16489508658767726 16 0.48621634206958392 17 1.2346706357559365
		 18 2.0421580539081874;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateX";
	rename -uid "00E96D42-41F3-BC38-1882-149C4D837AA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.34230534166506926 1 2.7169342889542882
		 2 4.3972112744669962 3 5.3265155598182323 4 5.6102574627324389 5 5.3507755763939366
		 6 4.4942442853247622 7 2.9110788586209875 8 0.58271144861757751 9 -2.1620865992486697
		 10 -4.7162934246014663 11 -6.5662471757801306 12 -7.5888985689446553 13 -7.901316240000841
		 14 -7.6040596020559352 15 -6.6249816410086302 16 -4.8650751294570309 17 -2.4095295083566852
		 18 0.29486261445669326;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateY";
	rename -uid "5C8065E1-4485-F5D2-622E-0D81E6F9B07E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.055461321120819689 1 0.43989843945202162
		 2 0.71143429687058668 3 0.8614408227254764 4 0.90714127577046955 5 0.86531126026134875
		 6 0.72716534448267789 7 0.47127582745736007 8 0.094320462526893467 9 -0.3500785412809761
		 10 -0.76297341562268928 11 -1.0610673828399868 12 -1.2253897733849404 13 -1.2755263814762201
		 14 -1.2278233939430998 15 -1.0705379166906679 16 -0.7870108886152497 17 -0.39011914271038328
		 18 0.047740775232825432;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateZ";
	rename -uid "DA0AA849-4A17-3D91-9615-75AC8CC71F67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.853793371441633 1 3.2739342741392328
		 2 3.0844534373089747 3 2.5047323787239009 4 1.7337896691029544 5 1.1319631413664821
		 6 0.91239699490148507 7 1.2567494375538235 8 2.050573682917376 9 2.8611365512371321
		 10 3.258674973264855 11 3.0204375693706664 12 2.4548462568027691 13 1.8060399921704011
		 14 1.2716807404417902 15 1.0317383955840989 16 1.31831131820821 17 2.039321266830449
		 18 2.8410736859639592;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateX";
	rename -uid "3146DA1C-4B59-B1EF-2730-139830EFDAFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.7606838304782286e-05 1 -1.4890242709952872e-06
		 2 1.0140275662706699e-05 3 -1.1626896139205201e-06 4 1.5132616226765094e-06 5 1.637572268009535e-06
		 6 2.6988461740984349e-06 7 7.8333468991331756e-05 8 6.561067948496202e-06 9 7.7785887242498575e-07
		 10 8.2083943198085763e-06 11 7.9027944593690336e-05 12 3.6251993151381612e-05 13 5.2391478675417602e-06
		 14 1.629548569326289e-05 15 2.9684713808819652e-05 16 2.1938446934655076e-06 17 4.8493843678443227e-06
		 18 8.3730374171864241e-06;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateY";
	rename -uid "FBB60539-4ECA-F15D-180C-ACA8AED286AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -4.8891133701545186e-06 1 -1.4854638266115217e-06
		 2 9.9286853583180346e-06 3 -2.2834512947156327e-06 4 -1.9073037265116e-06 5 -1.1365481213942985e-06
		 6 1.4257824432206689e-06 7 -2.6815934688784182e-05 8 1.1561855899344664e-05 9 3.6882895528833615e-06
		 10 1.0301680958946235e-05 11 -2.4211909476434812e-05 12 -1.0019719411502592e-05 13 -4.0130753404810093e-06
		 14 -8.4645243987324648e-06 15 -7.1654053499514703e-06 16 -2.5593485020181106e-07
		 17 8.4748091921937885e-07 18 1.7988428226090036e-05;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateZ";
	rename -uid "C9F3A9DE-4586-BAAD-9254-04A52CB37FC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 4.6252344532149436e-07 1 -1.0507142178539652e-06
		 2 -5.8857626754615922e-06 3 -1.4328071529234876e-06 4 -2.8911413210153114e-06 5 5.478214006870985e-07
		 6 -3.7653007893823087e-06 7 -1.0765721526695415e-05 8 -3.5985315207653912e-06 9 1.1819669225587859e-06
		 10 -1.8230970226795762e-06 11 -1.1760176676034462e-05 12 -4.0331606214749627e-06
		 13 2.9128091227903496e-06 14 -2.2118192646303214e-06 15 -2.4050419256127498e-07 16 -5.3660801313526463e-06
		 17 -6.3941811276890803e-06 18 -4.2272167775081471e-06;
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
// End of runw.ma
