//Maya ASCII 2018ff09 scene
//Name: runs.ma
//Last modified: Wed, May 20, 2020 01:38:37 PM
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
	setAttr ".t" -type "double3" 34.049468245421423 197.68717168618389 315.74471477585689 ;
	setAttr ".r" -type "double3" -27.338352729606573 6.6000000000036216 2.0011084909432305e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA1BD692-4DBA-E741-4CC8-1E86A64239DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 363.08089223318672;
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
	rename -uid "4044CF49-4B52-AA03-785D-0FA85DBEA6F3";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A9AD784A-4941-6167-814C-E1AC882C9844";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5EC92832-421F-847F-2895-15A6A3C05FB1";
createNode displayLayerManager -n "layerManager";
	rename -uid "C25D797B-4A6F-878B-F288-14AFF27DF8AD";
createNode displayLayer -n "defaultLayer";
	rename -uid "5A16310C-4349-467E-4292-F8956478A955";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5442B8E9-4913-CA54-13DF-9FB7D9EBB192";
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
		"translate" " -type \"double3\" -0.27109968662261963 -5.23647308349609375 -107.73968505859375"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL" 
		"rotate" " -type \"double3\" 5.86762795962621819 -6.63919207949979473 -9.02914273083320751"
		
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
		"translate" " -type \"double3\" -1.5947679798955505e-07 -8.1350810887670377e-07 2.7264491109235678e-08"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotate" " -type \"double3\" -0.33390995629651543 0.022997158725748475 2.34934533280274049"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFKFwd_2_JNT|RIG:SpineFwdFK_3_CTRL_HmNUL|RIG:SpineFwdFK_3_CTRL_SpaceNUL|RIG:SpineFwdFK_3_CTRL_AnimNUL|RIG:SpineFwdFK_3_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translate" " -type \"double3\" -6.7202756781625794e-07 -2.0787949495115754e-07 -3.4795408510035486e-07"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotate" " -type \"double3\" -1.23352908925877958 1.92941747929490415 3.18860486798049969"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFKFwd_1_JNT|RIG:SpineFwdFK_2_CTRL_HmNUL|RIG:SpineFwdFK_2_CTRL_SpaceNUL|RIG:SpineFwdFK_2_CTRL_AnimNUL|RIG:SpineFwdFK_2_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translate" " -type \"double3\" 9.148595836450113e-08 1.3942894838692155e-06 -5.1133056899743679e-08"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotate" " -type \"double3\" -0.55444886046645692 1.8388515798753009 1.44850355912949946"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFKFwd_0_JNT|RIG:SpineFwdFK_1_CTRL_HmNUL|RIG:SpineFwdFK_1_CTRL_SpaceNUL|RIG:SpineFwdFK_1_CTRL_AnimNUL|RIG:SpineFwdFK_1_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translate" " -type \"double3\" -0.12208936363458633 -0.20831298828125 -0.48796471953392029"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotate" " -type \"double3\" 0.12007441217899203 9.0956153325854423 -2.65928108605971403"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:BodyOffsetNUL|RIG:Body_CTRL_HmNUL|RIG:Body_CTRL_SpaceNUL|RIG:Body_CTRL_AnimNUL|RIG:Body_CTRL|RIG:BodyOffsetAdj_NUL|RIG:__Spine|RIG:SpineLayered_GRP|RIG:SpineFwdRig_HmNUL|RIG:SpineFwdFK_HmNUL|RIG:SpineFwdFK_0_CTRL_HmNUL|RIG:SpineFwdFK_0_CTRL_SpaceNUL|RIG:SpineFwdFK_0_CTRL_AnimNUL|RIG:SpineFwdFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 4.20889403565289832 15.37591416181719772 -29.77397674244896919"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotate" " -type \"double3\" 9.6156079067773303e-05 4.8152245867095816e-05 45.33749850595014408"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE|RIG:__RightLeg|RIG:LegBase_R_CTRL_HmNUL|RIG:LegBase_R_CTRL_SpaceNUL|RIG:LegBase_R_CTRL_AnimNUL|RIG:LegBase_R_CTRL|RIG:LegBaseOffset_R_NUL|RIG:LegFK_R_HmNUL|RIG:LegFK_0_R_CTRL_HmNUL|RIG:LegFK_0_R_CTRL_SpaceNUL|RIG:LegFK_0_R_CTRL_AnimNUL|RIG:LegFK_0_R_CTRL|RIG:LegFK_1_R_CTRL_HmNUL|RIG:LegFK_1_R_CTRL_SpaceNUL|RIG:LegFK_1_R_CTRL_AnimNUL|RIG:LegFK_1_R_CTRL|RIG:LegFK_2_R_CTRL_HmNUL|RIG:LegFK_2_R_CTRL_SpaceNUL|RIG:LegFK_2_R_CTRL_AnimNUL|RIG:LegFK_2_R_CTRL" 
		"rotate" " -type \"double3\" 7.89813204579802886 -8.11940676863573074 18.27261617946881245"
		
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
		"rotate" " -type \"double3\" -0.84915868383913851 -8.11553584041857867 -59.02038345660096752"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotate" " -type \"double3\" 0 -1.1424241844092928e-05 74.70746898525362667"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__surrogates|RIG:pelvis__SURROGATE1|RIG:__LeftLeg|RIG:LegBase_L_CTRL_HmNUL|RIG:LegBase_L_CTRL_SpaceNUL|RIG:LegBase_L_CTRL_AnimNUL|RIG:LegBase_L_CTRL|RIG:LegBaseOffset_L_NUL|RIG:LegFK_L_HmNUL|RIG:LegFK_0_L_CTRL_HmNUL|RIG:LegFK_0_L_CTRL_SpaceNUL|RIG:LegFK_0_L_CTRL_AnimNUL|RIG:LegFK_0_L_CTRL|RIG:LegFK_1_L_CTRL_HmNUL|RIG:LegFK_1_L_CTRL_SpaceNUL|RIG:LegFK_1_L_CTRL_AnimNUL|RIG:LegFK_1_L_CTRL|RIG:LegFK_2_L_CTRL_HmNUL|RIG:LegFK_2_L_CTRL_SpaceNUL|RIG:LegFK_2_L_CTRL_AnimNUL|RIG:LegFK_2_L_CTRL" 
		"rotate" " -type \"double3\" 4.63927344997623159 -1.72098458640525243 -17.41306102926198562"
		
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
		"translate" " -type \"double3\" 2.9136748707969673e-05 -1.5825235095690005e-05 -4.2430151552252937e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotate" " -type \"double3\" 0.11825597163027017 -1.84632074413340708 0.33228468167439157"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNeckAttach_NUL|RIG:__NeckHead|RIG:NeckHeadFK_HmNUL|RIG:NeckHeadFK_0_CTRL_HmNUL|RIG:NeckHeadFK_0_CTRL_SpaceNUL|RIG:NeckHeadFK_0_CTRL_AnimNUL|RIG:NeckHeadFK_0_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL" 
		"rotate" " -type \"double3\" 1.3290023970781415 5.16282463489089061 -10.34483332715799264"
		
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
		"rotate" " -type \"double3\" 32.87461420773541931 14.95799046480771111 -8.06440817864859305"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotate" " -type \"double3\" -17.59521224198127243 -7.2286710194819106 92.29291135242073096"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__RightClavicle|RIG:ClavicleFK_0_R_CTRL_HmNUL|RIG:ClavicleFK_0_R_CTRL_SpaceNUL|RIG:ClavicleFK_0_R_CTRL_AnimNUL|RIG:ClavicleFK_0_R_CTRL|RIG:ClavicleIK_R_CTRL_HmNUL|RIG:ClavicleIK_R_CTRL_SpaceNUL|RIG:ClavicleIK_R_CTRL_AnimNUL|RIG:ClavicleIK_R_CTRL|RIG:ClavicleChildPartParent_R_NUL|RIG:__RightArm|RIG:ArmBase_R_CTRL_HmNUL|RIG:ArmBase_R_CTRL_SpaceNUL|RIG:ArmBase_R_CTRL_AnimNUL|RIG:ArmBase_R_CTRL|RIG:ArmBaseOffset_R_NUL|RIG:ArmFK_R_HmNUL|RIG:ArmFK_0_R_CTRL_HmNUL|RIG:ArmFK_0_R_CTRL_SpaceNUL|RIG:ArmFK_0_R_CTRL_AnimNUL|RIG:ArmFK_0_R_CTRL|RIG:ArmFK_1_R_CTRL_HmNUL|RIG:ArmFK_1_R_CTRL_SpaceNUL|RIG:ArmFK_1_R_CTRL_AnimNUL|RIG:ArmFK_1_R_CTRL|RIG:ArmFK_2_R_CTRL_HmNUL|RIG:ArmFK_2_R_CTRL_SpaceNUL|RIG:ArmFK_2_R_CTRL_AnimNUL|RIG:ArmFK_2_R_CTRL" 
		"rotate" " -type \"double3\" 1.54635192421635814 7.77256344634358776 5.11142318008777163"
		
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
		"translate" " -type \"double3\" -2.1020912299718475e-06 1.4411811207537539e-05 -4.3320324039086699e-06"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"translateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotate" " -type \"double3\" 2.34214093221606978 9.30983627495686683 -2.2852213452147061"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__NeckHead|RIG:NeckHeadRig_HmNUL|RIG:Head_CTRL_HmNUL|RIG:Head_CTRL_SpaceNUL|RIG:Head_CTRL_AnimNUL|RIG:Head_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL" 
		"rotate" " -type \"double3\" 1.3307940051645708 6.8637540479035577 -13.28159899097387786"
		
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
		"rotate" " -type \"double3\" 3.30507096434041125 -18.7049679840071974 -15.8245060909522568"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotate" " -type \"double3\" -15.55387363947120782 -8.22194252662228919 81.19446460251403153"
		
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateX" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateY" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL" 
		"rotateZ" " -av"
		2 "|RIG:GEN_MAN|RIG:World_CTRL|RIG:Fly_CTRL_HmNUL|RIG:Fly_CTRL|RIG:Scale_CTRL_HmNUL|RIG:Scale_CTRL|RIG:Rig_NUL|RIG:__Spine|RIG:SpineNul_GRP|RIG:SpineClav_worldNUL|RIG:__LeftClavicle|RIG:ClavicleFK_0_L_CTRL_HmNUL|RIG:ClavicleFK_0_L_CTRL_SpaceNUL|RIG:ClavicleFK_0_L_CTRL_AnimNUL|RIG:ClavicleFK_0_L_CTRL|RIG:ClavicleIK_L_CTRL_HmNUL|RIG:ClavicleIK_L_CTRL_SpaceNUL|RIG:ClavicleIK_L_CTRL_AnimNUL|RIG:ClavicleIK_L_CTRL|RIG:ClavicleChildPartParent_L_NUL|RIG:__LeftArm|RIG:ArmBase_L_CTRL_HmNUL|RIG:ArmBase_L_CTRL_SpaceNUL|RIG:ArmBase_L_CTRL_AnimNUL|RIG:ArmBase_L_CTRL|RIG:ArmBaseOffset_L_NUL|RIG:ArmFK_L_HmNUL|RIG:ArmFK_0_L_CTRL_HmNUL|RIG:ArmFK_0_L_CTRL_SpaceNUL|RIG:ArmFK_0_L_CTRL_AnimNUL|RIG:ArmFK_0_L_CTRL|RIG:ArmFK_1_L_CTRL_HmNUL|RIG:ArmFK_1_L_CTRL_SpaceNUL|RIG:ArmFK_1_L_CTRL_AnimNUL|RIG:ArmFK_1_L_CTRL|RIG:ArmFK_2_L_CTRL_HmNUL|RIG:ArmFK_2_L_CTRL_SpaceNUL|RIG:ArmFK_2_L_CTRL_AnimNUL|RIG:ArmFK_2_L_CTRL" 
		"rotate" " -type \"double3\" -2.39634118097861526 -9.50916854763935504 10.5350104366121986"
		
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
		+ "            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 0\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 1\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2202\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2202\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 1\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2202\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"vPlanarDisplay\\\" 0 \\n    -pluginObjects \\\"vRigWidget\\\" 1 \\n    -pluginObjects \\\"vstAttachment\\\" 0 \\n    -pluginObjects \\\"vChainDisplay\\\" 0 \\n    $editorName\"\n"
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
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.27109986543655396 0 -107.73966979980469 1;
	setAttr ".HipsGX" -type "matrix" 0.14444146974486416 0.98428922786444373 0.10154495422206208 0
		 -0.12962942106468631 -0.082914316128041676 0.98808978811414361 0 0.98098566503918772 -0.15588435486294419 0.11561657708385042 0
		 -0.27109987586072637 36.217342213270442 -110.3257637212966 1;
	setAttr ".LeftUpLegGX" -type "matrix" 0.18418817843932589 -0.57425620044307701 0.79768698822024398 0
		 -0.17886944091124918 -0.81760390092211166 -0.54729296021878737 0 0.96647836914816665 -0.041876932189768276 -0.25330985870880218 0
		 3.2592546921382022 32.833984228693396 -109.62661379597323 1;
	setAttr ".LeftLegGX" -type "matrix" -0.17418842244061883 -0.83176449581257705 -0.5270922281662842 0
		 -0.18862119070250524 0.55354688388149231 -0.81117685726545419 0 0.96647837011783011 -0.041876853400647292 -0.25330986803447469 0
		 6.4456122968990801 22.899658397461053 -95.827051376367223 1;
	setAttr ".LeftFootGX" -type "matrix" 0.0027723054815720419 -0.93579973529813287 0.35252116211407997 0
		 0.18395887138963335 0.3469835526709486 0.91965294965704303 0 -0.9829300320772425 0.062299836209989898 0.17311060755724705 0
		 3.4895489855852766 8.7841842840553941 -104.77206348157564 1;
	setAttr ".RightUpLegGX" -type "matrix" 0.082547426893189585 0.86548245433433713 -0.49409112879379397 0
		 -0.14778526040009865 0.50093236157023957 0.8527756363429585 0 0.98556858671621028 0.0026249516328560596 0.16925622738066876 0
		 -4.7288576516548115 34.103343654439684 -110.56807320605668 1;
	setAttr ".RightLegGX" -type "matrix" -0.084648251656286699 0.87352956757703626 0.47935453274190515 0
		 -0.1465920612809338 -0.48676401316576196 0.86114549470816404 0 0.98556858769998368 0.0026248915097395781 0.16925622258464007 0
		 -6.1568823231174203 19.130960853941986 -102.02056700111552 1;
	setAttr ".RightFootGX" -type "matrix" -0.002452788622817309 0.48891700916933623 -0.87232685501071372 0
		 -0.032325198569239794 -0.8719123655421025 -0.48859380711613037 0 -0.99947439455217202 0.026999721474228251 0.017942956135573035 0
		 -4.7203575059862608 4.3067286925001245 -110.15544930871962 1;
	setAttr ".SpineGX" -type "matrix" -0.022820676917011506 0.98726383143817253 0.15744632050025531 0
		 -0.13837884410188675 -0.15909071731550814 0.9775179994092501 0 0.99011641346362633 0.00052038260616157905 0.14024698567836721 0
		 -0.1708767394360429 37.081321525827974 -110.01123429654155 1;
	setAttr ".LeftArmGX" -type "matrix" 0.36166077125796875 -0.90249465868724932 -0.23389073853848186 0
		 -0.14065533019369159 -0.30081883695191125 0.94325187803841803 0 -0.92163852166735882 -0.30823922264352555 -0.23573505679665149 0
		 5.90694960104 51.740265001031531 -108.06758526386771 1;
	setAttr ".LeftForeArmGX" -type "matrix" -0.30227653621819972 -0.08086395301853487 0.94978414218923612 0
		 -0.12560701681767766 0.9910858100477955 0.044404892163686656 0 -0.94490834104588728 -0.10587699572674536 -0.30973906566299936 0
		 10.112345671808233 41.246043986479165 -110.78726717900469 1;
	setAttr ".LeftHandGX" -type "matrix" -0.50287462008381456 -0.37265025621886144 0.77990313694431046 0
		 -0.81394612667512789 -0.099481764652353893 -0.57235922406493134 0 0.29087595181815151 -0.92262406485072279 -0.25329037804901633 0
		 6.8029090613321994 40.360712823995321 -100.38867058085165 1;
	setAttr ".RightArmGX" -type "matrix" 0.68842146524605097 0.65949496304611288 0.30189779711896969 0
		 -0.20303918138499732 0.57481650390036398 -0.79269229696413246 0 -0.69631241336844618 0.48440931097633655 0.52961933728711275 0
		 -7.5489221656571299 51.064010925563935 -110.72766454694215 1;
	setAttr ".RightForeArmGX" -type "matrix" -0.52945108821423503 0.25777239795540374 -0.80822950703440855 0
		 -0.36657111335032533 -0.92869940397386475 -0.056062785479242733 0 -0.76505370010598917 0.26659108745588156 0.58619282496736935 0
		 -15.553895278044349 43.395392534616022 -114.23813115399903 1;
	setAttr ".RightHandGX" -type "matrix" -0.6766042292307668 0.27749562567313302 -0.68205783825077193 0
		 -0.61389746615114338 0.29891464051469152 0.73060244917408967 0 0.40661605728284461 0.91304228566822121 -0.03189304848247166 0
		 -9.7572717243418801 40.573204171473328 -105.38933858630037 1;
	setAttr ".HeadGX" -type "matrix" -0.024757759020713331 0.97910658059408895 0.2018349751792865 0
		 0.014370694408535833 -0.20152743299596718 0.97937744352842449 0 0.99959018428078239 0.027147699486455124 -0.0090810738409269065 0
		 -1.7270400942663025 60.764903748457137 -106.92341257290633 1;
	setAttr ".LeftToeBaseGX" -type "matrix" 0.094765604817914212 -0.6580407576350682 0.74699520844150036 0
		 0.16054690110268344 0.75065208457462906 0.64089479672571004 0 -0.98246840798563073 0.059192982817469743 0.17678240324011488 0
		 3.5065128599626694 3.0581349032786225 -102.61502677678084 1;
	setAttr ".RightToeBaseGX" -type "matrix" -0.012715920528090539 0.014717772105282474 -0.99981082838173974 0
		 -0.027159249442996608 -0.99952785373416486 -0.014368186359687389 0 -0.99955023912498564 0.026971406967946077 0.013109640397549098 0
		 -4.7053491392325624 1.3151065461626414 -104.81777995329389 1;
	setAttr ".LeftShoulderGX" -type "matrix" 0.95923235018322062 -0.24525929621064158 -0.14043210453537872 0
		 0.08605029774481765 -0.21984912393214504 0.97173129463051477 0 -0.26920000858098625 -0.94420031790321335 -0.18978175637154354 0
		 -0.48481914329665388 53.374530686819824 -107.13181703795613 1;
	setAttr ".RightShoulderGX" -type "matrix" 0.80433776814696079 0.3290222990842423 0.49475759866593783 0
		 0.42410051853331876 0.26528518957580532 -0.86588828284686836 0 -0.41614841692854665 0.90629360303217876 0.073840369655194929 0
		 -2.1892864649058543 53.256427661811728 -107.43088180893689 1;
	setAttr ".NeckGX" -type "matrix" -0.10396035189923414 0.89964862666218881 0.42405730011146514 0
		 -0.12427494125313934 -0.43477621733661193 0.89192229471798479 0 0.98678669640886207 0.040024859566337084 0.15700326877864318 0
		 -1.1277192595925003 55.578521577990884 -109.36806120416215 1;
	setAttr ".Spine1GX" -type "matrix" -0.033821475977986987 0.99940825772730069 0.006264355445836753 0
		 -0.14980202638198045 -0.011266458884957095 0.98865181929537049 0 0.98813736932398344 0.032499250617128335 0.15009443045896889 0
		 -0.26083403072889566 40.973037365737895 -109.39059066028609 1;
	setAttr ".Spine2GX" -type "matrix" -0.046054190676368401 0.98971778167664426 -0.13541685328719985 0
		 -0.17425403389350513 0.12552277466214151 0.97666758147947053 0 0.98362317133798016 0.068576567967342822 0.16668146607476972 0
		 -0.40495374322929234 45.231738736557432 -109.36390303505202 1;
	setAttr ".Spine3GX" -type "matrix" -0.092505314204960498 0.98613564636206297 0.13776521265514705 0
		 -0.16065258354962086 -0.15132738407889285 0.97534136087150081 0 0.98266653257484715 0.068091921708199832 0.17242382653047353 0
		 -0.64889062619547322 50.474052407764283 -110.08117302232105 1;
	setAttr ".LeftHandThumb1GX" -type "matrix" -0.66756324198596306 -0.070891056712114264 0.74117054449528019 0
		 0.077261385641303082 -0.99667851440515276 -0.025741352177449661 0 0.74053358886547216 0.040079882751543949 0.67082308156521131 0
		 5.5281888867636422 40.902479786193972 -99.649641518906947 1;
	setAttr ".LeftHandThumb2GX" -type "matrix" -0.36393426163539178 -0.51050181533977568 0.77906337979826501 0
		 0.37928388950009967 -0.84515796964838696 -0.37663209834730266 0 0.85070299421923878 0.15841686423676576 0.50120705576818436 0
		 4.3227226645681922 40.774465965864195 -98.311247248951219 1;
	setAttr ".LeftHandThumb3GX" -type "matrix" -0.088468444548055011 -0.79502908497754954 0.60008506760209257 0
		 0.5406943316842715 -0.54429343085336301 -0.64140026567999953 0 0.83655422657694256 0.26771891074340581 0.47802051297681553 0
		 3.7982975198321309 40.038831986958108 -97.188620013662131 1;
	setAttr ".LeftHandIndex1GX" -type "matrix" -0.61521806256479072 -0.45511983600042916 0.64371963226561046 0
		 -0.61943322332898609 -0.22602278507303661 -0.75180860760175539 0 0.48765775479900919 -0.86126657359593617 -0.14286288318071005 0
		 4.8778224032135968 40.25654018807505 -96.827450282777733 1;
	setAttr ".LeftHandIndex2GX" -type "matrix" -0.60360579189995844 -0.36468898209878342 -0.70898659671433661 0
		 0.51543695011646862 0.4999347535354739 -0.69598131631679461 0 0.60826375729567916 -0.78553624266686672 -0.11378933613201392 0
		 3.6801850540650718 39.370560637200413 -95.574321305793305 1;
	setAttr ".LeftHandIndex3GX" -type "matrix" 0.012715000593642944 -0.022111311662760702 -0.99967465640400044 0
		 0.73175378703958893 0.68154466574640138 -0.0057674730902367976 0 0.68145045594901732 -0.73144238220736069 0.024845876875197459 0
		 2.9040312547389808 38.901616105331826 -96.485980518930305 1;
	setAttr ".LeftHandMiddle1GX" -type "matrix" -0.83596057943103563 -0.51449736945366631 0.19095121487590652 0
		 -0.29299745057503229 0.12421980045114045 -0.94800945941082793 0 0.46402845127627479 -0.84844675613802467 -0.25458927393942776 0
		 5.3031435010379049 39.198946870963219 -96.982566794685539 1;
	setAttr ".LeftHandMiddle2GX" -type "matrix" -0.63395495678288649 -0.13251083235954897 -0.76193306272781469 0
		 0.61463067064072563 0.51164228478966867 -0.60037597480490434 0 0.46939349322092211 -0.84891875448866561 -0.24291294078182141 0
		 3.4538831257163776 38.060809060681287 -96.560150165824027 1;
	setAttr ".LeftHandMiddle3GX" -type "matrix" -0.13783581133453598 0.14325879480121048 -0.98004080065220722 0
		 0.85612389283655466 0.51479385971358416 -0.045157082673419661 0 0.49804939789545588 -0.84525986295242561 -0.1936041356418306 0
		 2.5463601465656454 37.871111797755347 -97.650863638080708 1;
	setAttr ".LeftHandRing1GX" -type "matrix" -0.77133667043606635 -0.60714098328806809 0.19083911352917479 0
		 -0.45792975098070088 0.32122133071734604 -0.82892532827687837 0 0.44197294488164796 -0.72677141048900362 -0.52579771099584294 0
		 5.4437657965722135 38.373469047232746 -97.583190030159045 1;
	setAttr ".LeftHandRing2GX" -type "matrix" -0.70931615406717885 -0.17407185900242741 -0.68305898828928779 0
		 0.37849910329689107 0.72342220971847238 -0.57740690616712598 0 0.59465033623365204 -0.66810126058067143 -0.44724901702264508 0
		 3.9829752090608572 37.223646635464561 -97.221777976952197 1;
	setAttr ".LeftHandRing3GX" -type "matrix" -0.29594168416185374 0.15698936558853316 -0.94221699128574166 0
		 0.65888114515511575 0.74772431825628516 -0.082364922432170223 0 0.69158814053924378 -0.64518422406339415 -0.32472012700968667 0
		 3.0424857387713029 36.992846102524815 -98.127447789170461 1;
	setAttr ".LeftHandPinky1GX" -type "matrix" -0.77909901475482757 -0.62651957175194373 0.021862100077948921 0
		 -0.505942550115692 0.60780019514202865 -0.61204661486502954 0 0.37017139434387303 -0.48790588128969387 -0.7905194430325162 0
		 5.4785004295425797 37.643599202644793 -98.378508467134594 1;
	setAttr ".LeftHandPinky2GX" -type "matrix" -0.76310981612578965 -0.26589039526511821 -0.58903794974366708 0
		 0.047684856877817858 0.8857941085334855 -0.46162208754771439 0 0.64450722490675405 -0.38035653667726932 -0.66327923384489229 0
		 4.2512032131833255 36.656656811711564 -98.344069418380158 1;
	setAttr ".LeftHandPinky3GX" -type "matrix" -0.52446539065978648 -0.0054193107297823423 -0.85141452012007135 0
		 0.27900970558819621 0.94367061362745908 -0.17787455457024506 0 0.80441882013517385 -0.33084196234333524 -0.4934105367390782 0
		 3.4788193673290402 36.387537667694716 -98.940260556015815 1;
	setAttr ".RightHandThumb1GX" -type "matrix" -0.93481687133320768 0.040370376312236445 -0.35282807397825033 0
		 0.12479920456681942 0.96749416389747012 -0.21995499849702205 0 0.33247943637205968 -0.24965030651041539 -0.90946805817960064 0
		 -8.2958535982619921 41.089649358340246 -105.1400634870073 1;
	setAttr ".RightHandThumb2GX" -type "matrix" -0.61700255819772576 0.47428419023184304 -0.62798276256087382 0
		 0.60464055955966334 0.79646351426497042 0.0074608431206720687 0 0.50370391790499258 -0.37510048965686366 -0.77819148398472082 0
		 -6.6077827301918219 41.016742987378542 -104.50294043407401 1;
	setAttr ".RightHandThumb3GX" -type "matrix" -0.30962402674697714 0.70210144939119046 -0.64123826837126363 0
		 0.8126654551183865 0.54551924312757016 0.20489903229334541 0 0.49366772237833534 -0.45767052575003475 -0.73947945863389197 0
		 -5.7186882472602401 40.333305698368775 -103.59801788775765 1;
	setAttr ".RightHandIndex1GX" -type "matrix" -0.78073413672620284 0.60621984013985608 -0.15149822827742176 0
		 0.00084828486249919136 0.24347821534249384 0.96990599496364893 0 0.62486277546608793 0.75711020602977086 -0.19060600138079531 0
		 -6.9244221164659869 40.907978356119465 -102.51496254546163 1;
	setAttr ".RightHandIndex2GX" -type "matrix" -0.05293895374698887 0.40592008424392467 0.91237402000691559 0
		 0.72917675077862043 -0.60852583443276909 0.31304564355990566 0 0.68227467584551871 0.68185423224858543 -0.26377276710188419 0
		 -5.4045779047411475 39.727859827591296 -102.22004063114079 1;
	setAttr ".RightHandIndex3GX" -type "matrix" 0.39909363612515236 0.10798889659704079 0.91052878472685217 0
		 0.61871015456026046 -0.76460170808313677 -0.18050477179390167 0 0.67669935292448957 0.63539171084308621 -0.37196150277074791 0
		 -5.3365055948833806 39.205902358167599 -103.39322781875966 1;
	setAttr ".RightHandMiddle1GX" -type "matrix" -0.81777829769893229 0.57134890789530546 0.069275401546856574 0
		 0.095937224458985781 0.016643224094896093 0.99524926097931443 0 0.56748155645006648 0.82053925540505945 -0.068424089154149353 0
		 -7.4408097997229721 39.897297660669231 -102.32703813733521 1;
	setAttr ".RightHandMiddle2GX" -type "matrix" -0.16626624485660518 0.21186572214158933 0.96305163496185719 0
		 0.80653642040471807 -0.53267499054118583 0.25643002361792805 0 0.5673222526765781 0.81937187542249179 -0.082311550736227077 0
		 -5.6317699768384317 38.633397193599087 -102.48028215345163 1;
	setAttr ".RightHandMiddle3GX" -type "matrix" 0.45948201708962849 -0.17132375060185628 0.87150808511762889 0
		 0.68458873483931004 -0.55683578543660195 -0.47039771057981622 0 0.56587687185017788 0.81276345056147126 -0.13856964251053538 0
		 -5.3937600912548813 38.330105785103456 -103.85889848940796 1;
	setAttr ".RightHandRing1GX" -type "matrix" -0.75383223724169934 0.65632535101706235 0.031208840214020733 0
		 -0.11185818361107364 -0.17499041646930616 0.97819532860422609 0 0.64747564035599492 0.73390420884215457 0.20532877876558309 0
		 -7.7944406782909219 38.996811464441414 -102.68203292658227 1;
	setAttr ".RightHandRing2GX" -type "matrix" -0.2687570465516721 0.25587244294489442 0.92860110312078115 0
		 0.58039587748607968 -0.72637569897523069 0.36812901180891577 0 0.76870693525712297 0.63789317809593538 0.046711251602466336 0
		 -6.3668076700140404 37.753838105728143 -102.74113783419979 1;
	setAttr ".RightHandRing3GX" -type "matrix" 0.30910113554913732 -0.17604126010061538 0.93459400958085603 0
		 0.53387874917493217 -0.78114416999266001 -0.32370861413605911 0 0.78703873423208592 0.59901858103790551 -0.14746786222662367 0
		 -6.0104558208344105 37.414566451581614 -103.97237733561286 1;
	setAttr ".RightHandPinky1GX" -type "matrix" -0.69385069119036302 0.69579272940300574 0.1855901291679351 0
		 -0.25488943089234362 -0.47833269315927929 0.84037444789472704 0 0.67350025712989325 0.53578942912762528 0.50924168258407643 0
		 -8.095082090105139 38.140991673717522 -103.2682448809023 1;
	setAttr ".RightHandPinky2GX" -type "matrix" -0.35768397240648236 0.347666351289177 0.86671234216710502 0
		 0.22846669775111289 -0.86733031664104021 0.442200282512409 0 0.90546404892862542 0.35618286036335889 0.2307999698465229 0
		 -7.0020773092636537 37.044922338563062 -103.56059564598273 1;
	setAttr ".RightHandPinky3GX" -type "matrix" 0.081343210678154476 0.00035500574847256716 0.99668608701410444 0
		 0.27289211748606657 -0.96179467902936777 -0.02192914965899604 0 0.95859959017857921 0.27377156419488591 -0.078332345475833953 0
		 -6.640043633958375 36.693028079824501 -104.43784595847912 1;
	setAttr ".LeftInHandIndexGX" -type "matrix" -0.39300327249633255 -0.20521893371323258 0.89634548111124746 0
		 -0.83780367826443969 -0.32184522837570206 -0.44102227342660083 0 0.37899033273167804 -0.92428399628503755 -0.045446913066705563 0
		 6.1558691740830858 40.923910813211435 -99.742361621820891 1;
	setAttr ".LeftInHandMiddleGX" -type "matrix" -0.34429829381927363 -0.34948056985277415 0.87139085155199858 0
		 -0.86063579882420882 -0.25341784458700833 -0.44168474937118979 0 0.37518622929866802 -0.90202146722805621 -0.21352415789411722 0
		 6.4200403528668728 40.332659466855851 -99.809340150440164 1;
	setAttr ".LeftInHandRingGX" -type "matrix" -0.37517117089886498 -0.45261761474662027 0.80893997759256187 0
		 -0.90902755632920806 0.008842821448632826 -0.41664218022540145 0 0.18142627803194034 -0.89166086564899105 -0.41475945596160824 0
		 6.5928766647632093 39.759787361826255 -100.06088894029146 1;
	setAttr ".LeftInHandPinkyGX" -type "matrix" -0.38358715807400312 -0.53532840773840473 0.75251869613251066 0
		 -0.9218301878540075 0.27099862449247192 -0.27710801194522161 0 -0.055587740750588865 -0.79998952580108984 -0.59743347888011156 0
		 6.4994032623560951 39.068350657228876 -100.3813006738156 1;
	setAttr ".RightInHandIndexGX" -type "matrix" -0.61422009176709014 0.079625552689535195 -0.78510838329093935 0
		 -0.6596667507975944 0.49421735673402334 0.56620577725326982 0 0.43309826471381618 0.86568411478305707 -0.25103168428339184 0
		 -8.9218635561359463 41.166912286706861 -105.06812593054528 1;
	setAttr ".RightInHandMiddleGX" -type "matrix" -0.55164466378600541 0.21928699462454487 -0.80473683829246911 0
		 -0.68559834001111608 0.43026391166398226 0.58722047179369596 0 0.47501903234547038 0.87566328021000417 -0.087009991388514146 0
		 -9.2303285059697693 40.608654202138013 -104.93758690827104 1;
	setAttr ".RightInHandRingGX" -type "matrix" -0.55739518544412381 0.33513311195409323 -0.75960279390986696 0
		 -0.75520781935874004 0.17543662588086814 0.63157195938305599 0 0.34492282734421548 0.92569313898910466 0.15530761605720173 0
		 -9.5016831566856741 40.023292740383958 -105.00861653740806 1;
	setAttr ".RightInHandPinkyGX" -type "matrix" -0.54457692926594214 0.42729838743155485 -0.72170080795969005 0
		 -0.82268764676943762 -0.10474942992250341 0.55875987041293096 0 0.16315944338052252 0.89802207379846943 0.40857722771399646 0
		 -9.5444496871480418 39.278232770683879 -105.18901352407134 1;
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
	rename -uid "65DED2E4-4067-47A5-E82F-998F8F9DECA3";
	setAttr ".ei[0].exportFile" -type "string" "runs";
	setAttr ".ei[0].t" 2;
	setAttr ".ei[0].fe" 18;
createNode animCurveTA -n "Body_CTRL_rotateX";
	rename -uid "FA4CB7D5-4127-2528-700C-E1857D99B504";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.8479438337795404 1 5.0812014797311829
		 2 5.0829953531669227 3 5.7091379144176457 4 7.0625921198150658 5 8.2951610999615042
		 6 8.7523927671996873 7 8.1228674445809315 8 6.8992238319446386 9 5.7383388165585956
		 10 5.0440594045427751 11 5.2027619842820831 12 5.9068163083527505 13 7.0334053073237159
		 14 8.1277555012952245 15 8.6324354165260413 16 8.1178520069662081 17 7.0152314346404925
		 18 5.8676279596262182;
createNode animCurveTA -n "Body_CTRL_rotateY";
	rename -uid "CF2279B4-42CC-7602-841B-A8B0C034333F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -6.6831462527383678 1 -8.7040155528179337
		 2 -9.6268900040427763 3 -9.2164945442206925 4 -7.5991090314359395 5 -5.0662772087384056
		 6 -2.0945856553045821 7 0.78778128002995962 8 3.668268311337997 9 6.4672267782003203
		 10 8.6580412191137004 11 9.6275312611814456 12 9.1492121782594449 13 7.4368255804225258
		 14 4.8110266252327474 15 1.7533369607963296 16 -1.2276259497944009 17 -4.0306252064767758
		 18 -6.6391920794997947;
createNode animCurveTA -n "Body_CTRL_rotateZ";
	rename -uid "CC1B8759-4648-A843-B12B-2B978D6303AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.0309892507044083 1 -7.7125376965311911
		 2 -4.5863139934892541 3 -1.118640634888552 4 0.55101505356323699 5 0.89189401080999942
		 6 1.4410535803446798 7 4.2613307531303644 8 7.6831209042974162 9 9.0279055345183838
		 10 7.5209187324359119 11 4.4530339658544724 12 1.3477266391732443 13 -0.40969229074189334
		 14 -0.98792003470267098 15 -1.5761230518237961 16 -3.8785582079414445 17 -7.2322216153828975
		 18 -9.0291427308332075;
createNode animCurveTL -n "Body_CTRL_translateX";
	rename -uid "0B76DE34-4ABB-F551-9BA9-34A6061B40CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.27496874332427979 1 -0.48369288444519043
		 2 -0.66667336225509644 3 -0.77031964063644409 4 -0.69904321432113647 5 -0.55550670623779297
		 6 -0.37072330713272095 7 -0.1616252064704895 8 0.057417064905166626 9 0.27409398555755615
		 10 0.48128268122673035 11 0.66119396686553955 12 0.75900131464004517 13 0.70224553346633911
		 14 0.56000137329101563 15 0.37476804852485657 16 0.16543000936508179 17 -0.053795397281646729
		 18 -0.27109968662261963;
createNode animCurveTL -n "Body_CTRL_translateY";
	rename -uid "86179A38-47DF-12B1-10B7-42886E36F449";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -5.2296485900878906 1 -4.7457084655761719
		 2 -4.0748405456542969 3 -3.2365913391113281 4 -2.6995010375976563 5 -2.722137451171875
		 6 -3.3465309143066406 7 -4.571441650390625 8 -5.3345489501953125 9 -5.5102691650390625
		 10 -5.1492576599121094 11 -4.3546295166015625 12 -3.335845947265625 13 -2.86474609375
		 14 -3.2751045227050781 15 -4.4713821411132813 16 -5.2881584167480469 17 -5.4927444458007813
		 18 -5.2364730834960938;
createNode animCurveTL -n "Body_CTRL_translateZ";
	rename -uid "8A7EA5EA-4145-45D1-E937-62B6033DA276";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.74705219268798828 1 -6.7028088569641113
		 2 -12.656916618347168 3 -18.56431770324707 4 -24.484109878540039 5 -30.427402496337891
		 6 -36.347682952880859 7 -42.304538726806641 8 -48.293292999267578 9 -54.244987487792969
		 10 -60.199394226074219 11 -66.151145935058594 12 -72.058250427246094 13 -77.981544494628906
		 14 -83.926765441894531 15 -89.846359252929688 16 -95.801422119140625 17 -101.78787231445313
		 18 -107.73968505859375;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateX";
	rename -uid "DD203C9C-4C9F-C9F9-E2B1-86B557035A61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.12165413796901703 1 -0.097033411264419556
		 2 -0.08511226624250412 3 -0.094923011958599091 4 -0.12462279200553894 5 -0.15132495760917664
		 6 -0.16182787716388702 7 -0.15344229340553284 8 -0.13941733539104462 9 -0.12002702057361603
		 10 -0.095549046993255615 11 -0.087021328508853912 12 -0.098588332533836365 13 -0.12378397583961487
		 14 -0.14792525768280029 15 -0.15935228765010834 16 -0.15174712240695953 17 -0.13874347507953644
		 18 -0.12208936363458633;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateY";
	rename -uid "8788CF6A-4FA2-8609-7912-A78E83E64F68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.2070704847574234 1 -0.16703762114048004
		 2 -0.18786428868770599 3 -0.24587880074977875 4 -0.32014533877372742 5 -0.37714558839797974
		 6 -0.39741089940071106 7 -0.36320486664772034 8 -0.28410357236862183 9 -0.20401692390441895
		 10 -0.16732077300548553 11 -0.19439101219177246 12 -0.25313043594360352 13 -0.31812265515327454
		 14 -0.37014433741569519 15 -0.39200589060783386 16 -0.36211544275283813 17 -0.28888872265815735
		 18 -0.20831298828125;
createNode animCurveTL -n "SpineFwdFK_0_CTRL_translateZ";
	rename -uid "578D8DE0-4C2B-5CBA-EF3C-569D4815F141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.48840388655662537 1 -0.44245368242263794
		 2 -0.30264779925346375 3 -0.13526009023189545 4 -0.041726436465978622 5 -0.0027375745121389627
		 6 0.050317432731389999 7 0.21132984757423401 8 0.39967656135559082 9 0.48652160167694092
		 10 0.43307968974113464 11 0.29636591672897339 12 0.14552223682403564 13 0.04699750617146492
		 14 -0.004150360357016325 15 -0.059866037219762802 16 -0.19693021476268768 17 -0.38136216998100281
		 18 -0.48796471953392029;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateX";
	rename -uid "15D2918A-42FB-7FA3-BC3B-FCB60DDAF9E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.9102647987383534e-07 1 -6.3529660110361874e-07
		 2 1.8480931203157525e-06 3 3.0330777462950209e-06 4 4.6807122089376207e-07 5 2.3306233742914628e-06
		 6 6.0261709222686477e-07 7 7.0254100137390196e-07 8 2.1178793758735992e-06 9 3.6407226389201242e-07
		 10 -1.2269221087990445e-06 11 6.1538997897514491e-07 12 3.1168602276920865e-07 13 1.5063999398989836e-06
		 14 -2.6731657953860122e-07 15 5.5451209846069105e-08 16 5.4708470997866243e-07 17 -4.4113880903751124e-07
		 18 9.148595836450113e-08;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateY";
	rename -uid "FA95A299-4774-4F9D-D9BF-58BD8A734737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -4.583824022574845e-07 1 -9.7909162377618486e-07
		 2 5.1213584129072842e-07 3 -1.1451431873865658e-06 4 3.1047670745465439e-07 5 -3.89511939147269e-07
		 6 1.0490066415513866e-06 7 2.6529062324698316e-07 8 -2.4836706415953813e-06 9 -5.0546532293083146e-07
		 10 -9.2088221492758748e-08 11 1.7524110944577842e-06 12 2.3724171569483588e-06 13 -1.8837017705664039e-06
		 14 -1.7763645701052155e-06 15 -1.9380806293156638e-08 16 2.1289592950779479e-06 17 -1.5370234223155421e-06
		 18 1.3942894838692155e-06;
createNode animCurveTL -n "SpineFwdFK_1_CTRL_translateZ";
	rename -uid "978ABA05-44A7-B5B4-0209-AC9A84819614";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -4.6924517960178491e-07 1 -7.5778177688334836e-07
		 2 -1.3468341997224798e-08 3 -1.9695315245371603e-07 4 1.0795520921647039e-07 5 -6.6878828874905594e-07
		 6 -1.4208734455678496e-07 7 -3.0029227104932943e-07 8 -7.027981041574094e-07 9 3.797545673478453e-07
		 10 -2.8421069941941823e-07 11 -1.3592053846878116e-06 12 -8.070068702181743e-08 13 -3.3580965919099981e-07
		 14 -7.159915185184218e-07 15 -6.1940983187014353e-07 16 2.0635056330320367e-07 17 -4.9266986934526358e-07
		 18 -5.1133056899743679e-08;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateX";
	rename -uid "AC6DBF2F-4D8D-87E6-0D56-C98CC3BE87AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.9584001620387426e-06 1 -1.0072591294374433e-06
		 2 -2.3790375962562393e-06 3 -2.6325005819671787e-06 4 -1.0571869779596454e-06 5 -5.3552321332972497e-07
		 6 -2.1612813725369051e-06 7 -2.3197349037218373e-06 8 3.4726664921436168e-07 9 1.5335217540268786e-09
		 10 -4.2145467205045861e-07 11 -8.2952531954560982e-08 12 -1.4079580523684854e-06
		 13 -3.7989450447639683e-06 14 -3.2001685212890152e-07 15 -3.4666668398131151e-06
		 16 -9.245133725244159e-08 17 -3.3048875138774747e-06 18 -6.7202756781625794e-07;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateY";
	rename -uid "516C05F2-4C44-4FC2-6907-51832751FCA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -6.7694611516344594e-07 1 -2.6479884240870888e-07
		 2 -1.7345866965001733e-08 3 -1.0753724382084329e-06 4 5.5753054084561882e-07 5 -4.3299175445099536e-07
		 6 4.85870145894296e-07 7 -3.9245554717126652e-07 8 -1.6339194530701207e-07 9 -1.9440754783772718e-07
		 10 -4.4556594502864755e-07 11 -2.5991262191382702e-06 12 -2.1838013708475046e-06
		 13 -9.0631078819569666e-07 14 -2.9479110708052758e-06 15 2.0435550140973646e-06 16 3.136402710879338e-06
		 17 2.6679642814997351e-06 18 -2.0787949495115754e-07;
createNode animCurveTL -n "SpineFwdFK_2_CTRL_translateZ";
	rename -uid "7A0DDAF1-46BE-420E-C2CA-ED8EAAC29B5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.8163704958788003e-07 1 -2.6050844326164224e-07
		 2 -4.1007757545230561e-07 3 2.2368155327967543e-08 4 8.273839569028496e-08 5 -5.6338990361837205e-08
		 6 7.1275650270763435e-08 7 -2.1019734219862585e-07 8 1.0529116423185769e-07 9 6.8746011550047115e-08
		 10 -6.1662063899348141e-07 11 -1.2270476190678892e-07 12 2.1150704299088829e-07 13 5.7847952206202535e-08
		 14 -1.8221433606413484e-07 15 -1.2367617330255598e-07 16 -2.1865938037990418e-07
		 17 2.872120319352689e-07 18 -3.4795408510035486e-07;
createNode animCurveTA -n "Head_CTRL_rotateX";
	rename -uid "D3F197F9-4FA5-D2A3-5D2E-8B94456D4071";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.3424906563533834 1 2.3565595962688759
		 2 2.346068821729522 3 2.3248229816373991 4 2.3019153450086343 5 2.2865514876418591
		 6 2.2837965569817062 7 2.3112292496593616 8 2.3646974033185475 9 2.4158264307535351
		 10 2.4389415963435863 11 2.423252309854226 12 2.3866821785478338 13 2.3430460993380824
		 14 2.3059483871882858 15 2.2869948190744531 16 2.2977653586958247 17 2.3197777487364637
		 18 2.3421409322160698;
createNode animCurveTA -n "Head_CTRL_rotateY";
	rename -uid "00FC3334-46B6-53F6-3173-62A1EE0033AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 9.3310698450586518 1 9.986360576140564
		 2 9.907613005029047 3 9.2660821853097435 4 8.059308572521255 5 6.1734800461694777
		 6 4.1672269944784457 7 2.4635292136046307 8 0.6855456091541825 9 -0.5671262313280564
		 10 -1.2497374172767364 11 -1.5319938529418453 12 -1.4143534411430965 13 -0.78935960027879915
		 14 0.67513156216936987 15 2.9758504049527965 16 5.4068417724645252 17 7.6508579099907523
		 18 9.3098362749568668;
createNode animCurveTA -n "Head_CTRL_rotateZ";
	rename -uid "2A437283-4614-0496-8BEA-C1867838CE34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.2881302390227458 1 -2.2985193250808629
		 2 -2.0499060704426131 3 -1.5956869282365531 4 -0.99690905099128824 5 -0.34690428975608406
		 6 0.27716931892527713 7 0.84646282930906747 8 1.2855945422294481 9 1.4790381040747946
		 10 1.4676416961698437 11 1.3502054405545429 12 1.1128150433086639 13 0.73180492798695251
		 14 0.17447739644134308 15 -0.53936770121595479 16 -1.2895719146265505 17 -1.965160912628902
		 18 -2.2852213452147061;
createNode animCurveTL -n "Head_CTRL_translateX";
	rename -uid "B8B91E4E-4DFD-7817-C2CB-21B823AA39E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -6.9806264946237206e-07 1 -3.3390006137778983e-06
		 2 -9.397367080055119e-07 3 -1.2983267652089125e-06 4 7.7742311077599879e-07 5 -1.5555967820546357e-06
		 6 -1.1305318139420706e-06 7 1.2049054021190386e-07 8 6.6573454660101561e-07 9 6.6395460862622713e-07
		 10 1.0164014838665025e-06 11 5.8919789580613724e-07 12 1.2992302345082862e-07 13 -4.2254708887412562e-07
		 14 -2.4304765702254372e-06 15 -1.7975361288335989e-06 16 -1.8027370742856874e-06
		 17 -3.9767455746186897e-06 18 -2.1020912299718475e-06;
createNode animCurveTL -n "Head_CTRL_translateY";
	rename -uid "D7A0D25B-46AC-658D-7043-85923A85E8A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -4.9759942157834303e-06 1 1.2489547316363314e-06
		 2 -2.6886725663644029e-06 3 6.1895407270640135e-05 4 4.0575407183496282e-05 5 -1.934771034939331e-06
		 6 6.9927859840390738e-06 7 1.415770202584099e-05 8 1.2039552530040964e-05 9 1.8102092553817783e-06
		 10 4.6414465032285079e-05 11 -3.2416396607004572e-06 12 8.8990173026104458e-06 13 -1.0054850463347975e-05
		 14 -4.9446525736129843e-06 15 -2.169506615246064e-06 16 2.3525490178144537e-05 17 3.8133552152430639e-05
		 18 1.4411811207537539e-05;
createNode animCurveTL -n "Head_CTRL_translateZ";
	rename -uid "148FAB8E-4C11-791A-476D-0295E466F1D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.2799363149679266e-06 1 8.5517115167021984e-07
		 2 3.2194693631026894e-06 3 2.3858317945268936e-05 4 2.2008100131643005e-05 5 -1.3231982620709459e-07
		 6 2.2893673303769901e-06 7 3.1568200142828573e-07 8 -4.240190264681587e-06 9 -4.1213756958313752e-06
		 10 -6.2437356973532587e-06 11 -1.2982983434994821e-06 12 4.1318088506159256e-07 13 -4.3803811422549188e-06
		 14 -4.338448889029678e-06 15 2.8434230898710666e-06 16 -3.8485309232783038e-06 17 -7.1868826125864871e-06
		 18 -4.3320324039086699e-06;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateX";
	rename -uid "52930613-4CF3-5CC8-703F-BFB714696537";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.3378913834418427 1 1.515313143561839
		 2 1.2772032342544 3 0.81129955584719537 4 0.26405560794830185 5 -0.077411452811878667
		 6 -0.080590663796727038 7 0.3382527479654045 8 1.0970900930833789 9 1.9527705016963535
		 10 2.4984227429234753 11 2.3493924588778419 12 1.6319374071025654 13 0.73962562739256954
		 14 0.23088051364797482 15 0.13660133969478419 16 0.38032595772014488 17 0.85553209504625749
		 18 1.3307940051645708;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateY";
	rename -uid "FD42F662-4F88-0FE6-2B84-ACB0BC57B72A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.9019200081147867 1 8.1740865673981027
		 2 7.5649317170234456 3 5.7170190005735222 4 3.3475669292063985 5 1.7853698433552683
		 6 1.5633934733645403 7 2.7662705894924806 8 4.7846796947001593 9 6.7876030943150987
		 10 7.8368986664866833 11 7.1654240345256746 12 5.1818725782172663 13 2.8298183721813013
		 14 1.5422045588293865 15 1.4423823554340998 16 2.4724620943744191 17 4.5239896335155327
		 18 6.8637540479035577;
createNode animCurveTA -n "ClavicleFK_0_L_CTRL_rotateZ";
	rename -uid "4AE7D00E-46FC-54CD-A711-B593452D8461";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -13.299845447207518 1 -14.14026010369656
		 2 -14.660518191933312 3 -14.872677942103667 4 -14.794656226799695 5 -14.36156118714988
		 6 -13.525297892627767 7 -12.272151866179053 8 -10.752242702039947 9 -9.3180610955680496
		 10 -8.280469338283611 11 -7.7728001947217891 12 -7.7041280744677083 13 -7.9413774228790999
		 14 -8.4949123477799571 15 -9.4291809923727588 16 -10.709141772476775 17 -12.099528954960785
		 18 -13.281598990973878;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateX";
	rename -uid "A79076C2-4FBC-F113-D1FB-E4A434E00EDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.2750767558069191 1 2.1549561018609356
		 2 2.6019907507728663 3 5.8388565521966198 4 10.377709556130853 5 14.344449486285153
		 6 17.833718343002182 7 21.100309968764879 8 23.381494086348781 9 23.168822429669969
		 10 18.858777753247466 11 13.663354529000138 12 10.37487863066433 13 9.1220441203808686
		 14 8.4148357782056351 15 7.2742404947447215 16 6.0797919458106469 17 5.0041240099603135
		 18 3.3050709643404113;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateY";
	rename -uid "A5EF1590-468D-53C9-F097-59AB10D7F91C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -18.71345296617875 1 -18.180107354931369
		 2 -16.673108306291358 3 -13.289615592582036 4 -9.1962168803770989 5 -6.2784534445890259
		 6 -3.7860360869240726 7 0.065360853824377771 8 6.2932413597208559 9 13.728092746277859
		 10 16.873547484786474 11 13.595626841631201 12 6.9216735858280076 13 0.16615860510987382
		 14 -4.8707428095971332 15 -8.7136313224457052 16 -12.503843824466685 17 -16.630139211736012
		 18 -18.704967984007197;
createNode animCurveTA -n "ArmFK_0_L_CTRL_rotateZ";
	rename -uid "B095268A-444F-3506-EC9F-3AA61F7FE5E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -15.67503277496518 1 -8.1375839150510725
		 2 -2.7925257402319374 3 1.0408352982839315 4 3.9610843705625065 5 5.1463585582018165
		 6 4.1611062409796187 7 0.49103692737410709 8 -5.6672173475277194 9 -13.254275377782115
		 10 -22.214555735487266 11 -30.209779104236205 12 -35.814606137641157 13 -39.042160501314001
		 14 -39.89981481425724 15 -37.474292888470316 16 -31.964477276399283 17 -24.350594995697517
		 18 -15.824506090952257;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateX";
	rename -uid "8AFC280D-45A1-517A-C730-21971B1DA4F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -15.553857250859952 1 -16.466030563604594
		 2 -17.387944416189828 3 -18.243449660712603 4 -18.895284869281895 5 -19.119631092170952
		 6 -19.012121920604649 7 -18.738872871560606 8 -18.378439782057772 9 -17.95389217871513
		 10 -17.457887002673989 11 -16.710104618115022 12 -15.751893866889176 13 -14.893113491857024
		 14 -14.246197582631371 15 -13.976585131327948 16 -14.177747925468648 17 -14.764631588897398
		 18 -15.553873639471208;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateY";
	rename -uid "2AE23E17-47F8-8CAA-8697-1D98CFBD9202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.2219480820568798 1 -7.9134767103629864
		 2 -7.5222933806294927 3 -7.0805817143406937 4 -6.6873877262712051 5 -6.5396874504530107
		 6 -6.6112856720884894 7 -6.7865422233854433 8 -7.0033822837519422 9 -7.2391214526915766
		 10 -7.4891310029770519 11 -7.817968122191882 12 -8.1613104828792373 13 -8.4003589073513982
		 14 -8.5391430935748893 15 -8.58714696258982 16 -8.5518799555007536 17 -8.4303471678293782
		 18 -8.2219425266222892;
createNode animCurveTA -n "ArmFK_1_L_CTRL_rotateZ";
	rename -uid "2DBD58CF-4DD3-C2B2-198E-DBBF86E1CD45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 81.194444850465104 1 85.433134875153286
		 2 89.837407466562439 3 94.067177563705656 4 97.406531791997423 5 98.583762255774602
		 6 98.018468060819956 7 96.594690840043413 8 94.749404268696793 9 92.617727263644824
		 10 90.177614881696854 11 86.5860106709831 12 82.10763925119447 13 77.983003800803914
		 14 75.26625601057458 15 74.058327521028318 16 74.958320082652264 17 77.598907287734932
		 18 81.194464602514032;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateX";
	rename -uid "3AE15D5C-4B5C-7BDB-24F8-FB8AFA1B5268";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.3799095331361784 1 -2.3750173184421195
		 2 -2.3202579452544163 3 -2.1934556760189512 4 -1.1481295827764635 5 -0.45244246048543252
		 6 -0.29706951876484466 7 -0.23014825868992195 8 -0.21778189673753179 9 -0.25333094032885051
		 10 -0.3446708646396392 11 -0.53061410030297496 12 -1.4131555598823904 13 -2.0894276650153225
		 14 -2.2436625045677214 15 -2.3227344353471602 16 -2.369682441976634 17 -2.3935776750735678
		 18 -2.3963411809786153;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateY";
	rename -uid "210DDF7C-4317-0A43-8BB2-139FD91BB70D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -9.439860897278983 1 -9.358982104493144
		 2 -8.9736311370364117 3 -8.086737058599887 4 -1.0542298935382437 5 3.321493570328252
		 6 4.2638206269280943 7 4.6660417213225323 8 4.739806262801693 9 4.526672574741089
		 10 3.9765535810173391 11 2.8425132984493153 12 -2.7871819026467213 13 -7.3636600009881015
		 14 -8.4370940791352975 15 -8.9911466796517292 16 -9.3213282874055103 17 -9.4894424395821755
		 18 -9.509168547639355;
createNode animCurveTA -n "ArmFK_2_L_CTRL_rotateZ";
	rename -uid "53B01F4B-4396-8526-A630-5AB2575BC331";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 10.541298109752093 1 10.548128935170933
		 2 10.582172953488129 3 10.661791186600659 4 11.360609075044552 5 11.861524010927429
		 6 11.976762794168494 7 12.026766618566576 8 12.035999283769854 9 12.009386663334327
		 10 11.941360703674182 11 11.804002799860502 12 11.176806923703785 13 10.728108531280526
		 14 10.630147025830567 15 10.580611333701276 16 10.55146034171249 17 10.536754731512554
		 18 10.535010436612199;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateX";
	rename -uid "0ABEB41A-4B16-C723-0E14-059D205CEB58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.86533866337748 1 -1.0601590301924688
		 2 -3.8652582026511175 3 -4.8960716605640453 4 -3.1766601242030585 5 0.14288444039298129
		 6 3.4842933524775068 7 2.9479403311998138 8 7.2794085433012281 9 3.1668793703827611
		 10 3.7933949443211978 11 7.7311267956881817 12 10.563473048243278 13 10.80099759229596
		 14 9.0551112792920172 15 3.8541129148176521 16 -2.0128209061992974 17 -3.7854936078399186
		 18 -0.84915868383913851;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateY";
	rename -uid "8416908C-455A-E65E-89FB-D9ABEDA58E2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.159421720269755 1 -11.819028699927694
		 2 -12.736040820507158 3 -9.8023520971608011 4 -5.8945478017694688 5 -3.3279580605673464
		 6 -0.82948131035116102 7 2.9331240003196419 8 11.780749206569071 9 15.775715683086085
		 10 18.471607449056876 11 18.377606342825992 12 16.326194264676893 13 13.980372821142447
		 14 12.349340046142265 15 11.254963279080657 16 5.9252275734511528 17 -2.110140541053406
		 18 -8.1155358404185787;
createNode animCurveTA -n "LegFK_0_L_CTRL_rotateZ";
	rename -uid "0A5C21A3-4D95-1F9A-085D-C584D780921A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -59.00133342401945 1 -41.718290696759908
		 2 -21.203484111408777 3 -9.9438268988865364 4 -5.4674851871730228 5 -5.1930715639441809
		 6 -7.8994545401725835 7 -12.951846144218885 8 -19.911581719744813 9 -31.313061015638912
		 10 -38.222684011838524 11 -37.109565234077586 12 -37.506510533050921 13 -39.338642319703844
		 14 -43.18511237869221 15 -56.600255958742565 16 -64.504855681666129 17 -65.735053816331884
		 18 -59.020383456600968;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateX";
	rename -uid "87842CDC-4B23-62AB-B485-D3A36BFEADED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.4551220274045779e-05 1 -0.0002148008273424314
		 2 8.5948816456122692e-06 3 -5.9760096435993628e-05 4 2.1984984475391915e-05 5 2.3898323226644547e-05
		 6 -1.6697617121327804e-05 7 -0.00015570495472039004 8 -2.2738149849690265e-05 9 -0.00013201583100516296
		 10 -0.00021637934705445676 11 0.00026969213644713791 12 7.1188382635951973e-05 13 0.002188557309534613
		 14 -5.6350230908858604e-05 15 -3.6188538770344701e-06 16 0.0025284690695966815 17 -0.0010759967452426663
		 18 0;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateY";
	rename -uid "D13969C2-4609-98C4-0981-E682AE1C1366";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.0835594101758556e-05 1 1.515195011027339e-05
		 2 -2.8252371249571846e-06 3 -1.922172326506891e-05 4 0 5 2.4403566720956662e-05 6 -1.815730232191301e-05
		 7 -0.00010186710586454051 8 -1.3196022636577785e-05 9 -7.9971219374527493e-05 10 -0.00019530260319098743
		 11 0.00048264832222111157 12 0.00025941047036549895 13 -0.0096302031698239626 14 -0.0015578141457641048
		 15 -1.5954452171957565e-05 16 0.0021545861869053649 17 -0.00036740969191852103 18 -1.1424241844092928e-05;
createNode animCurveTA -n "LegFK_1_L_CTRL_rotateZ";
	rename -uid "6438F82A-4F64-6D06-122E-13B92B3DFE33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 74.663667098851093 1 81.849266247637331
		 2 76.287770264250952 3 66.530142304158119 4 56.0322314145589 5 47.809316498137591
		 6 43.50736353373366 7 43.20228878780491 8 43.095864402658542 9 46.466717770291034
		 10 39.0814027940838 11 16.110040727782735 12 -2.9887004637994643 13 -13.83244556092721
		 14 -10.718234955604999 15 13.121430980005623 16 36.18143666139094 17 57.476361290272536
		 18 74.707468985253627;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateX";
	rename -uid "D4D482A4-4630-9FFD-49AD-C8A48636776B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 4.6397246371219456 1 7.0874300113013327
		 2 11.588500012163495 3 14.625750671741715 4 10.962558245888445 5 6.6137628597986788
		 6 3.5830375825021474 7 3.4759584885583239 8 2.4775632458147547 9 6.0133548415495994
		 10 7.3289685861620146 11 5.7975775177453954 12 -0.809164445301921 13 -8.0193582928778131
		 14 -10.691755583368973 15 -9.2649086035258961 16 -2.1885910828902349 17 3.3355459195984301
		 18 4.6392734499762316;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateY";
	rename -uid "CDA10B29-4950-3F00-35C0-F9A595D939B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.7247332332663046 1 -6.831979232897841
		 2 -12.181804223822503 3 -14.010380921435496 4 -12.343525463016748 5 -9.5825592977424936
		 6 -8.3714406504771262 7 -9.4444484143290666 8 -2.9189703274779659 9 -3.6660509267904318
		 10 -0.78488976794870402 11 0.71454150690808038 12 -2.6676662651577612 13 -6.6299262973062651
		 14 -5.7187178229593112 15 -3.6474005254470279 16 -1.1133394892415942 17 1.332310114125475
		 18 -1.7209845864052524;
createNode animCurveTA -n "LegFK_2_L_CTRL_rotateZ";
	rename -uid "0EF6DD54-4AB1-176C-84FA-B89B26B18B9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -17.46127673426404 1 -10.811213781367318
		 2 -12.071072504076451 3 -18.373017653727224 4 -16.439376504158087 5 -9.2588422480108932
		 6 2.2226484199096435 7 16.061546775421764 8 28.502536293988733 9 20.897141653088145
		 10 4.6783226450580226 11 -17.905276629151846 12 -34.999602181342539 13 -43.876262484163433
		 14 -40.807025343411333 15 -31.345667250190186 16 -28.072914039089586 17 -23.820912548377908
		 18 -17.413061029261986;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateX";
	rename -uid "60AFBEEA-426F-713E-AA03-009ABDEEB25B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.3445289547507511 1 2.2515015759643688
		 2 2.8186564139788008 3 2.6583466832625695 4 1.9833447199612355 5 1.1011903095258067
		 6 0.52512127835477762 7 0.42496079671687842 8 0.77630112942715113 9 1.3098059150601344
		 10 1.7798672520243146 11 1.9652196348257285 12 1.7218298062673445 13 1.1838146219678827
		 14 0.58978630684299627 15 0.2795262882482259 16 0.27879524607328515 17 0.61727872807250783
		 18 1.3290023970781415;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateY";
	rename -uid "CA6E6A66-42C1-E188-C4BC-0C9B22023768";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.2008454880050339 1 7.2845465143885741
		 2 8.3447706700947002 3 7.6744927232803803 4 5.8771502021272193 5 3.6276812067000126
		 6 2.1942156144931801 7 2.0846476412263257 8 3.4262305592567777 9 5.6200934741685726
		 10 7.8534561542407895 11 9.0878803170087803 12 8.5003261544740791 13 6.4743799997476552
		 14 4.0216648135011912 15 2.6415087768294954 16 2.4379920509889774 17 3.3324290330215933
		 18 5.1628246348908906;
createNode animCurveTA -n "ClavicleFK_0_R_CTRL_rotateZ";
	rename -uid "2EB165A7-4C06-A12B-6451-548B1F8AAE06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -10.313933750543846 1 -8.6976432815039662
		 2 -7.5659292951012027 3 -7.1144388897415087 4 -7.1870879725397581 5 -7.6131077446076674
		 6 -8.2893779476772718 7 -9.2441256400872263 8 -10.424332731575978 9 -11.633948501582758
		 10 -12.649125264440155 11 -13.404206453413753 12 -13.977159074754631 13 -14.361243478745232
		 14 -14.477182488083196 15 -14.152836338513438 16 -13.329092391526515 17 -12.003212108234582
		 18 -10.344833327157993;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateX";
	rename -uid "AD271C28-43EB-2A36-E247-17A456EB8749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 32.816598501258206 1 28.013825451743497
		 2 21.77243890534254 3 17.063595501898266 4 15.625376917527671 5 16.785281238913353
		 6 18.151296089523736 7 19.650937786334115 8 21.409479844946464 9 22.812710713193489
		 10 24.547246736622796 11 27.114669422272968 12 29.756859487824588 13 31.717520408938999
		 14 32.938024191174421 15 34.098927905091031 16 35.003889839731364 17 34.877314079039571
		 18 32.874614207735419;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateY";
	rename -uid "E57A6A8F-40CB-BB17-A6D1-A2A4EDE77D2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 15.102368593523568 1 20.73893034183428
		 2 20.176038026844996 3 14.784902297170435 4 8.8204643947393659 5 3.9447186942762285
		 6 0.30087250222451672 7 -2.7942333423628862 8 -6.1966997168423932 9 -8.1321656870708683
		 10 -7.4348457564145871 11 -5.9445997457352622 12 -5.5008127630146886 13 -5.9019802807495658
		 14 -6.1824781447259305 15 -4.6973956531103518 16 -0.50196290282742173 17 6.5449311280472076
		 18 14.957990464807711;
createNode animCurveTA -n "ArmFK_0_R_CTRL_rotateZ";
	rename -uid "E8CC7705-4C9F-1B1C-7A21-488A41C207CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.1842808327613135 1 -15.711786427348882
		 2 -23.926976018288837 3 -30.605975803360447 4 -34.336397539012118 5 -34.817616600457221
		 6 -31.905377421689373 7 -25.939706192034709 8 -18.322647434119006 9 -10.307265982636817
		 10 -3.0061250729836613 11 2.8359022421660116 12 6.8673321965258927 13 9.2255538019373269
		 14 9.3584084500968583 15 7.0817719547704847 16 3.0130395012654123 17 -2.2797222702653617
		 18 -8.0644081786485931;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateX";
	rename -uid "D89DCE54-4EA4-3887-F6CB-A78E7F583680";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -17.595372835625536 1 -17.119635535387385
		 2 -16.413484134113421 3 -15.513667894760969 4 -14.684050522782133 5 -14.107328431698829
		 6 -13.854954794735429 7 -14.049960384191326 8 -14.60192156527304 9 -15.343223268045223
		 10 -16.184035492402106 11 -17.050729218792718 12 -17.857490236478267 13 -18.475641497553116
		 14 -18.692088174123331 15 -18.592681248599227 16 -18.334890862462611 17 -17.887339760851312
		 18 -17.595212241981272;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateY";
	rename -uid "171B519C-41C8-D662-6EDF-448BBA5A4CD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -7.2285789719911255 1 -7.4638554724885111
		 2 -7.7696163620690353 3 -8.0895770076846922 4 -8.3201220843859485 5 -8.4459848806440068
		 6 -8.4924323404350393 7 -8.4570267617369286 8 -8.3397563396262164 9 -8.141813095538815
		 10 -7.8583994581135581 11 -7.4959264194561603 12 -7.0882285109134004 13 -6.7251526209174912
		 14 -6.5867130831480045 15 -6.6510566918407417 16 -6.8119406127183986 17 -7.0713835385081127
		 18 -7.2286710194819106;
createNode animCurveTA -n "ArmFK_1_R_CTRL_rotateZ";
	rename -uid "97590DBC-467C-D55F-C883-7185051AC783";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 92.292759715566518 1 89.924905599769971
		 2 86.487691292640037 3 82.218370131538848 4 78.365928627320116 5 75.720338841311332
		 6 74.588096456026932 7 75.462248774728735 8 77.989108661466446 9 81.420811285538377
		 10 85.38882592108439 11 89.585622567830029 12 93.620976456451174 13 96.815652170986056
		 14 97.960688605621641 15 97.431622328541891 16 96.079184270211869 17 94.43632945184126
		 18 92.292911352420731;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateX";
	rename -uid "41624F1D-43A0-57FD-834E-51B9086884D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.5398259257607885 1 1.4475148329597498
		 2 1.248612157513175 3 0.30663422067100304 4 -0.39028414133263856 5 -0.54927361580459744
		 6 -0.63102650027546081 7 -0.67943758852682457 8 -0.70397014195358931 9 -0.70658956393032257
		 10 -0.68495809054724632 11 -0.62858331252461375 12 -0.49866548001785832 13 0.58426448966034472
		 14 1.3319981722050089 15 1.4983743405315701 16 1.5701796197968336 17 1.5838052225455788
		 18 1.5463519242163581;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateY";
	rename -uid "422AAB78-4DEE-5BDE-592F-25BFC1490053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.7276775436149254 1 7.2269350651696422
		 2 6.1145021397526182 3 0.56697637765129272 4 -3.8305051324044412 5 -4.8678654940574928
		 6 -5.4053460062527732 7 -5.7255816298270448 8 -5.8881823802024327 9 -5.9060755729346361
		 10 -5.7623629315233016 11 -5.3893438114554861 12 -4.5360273693412276 13 2.2495573576955925
		 14 6.5830186619898639 15 7.508031062445685 16 7.903092719190119 17 7.9775131286700125
		 18 7.7725634463435878;
createNode animCurveTA -n "ArmFK_2_R_CTRL_rotateZ";
	rename -uid "BB48C52E-4F3F-68B9-4E2D-40AA4056D861";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5.1049156457091138 1 5.0322298782466994
		 2 4.8740605907998207 3 4.1457395078982895 4 3.6329668454557327 5 3.5195083034485659
		 6 3.4618620874442585 7 3.4278019664816424 8 3.410632850699324 9 3.408705321961591
		 10 3.4238994363438029 11 3.463509405535826 12 3.5554766218195599 13 4.3564614003128019
		 14 4.9401466047221296 15 5.0728661422200565 16 5.1305323824379645 17 5.1414678701625443
		 18 5.1114231800877716;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateX";
	rename -uid "57F06431-41F3-B614-B641-6C9E27933406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 4.0638839707821584 1 4.5328627863880646
		 2 5.4810306672423783 3 8.1054868120914012 4 9.168225917372073 5 7.591714460616295
		 6 3.4460467157939645 7 -0.68200615205177828 8 -3.7484886845676599 9 -5.0221163962305475
		 10 -6.6645413752616012 11 -7.802456983820429 12 -7.1453481190063322 13 -4.1385811594561641
		 14 0.030593836514765813 15 3.7516799147585989 16 3.7181562484752777 17 7.8188048594556685
		 18 4.2088940356528983;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateY";
	rename -uid "92C34EF4-4B9F-1D71-15D4-CBBD5EF6DE78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 15.521024836737709 1 18.209692711509149
		 2 17.894991718052271 3 15.548494590164429 4 13.749095221764255 5 13.069761044058769
		 6 12.234065082000475 7 7.5399528158754823 8 0.051194136145365027 9 -5.0375091807588808
		 10 -7.0257842629621168 11 -6.2079127937295482 12 -3.433434444354432 13 -1.0906109535947734
		 14 -0.27180224802560643 15 -0.53651727243909475 16 1.4194236056742173 17 10.78332592917803
		 18 15.375914161817198;
createNode animCurveTA -n "LegFK_0_R_CTRL_rotateZ";
	rename -uid "2AFB6147-4243-578F-A155-188AAC3D86A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -30.266752293168373 1 -36.512500478583561
		 2 -39.251494460290473 3 -36.723821233499457 4 -35.346552235733775 5 -39.394783519134499
		 6 -51.534491984859244 7 -59.338628356640427 8 -59.458321841767237 9 -54.904614141080621
		 10 -47.531905005118013 11 -37.064548460807821 12 -26.191212004540169 13 -17.215007631058892
		 14 -9.2574957437100114 15 -2.8341182288329367 16 -7.6395625003074885 17 -19.773480096510703
		 18 -29.773976742448969;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateX";
	rename -uid "DDEFA9F5-4086-6CE2-1EFC-FEB428C3BEC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 4.1086696497202343e-06 1 0.00034085342581643464
		 2 -4.3512254070108993e-05 3 1.7394190908265203e-05 4 2.5532696220724902e-06 5 -0.0010203888651733456
		 6 -1.4153959773645074e-05 7 0.020307727848862252 8 0.022926579894160082 9 -0.00033404509216479803
		 10 -0.00049948090252435122 11 -6.0570554478318543e-05 12 -0.00027023627745281672
		 13 -0.00014724202522025602 14 -4.3795741551999592e-05 15 -0.00022638858621443675
		 16 0.00065081180526530686 17 1.3839753964590372e-05 18 9.6156079067773303e-05;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateY";
	rename -uid "06C1486C-4E44-F8DF-F331-BCADAB44AB5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.7897662089525012e-05 1 0.0002865969095101894
		 2 -6.9284631456331921e-05 3 2.6117547304360165e-05 4 1.3756724074155928e-05 5 0.0039213862558563281
		 6 -3.9379720608237419e-05 7 0.014718546788786866 8 0.0056901293676251772 9 -2.4265347951623848e-06
		 10 8.0678647976164711e-05 11 3.2063520500743358e-05 12 -4.5614709959447723e-06 13 -1.9948671100050497e-05
		 14 -2.3110489217977303e-05 15 -0.00016796094538639646 16 0.00047692561485859536 17 0
		 18 4.8152245867095816e-05;
createNode animCurveTA -n "LegFK_1_R_CTRL_rotateZ";
	rename -uid "D9708104-4CD1-31D8-21DD-81ABA7B808F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 45.251476067584868 1 37.169707825416111
		 2 22.946046560525406 3 3.2669724036740049 4 -13.853139268318667 5 -13.819865910124426
		 6 11.77008371003452 7 40.223698115384131 8 62.260596570328971 9 77.283399843578195
		 10 85.88950596175161 11 86.08348098014325 12 77.892412906295206 13 66.491010946385188
		 14 52.013897907386379 15 39.483051125462808 16 38.964161790960524 17 44.387103376647644
		 18 45.337498505950144;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateX";
	rename -uid "647D0448-412B-40F5-F876-2791A7A4C42B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.5082017944918116 1 7.9938233412088069
		 2 8.6877549566854437 3 8.7994310479768689 4 4.9415665266170041 5 1.0701191036548949
		 6 -0.11754116017151198 7 4.3521480184457344 8 14.011717768985978 9 17.841169768446907
		 10 16.449480471428814 11 15.384269547007339 12 15.627326062196049 13 14.750665213029043
		 14 9.8854971843071553 15 3.0948585371727257 16 2.144420004230386 17 4.5187300945060986
		 18 7.8981320457980289;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateY";
	rename -uid "D2E91E2B-4473-83B3-DB44-E4AD8C87D334";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -8.3199696227950319 1 -6.1016612308207261
		 2 -4.9721037380097091 3 -3.5493028468389345 4 -4.8683869913114775 5 -5.3551414369148853
		 6 -5.7048619258453508 7 -6.9142929705324487 8 -4.0816021586902602 9 2.5313997501074992
		 10 4.5240621210784893 11 2.2508955068452434 12 -2.4643787090462501 13 -8.7111598231874954
		 14 -14.05002719476874 15 -15.67838107976735 16 -15.231090652412011 17 -7.7148645079978104
		 18 -8.1194067686357307;
createNode animCurveTA -n "LegFK_2_R_CTRL_rotateZ";
	rename -uid "784845B1-4B7A-E09B-927B-A595E3FE4261";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 17.637841878508521 1 0.38775291796644012
		 2 -18.245961315957864 3 -38.090807803252602 4 -44.635005662572084 5 -40.939606480342611
		 6 -29.283912487990928 7 -18.860464296327162 8 -14.143141693640452 9 -13.36516660536244
		 10 -16.854862129742969 11 -21.669180701179634 12 -24.991023622141437 13 -20.759082410461353
		 14 -7.0432925407080207 15 13.477753196842794 16 29.371940773174313 17 29.638375190478115
		 18 18.272616179468812;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateX";
	rename -uid "EDB1CF04-4040-5DB0-FAF0-8FBFE3E65FA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.12399171510045112 1 0.39941738407446442
		 2 0.58472876190711398 3 0.74693354800115519 4 0.87726136742635397 5 0.93474825423608654
		 6 0.88326158890251782 7 0.6346033244348841 8 0.25220032617720073 9 -0.07003280221043981
		 10 -0.22873655926790715 11 -0.32481140934936326 12 -0.40066283000145425 13 -0.46842451650191502
		 14 -0.5251221378199965 15 -0.53330106509268926 16 -0.41083050804127297 17 -0.19339723825398883
		 18 0.11825597163027017;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateY";
	rename -uid "9D939D22-46A9-66A9-6775-21BFECFBC695";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.8506581962565074 1 -1.9411560649169333
		 2 -1.7478361246335572 3 -1.3489238310785272 4 -0.80899617496134979 5 -0.21979997880788107
		 6 0.37569942945751827 7 1.0006899745595377 8 1.5356077013508842 9 1.8111315204754517
		 10 1.8305528968310558 11 1.7290388232600573 12 1.5081898162916874 13 1.1534647852867199
		 14 0.64551421893133731 15 -0.008714930827088704 16 -0.74764591679405179 17 -1.4549157425399335
		 18 -1.8463207441334071;
createNode animCurveTA -n "NeckHeadFK_0_CTRL_rotateZ";
	rename -uid "84A086E2-444E-AD77-3F90-15B89739EC0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.33205161892532042 1 0.33142872662240913
		 2 0.32835463533808407 3 0.32430077000028107 4 0.32068328104160493 5 0.31973696824112341
		 6 0.32155768582987587 7 0.32596184822087398 8 0.33027342157849299 9 0.33195654118849088
		 10 0.33153791834753338 11 0.32984343098990709 12 0.32746200314767904 13 0.32498449930904832
		 14 0.32228502172202439 15 0.32181420861282012 16 0.32488707968270875 17 0.32955907651536837
		 18 0.33228468167439157;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateX";
	rename -uid "C655E014-4095-C8D4-2775-468583651D8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.3399492539907914 1 -0.61414895112026302
		 2 -0.76561145371242267 3 -0.810478711409512 4 -0.76477534828985971 5 -0.61505045711429196
		 6 -0.35039559853995333 7 0.017287884772959977 8 0.42429815546380173 9 0.77865036227286011
		 10 1.0296900695856861 11 1.1693242853778061 12 1.2116050278914969 13 1.1732210917752577
		 14 1.0439140628336772 15 0.80771549777347507 16 0.46044639545867722 17 0.047225589004773673
		 18 -0.33390995629651543;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateY";
	rename -uid "67BCCE2E-4079-450B-7591-B7BD55815760";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.023418095307739625 1 0.04229150122481496
		 2 0.052735745861312022 3 0.055820311030628962 4 0.052681618951311009 5 0.042379775498815782
		 6 0.024155564648472967 7 -0.0011761437118640316 8 -0.029193729109164627 9 -0.053628715934527831
		 10 -0.070906802640520891 11 -0.080492913516953896 12 -0.083465753909350113 13 -0.080795204126579354
		 14 -0.071903281349605164 15 -0.055628482904243048 16 -0.031694394081808352 17 -0.0032459448523260393
		 18 0.022997158725748475;
createNode animCurveTA -n "SpineFwdFK_3_CTRL_rotateZ";
	rename -uid "E4A7C1BE-4AF2-D005-8BF7-4E90C5C230B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.3493586478411754 1 2.3491986906274702
		 2 2.3491050755451832 3 2.3490471548974394 4 2.3491104224408823 5 2.349208271301467
		 6 2.3493868529334434 7 2.34946148601865 8 2.3493652130964082 9 2.3490888505779481
		 10 2.3488052082696607 11 2.3486600720852908 12 2.3485760956320791 13 2.3486044654520879
		 14 2.348804101649661 15 2.3490650218577356 16 2.3493388826130044 17 2.3494157815429642
		 18 2.3493453328027405;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateX";
	rename -uid "0827BFEE-4615-CAB9-C1D9-A6BD5FD21745";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.3846228032198269e-06 1 -1.9437904938968131e-06
		 2 6.1042527477184194e-07 3 -2.2035719666746445e-06 4 -4.9009194924565236e-08 5 -1.0547636293267715e-06
		 6 -4.7500665800725983e-07 7 -1.6878934729902539e-06 8 2.6381635507277679e-06 9 -1.4132332353256061e-06
		 10 -2.1760392883152235e-06 11 3.4969147577612603e-08 12 -2.0353688796603819e-06 13 -2.5584565719327657e-06
		 14 -1.5071020698087523e-06 15 3.6318925822342862e-07 16 1.0922535693680402e-06 17 7.0753276304458268e-07
		 18 -1.5947679798955505e-07;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateY";
	rename -uid "EC49E931-45C4-6BA9-BFA3-7FAB03B2C2F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.1864802473837699e-07 1 -1.0730051513974104e-07
		 2 -7.7723967706333497e-07 3 -2.0741819639624737e-07 4 -1.3845492503605783e-06 5 -1.2694883935182588e-06
		 6 7.9617095138928562e-08 7 -1.9174260614818195e-06 8 1.7347227867503534e-06 9 -5.3417295475810533e-07
		 10 -9.4234593461806071e-08 11 -1.5604630334564717e-06 12 2.5122023998846998e-06 13 -2.807644250424346e-06
		 14 1.0389599083282519e-06 15 1.6349781617464032e-06 16 2.9751574857073138e-06 17 -3.7750057799712522e-06
		 18 -8.1350810887670377e-07;
createNode animCurveTL -n "SpineFwdFK_3_CTRL_translateZ";
	rename -uid "655A2103-474B-9F83-A8AA-7B9475B096F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.1977360436787876e-08 1 -1.7960864795441012e-07
		 2 1.3346843275030551e-07 3 -1.3465892152453307e-06 4 1.9096403036655829e-07 5 -9.3753550345354597e-07
		 6 2.9839529247510654e-07 7 3.7955663856337196e-07 8 -1.0384452480138862e-06 9 -5.1608282092274749e-07
		 10 -6.8549746856660931e-07 11 -4.5082498445481178e-07 12 -6.6254578712232615e-08
		 13 -4.3890784695577167e-07 14 3.0609839996031951e-07 15 4.8345754066758673e-07 16 5.8069446140507353e-07
		 17 -8.761634830989351e-07 18 2.7264491109235678e-08;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateX";
	rename -uid "207F616E-43C3-9DF5-1330-C5B517672788";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.12457017211862254 1 0.20760174507919188
		 2 0.080922694524799818 3 -0.084875795258760336 4 -0.21158756704261286 5 -0.37358402174871108
		 6 -0.61428557589663424 7 -1.0142687646540807 8 -1.5299263864323218 9 -1.9061572847982071
		 10 -1.9858581218885261 11 -1.9141735676074978 12 -1.8189992157602306 13 -1.7032231658557495
		 14 -1.5426835452275249 15 -1.3050819121486577 16 -0.9130331316416983 17 -0.34462451362048419
		 18 0.12007441217899203;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateY";
	rename -uid "EBD5AE5D-4736-9C88-CF86-5187CE220B16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 9.0953191239453712 1 7.6950920451725526
		 2 4.5670570818036591 3 1.1367744400761761 4 -0.50864259299273507 5 -0.82304158245250258
		 6 -1.3353372362607343 7 -4.1234290538374019 8 -7.4697279186493111 9 -8.696206248368572
		 10 -7.1079122017119039 11 -4.0346790818655194 12 -0.95827706173771821 13 0.77536824237893665
		 14 1.3289210205703654 15 1.8821822329080269 16 4.1468772068058755 17 7.422056843402344
		 18 9.0956153325854423;
createNode animCurveTA -n "SpineFwdFK_0_CTRL_rotateZ";
	rename -uid "864840B9-4CF5-1B46-BA74-0398CE0E26DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.659007560343944 1 -2.9233691314712198
		 2 -3.6685375236054618 3 -4.6100145933230818 4 -5.3297682545961775 5 -5.5797952184568063
		 6 -5.2635827591093403 7 -4.5524081622996775 8 -3.8219239801958991 9 -3.4825851280195912
		 10 -3.7611966654343569 11 -4.3607633372553725 12 -5.0102685419793929 13 -5.5283035503638231
		 14 -5.7431724158857742 15 -5.3270359841100907 16 -4.3383882380406797 17 -3.2389823941887839
		 18 -2.659281086059714;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateX";
	rename -uid "6D6DE7AC-4EA9-E870-AAE7-57BE2F7B43C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.55053356730128011 1 -0.39756090441999425
		 2 -0.36114427290323714 3 -0.42362951682244399 4 -0.59682822350810216 5 -0.89324228181751708
		 6 -1.295775394291705 7 -1.7394804265440191 8 -2.1237410875545306 9 -2.386161389847929
		 10 -2.5257921427292049 11 -2.55860831862632 12 -2.5035673362274182 13 -2.3524058219045876
		 14 -2.0868990518286048 15 -1.7057340763545603 16 -1.2551838434955607 17 -0.84281085213817919
		 18 -0.55444886046645692;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateY";
	rename -uid "8B464BEF-4E27-BB58-B688-AE9B1EE85F09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.838300473930516 1 1.7222291476452671
		 2 1.4454915454448389 3 1.0370731383946117 4 0.54190016706435484 5 0.023265779613194031
		 6 -0.55541674298148536 7 -1.1444694523225483 8 -1.5253314133143154 9 -1.5879192063690737
		 10 -1.4443929777497646 11 -1.1408566251539971 12 -0.72966190610371273 13 -0.25639234781066816
		 14 0.23109024917313242 15 0.80314443699272764 16 1.4034454713059197 17 1.7868197335066967
		 18 1.8388515798753009;
createNode animCurveTA -n "SpineFwdFK_1_CTRL_rotateZ";
	rename -uid "F869293F-41B9-EE8F-D58A-49A526DCB6AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.4652509877377853 1 2.0058284498900023
		 2 1.7569506949031231 3 1.0430254741230545 4 0.10885372040538151 5 -0.61135521838468954
		 6 -0.86164445907639919 7 -0.5445668692893364 8 0.16314327920961366 9 0.86987465055887891
		 10 1.1970800925917706 11 0.93359403131789098 12 0.35742220093128274 13 -0.28704129684245139
		 14 -0.80557256119280751 15 -1.0214888216338891 16 -0.60500011161855283 17 0.38003090029040693
		 18 1.4485035591294995;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateX";
	rename -uid "8C3E2241-4140-DD91-B653-73875B6DA98D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.2272701925534344 1 -0.90422224844527999
		 2 -0.62483980767640845 3 -0.4080742203834215 4 -0.30558185351144385 5 -0.37649707749269068
		 6 -0.61472708867980286 7 -0.97863542659949243 8 -1.3992679064239677 9 -1.7811870526949294
		 10 -2.0738028074656816 11 -2.2733709947605076 12 -2.4119926210134568 13 -2.4930504030796441
		 14 -2.4717757528093705 15 -2.3142847540262133 16 -2.0139470066864602 17 -1.6190412319508554
		 18 -1.2335290892587796;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateY";
	rename -uid "50BD6FEE-42A0-0254-CEBF-388FF99E1513";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.9298415007956522 1 1.7175361869719448
		 2 0.97715008815399795 3 -0.069089383931023374 4 -0.99913165332434906 5 -1.5341259615511187
		 6 -1.7831783804833663 7 -1.9262482093630409 8 -1.9745036717194191 9 -1.9198546438147859
		 10 -1.7453178961992608 11 -1.4205189722912701 12 -0.83951470424730035 13 -0.088494434811910258
		 14 0.62089298290947514 15 1.1838488890505692 16 1.5861719650030841 17 1.8327942196815286
		 18 1.9294174792949041;
createNode animCurveTA -n "SpineFwdFK_2_CTRL_rotateZ";
	rename -uid "47BF0471-421F-CF41-1E26-5CBA44918EA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 3.2052948820733222 1 3.7463710645519206
		 2 3.5004227286840175 3 2.788116096360703 4 1.8529183637943092 5 1.1312086062737019
		 6 0.88051017584314673 7 1.1981006396854608 8 1.9074268683062279 9 2.6167241920010076
		 10 2.946840824504934 11 2.686113000927679 12 2.1122749553267433 13 1.4684645444392319
		 14 0.94809094261473559 15 0.72857086785936476 16 1.1406777856591348 17 2.1220350538677311
		 18 3.1886048679804997;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateX";
	rename -uid "8CB9E362-4050-AA2F-5475-8392E2447E5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.2511298993777018e-06 1 -7.0986374112180783e-07
		 2 2.0373496226966381e-05 3 7.6454802183434367e-05 4 1.2380894986563362e-05 5 1.3213749525675667e-06
		 6 1.3826590475218836e-05 7 1.5185572920017876e-05 8 6.0654679145955015e-06 9 3.4839504223782569e-06
		 10 -1.2079522093699779e-06 11 2.5570809611963341e-06 12 -1.1752619002436404e-06 13 7.1703718276694417e-05
		 14 -6.7098917497787625e-06 15 2.4682742605364183e-06 16 8.1897371273953468e-05 17 -3.6910296330461279e-06
		 18 2.9136748707969673e-05;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateY";
	rename -uid "4B64F4D2-4AFA-6318-608D-C5AF90822D74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.3807590322539909e-07 1 -6.9894144871796016e-07
		 2 -7.4375379881530534e-06 3 -3.3388241718057543e-05 4 -6.1027471929264721e-06 5 -3.6323735912446864e-06
		 6 -4.503852323978208e-06 7 -8.9227050921181217e-06 8 -3.6471847124630585e-06 9 -8.5964671825422556e-07
		 10 1.5723699107184075e-06 11 -4.6157883843989111e-06 12 3.6987330531701446e-06 13 -3.5566696169553325e-05
		 14 -6.3363393110194011e-07 15 5.3514399951382075e-06 16 -2.737852992140688e-05 17 -2.2220144728635205e-06
		 18 -1.5825235095690005e-05;
createNode animCurveTL -n "NeckHeadFK_0_CTRL_translateZ";
	rename -uid "E97B8E6A-450A-272F-872D-7A9528A71529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.5737342664579046e-06 1 -1.5598908476022189e-06
		 2 -4.2201850192213897e-06 3 -4.4647313188761473e-06 4 -1.1123401009172085e-06 5 -2.4907944862206932e-06
		 6 1.2991243920623674e-06 7 1.1354339903846267e-06 8 -1.2623388556676218e-06 9 -1.2490185099522932e-06
		 10 1.2682191652402253e-07 11 -2.6080681436724262e-06 12 4.5004270532444934e-07 13 -1.2519693655121955e-06
		 14 -1.2913250202473137e-06 15 6.1214831248435075e-07 16 1.1489963753774646e-06 17 -7.8501943789888173e-06
		 18 -4.2430151552252937e-06;
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
// End of runs.ma
