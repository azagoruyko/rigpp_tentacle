//Maya ASCII 2023 scene
//Name: rigpp_tentacle.ma
//Last modified: Tue, Nov 29, 2022 07:58:47 PM
//Codeset: 1251
requires maya "2023";
requires -nodeType "rigpp" -nodeType "rigppTransform" "rigpp" "Unknown";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 10 Home Single Language v2009 (Build: 19044)";
fileInfo "UUID" "F56CDF72-4B57-E2D8-652A-68A2BE0B1B74";
createNode transform -s -n "persp";
	rename -uid "272D140A-4FE9-4E60-996D-1AB34293DB0E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.2727772661719037 2.3238462564062821 15.0020663695738 ;
	setAttr ".r" -type "double3" -5.1383527296218841 19.000000000004476 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "37953C3A-4911-26AC-A16B-CEBADBFB4934";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 18.501428956995554;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8 0 6.6613381477509392e-16 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DA98F5CE-4619-2DD1-FA17-E497DFF1477E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "546F3ACB-4A7F-137A-6F8F-5389087495B7";
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
	rename -uid "BD007CB0-419A-4427-196E-9B938CB034E8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5764CA18-4A5E-A07A-396E-5594B87EE2D0";
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
	rename -uid "D053CAC6-4A23-2AE3-36C1-AEA65C3A2936";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AD98754E-409E-4470-5453-4581D6978A9C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "rig";
	rename -uid "884FA05E-4474-D435-1979-5191FFF04F25";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "transform" -p "rig";
	rename -uid "33BF0F16-470D-0B51-C4CF-838D817C27D8";
createNode parentConstraint -n "transform_parentConstraint1" -p "transform";
	rename -uid "21E0F3E5-4928-474E-1562-B1983079F89C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "main_controlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -8 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "transforms" -p "transform";
	rename -uid "F1741E56-472D-3CC6-A8BD-72B9E8B5C2C2";
	setAttr ".t" -type "double3" 8 0 0 ;
createNode rigppTransform -n "rigppTransform1" -p "transforms";
	rename -uid "5C38F3AB-453A-261B-57DF-B195B6EF1B33";
	setAttr ".parent" -type "string" "0";
createNode joint -n "joint1" -p "rigppTransform1";
	rename -uid "8A3C8AFF-40B2-8BA7-E8A6-DE97F33DA5C3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform2" -p "transforms";
	rename -uid "004CB861-4702-2F6D-764F-F6A66E57281F";
	setAttr ".parent" -type "string" "1";
createNode joint -n "joint2" -p "rigppTransform2";
	rename -uid "A76A330E-481E-9D0C-D40E-7891F408C229";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.2222218507871823 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform3" -p "transforms";
	rename -uid "386D4BE3-4A6D-45A2-2415-8DB12CFD8155";
	setAttr ".parent" -type "string" "2";
createNode joint -n "joint3" -p "rigppTransform3";
	rename -uid "F999EACD-47AD-E65E-EFBB-2A9E42490DAD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.444442679836424 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform4" -p "transforms";
	rename -uid "A3F0155A-4D58-D6E6-CE87-3F86B3D2762C";
	setAttr ".parent" -type "string" "3";
createNode joint -n "joint4" -p "rigppTransform4";
	rename -uid "F3E5FFDA-444F-2250-B5D2-F29A5467771D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.6666656315560138 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform5" -p "transforms";
	rename -uid "0B0CE73B-4FF8-3391-8B31-4FBB1D7F518E";
	setAttr ".parent" -type "string" "4";
createNode joint -n "joint5" -p "rigppTransform5";
	rename -uid "5A176957-4D1E-862D-C8E9-6CB867263F4E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.88888671382897044 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform6" -p "transforms";
	rename -uid "6E31C12D-4125-A024-C9FC-89A5C69252FE";
	setAttr ".parent" -type "string" "5";
createNode joint -n "joint6" -p "rigppTransform6";
	rename -uid "F85396CF-46F0-6822-77BB-6F9111D8D3E8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.88888957495879595 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform7" -p "transforms";
	rename -uid "30E59368-4C69-71C1-67AF-7D948152E6A9";
	setAttr ".parent" -type "string" "6";
createNode joint -n "joint7" -p "rigppTransform7";
	rename -uid "85E30182-4EE6-A94C-C179-5E944C91FEE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6666675395407036 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform8" -p "transforms";
	rename -uid "42095307-4EC8-3698-9CD1-6D91956BADDC";
	setAttr ".parent" -type "string" "7";
createNode joint -n "joint8" -p "rigppTransform8";
	rename -uid "8C0F04EC-4A80-B66A-DCFD-3CB709D644C6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4444433948010191 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform9" -p "transforms";
	rename -uid "067EA8EC-4452-CE84-BABC-A899C5628B20";
	setAttr ".parent" -type "string" "8";
createNode joint -n "joint9" -p "rigppTransform9";
	rename -uid "39F040A0-498D-4917-275A-6D9394F1256B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.2222213867076901 0 0 1;
	setAttr ".radi" 0.5;
createNode rigppTransform -n "rigppTransform10" -p "transforms";
	rename -uid "8F1196D3-4913-D646-B714-1A80BE2EDF26";
	setAttr ".parent" -type "string" "9";
createNode joint -n "joint10" -p "rigppTransform10";
	rename -uid "349AF688-4E48-3C86-FF12-B295D979ACC9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.9840160141010577 0 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "controls" -p "transform";
	rename -uid "E9EC0921-4D42-8BB7-32E6-E59140C79F96";
	setAttr -k on ".t" -type "double3" 8 0 0 ;
	setAttr -k on ".t";
	setAttr -k on ".r";
	setAttr -k on ".s";
createNode transform -n "tentacle_1_control_group" -p "controls";
	rename -uid "6059375A-4AA2-7612-715F-EC9D93A02DC1";
	setAttr ".t" -type "double3" -8 0 0 ;
createNode transform -n "tentacle_1_control" -p "tentacle_1_control_group";
	rename -uid "2A97D6F5-4CA5-54CC-800D-ADA5EBA3DA1E";
	addAttr -ci true -sn "autoTangent" -ln "autoTangent" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pin" -ln "pin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twist" -ln "twist" -at "double";
	addAttr -ci true -sn "wave" -ln "wave" -at "double";
	addAttr -ci true -sn "waveAmp" -ln "waveAmp" -dv 0.1 -min 0 -at "double";
	addAttr -ci true -sn "waveFreq" -ln "waveFreq" -dv 0.1 -min 0 -at "double";
	addAttr -ci true -sn "squash" -ln "squash" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".autoTangent";
	setAttr -l on ".pin" yes;
	setAttr -k on ".twist";
	setAttr -k on ".wave";
	setAttr -cb on ".waveAmp" 0;
	setAttr -cb on ".waveFreq" 0.58999999999999986;
	setAttr -k on ".squash";
createNode nurbsCurve -n "tentacle_1_controlShape" -p "tentacle_1_control";
	rename -uid "FA16248B-42DE-1894-12B9-F089F7A582B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		5.7448982375248304e-17 -1.1081941875543881 -3.5177356190060272e-33
		-0.78361162489122449 -0.78361162489122449 4.7982373409884725e-17
		-1.1081941875543884 -1.1100856969603225e-16 6.7857323231109171e-17
		-0.78361162489122438 0.78361162489122449 4.7982373409884719e-17
		-1.511240500779959e-16 1.1081941875543881 9.2536792101100989e-33
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		;
createNode nurbsCurve -n "tentacle_1_controlShape1" -p "tentacle_1_control";
	rename -uid "C0486B2C-4D14-37F7-2636-688AE2CE0F69";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode nurbsCurve -n "tentacle_1_controlShape2" -p "tentacle_1_control";
	rename -uid "086BA549-4486-FA7B-6F0E-78A100323A1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		-3.5177356190060272e-33 -1.1081941875543881 -5.7448982375248304e-17
		4.7982373409884725e-17 -0.78361162489122449 0.78361162489122449
		6.7857323231109171e-17 -1.1100856969603225e-16 1.1081941875543884
		4.7982373409884719e-17 0.78361162489122449 0.78361162489122438
		9.2536792101100989e-33 1.1081941875543881 1.511240500779959e-16
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		;
createNode transform -n "tentacle_2_control_group" -p "controls";
	rename -uid "B5FCB8A8-4C13-A7EC-4152-D79E8ADDF065";
	setAttr ".t" -type "double3" -4 0 0 ;
createNode transform -n "tentacle_2_control" -p "tentacle_2_control_group";
	rename -uid "F3885A25-414B-0530-DE8F-E4A64B09A72B";
	addAttr -ci true -sn "autoTangent" -ln "autoTangent" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pin" -ln "pin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twist" -ln "twist" -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".autoTangent";
	setAttr -k on ".pin";
	setAttr -k on ".twist";
createNode nurbsCurve -n "tentacle_2_controlShape" -p "tentacle_2_control";
	rename -uid "13398A31-4DE5-472C-F50F-FFA9D5CAAAB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		5.7448982375248304e-17 -1.1081941875543881 -3.5177356190060272e-33
		-0.78361162489122449 -0.78361162489122449 4.7982373409884725e-17
		-1.1081941875543884 -1.1100856969603225e-16 6.7857323231109171e-17
		-0.78361162489122438 0.78361162489122449 4.7982373409884719e-17
		-1.511240500779959e-16 1.1081941875543881 9.2536792101100989e-33
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		;
createNode nurbsCurve -n "tentacle_2_controlShape1" -p "tentacle_2_control";
	rename -uid "8630A358-4361-9EF2-CB11-768332F8103D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode nurbsCurve -n "tentacle_2_controlShape2" -p "tentacle_2_control";
	rename -uid "9A549656-49D6-6888-7734-7A9E1AAB63CE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		-3.5177356190060272e-33 -1.1081941875543881 -5.7448982375248304e-17
		4.7982373409884725e-17 -0.78361162489122449 0.78361162489122449
		6.7857323231109171e-17 -1.1100856969603225e-16 1.1081941875543884
		4.7982373409884719e-17 0.78361162489122449 0.78361162489122438
		9.2536792101100989e-33 1.1081941875543881 1.511240500779959e-16
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		;
createNode transform -n "tentacle_3_control_group" -p "controls";
	rename -uid "EB2AB99E-4936-2C04-97F3-CF897E35B59D";
createNode transform -n "tentacle_3_control" -p "tentacle_3_control_group";
	rename -uid "31B6315D-4CF2-1EC1-F80F-6CB902A6F12D";
	addAttr -ci true -sn "autoTangent" -ln "autoTangent" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pin" -ln "pin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twist" -ln "twist" -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".autoTangent";
	setAttr -k on ".pin";
	setAttr -k on ".twist";
createNode nurbsCurve -n "tentacle_3_controlShape" -p "tentacle_3_control";
	rename -uid "962BEA12-4DB0-116B-65D6-1D941917F3FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		5.7448982375248304e-17 -1.1081941875543881 -3.5177356190060272e-33
		-0.78361162489122449 -0.78361162489122449 4.7982373409884725e-17
		-1.1081941875543884 -1.1100856969603225e-16 6.7857323231109171e-17
		-0.78361162489122438 0.78361162489122449 4.7982373409884719e-17
		-1.511240500779959e-16 1.1081941875543881 9.2536792101100989e-33
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		;
createNode nurbsCurve -n "tentacle_3_controlShape1" -p "tentacle_3_control";
	rename -uid "144B9A47-477B-3263-E3B9-A0AE32D6E41C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode nurbsCurve -n "tentacle_3_controlShape2" -p "tentacle_3_control";
	rename -uid "31ED997D-439A-175A-46BA-07BDAFBAF945";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		-3.5177356190060272e-33 -1.1081941875543881 -5.7448982375248304e-17
		4.7982373409884725e-17 -0.78361162489122449 0.78361162489122449
		6.7857323231109171e-17 -1.1100856969603225e-16 1.1081941875543884
		4.7982373409884719e-17 0.78361162489122449 0.78361162489122438
		9.2536792101100989e-33 1.1081941875543881 1.511240500779959e-16
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		;
createNode transform -n "tentacle_4_control_group" -p "controls";
	rename -uid "EEB552BA-4554-E5A2-7CB9-B6AFAD9738A9";
	setAttr ".t" -type "double3" 4 0 0 ;
createNode transform -n "tentacle_4_control" -p "tentacle_4_control_group";
	rename -uid "E8286B2D-46CB-33A3-6796-EBB0E2B73924";
	addAttr -ci true -sn "autoTangent" -ln "autoTangent" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pin" -ln "pin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twist" -ln "twist" -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".autoTangent";
	setAttr -k on ".pin";
	setAttr -k on ".twist";
createNode nurbsCurve -n "tentacle_4_controlShape" -p "tentacle_4_control";
	rename -uid "D7234362-43DC-65AF-4FB5-F894F309FE89";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		5.7448982375248304e-17 -1.1081941875543881 -3.5177356190060272e-33
		-0.78361162489122449 -0.78361162489122449 4.7982373409884725e-17
		-1.1081941875543884 -1.1100856969603225e-16 6.7857323231109171e-17
		-0.78361162489122438 0.78361162489122449 4.7982373409884719e-17
		-1.511240500779959e-16 1.1081941875543881 9.2536792101100989e-33
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		;
createNode nurbsCurve -n "tentacle_4_controlShape1" -p "tentacle_4_control";
	rename -uid "6F4B6E8B-40D5-E4BB-0762-439AB785FB3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode nurbsCurve -n "tentacle_4_controlShape2" -p "tentacle_4_control";
	rename -uid "680143DB-471C-E4C7-6B5A-138400279142";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		-3.5177356190060272e-33 -1.1081941875543881 -5.7448982375248304e-17
		4.7982373409884725e-17 -0.78361162489122449 0.78361162489122449
		6.7857323231109171e-17 -1.1100856969603225e-16 1.1081941875543884
		4.7982373409884719e-17 0.78361162489122449 0.78361162489122438
		9.2536792101100989e-33 1.1081941875543881 1.511240500779959e-16
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		;
createNode transform -n "tentacle_5_control_group" -p "controls";
	rename -uid "B4FC85FB-41DA-6C20-10AC-A789733994D5";
	setAttr ".t" -type "double3" 8 0 0 ;
createNode transform -n "tentacle_5_control" -p "tentacle_5_control_group";
	rename -uid "DC77B1B1-4572-55EC-AB42-35AA3A7C7080";
	addAttr -ci true -sn "autoTangent" -ln "autoTangent" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "pin" -ln "pin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twist" -ln "twist" -at "double";
	setAttr -l on -k off ".v";
	setAttr -k on ".autoTangent";
	setAttr -k on ".pin";
	setAttr -k on ".twist";
createNode nurbsCurve -n "tentacle_5_controlShape" -p "tentacle_5_control";
	rename -uid "05BAF74F-44C8-945B-68AB-52B8AF748A5D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		5.7448982375248304e-17 -1.1081941875543881 -3.5177356190060272e-33
		-0.78361162489122449 -0.78361162489122449 4.7982373409884725e-17
		-1.1081941875543884 -1.1100856969603225e-16 6.7857323231109171e-17
		-0.78361162489122438 0.78361162489122449 4.7982373409884719e-17
		-1.511240500779959e-16 1.1081941875543881 9.2536792101100989e-33
		0.7836116248912246 0.78361162489122449 -4.7982373409884731e-17
		1.1081941875543877 6.7857323231109122e-17 -6.7857323231109122e-17
		0.78361162489122438 -0.78361162489122449 -4.7982373409884719e-17
		;
createNode nurbsCurve -n "tentacle_5_controlShape1" -p "tentacle_5_control";
	rename -uid "3E71471F-4D80-A5A1-449F-EF8AFD5186A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode nurbsCurve -n "tentacle_5_controlShape2" -p "tentacle_5_control";
	rename -uid "1C46816C-4059-4410-2464-BF968A6803B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		-3.5177356190060272e-33 -1.1081941875543881 -5.7448982375248304e-17
		4.7982373409884725e-17 -0.78361162489122449 0.78361162489122449
		6.7857323231109171e-17 -1.1100856969603225e-16 1.1081941875543884
		4.7982373409884719e-17 0.78361162489122449 0.78361162489122438
		9.2536792101100989e-33 1.1081941875543881 1.511240500779959e-16
		-4.7982373409884731e-17 0.78361162489122449 -0.7836116248912246
		-6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-4.7982373409884719e-17 -0.78361162489122449 -0.78361162489122438
		;
createNode transform -n "tentacle_drawer" -p "transform";
	rename -uid "CEB91E58-48D2-9656-BBFD-5C8CF11D7345";
	setAttr ".t" -type "double3" 8 0 0 ;
createNode rigpp -n "tentacle" -p "tentacle_drawer";
	rename -uid "D6AF27BB-459C-E4B0-70A3-E7A56115216D";
	addAttr -ci true -h true -m -sn "controls" -ln "controls" -ct "transformHandle" 
		-dt "string";
	addAttr -ci true -h true -k true -m -sn "twists" -ln "twists" -at "double";
	addAttr -ci true -h true -k true -m -sn "autoTangents" -ln "autoTangents" -dv 1 
		-min 0 -max 1 -at "float";
	addAttr -ci true -h true -k true -m -sn "pins" -ln "pins" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "wave" -ln "wave" -at "double";
	addAttr -ci true -k true -sn "waveFreq" -ln "waveFreq" -at "double";
	addAttr -ci true -k true -sn "waveAmp" -ln "waveAmp" -at "double";
	addAttr -ci true -k true -sn "waveFalloff" -ln "waveFalloff" -dv 1 -min 0 -max 1 
		-at "float";
	addAttr -ci true -k true -sn "squash" -ln "squash" -min 0 -max 1 -at "float";
	setAttr -k off ".v";
	setAttr ".source" -type "string" (
		"<?xml version='1.0' encoding='utf8'?>\n<module>\n"
		+ "  <code type=\"bc\"><![CDATA[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YwZzAAZtIAd/wKUBGLQBGLQBGLSBK+zCxwZqcAdcGmhnAAZtsAZ4oDxn0AtvYAd3MN1CS5xCsd0GedSGeEgZAC9GQUlMSUZNSVNNQVRDSDoiX0NSVF9TVERJT19JU09fV0lERV9TUEVDSUZJRVJTPTAiL0ZBSUxJRk1JU01BVENIOiJfTVNDX1ZFUj0xOTAwIi9GQUlMSUZNSVNNQVRDSDoiX0lURVJBVE9SX0RFQlVHX0xFVkVMPTAiL0ZBSUxJRk1JU01BVENIOiJSdW50aW1lTGlicmFyeT1NRF9EeW5hbWljUmVsZWFzZSIvREVGQVVMVExJQjptc3ZjcHJ0LmxpYndjaGFyX3NpemVjbGFuZyB2ZXJzaW9uIDE0LjAuMD9BVlF1YXRAQD9BVlZlY3RvckBAZG91Ymxlb21uaXBvdGVudCBjaGFyU2ltcGxlIEMrKyBUQkFBP0FWPyRfUHRyX2Jhc2VAVlRyYW5zZm9ybUBAQHN0ZEBAYW55IHBvaW50ZXI/d29ybGRNYXRyaXhAVHJhbnNmb3JtQEBRRUJBP0FWTWF0cml4QEBYWj93b3JsZE1hdHJpeEBUcmFuc2Zvcm1AQFFFQkE/QVZNYXRyaXhAQFhaOiAlYWdnLnJlc3VsdD9BVlRyYW5zZm9ybUBAP0FWPyRiYXNpY19zdHJpbmdARFU/JGNoYXJfdHJhaXRzQERAc3RkQEBWPyRhbGxvY2F0b3JAREAyQEBzdGRAQD9BVj8kX0NvbXByZXNzZWRfcGFpckBWPyRhbGxvY2F0b3JAREBzdGRAQFY/JF9TdHJpbmdfdmFsQFU/JF9TaW1wbGVfdHlwZXNAREBzdGRAQEAyQCQwMEBzdGRAQD9BVj8kX1N0cmluZ192YWxAVT8kX1NpbXBsZV90eXBlc0BEQHN0ZEBAQHN0ZEBAbG9uZyBsb25nP0FWTWF0cml4QEA/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAP0FWPyR2ZWN0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBWPyRhbGxvY2F0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAMkBAc3RkQEA/QVY/JF9Db21wcmVzc2VkX3BhaXJAVj8kYWxsb2NhdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAVj8kX1ZlY3Rvcl92YWxAVT8kX1NpbXBsZV90eXBlc0BWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQEBzdGRAQEAyQCQwMEBzdGRAQD9BVj8kX1ZlY3Rvcl92YWxAVT8kX1NpbXBsZV90eXBlc0BWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQEBzdGRAQEBzdGRAQGJvb2w/bWF0cml4QFRyYW5zZm9ybUBAUUVCQT9BVk1hdHJpeEBAVzRTcGFjZUBAQFo/bWF0cml4QFRyYW5zZm9ybUBAUUVCQT9BVk1hdHJpeEBAVzRTcGFjZUBAQFo6ICVhZ2cucmVzdWx0P3NldE1hdHJpeEBUcmFuc2Zvcm1AQFFFQUE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQUVCVk1hdHJpeEBAVzRTcGFjZUBAQFo/c2V0TWF0cml4QFRyYW5zZm9ybUBAUUVBQT9BVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBBRUJWTWF0cml4QEBXNFNwYWNlQEBAWjogJWFnZy5yZXN1bHQ/c2hhcmVkX2Zyb21fdGhpc0A/JGVuYWJsZV9zaGFyZWRfZnJvbV90aGlzQFZUcmFuc2Zvcm1AQEBzdGRAQFFFQUE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQDJAWFo/c2hhcmVkX2Zyb21fdGhpc0A/JGVuYWJsZV9zaGFyZWRfZnJvbV90aGlzQFZUcmFuc2Zvcm1AQEBzdGRAQFFFQUE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQDJAWFo6ICVhZ2cucmVzdWx0bGx2bS5sb29wLm11c3Rwcm9ncmVzc3Z0YWJsZSBwb2ludGVyP3RyYW5zbGF0aW9uQE1hdHJpeEBAUUVCQT9BVlZlY3RvckBAWFo/dHJhbnNsYXRpb25ATWF0cml4QEBRRUJBP0FWVmVjdG9yQEBYWjogJWFnZy5yZXN1bHQ/YXhpc0BNYXRyaXhAQFFFQkE/QVZWZWN0b3JAQEhAWj9heGlzQE1hdHJpeEBAUUVCQT9BVlZlY3RvckBASEBaOiAlYWdnLnJlc3VsdD90cmFuc2xhdGlvbkBUcmFuc2Zvcm1AQFFFQkE/QVZWZWN0b3JAQFc0U3BhY2VAQEBaP3RyYW5zbGF0aW9uQFRyYW5zZm9ybUBAUUVCQT9BVlZlY3RvckBAVzRTcGFjZUBAQFo6ICVhZ2cucmVzdWx0Pz9IVmVjdG9yQEBRRUJBP0FWMEBBRUJWMEBAWj8/SFZlY3RvckBAUUVCQT9BVjBAQUVCVjBAQFo6ICVhZ2cucmVzdWx0P3hheGlzQE1hdHJpeEBAUUVCQT9BVlZlY3RvckBAWFo/eGF4aXNATWF0cml4QEBRRUJBP0FWVmVjdG9yQEBYWjogJWFnZy5yZXN1bHQ/eWF4aXNATWF0cml4QEBRRUJBP0FWVmVjdG9yQEBYWj95YXhpc0BNYXRyaXhAQFFFQkE/QVZWZWN0b3JAQFhaOiAlYWdnLnJlc3VsdD96YXhpc0BNYXRyaXhAQFFFQkE/QVZWZWN0b3JAQFhaP3pheGlzQE1hdHJpeEBAUUVCQT9BVlZlY3RvckBAWFo6ICVhZ2cucmVzdWx0P3JvdGF0ZUBUcmFuc2Zvcm1AQFFFQUE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQUVCVlF1YXRAQFc0U3BhY2VAQEBaP3JvdGF0ZUBUcmFuc2Zvcm1AQFFFQUE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQUVCVlF1YXRAQFc0U3BhY2VAQEBaOiAlYWdnLnJlc3VsdD9ub3JtYWxpemVkQFZlY3RvckBAUUVCQT9BVjFAWFo/bm9ybWFsaXplZEBWZWN0b3JAQFFFQkE/QVYxQFhaOiAlYWdnLnJlc3VsdD9wcm9qZWN0VmVjdG9yQFBsYW5lQEBRRUJBP0FWVmVjdG9yQEBWMkBAWj9wcm9qZWN0VmVjdG9yQFBsYW5lQEBRRUJBP0FWVmVjdG9yQEBWMkBAWjogJWFnZy5yZXN1bHQ/P0dWZWN0b3JAQFFFQkE/QVYwQEFFQlYwQEBaPz9HVmVjdG9yQEBRRUJBP0FWMEBBRUJWMEBAWjogJWFnZy5yZXN1bHQ/P0RRdWF0QEBRRUJBP0FWMEBBRUJWMEBAWj8/RFF1YXRAQFFFQkE/QVYwQEFFQlYwQEBaOiAlYWdnLnJlc3VsdD9jcm9zc0BWZWN0b3JAQFFFQkE/QVYxQEFFQlYxQEBaP2Nyb3NzQFZlY3RvckBAUUVCQT9BVjFAQUVCVjFAQFo6ICVhZ2cucmVzdWx0P2Zyb21BeGlzQW5nbGVAUXVhdEBAU0E/QVYxQEFFQlZWZWN0b3JAQE5AWj9mcm9tQXhpc0FuZ2xlQFF1YXRAQFNBP0FWMUBBRUJWVmVjdG9yQEBOQFo6ICVhZ2cucmVzdWx0P0FVU2hhcGVAQD9BVzRTaGFwZVR5cGVAQD9BVj8kdmVjdG9yQE5WPyRhbGxvY2F0b3JATkBzdGRAQEBzdGRAQD9BVj8kX0NvbXByZXNzZWRfcGFpckBWPyRhbGxvY2F0b3JATkBzdGRAQFY/JF9WZWN0b3JfdmFsQFU/JF9TaW1wbGVfdHlwZXNATkBzdGRAQEAyQCQwMEBzdGRAQD9BVj8kX1ZlY3Rvcl92YWxAVT8kX1NpbXBsZV90eXBlc0BOQHN0ZEBAQHN0ZEBAP0FWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFVTaGFwZUBAQHN0ZEBAQHN0ZEBAP0FWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFZWZWN0b3JAQEBzdGRAQEBzdGRAQD9BVlRlbnRhY2xlTW9kdWxlQEA/QVY/JHZlY3RvckBVQ29udHJvbEBUZW50YWNsZU1vZHVsZUBAVj8kYWxsb2NhdG9yQFVDb250cm9sQFRlbnRhY2xlTW9kdWxlQEBAc3RkQEBAc3RkQEA/QVY/JF9Db21wcmVzc2VkX3BhaXJAVj8kYWxsb2NhdG9yQFVDb250cm9sQFRlbnRhY2xlTW9kdWxlQEBAc3RkQEBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFVDb250cm9sQFRlbnRhY2xlTW9kdWxlQEBAc3RkQEBAMkAkMDBAc3RkQEA/QVY/JF9WZWN0b3JfdmFsQFU/JF9TaW1wbGVfdHlwZXNAVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQEBzdGRAQEBzdGRAQGZsb2F0P0FVQ29udHJvbEBUZW50YWNsZU1vZHVsZUBAP2JlZ2luQD8kdmVjdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAVj8kYWxsb2NhdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQDJAQHN0ZEBAUUVCQT9BVj8kX1ZlY3Rvcl9jb25zdF9pdGVyYXRvckBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAQHN0ZEBAQDJAWFo/YmVnaW5APyR2ZWN0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBWPyRhbGxvY2F0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAMkBAc3RkQEBRRUJBP0FWPyRfVmVjdG9yX2NvbnN0X2l0ZXJhdG9yQFY/JF9WZWN0b3JfdmFsQFU/JF9TaW1wbGVfdHlwZXNAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAc3RkQEBAc3RkQEBAMkBYWjogJWFnZy5yZXN1bHQ/ZW5kQD8kdmVjdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAVj8kYWxsb2NhdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQDJAQHN0ZEBAUUVCQT9BVj8kX1ZlY3Rvcl9jb25zdF9pdGVyYXRvckBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAQHN0ZEBAQDJAWFo/ZW5kQD8kdmVjdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAVj8kYWxsb2NhdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQDJAQHN0ZEBAUUVCQT9BVj8kX1ZlY3Rvcl9jb25zdF9pdGVyYXRvckBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAQHN0ZEBAQDJAWFo6ICVhZ2cucmVzdWx0P0FWZXhjZXB0aW9uQHN0ZEBAP0FVX19zdGRfZXhjZXB0aW9uX2RhdGFAQAAABr8BAAAAAAAwgpCoyghC0iojCISbjCAQbzKCQMDJCAIRJyMIhJyMIBBzMoJA0MkIAlEnIwiEnYwgEHcy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b2R1bGVAQENBP0FVPyRwYWlyQEhIQHN0ZEBAQUVCVj8kdmVjdG9yQFVDb250cm9sQFRlbnRhY2xlTW9kdWxlQEBWPyRhbGxvY2F0b3JAVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQEBzdGRAQEAzQEhAWj9maW5kUGluQm91bmRhcmllc0BUZW50YWNsZU1vZHVsZUBAQ0E/QVU/JHBhaXJASEhAc3RkQEBBRUJWPyR2ZWN0b3JAVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQFY/JGFsbG9jYXRvckBVQ29udHJvbEBUZW50YWNsZU1vZHVsZUBAQHN0ZEBAQDNASEBaOiAlYWdnLnJlc3VsdD90b01hdHJpeEBRdWF0QEBRRUJBP0FWTWF0cml4QEBYWj90b01hdHJpeEBRdWF0QEBRRUJBP0FWTWF0cml4QEBYWjogJWFnZy5yZXN1bHQ/bGVycEBWZWN0b3JAQFFFQkE/QVYxQEFFQlYxQE5AWj9sZXJwQFZlY3RvckBAUUVCQT9BVjFAQUVCVjFATkBaOiAlYWdnLnJlc3VsdD90b19zdHJpbmdAc3RkQEBZQT9BVj8kYmFzaWNfc3RyaW5nQERVPyRjaGFyX3RyYWl0c0BEQHN0ZEBAVj8kYWxsb2NhdG9yQERAMkBAMUBIQFo/dG9fc3RyaW5nQHN0ZEBAWUE/QVY/JGJhc2ljX3N0cmluZ0BEVT8kY2hhcl90cmFpdHNAREBzdGRAQFY/JGFsbG9jYXRvckBEQDJAQDFASEBaOiAlYWdnLnJlc3VsdD8/JF9JbnRlZ3JhbF90b19zdHJpbmdAREhAc3RkQEBZQT9BVj8kYmFzaWNfc3RyaW5nQERVPyRjaGFyX3RyYWl0c0BEQHN0ZEBAVj8kYWxsb2NhdG9yQERAMkBAMEBIQFo/PyRfSW50ZWdyYWxfdG9fc3RyaW5nQERIQHN0ZEBAWUE/QVY/JGJhc2ljX3N0cmluZ0BEVT8kY2hhcl90cmFpdHNAREBzdGRAQFY/JGFsbG9jYXRvckBEQDJAQDBASEBaOiAlYWdnLnJlc3VsdAATBOJUVgjxgQYrBvmIjzRYIcwHt2Kgj/noVgj18awY7KM+oBXCfXArBvy4j26FkB9ksGLQj/wogxXCfpjBioE/9uMMVgj98awY/KM/oBXCf3ArBhD5j26FECK9sWIQkRDxjRXCiKDBioFERiQNVgglwq0YTKREuhXCiaDBigFFTiQNVggpwq0YVCRFuhXCiuDBioFFViQPVggtggcrBhdpkTxYIbwIH6wYYORF+mCFECNosGKQkRhJgxXCjHArBhqZkW6FUCNosGKwkRpJgxXCjXArBhy5kW6FkCN4sGLQkRzJgxXCjuDBioFHdiQPVgg9wgcrBh/pkT5YIfwIGqwYwORH0mCFECbcikFMwqRbIYwJGqwYyGRM0mCFUCbcisFMyqRbIZwJHawY0ORM6mCFkCZpsUJQEzRYMayJmqTBCoFNuBVDm7BJt0JwEzJYMbyJm5TBCgFOzGDFECdwcgYrBDlBgxXDnMhJGqwQ6IRbMdQJnXQrBDvBgxXDndhJHqwQ8OQ3Vgx5gifgsULQEzVYMeyJnqzBCoFP0GDF0Cd8kgYrBD/hVgx/4ifdCgFU8GDFECqgkgcrBFH5jRXDqIgKeKwQSAUPVgylQip5sEIwFTRYMZyKqaTBCgFVuBVDqqBKt0JQFTRYMayKqqTBCoFVuBVDq7BKt0JwFTxYMbyKq+TBCgFWfmPFECuwAh4rBFnBgxXDrMhKHqwQaOU3Vgy1QivgsUKwFTVYMdyKrazBCgFXwmPFkCu4Ih4rBF0ZjxXDrugKeawQeCU8Vgy9wivisULwlbRYIfwKGqwYwOVX0mCFEC7cikFcwqVbIYyLGqwYyGVc1mCFUC5osGIwl3JJgxXCuXArBnQ5l26FkC5ksGJQl3QpgxXCupjBioFd1uUMVgjtkhYrBHchgxXDu7hLGawQ4MUMVgzxAi9nsEKQFzJYMcyLvJTBCoFezGDFUC/0cgYrBHtJixXCvZjHigFf7uU8Vgj5khYrBH1JixXCvvzGioFf9gU8Vgj9gh4rBn/pl/RYIfzLs2IAmX+BVgghw60YRCZkuhXCyPDBioFkRqYPVgglYwYrBpMpmTNYIZzMs2JAmZOBVggpw60YVCZluhXCyqjHioFlVmY9Vggt86wYXKZloBXCy3ArBph5mW6FEDPqsWKQmZhZjxXCzKjHioFmZmY9Vgg1YwYrBpupmTNYIdyMGawYcOZmzmCFkDN+sGLQmZz5gxXCzqjHioFndmY9Vgg9wx4rBp/pmfZYIfyMe6wYwOZn3mOFEDZpsUIQG2/FMDZi860QyAYMVgxlQzZhsEIwGzJYMZyN2ZTBCgFtzGDFkDZocwYrBLVJiw1DapyELWwYUuMkamFDIB8bBPqQjw0CftjHhoE/9EM+NgT2sUEAEf/YEPjHhkBENggmQiIbAhLZIKgIimwIUGRDwCIbAhfZEMDIBoFGZGRDICMbBByxkQ2BjWwIdGRDwCMbAh/ZIIgJmGwIwGSDYCZksiEgkw0BmmwYZmImamHDUAvwgTobgjXZILTJmmwY4uRN1mSDUCdzsiGYkw3BnWwI8mRDsCcbhD/pkw1Bn2wIQmVDMCobglLZIKTKqWwITmWD0CqrsiFYlQ3Bq2wIYmVDMCsbglrZENzKhiBXNgS7siHolQ1HefxDLfyDLczELWwYxucfamHDMD7/YAsbklqwBZOwBVswiVuAD9TZYNSCLZiELcAH6mwQxAVcNgTgsiEglw2BuWwQ0MVcNgzsoi7mskGIl3fZINTLvGwI8GVDwC8bAn/ZIIgMyGwIQGZDQDIbApPZIKgMymwIWGZDgDIbBJhxmQ2BzGwIXGZDQDMbApvZEODMhkBnNgQ8syHwmQ0B2GwQwMZnNgRjs0Eom7HZEJzNhiBtNghpczYAMxFZoiqkMBORJapCCjMRWaIqpDATkSWqQgozEVmiKqQwE5ElqkIKMxFZoiqkMBORJapCCjMRWaIqpDATkSWqQgozEVmiKqQwE5ElqkIKMxFZoiqkMBORJapCCjMRWaIqpDATkSWqQgozEVmiKqQwE5ElqkIKMxFZoiqkMBORJapCCjMRWaIqpDATkSWqQgozEVmiKqQwE5ElqkIKMxFZoiqkMBORJapCCjMRWaIqpDATkSWqQgozEemQqEopzERkiaqQwkxElqgKKcxEZImqkMJMRJaoCinMRGSJqpDCTESWqAopzETESaIqoTATkSWqQgozEVmiKqQwE5ElqkIKMxFZoiqkMBNxJKpCCjMR95CoCinMRNxDoiqkMBNxD4mqkMJMxD0kqkIKMxH3kKgKKcxE3EOiKqQwE3EPiaqQwkwEXSSqQgozEfeQqAopzETcQ6IqpDATcQ+JqpDCTMQ9JKpCCjMR95CoCinMRNxDoiqkMBNxD4mqkMJMxD0kqkIKMxH3kKgKKcxE3EOiKqQwE3EPiaqQwkzEkagKKcxE3EOiKqQwE3EPiaqQwkxElqgKKcxEZImqkMJMRJaoCinMRNxDoiqkMBNxD4mqkMJMBD4kqkIKMxH3kKgKKcxE3EOiKqQwE4EPiaqQwkzEPSSqQgozEfiQqAopzETcQ6IqpDATgQ+JqpDCTMQ9JKpCCjMR95CoCinMRNxDoiqkMBMhBomqkMJMxJGoCinMRNxDoiqkMBNxD4mqkEIvZrQErNBJndQJnVAQjPRixkvIip3cyZ3cCQXBSA4EMgUCeUIQGLREBgw3CKEiBrMMSBAkHQTYEQPjFUAQDP7hjkYl6AeMOtCVP/mTP/mTYQMiKBEC6AcKO9gVUAGVP+kHijvglVAJlT4ZNiCEXiGAYQMigAkCGDYgCNMhgBED5B1AEAxSxH7w4CRyYh9GDApXAEEwEIsyygMSCJDhhkAmxGCWQTgCMgKQG1AFhhsCmxCDWYbBCDoAYcCJDJouBQRIGgTyAp6AC4YYbghkhQxmGQoiGDEgcAEEwSA2SIiPoRVII4DOEhgDFQRRWMJARUAUmjBiYNwDCILBiaRQIMwSHCMGxiuAIBj8gyndSjVLACbDDZi7oMEsQ6IEIwYELoQgGMRG+zBi7CIDww0BWYjBLMPCBCiMBQyMGBT0EIJgcB8zFGRAIC8wC7hgLDSDAJpCU+0EhOAthg2IwCCAWYJmxKCghxAEg/vQIWWWoBmoCJBFYDJYtO2OEJTBiAEyEiEIBq1RR4P5ODxBbRCMEBsEIykQyBQI5AlBDDcE7iIGswwOLQTDDUYBBrMMDxTkLQTYEQPjFUAQDP5BnEQmGDFAygEEwaA1+ihwH5Ehi1kCW8hfCLD5DgE23yHA9juDOKBMu/Q7wzikTLv0OwM5qMy6JDoE2ESHAJvmEGD7neEcXGZe+p0BHV5mXvqdIR1gJl4yHQJsxkOAzXgIsP3OwA40ky/9ztAONZMv/c7gDjZzL6kSATZVIsCmSwTYdIkAmyoRYFMlAmy6RIBNlwiwSQ8Btt8Z6gFsSqbfGewhbEqm3xnuQWxGJu8hwPY7Az6QTcr0O0M+lE3K9DuDPpjNyaRMBNiUiQCbNhFg0yYCbIpEgO13hpFgm5jpdwaSaJuY6XeGknCbl8mSCLD9zmAScFMz/c5wEnFTM/3OgBJyMzOZBwu2AxD0YG4yWLAdgMAHdJPBgp0liAYqCHiD3jKYhYGK0LAHKC6DWRgxMF4BBMHgH27qbuqgAysC4Wd+5mco2EBGDAoABMHAT97IT7qGIeCb8KAAABluCM4IDGYZJikYMTBeAQTB4B94am7yoGsYiL8BmxED4xVAEAz+oafoJg9GDIxZAEEwOImcKtBixOCgBRAEg5HYqSAt0KJrGArQMY8MAuyIAVILIAgGe/FPAR/YTXiMGBivAIJg8A86ZTd7MGJgvAIIgsE/6JTd8MGwAWGsEQEQPAQjHVgRLGiDNmhDwQbSNQxB6agHBQDILME0UAGAYxAJ0kDFpkWINFARGmAQOVLXYDyqAx9vMyKqQ4EC0jUYEevIR9yUyNxQoIB0DcbkOvQxNydiIhQoIMMGBCoUBDBsQJzCQADDBoQpBAQw3JDkERjMMlRU0DUMSezYx4iB8QogCAb/8Famcwpdw6DIztyMGBivAIJg8A9wdTqnMGJgzAIIgsFJsNXyFiMGBy2AIBiMhFsFcPEWXcOwzE5+ZBBgRwyQWgBBMNgLmQpUIXXoY8TAeAUQBIN/aKvUSYURA+MVQBAM/qGtUkcVhg0Iwo8IgEYiGJklqAYqQkObBKprMJ7b6Q++uZ3boUAB6RqMKHf+w29yB3QoUEC6BmPanRABnd2ZEQoUkA5sOMogdChQQTJQgMMNgXwQswxWFowYGK8AgmDwD37lO7QwbEDMAn4QwLABIQv2QQDDBkQs4AcBjBgYrwCCYPAPfuU7sNCBFUsamI7pmA4FG0jXMATjgyIUACDDDYErgcEsA3YFIwbGK4AgGPzDaOkOLXQNA2E+pzNiYLwCCILBP5DW7tDCiIExCyAIBicBWkVpjBgctACCYDASohWYRml0DUNxPi2SQYAdMUBqAQTBYC/MKriF3kGREQPjFUAQDP4htHrHFkYMjFcAQTD4h9DqnVsYNiAMWSIAuolgpAMbAjlwHQpUkFkCbKBCDThLuLoGY2mfGZEd2mkfChSQrsFo3qdGaMd2bIcCBaRrMJ74uRHbwZ00oUABOf44IgMFeEMgZwhyySDDBgQ5BAQwbECMg0AAwwaEOAwEMGKArAQIggFa6BVsyAaLxMaIgfEKIAgG/wBb9XMOIwbGK4AgGPwDbNXPOpBZBCMd2BCEQu9QoIJkoABnCbKBCkXA9KAaqAgNBXOFarhByBFilkHbgn5nIIlTIJ9hAyJAAwLod4aSQAXyGTYggjMggH5nMIlUEJ9hAyIwAwKYJZiF4QZVECEwmGXg0iDowApDfdAHfdCHgg2kaxiCElITCgCQ4YYAnsBglsHrghED4xVAEAz+obz4Jxy6hoFAofQZMTBeAQTB4B/Mq3/CYcTAmAUQBIOTEK9iPkYMDloAQTAYCfIK6GM+uoahSKE3ySDAjhggtQCCYLAXqBWQw/+oyYiB8QogCAb/MF7/Mw4jBsYrgCAY/MN4/Q85DBsQBj0RAOVFMDJL4A1UhIbHCV3XYCQtNCfyYyotRIEC0jUYywvVCf2giv1QoIB0DUYTQ3diP6qSKhQoIB1YcawK/uAP/lCwgXQNQ1BDekIBADLcEIAUGMwygMEXjBgYrwCCYPAP9cVC79A1DAQO5c+IgfEKIAgG/2BfLfQOIwbGLIAgGJyEfBUlMmJw0AIIgsFI0FdgIiXSNQxFDv1JBgF2xACpBRAEg73ArUAeXkhPRgyMVwBBMPiH+XqheBgxMF4BBMHgH+brheRh2IAwSIoAZgnAoGswjh0KFRCilR2iQAHpGoykh0ZFhGyFhChQQLoGY/mhUiEhXLkVChSQEQPjFUAQDP7Bv3zIHu6RhTipFuIqXIhhAwIfAgIYNiDuQSCAYQPCHgYCGDEwXgEEweAfQiyM6uGIWog7cCFO2YUYNiDuISCAYQPCHgQCGDYg6mEggBEDpCRAEAz2grzagh/IyFRGDAyWAEEwGJO18o/+GG4IRkWYZQgDNAhOEBUhfVBAyB8UkBMCIX5QQEgkFJATAjkiCPoHBeSIQKgkFJBTArkhiEsGOcaQE4K4IJArCjkhgGMYuUCA4YYgV4hZBjEgg2C44dgVphCYbggSYbih8RWmHJhuCB5huKEKF6YsmG4ILmG44SCI6YYCCYYbgoGYbiCEYLghQJdgluEMxiA4RqBTBjqEoBsGuWGQEwI4gpALBBgxKHgBBMEAJ/gruCWQWYIyGDEoeAEEwQAn/EubJSiDgQpFIANiDIYbAnoRZhnM4AyCUwOBzgwGOjIgaJbgDAY6FMEMVEEMVKEMBjoUwwxkQQxkoQwGOhTFDHxBDHyhDO4O8kVGDApeAEEwwIkSCy4Y5IRCbjhkxKDgBRAEA5xAseICkZHLg0GuDwo5IYC7A0ROCOCMIA7RA7lkFOSUUJBzWEbOaRk5x2XkjAHOGOCMAW4VJLlUoOSEIG4VLrlTsOSEIC4VMjlZ2OSEIO5g4JgCjhngukHOG+S+QW4MMjkiiCODTa4I4sqgkzOCuDNY5NJgkROCODZo5NYAkhOCODeQ5OBAkhOCuMOBawo4ZoBhA4I8AgIYNiDEQyCAYQMCPAYCmCVAgxED4xVAEAz+4d1oCj1GDIxXAEEw+Id3oyn2mCVABTqVYCQDApk8QSBPCAKD2MkADGYHBIYbgvIAAzSP2gGBDqwQi4CkSIqkKNhAuoYhCCvToQAAGW4IWAwMZhnU4A6OWQY2WINgxMB4BRAEg38IOZxKka5hIMiqpEYMjFcAQTD4B5HLqRQZMTBmAQTB4CT8rZiZEYODFkAQDEYC5AKamZmuYSjKanUyCLAjBkgtgCAY7AW5BSyyU6YzYmC8AgiCwT/8206tyIiB8QogCAb/8G87xSLDBoQBYwRAtRKMzBKwwUBFaNiKGghr0DUYSVq9jkuJT1pRoIB0DcayVrEDU+QjUxQoIF2D0bTV7MiU+ZQPBQoI3gfvgEAHViBBTdVUTVGwgXQNQyBXt0MBADLcEPQYGMwyuEEbBCMGxiuAIBj8g8ylFY50DQNRVzY1YmC8AgiCwT/MnFrhyIiBMQsgCAYn8XKF2YwYHLQAgmAwEjEXnI3ZdA1DYVe8k0GAHTFAagEEwWAv6i3YEba6nRED4xVAEAz+AebYSkdGDIxXAEEw+AeYY6sdGTYgjDAjgFkCN+gajAOvfKen4gevKFBAugYj0Svw+an5CSsKFJCuwVj4SnzCqn7ohwIFZMTAeAUQBIN/2Lm9+pF7DyhOPqa4+rBi2IAIk4AAhg0IMBEIYNiA+JGBAEYMjFcAQTD4B5/zKx85+SDi6uOIww8lhg0IMAkIYNiA+BGBAIYNCB8ZCKDfEVKFRTIIsCMGSEmAIBjsxcgFZzJa5TNiYLAECILBmKjazujMcEMgPsIswxvYQXBC+AiViQJCaaKAnBAInYkCQm2igJwQyBFBkJooIEcEQnCigJwSyA1BXDLIMYacEMQFgVxRyAkBHMPIBQIMNwT4Q8wywIEcBMMNh/4whcB0Q5AIww1N/zDlwHRD8AjDDRUIMWXBdENwCcMNB0FMNxRIMNwQDMR0AyEEww3BCQWzDHUQB8ExAp0y0CEE3TDIDYOcEMARhFwgwIhBwQsgCAY4sXPBLYHMEszBiEHBCyAIBjjRc9oswRwMVCiCHBBxMNwQzJAwy0AHdRCcGgh0ZjDQkQFBswR1MNChCHSgCnCgCnMw0KEYdCALcCALczDQoSh04Atw4AtzcHeAQzJiUPACCIIBTpBdcMEgJxRywyEjBgUvgCAY4MTZFReEkVweDHJ9UMgJAdwdIHJCAGcEcYgeyCWjIKeEgpyzRnIOG8k5bSRnDHDGAGcMcKsgyaUCJScEcatwyZ2CJScEcamQycnCJicEcQcDxxRwzADXDXLeIPcNcmOQyRFBHBlsckUQVwadnBHEncEilwaLnBDEsUEjtwaQnBDEuYEkBweSnBDEHQ5cU8AxA/Q7gzzY2Y4NGxCBQAD9zsA3/7JjwwZEQBBAvzP0Dcjk2LABERgEMEtgByMGxiuAIBj8QwwGdmYzIwbGK4AgGPxDDAZ2pjOzBKgwy5AHeGATIwbGK4AgGPyDDQZtJjZdw5ATeaZjIwbGK4AgGPzDDQZuJjYjBsYsgCAYnMQMBjrBRiMGBy2AIBiMRA0GQRuxUdcw6ISegVMGAXbEAKkFEASDvci/oGzgbJdGDIxXAEEw+AcaDOCMbEYMjFcAQTD4BxoM4Kxshg2InSg7AiD1CUZmCfJgoCI0QOoOBDzoGgyf8DNyGrN78jMKFJCuwQALUDOnMsunM6NAAekaDLEQNXQ6s33SJwoUkGOZNYML4kk7sCIJ1mzN1oyCDaRrGAJUaycKAJDhhmDuwGCWYQ/0IBgxMF4BBMHgH9Aw+DO56RoGYtXYbMTAeAUQBIN/SMMA1ORmxMCYBRAEg5Mow6AApRGDgxZAEAxG4gyDIJRAqWsYClaTpwwC7IgBUgsgCAZ7sYJBUDei1k4jBsYrgCAY/IMZBqJGNyMGxiuAIBj8gxkGolY3wwaEcXcEMEuwB12DcbgaPc3ZSbkaBQpI12AksGZPdZZSd0aBAtI1GIus4dOdrZRKUaCAXMlEcShDxa3MFRcEcsMgFwhwhiEXCDDcENwTMcvAB34QDDcc+cQUAtMNQSIMNyz8xBQD0w1BIww3PP/EFATTDUEkDDccBDHdUCDBcEMwENMNhBAMNwQmFcwyhEIfBMcIdMpAhxB0wyA3DHJCAEcQcoEAIwYFL4AgGOCEDgbBLYHMEvzBiEHBCyAIBjjBg4E2S/AHAxWK4AdEHww3BDIlzDKAQigERwYCHRkMdGRA0CxBKAx0KAIoqAIfqMIfDHQoBii4Ah+4wh8MdCgKKMgCH8jCH9wavE2cG8hNXBzUTVwQyA2DXCDAGYZcIMBwQxBWxCyDKJBCMNxwjBVTCEw3BIkw3LCYFVMMTDcEjTDc8KQVUxBMNwSRMNxwEMR0Q4EEww3BQEw3EEIw3BDAVTDLcAqjEBwj0CkDHULQDYPcMMgJARxByAUCjBgUvACCYIATpBgEtwQyS1AKIwYFL4AgGOCEKQbaLEEpDFQoAikQozDcEPCVMMtgCqcQHBkIdGQw0JEBQbMEpzDQoQimoAqioAqlMNChGKbgCqLgCqUw0KEopiALoiALpXBrEMC1wQD3BgXcQFpyQ2nJDaYl/c4wR/Yzc8MGRCAQQL8z0NH9zNywAREQBNDvDHWEPzE3bEAEBgHMEqAC/VIw0oENgf7YHAUqSAYKsN8Z9Kh/dI4CBeSCQPqdoY9AiOcoUEAuCOSIAPqdIZRIqOcoUEAuCOSIAIYbgt0iZhlSYRWC4Yalt5hiYLohaIThhgW8mGJguiFohOEGZbyYWmC6IWCE4YaDIKYbCiQYbggGYrqBEILhhkC9glkGV1CF4BiBThnoEIJuGOSGQU4I4AhCLhBgxKDgBRAEA5zwxyC4JZBZAlYYMSh4AQTBACdAMtBmCVhhoEIRVoFQheGGwL6EWYZWcIXgPoGODAY6NCBolsAVBjoUoRVkIRVkgRUGOhSjFVwhFVyBFQY6FKUVUCEVUIEVToVUSC6FUkhOCOBSKIXkhACGGwIRI2YZXiEWguEGGCIxpmIIphsCGRKGG2LoxJiSIZhuCGZIGG6QIRVjaoZguiGgIWG44SCI6YYCCYYbgoGYbiCEYLghiLFglkEWYCE4RqBTBjqEoBsGuWGQEwI4gpALBBgxKHgBBMEAJ8oyCG4JZJZAFkYMCl4AQTDAibMMtFkCWRjoUIRYIGBBj4NXuDAI5MZAkCuDQe7HYiFOjQK5YhbkhADujQi5wxbkhACOjg65JBfkhACGDQhdCAhg2IC4BYIAhg2IWTgIYJZgFkYMjFcAQTD4h/MMWDBQKbwl+4MAAq1ghP4qGEmBQKZAIE8IAoNVy4DhhuAQg1mGiBaCgQqCTYPGmIWBitCg06BxZmGgIjTwNGikWcj2CrAjBsYrgCAY/AN+BjgYBCMGSDmAIBi0xmwGAUkGOBjoWac1uNcOBiAYYCFrGYCBrYkABqsGAp2WIV8/GJBgQIIBCQYgGHRaxnyBYVCCQQkGJRiUYDDcMIRhAAazDLhQC8FwA7FqYjDLYAu3EIwYELgAgmAQG2EZ8IiB0RIgCAZtApYBUtBsBSMkW8HILAEuDFSEhkYLwi0MVISGRgvGLQw3BAIYzDLoQi4EqV8BNsEswCaYBdh+Z+ivNQxgMOh3Bv9iwwAGg35n+K82DFwwyDULsLlmATbfLMDmmwXYDLEA2+8MIjaHAQ4G/c4wYnQY4GDQ7wwkVoeBDQadlpFidhjsYLCDwQ4GOhhkiQXYfmcwMTwMejDod4YTy8OgB4N+Z0AxPQx2MEg7C7BpZwE2WyzA9juDi/lhMIZBvzO82B8GYxj0OwOMgWIQhkHqWYBNPQuwSWMBtt8ZaowUgzQM+p3BxkoxSMOg3xluzBSDMwySxgJsvzPUGCoGbRj0O4ONpWLQhkG/M9yYKgZrGOSNBdh+Z8AxVgziMOh3hhxrxSAOg35n0DFXDN4wSB0LsP3OsGOwGNRh0O8MPBaLQR0G/c7QY7IYzGGQPRZg+53Bx2gxyMOg3xl+rBaDPAz6nQHMbDG4w6ADEHqrFoMMFmwHIPwWLgYZLNgMrwU7SzAOWWYBdsTAeAUQBIN/0NNAF4Og3xnMrBcDUQyGDYjg3gig3xnOzBcDUQyGDYgA3wig3xnQ7BcDUAyGDYgg3whgxABxCRAEA7v40WDORE7f0mzEwHgFEASDf8DToBcDgmAsGKEXC0ZSIJApEMgTgsBg5zJguEEwxwAMZhnCYReC4YbhHAM0mGXghV4IRgwIXABBMIgN8QwYh3IMZGC4Ieg5MZhl8IVfCFDgORgYMSjoAQTB4D5YNAgyIJAX/BxcwHOaQQBNoal2AkKAdsMGRGAQwCwBOIwYFPQAgmBwHzMaKLME4DBQESC+IPxCBli3XRUCaMQAGQkQBIPWcNNg+M3AqbkMCOQsQTgMVBDuKeiCAA4DFbiC34EuIOCQQYAdMUBAAgTBoDXkNAjGM8DHIOf61UHQx2AXg2EDIrA7AugABGHsRgyQlwBBMGgNOg2C8gzGbueIzYIRWrNgJAUCmQKBPCGI4YZAHQMxmGUQB7MIUMC7DMhVC7BZcgE2Sy7A9juDq5lksI5BvzO82kkG6xj0OwOsoWSQjkHCWoDtB4xYU8ngHYN3DN4xeMegHyhkbSUDeAzgMXjHoB8oZo0lg3gM4jFox6ADEAjTS1oLsP3OUGsvGdBj0O8MtgaTAT0G/c5wazEZyGOQtxZg0+YCbNpcgO13Bl2ryUAfg35n2DWbDPQx6HcGXrvJAB+DWYKcGKgg4FTIhfayiYGK0ECPXHgvmxgxMF4BBMHgH+41uMlAHjqwIhD+MfjH4B8DCjaQEYMCAEEw8JMXDUIw6BqGgCeD0KMAABluCE40AINZhnIgh2DEwHgFEASDf+DXYCYDe+gaBuInA5AMRgyMVwBBMPiHfg1oMrCHEQNjFkAQDE4iX4PC5kYMDloAQTAYiX0Ngpuzua5hKMAyML0MAuyIAVILIAgGe/GrQZAPNhmE3oiB8QogCAb/oK+BTQb4MGJgvAIIgsE/6Gtgk0E+DBsQxooGBDBLUA5dg3GIZYB6JxnsnlgGFCggXYORkGWgeikZ9N5KBhQoIF2DsZhlwHorGfye71GggAwbEP1QEMCwAcEPAwEMGxD7EBDAcAOElgEYzDKYwzwEdGvBSAdWBDEZvGTwksFLBhRsIF3DELBlEHsUACDDDcGNBmAwy4AO5xCMGBivAIJg8A8sG4xl4A5dw0C8ZQCTwYiB8QogCAb/0LIBWQbuMGJgzAIIgsFJpGxQoN2IwUELIAgGI7GyQZB2aNc1DAVcBraXQYAdMUBqAQTBYC/eNQjiwSyD2BsxMF4BBMHgH1Q2MMsAHkYMjFcAQTD4B5UNzDKIh2EDwtjRgACoJBQQOgkFhFJCAZklQIeBCoUMzEE4h4EKRQzMwTiHgQoFDMxBOYeuwWjwMvC9ngziDy8DChSQrsF49DIAv58M5i8sAwoUkK7BiPgyEL+wDOqP/ihQQO4I4hIibjnigkBuGOQCAc4w5AIBhhuC8CNmGdJhHYLhhmP8mEJguiFIhOGGxfyYYmC6IWiE4YYn/ZiCYLohiIThhoMgphsKJBhuCAZiuoEQguGGAP6CWQZ2UIfgGIFOGegQgm4Y5IZBTgjgCEIuEGDEoOAFEAQDnCDZILglkFkCdhgxKHgBBMEAJ0w20GYJ2GGgQxHWgVAH/A/S4YL7E2KLRYRIYxEZbhACMJhlcId2CPqdYSjPQDWDYQMiiAMC6HcGwjwD1QyGDYggDgig3xmK8wxQMxg2III4IIB+RzBeMxg2IOYiIIBZgncYMThgAgTB4E3KNXCNY++ILhYRYo1FZJbgHQYqVkJqB8EdBipWQmkHwx1GDIxXAEEw+IfVDdYzWAuyCQXknEDIJhSQgwKhm1BATgpkxKAAQBAM/ORcA1kM6DQUkDMCINVQQM4IgFpDATkjgGEDwi4CAhg2IOpiIIBhA4IuCgIYbmgcMJhliAd4CPqdwdnPADyDYQMiGAig3xke/gzAMxg2IAKDAPqdAerPwDeDYQMiSAig3xGi8gyGDYjUCAhglkAeRgwOmABBMHgTfQ3IY4K9WQJ5GDEwXgEEweAfcDfoz6AvZglsguAuGKG3C0ZSIJApEMgTgsBgD4MMwKAPAxAYbgjeAQwQHv4wAIEOrEAC9wzcM3DPgIINpGsYghUN4DCgAAAZbgjsNQCDWQZ6AIljlsEe6iEYMTBeAQTB4B/WNxDRYDa6hoFw0eA9gxED4xVAEAz+gX2DEQ1mY8TAmAUQBIOTQN+gSMFgxOCgBRAEg5FQ3yBQwSAFg65hKF40qMMggwA7YoDUAgiCwV64bhDYRokGcBiMGBivAIJg8A/pG5RoUBsjBsYrgCAY/EP6BiUa2MawAWHoa0AARB4KCJmHAkLooYDMEtjDQIUiHvQg1MNAhQIe9GDUw0CF4hv0oNRD12A0Nxr0YcCfASwGNxpQoIB0DcaTo8EfBv4ZyGIAogEFCkjXYEQ7GoRiAKIBLQazGFCggNwRxCVE3HLEBYHcMMgFApxhyAUCDDcEoBgQswz3kA/BcMMhigFTCEw3BIkw3LCUYsAUA9MNQSMMNzyoGDAFwXRDEAnDDQdBTDcUSDDcEAzEdAMhBMMNwSsGwSyDPuBDcIxApwx0CEE3DHLDICcEcAQhFwgwYlDwAgiCAU6MbxDcEsgsgT6MGBS8AIJggBPlG2izBPow0KEI+UDgg10K93CBLQYyYmC8AgiCwT/4cOCnAYn0O4PppYWYBhQoIDcE0u8MqccWaBpQoICcEUi/M7DeW7BpQIECckkgRwdHnB0UcXgwxLAB8SIBAQwbEC4iEMCwAdEiAwHQjSwi9CaLyHCDEIDBLAM/7EPQ7wwDrAZ1GgwbEEFBAP3OQMRqUKfBsAERHATQ7wyFrAZzGgwbEEFCAP2OYOhpMGxA+EhAALME/TBicMAECILBm7xukCcHGQb0I4sI3ckiMkvQDwMVKyHtg8APAxUroeyDwQ8jBsYrgCAY/EMcB7Ya8MhwQyCAwSzDP/hD0O8Mgq4GfxoQnCggwwaEEBBAvzMQvBqAakBxooAMGxBCQAD9zmD4avCnAcmJAjJsQAgBAfQ7AnKqwbABsSYBAcwS2MSIwQETIAgGb9K7gakocxjMEtjELINIhEQtjBgYrwCCYPAPfxzYakAnXcOAC+IajGowYmC8AgiCwT+AcnCrAZ2MGBizAIJgcBJ8HOTCLwYjBgctgCAYjIQfBwE4Br8YdA1DLoxrkJJBBgF2xACpBRAEg70Q4yC4k1wNSDIYMTBeAQTB4B/6OMjVwE5GDIxXAEEw+Ic+DnI1uJNhA0IXXDcgAJrBIBiZJRCJgYrQUA2QEEKiazB64VyDlgxYNQDL4FwDChSQrsH4hXQNXjJw1UAsA1gNKFBAugYjHNY1iMkAVgOyDMYyoEABudqg1QAu0MlAO7AiCWg1oNWAVgMKNpCuYQjiNbDJgAIAZLgh4N0ADGYZSGIkghED4xVAEAz+IZYDdA1IpWsYCHoNajUYMTBeAQTB4B9kOUjXgFRGDIxZAEEwOAlXDop5DEYMDloAQTAYCVgOAnoM5jHoGoaiXoOdDDIIsCMGSC2AIBjsBR0Hwamsa2CTwYiB8QogCAb/8MrBugamMmJgvAIIgsE/vHKwrsGpDBsQBvgGBDBLQBJdg3Hca9CTAa8GcBnca0CBAtI1GEm+Bj8Z+GoglwG4BhQoIF2DsexrEJYBuAZ0GcxlQIECQrCigFwgBc2KAnKBFWQrCsgFWlwQyBGEXCDAIYhcIMBwQzCWATHLUBInEQw3HGUZMIXAdEOQCMMNDFoGTDUw3RA4wnBDtJYBUxJMNwSTMNxwEMR0Q4EEww3BQEw3EEIw3BDIZRDMMqCESQTHCHTKQIcQdMMgNwxyQgBHEHKBACMGBS+AIBjghCkHwS2BzBKgxIhBwQsgCAY4gcqBNkuAEgMdinAShEnwq1ASF+RlIHcGaBBnBmsQVwZuEBcEcsMgFwhwhiEXCDDcEJxmQMwypMRKBMMNR2oGTCEw3RAkwnDDwpoBUwxMNwSNMNzwvGbAFATTDUEkDDccBDHdUCDBcEMwENMNhBAMNwS2GQSzDCyhEsExAp0y0CEE3TDIDYOcEMARhFwgwIhBwQsgCAY4oc5BcEsgswQsMWJQ8AIIggFOsHOgzRKwxECHIqwEoRKkK6TEBb0ZyIiB8QogCAb/UNZB6QY20+8MrRjASdoGFCggdwaB9DsDLAZz8rYBBQrIqUEg/c4wi4GdzG1AgQJybRDI0cIRNwtFnCwMMWxAhE1AAMMGBNgIBDBsQPzMQADkM4sI2c0iMtwgBGAwy+ASLRH0O8NwuwHfBsMGRFAQQL8zELgb8G0wbEAEBwH0O0ORu4HeBsMGRJAQQL8jGKEbDBsQZRMQwCzBS4wYHDABgmDwJrYcgM6hlgGZzSJCfrOIzBK8xEDFSkgtIbjEQMVKKC1huMSIgfEKIAgG/4DXQe8GbjPcEAhgMMsQEzAR9DuDEL6B6QZ0NwrIsAEhBATQ7wzE+AanGxDeKCDDBoQQEEC/MxjlG5huQHmjgAwbEEJAAP2OgLhuMGxAyE1AALMEMjFicMAECILBm5Bz0DqKXgY0N4sIrc4iMksgEwMVK6HBhBATAxUrocCEERMjBsYrgCAY/INqB+ob2A2VgQJyZxAIkYECcmkQCI2BAnJrEMiIQQGAIBj4iTkHoxqQ6SggZwRAqaOAnBEAsY4CckYAwwZE6AQEMGxAgM5AAMMGxN8UBDDc0DhgMMtAEzMR9DuDo7/B7wbDBkQwEEC/Mzz7G/xuMGxABAYB9DsDxL9B7wbDBkSQEEC/I0TkGwwbEKgTEMAsQU2MGBwwAYJg8Cb5HIzPxJrBLEFNjBgYrwCCYPAPtx3wb4A6swQ2MWJgvAIIgsE/8HbAvwHeDBsQd0OjAQEMGxB2Y6MBAQwbEHVjowEBjBgYrwCCYPAPvB3wb0A3IwYFAIJg4CfyHLhq0O8MJBmcC/gGFCggF+hoIP3OcJKBuphvQIECckGPBtLvDCoZtIv6BhQoIBeAaSDDBgTfBAQwbEDsDUEAwwaE3hwEMGKArAQIggFaqHZAm4FuBjwa1GYwYmC8AgiCwT+Ad1DCQd+MGBivAIJg8A/gHZRwEDojBsYrgCAY/EN5ByUc5M2wAYE3PRoQwLABcTc/GhDAsAFhNz8aEMCIgfEKIAgG/1DeQQkHdUOJAkKHAkKFAnKDjwZyw48GcgOYBjJsQOhNQADDBkTeCAQwbEDgzUAAIwbISoAgGKAFbAe4GYBnIKZBbgYjBsYrgCAY/IN5Bysc7M2IgfEKIAgG/2DewQoHfzNiYLwCCILBP5h3sMKB+aC91G8AAfSXQTBCfhkEIykQyBQI5AlBYKCqQQYMNwSHGMwyjIMuBMMRZ////z8Q/xuIwSwDTphFkLsZBNieoeDNAIeD/g1iNYDVoGcoejPI4cB/A1kNQDjoGQrfDHQ4+N9gVgMdDtI3gwDbMxS/GfBwEMJBrQa0GvQMBXgGPRyIcGCrAQkHPUMRnoEPByMc3Grgw8EswVwMVBAsOIhDTpTFQAXBZ+IQFmWRQgLIQIHhoKsBCGSgoG4ICI9eDUCgXx3eJmDhgAIFJAMVl4WKGzFAYgIEwaBM3DrwzyAQXjXoVwe6MWA4oEABuSEA6s0gGOnAhiCK4YACAKNfHfRmuuFg2IAIHALoV4e9oW44GDYgAoMA+tWBb6oaDoYNiIAgABrPIBjpwIbguuGAAgBjuCEI6wAMZhnKQieCEQPjFUAQDP7BxgM7DuymAysIzYcDHw58OKBgA+kahmCPA3ANKABAhhsCsw7AYJaBJ3YiGDEwXgEEweAfdjyQ40BvuoaB8OPgh4MRA+MVQBAM/oHHgzkO9GbEwJgFEASDk8DxoPjTYMTgoAUQBIOR0PEgANXgT4OuYSj+OCjXIIMAO2KA1AIIgsFe+HcQ9E0dB+AajBgYrwCCYPAPOR7UccA3IwbGK4AgGPxDjgd1HPTNsAFhqHVAALMEPNE1GEcoB+camHGgr0EoBxQoIF2DkYxykK4BGgf8GqhxQIEC0jUYSykH6xqoceCvQb8GFCggF4xrAEfkagB3lGsAwwYE6QQEMGxAjI5AAMMGhOgMBDBiYLwCCILBP5x5MMdB6AwbEKBDvwEBDBsQftOvAQEMGxB/M7IBAYwYIDIBgmCwFycehM65BiMbpGswbED0zVwHATBicMwECIKBXKh4EKOBjAa6GpDfECDDDYG/BmIwy9ATYhGQ6AQgN9BxAMMNgcgGYjDL4BNhEXQAwkCyQQZNlwICJA0CeQHKBnDBEMMNgR8HZDDLABY/EYwYELgAgmAQG/Ad8DGgHEAaAXSWICwGKggCLKyeGKgICLDQemLEwLgHEASDE6nvIBBmCcRixMB4BRAEg3+Q82CUg9gZMTBeAQTB4B/kPLjl4HZGDIxXAEEw+Ic7D245YJ1hA2J16DUggGEDQnXoNSCAYQMideg1IIARA+MVQBAM/uHOg1sOUIdQNAhGOrAi4ANQDkA5AOWAgg1kxKAAQBAM/AS2g7ANuoYh6OVAZAMKAJDhhgC1AzCYZSCLsQhGDIxXAEEw+Ic+D2g5aJ2uYSDAOQjlYMTAeAUQBIN/8POgloPWGTEwZgEEweAk9DwoxjUYMThoAQTBYCT4PAjINRjXoGsYinAOTjbIIMCOGCC1AIJgsBdgHgSwc8uByAYjBsYrgCAY/MOeB7ccvM6IgfEKIAgG/7DnwS0HsDNsQBisHRDALAFZdA3GMc5BygaoHPBsMM4BBQpI12Ak5RysbKDKgc8GrBxQoIB0DcZyzkHLBqwcgG3wswEFCsiwAUE7BQEMGxCzMxDAsAEhOwEBjBgcIgGCYGAWbh64aYCvwZsGIwbGK4AgGPxDqAfmHNzOiIHxCiAIBv8Q6oE5B7tDNxoEI7MEZTFQERoCWahDTiAryHIAAcSjQTCSAYFMgkCeEAQGZhtkwHBDYIjBLENO3EQw0KHwuHATPC6Ew77cxYgBQhMgCAZlYt+BqQb8GvRrcLPBCSIbUN5pEGBHDIxXAEEw+IdZD9Q5CHqGAk8Dew52ObDnoJeDDALsiAGiCyAIBq0B50EQ3oE6Bzcb9AyFngb4HPRygM8BPgfDBkQwswEB9AzFngb5HPhyAM4BOAfDBkRAswEB9AwFnwb6HPxyILeB3AbDBkRQswEB9AxFnwb7HIBzQLcB3QbDBkRgswEB9GJD3gb8HIRt0GMOvRr0cyDOwYiB8QogCAb/sOtBOQdBN1EI/hyMczDOwTgHvZjBt8E/B2QbkHNAzsE4BxSMIDSMICkQyBQI5AlBYAC3QQYMNwh2G4jBLMNZuEXQRQgG3gbDDQECBrMMbYEWwUDFGIQBWxBn0UUQgUoH7xy4c0ABCDLcENxsAAazDGyRFkH/MAgtHcRzMHtwBPIcCIARDMMNwTwHYDDLoBZsEWTBdClYSihQSkYMilwAQTBIlQDpHwZkpgN6DmYPjgCfAwEwgmG4IcjnAAxmGdaCLQIylpKuVAj8OaBAKRkxKHIBBMEgVQJnloAtuggBAulguCHQwGCWoS3QIhg2IDiKAGYJ5GK44VrdAAxmGeTiLYJezMjdgKeD0A1COgjpoJ8DCkaQDAjkBVwMNwSwG5DBLANcxEUwYnDUBAiCwZzoeFAGshuEbDBLIBcouwEXAykGARYF1w1uYMQAGQkQBIPW4PVAaPEgGN2giRDIYBg2IMwgIIBZArkYMTBeAQTB4B/6PWDpAA16sUF8g7IOTDrIcw0CbJ5rEGD7nQFdA7QOUjrod4Z0DdI6aOmg3xnUNVDr4KWDfmdg12CtA5gO+p2hXQO2DmA66HcGdw3aOnDpoBcb1jdw64B2g15sYN/grQPYDXqxoX0DuA5gN+jFBvcN4joo6SDjNQiwHQ8hr8FcBzgd3HTQ8RDzGtB1kNNBTgcdD0GvQV0HOh3YdNDxDPUa2HWg00HPUORrcNcBTwfwG9x10DMU+hrgddDTQfwGPx30DMW+Bnkd+HQgv0H8BomvQYDNng0CbPZsEGD7nWFfg74OxDrodwZ+Dfw6EOug3xn6NfjrAKyDnqEQ2QC0g7IOQDvA36BnKEY2CO3ArAO0DkI76BkKkg1EOzjrIK0D/Q16hqJkg9EO0DrY32C0g56hMNmAtIO0Dvg3WOsgRTYIsP3OMLKBaQdrHfQ7A8kGpx2sddDvDCUboHaQ1kG2bRBgs22DAJtxGwTYjNsgwGbKBgE2UzYIsP3OoLLBawd0HfQ7w8oGsB3QddDvDCwbxHYg10GybBBgk2WDANvvDC0b0HaQ10G/M7hsUNtBXgf9zvCygW0Hdx3kywYBtuMZYDbA7YCvg46HiNkgtwO/Dvw66HgImQ10O/jrwK+DjoeY2WC3A9AO+DrImQ0CbM5sEGBzZoMA2+8MNRv8dgDaQb8z1GwA3kFoB/3OcLNBeAelHfQ7w80G4h2YdtDvDDkbjHeA2kG/M+RsQN5Bagf9zsCzQXkHqh30O0PPBuYdqHbQ7ww+G5x3gNpB8mwQYJNngwDb0wyxG6h3oN5BTzPIbrDegQ4H/YDxswF7B7EdxHYQ20FsB/1AAbZBeweyHch2ENtBP1CEbeDewWwHsx28dpAEgewiCLIN4Duo7aC2g56hmNsgvgPbDuI7UOOgZyjoNpDv4LaD3A7WOOgZiroN5jvA7WCNAzYOuggCbQP6DnI7wO0gzzYIsP3OgLaBfQe7HfQ7Q9oG9x3sdtDvDGob4HeQ20GqbRBg+51hbQP9Dn476HcGtg32O/jtoN8Z2jbg76C3g1kC1RioIFB3wIlzuIuBitBAE5xIh7sYqFDscMCJcLiLEQPjFUAQDP6h9wP6DtKjAyuEobyD8g7KO6BgAxkxOGABBMEgJHw/CEw3MO+A1EMBIfVQQEg9FJARA+MVQBAM/kH8g/wO1AMRPg5AgOg2CEY6sCIQ2Dtg74C9Awo2kBGDAxZAEAxCovyDgHWD9g6oPRQQag8FhNpDATlliFOGOGWICwK5YZALBDjDkAsEGG4I3jggZhnowi6C4YYjjgOmEJhuCBJhuGGh44ApBqYbgkYYbnjuOGAKgumGIBKGGw6CmG4okGC4IRiI6QZCCIYbAj8OglmGu6iL4BiBThnoEIJuGOSGQU4I4AhCLhBgxKDgBRAEA5yQ/SC4JZBZgrsYMSh4AQTBACdoP9BmCe5ioEMR7IKoC5oc6OLgIIARA+MVQBAM/gEFBTIPamTEwHgFEASDf0BBgcyDHME5uPEAAih8g2CEwDcIRlIgkCkQyBOCwICdgwwYbggOMZhlmAuzCEYMjFcAQTD4BxgU2DwYjeEG0OLjAAxmGfwiL4IMLQJ5oxXEcEPwzoEYzDLoRV8E/epAWvMc9HiQQdOlgAA5g54DuECI4YZAzQMymGXgi70IRgwIXABBMIgN3g/4EHoOIIsAOkvQFwMVBMEXVF4MVAQEX+BskBcjBsY9gCAYnEj4B4EwS+AXZGaLyHBD0MoBGMwykMZfBJRmi0gGBDIJAnlCEGkE2OEGIaQDMZhlAI3RCPqdASnp4M2DDJouBQTIHSYdwAVCDDcEfB6QwSyDaIRGMGJA4AIIgkFsuH/Al5h0AFkE0FmC0RioIAjRsP5ioCIgRMP6ixED4x5AEAxOZP6DQBgxQMoBBMGgNWBQ8LPQD2o9uOdgloA0RgyMVwBBMPgHOBRqPfCz4QbfDUQ8AINZBjApjSB7NyCQCb4BgTwhiOGGAKYDMZhlMI3UCDoAYXwDmQ4yaLoUECBn1HQAFwgx3BCsekAGswyocRrBiAGBCyAIBrHR/wEfUtMBZBFAZwlSY6CCIFCDKo2BioBADdwXSmPEwLgHEASDExFBIRBmCcBkoIJw7UEubjX4kYEKNSDPQS5u4kcGKhQVHeRiJn4khwSQgQq7YJ4DGm4I7jkghhsEew6E6YZ7DoZgukGfg2AYblDiPQCDWQbWWI1gxACJCRAEgzOh/6CUA/9QbDqYJWCNgQo1EFZDPwfVIDIOghEa4yAYSYFApkAgTwgCg7cOMgCDuA5AIAMVdUwgIwYFAIJgUCfxHwQZJKAMCMgsQWsMVBCDawiscQG6BzDckARiMMvgGrARdGCDI5B7QAGAMdwQuH8ABrMMrfEaQRYJYJYANgYqEuE1aHtojeEGZd0DM5hliI3ZCAYqkkU2LNjIgEB0YIMVsHtAAYAx3BDYfwAGswyyMRsBFvEegMBwg0HvgRnMMsTGbAQDHYl6D7Ch3oNsOLEx3KDQewAGswy0URvB+UgawCyBbeRAILIhIFkGCrBfHXxs2PeAAgXkhiD61SHMCn8PKFBALiDiiID61aHMkpAPKFBA+tXhzJiRDyhQQG4I4oxAbghgxACJCRAEgzMxQ+Geg8CtA9QOiFFAMlBxpCgghMtBMEK3HAQjKRDIFAjkCUFgMN5BBmBQ3gEIZKCiZglsY6BCDYTaUAfaGKhQA602+IE2BioUqzZAgTYGKtRAqw2QoA16ERXk/DoI4opAhhuC0A6I4QYBtANhuiG0gyGYbiDtIBguWGTEoABAEAzqBA6FIIMElIEKOyKIEQPjFUAQDP6hJ4W+D3RkxOAgCRAEA7zwR2Gmg5AOjFkG3riNVziHVWK4IXAVYZYBN3IjOOFVYsTAeAUQBIN/AEsB9AMeGTE4SAIEwQAvSFGw6WCkA9YOaEcUkBMCIR5RQI4IhHpEATkjEPIRBeSEAIYNCDAJCIB+RAE5I4BhAyJMAgIgMFFATglg2IAQk4AARgyMVwBBMPiHsxRYP0CTWYLcoDBRQS4AhxhuCHY7IGYZdGM3ghGDAgBBMKgTVRSEDBTguXcQxIiBAYAgGKRJLQqBeAezBLsxUKEIugG+Q24Qmigg6Q4K7IRAjgiE1kQBuYAQYhMF5IQgRgwKAATBACdEUgjOCGTEoABAEAxwoiSF4ZBARgyMVwBBMPgH0BRYP4iTEQPDJkAQDN5jJYWyDsQ6IDhRQC4IhOJEAbkgkBsCuADEA7kRD4KgOlFADgmE7EQBOSSQG4K44MQDucWQcwo5IYALVjyQSw64oMUDOYaRiwK4AMYDuRkPgrirkoseOSGIC2o8kHOauODGAzmjgAtyPJDzGLhgxwM5Hw+CuCDMAzkySOSEAA4NKrlAgAvMPIBTzjyQU4NJTgjg3OCTCwS4gM0DOKnNAzk46OSEAI4O1kAuEOACOQ/g6mDOA7mAzgO4PKjzQC4Q4II6D+CMgK4R6KiBiF4UkAsEGDYg7CUgAKoXBeSCAoYNiHsJCIDsRQG5AIFhAwJfAgIYMTBeAQTB4B/6U3BBYV6GDQh3KQhg2IBol4EAhg0IdgkIYMTAeAUQBIN/EFFBDIV1GTE4SAIEwQAvzFLA72C8g3VIdCAgswTxQfuigAwbEPASEADtiwIybEDAS0AAtC8KyLABAS8BAYwYGK8AgmDwDyYqmKHwLiMGB0mAIBjghVoK/B2cd/AOyQ4EhHA7CEY6sCIQYFCAQQEGBQo2kK5hCNpQkPWAAgBkuCHASQEMZhl8ozeCEQPjFUAQDP6hRQUyFOqlaxgIOBRiUBgxMF4BBMHgH1xUKEOhXkYMjFkAQTA4CRUVChkPRgwOWgBBMBgJFhWCGQ9kPOgahiIOhVsPMgiwIwZILYAgGOwFfAoBvpyhIOvBiIHxCiAIBv+wosIZCvcyYmC8AgiCwT+sqHCGAr4MGxAGTwoEMEvgG12DccyhkOsBDgo6KMyhQIEC0jUYSR0Kux7ooMCDAg8KFCggXYOx3KHQ6wEPCj4ovHtAgQJC/KKAHBEI9YsCckggNwRB/6KA3BLIIYecEMQph1xTyAlBnBLINYWcEMQ9i9xSyAlBXKPIRY+cEMRVlRxFyQkB3DTJCQEMNwTuHhCzDL8RHsFwwwbvAVMcTDcEnTDcwM17wFQH0w2BJww3cPYeMNXBdEPgCcMNB0FMNxRIMNwQDMR0AyEEww1BvwfBLAN5gEdwjECnDHQIQTcMcsMgJwRwBCEXCDBiUPACCIIBTsSoENwSyCyBeIwYFLwAgmCAEzMqaLME4jFQoQjhQYDHcEOQ8oEwyzAe5BFcHAh0dTDQ4QFBswTkMdChCOMhD78hD+Ix0KEY4wEPvwEP4jHQoSjjwQ6/wQ7iMWxA9M9AAMMGxP8IBDBsQNRNQACHBmggxwZsICcEcHEQB3KBAMMNQc0HxCxDeZxHMNzgBjcfMPUGMN0QwIEw3EAHOh8wVQcw3RDYgTDcoAc9HzC1BzDdEPCBMNxwEMR0Q4EEww3BQEw3EEIw3BCQfRDMMqiHeQTHCHTKQIcQdMMgNwxyQgBHEHKBACMGBS+AIBjgBJ4KwS2BzBKgx4hBwQsgCAY4oaeCNkuAHgMVinAehHkMNwRwHwizDOmhHsG9gkDXCgPdKhA0S6AeAx2KkB44UR44gR4DHYqRHmBRHmCBHgMdipIeaFEeaIEewwbE7gwEMGxAjJFAAMMGhO4EBHC4gAtyvMALckIAJw7iIBcIMNwQ8H1AzDKsR3sEww2+4PcBU78A0w0BOAjDDeQQ+gFT5QDTDYE5CMMN60D6AVPsANMNQTsIww0HQUw3FEgw3BAMxHQDIQTDDcHqB8EsA3ywR3CMQKcMdAhBNwxywyAnBHAEIRcIMGJQ8AIIggFO/KoQ3BLILIF7jBgUvACCYIAT4SposwTuMVChCO1BsMdwQ3D7gTDL8B7wERxICHT9MNDtA0GzBPAx0KEI74Ef64Ef7jHQoRjvASLrASLuMdChKO+hIuuhIu4xbECA0EAAwwbE/wgEMGxApFJAALME8TFQQfDJbtAJfJC8B8FIBzYEQloKFKggB/sBisQFgiCLtKUAAhkQkA5sOIK3FChQQc5FAjkjgAwU4HBDIP4BMcswH/IRpIwowFkC/BgxMF4BBMHgH95WeE2hhUYMCgAEwcBPSlVYQYFgSAEhXVJAaIYUkGED4oUCAhg2IFxIIIBhA6KFBgLowIpI0ktBLwW9FCjYQLqGIbhNgf8DCgCQ4YZAVAUwmGWoD/oIRgyMVwBBMPiHuxVcU4ihrmEgdFPYS2HEwHgFEASDf8Bb4TWFGBoxMGYBBMHgJOhWKPw+GDE4aAEEwWAk7FYI/j7w+6BrGIrdFEJQyCDAjhggtQCCYLAXOisENBSbAv8HIwbGK4AgGPxD3QqxKczQiIHxCiAIBv9Qt0JsCjQ0bEAYpioQAK18EIx0YEOwiaZAgQpCOKSAkA4pIMRDCsgsQX0MVCjefAj0MVChiMF8GPQxUKGYwXwo9DFQoQagMB8OfQxUhIYpzAdFH12DIaGn4IJCawqvKaCnQIEC0jUYlHoKMCi8phCbQmwKFCggXYNhsacgg0JsCrMpkKFAgQKSiAK8FBSCuCGQYwa5QIBDCDnIkBMCuOaQoxI5IYAOrJDewDcF3xR8U6BgA+kahmA/BTAUKABAhhsCcxXAYJbhPuwjGDEwXgEEweAfdleQT2GOuoaB8E/hN4URA+MVQBAM/oF3hfkU5mjEwJgFEASDk8BdoSD/YMTgoAUQBIOR0F0hKP+A/IOuYSj+UyhDIYMAO2KA1AIIgsFe+K0Q2FF9CmAojBgYrwCCYPAPuSvUp1BHIwbGK4AgGPxD7gr1KdjRsAFhqKtAAPT2QTBCeqSAEB8pIORHCsgswX0MVCikUB+CfQxUKKRQH4Z9DFQopFAfin0MVISGKNSHYx9dg/GkqPCGgnsK8CmkqECBAtI1GNGKCnEowKcgn4J8ChQoIF2DMbWoMIeCfAr0KZSiQIEC0oENRynMp0CBCpKBAjw2FIK4IpBrBrlAgFMIuciQEwK455CrEjkhgOwVBXh3KARxARvIKYOcEMARbCCnGHJCAHewgZySyAkBjBgYrwCCYPAPJCzAqKBLIwbGK4AgGPwDCQtkKuTShaKAC3EBIicGuiAXCHAEImcGvSAXCHAHIqcG4CAXCDBsQIhTQADDBkQ4EQQwbECA00EAIwZHOIAgGNBECAvtH7h/wP7BiIHxCiAIBv+QwoKbCuM0YmDcBAiCQXvorjD/QfsHIwbGK4AgGPyDCgs7KpTTiIHxCiAIBv+gwsKbCu00S4AfAxWKaMgHG9zHiIHxCiAIBv8AwwKPCuE0YmC8AgiCwT/AsACnAjiNGBQACIKBn5itQI4CzZMCQn6lgFBfKSDDBoQ4BQQwbECEk0AAwwYEOA0EMGJwhAMIggFNmLAA/8H7B/QfjBgYrwCCYPAPLizMqTBOIwbGTYAgGLTH7wr4H8B/QOUfBCMd2BDUA4sKFCggOQ8K8IRAOrChkAcYFShQQC5g5IgAMlBxIwYFL4AgGNRJ3gpBBgpwuCHwRUGYZcgPEAlGDIxXAEEw+IcwFtpUaKckFCCVlAJCsKWA0GspIBcEcsMgFwhwhiEXCDDcEKCjQMwy6Ad/BMMNhzoKTCEw3RAkwnDD0o4CUwxMNwSNMNzwwKPAFATTDUEkDDccBDHdUCDBcEMwENMNhBAMNwT3KASzDP+xH8ExAp0y0CEE3TDIDYOcEMARhFwgwIhBwQsgCAY4scJCcEsgswT9MWJQ8AIIggFOtLCgzRL0x0CFIvAHsR/DDcFICsIsg3/8R3BkINCRwUBHBgTNEvzHQIci+Icq6Icq9MdAh2L4hyvohyv0x0CHoviHLOiHLPTHrQFKCjJiUPACCIIBTtCwEFwwyAmF3HDIsAGxUwEBDBsQOiUQwLABkVMDAYwYFLwAgmCAEzcsFMMGRE8FBDBiYNwECIJBe/iwcIdCGwojBsYrgCAY/IMrC78q/BSRoRCMzBKAyEBFaAj/ARL4MWJgvAIIgsE/1LJQrwJPjRgYrwCCYPAPtSzUq7BTHVgR1EWvCr0q9KpAwQbSNQyBvgq7KowYGDgBgmAAE60sBHEojBgYrwCCYPAPuCzgq9BTlIZCMNKBFYFchKsQrkK4ChRsIF3DEPir8KvCiIGBEyAIBjARy0JAh8KIQQGAIBj4ifwKbSkQWCkgp5OCK8QFgpBYKSAXxILcEACRlQJyRiBUVgrIBbYgNwRAZ6WA3BIIoZUCcsEuyA0BDBsQahUQwLABkVYGAQwbEGi1EMCIgQEOIAgGLiHOQiwKpiiMGBivAIJg8A/oLLSsIFcjBsYrgCAY/AM6Cy0rzNWIgfEKIAgG/4DOQssKdDViYLwCCILBP7Sz4LICWlFNChvIiIHxCiAIBv/gzoK+Cmg1YlAAIAgGfkLCgl8KIwYFL4AgGPgJCQt9KYwYGK8AgmDwD+4sgKZwVrMEITJQESwhwqoBiAxUJEuIwGIAIhfYpVAZAIALXlPYDkAoWlMYNiACIQCu0EthhhuMvRTIYJZBREIkGDYg2mpUBQIYNiDYKmcFAhg2INaKNQUCGDYg4EqEBQIYbhjcCgxmGUxkRIIkCOSxVRDDDcFrCmIwy1AiJBIMGxBwJRDAiAGSEyAIBntRxwJdHQJfCh2AQFfCsAERnLAQALMEJjJigOgECIJBityxEIvCoJsCMktgIiMGxiuAIBj8wz0LrinU1YjBsRMgCAZr4sPCM4uCLAoUVwTIcEMwm4IYzDKcCIsEVFcByA0pK8BwQ3CbghjMMqDIigQdgDDkppBB06WAAEmDQF7QmwJcMMRwQzCzAhnMMqhIigQjBgQugCAYxEYpC3xMzQqQRgCdJViRgQqCUBHrRAYqAkJFtBMZMTDuAQTB4ERUWQiEWQIWGTEwXgEEweAfTlrAWcG06K82EMIzBYT2TAEh+VJASLQUEJovBYT4TAEh+lJAqLQUEKovBYTqSwEhUFNACLUUECoxBYRKTAGhElNAiNQUkK7BiEBXCFuhbAXQFUBXGDYggogAugZDCl1BbAWzFUJXQFth2IAIIgLoGoxJdIWxFc5WEF1BP4VhAyKICKBrMKjRFchWQFthdAX+FIYNiCAigK7BqEhXKFshbYW1FUhXGDYggogAugbDKl3BbAW1FdhWYFth2IAIIgLoGozLdIWzFdZWaFvBP4VhAyKICKBrMLDTFdBWYFvBbQUQFYYNiCAigK7ByFBXSFuhbQUQFVBXGDYggogAugZDS11BbQW3FUJUgFth2IAIIgLoGoxNdYW1Fd5WEFFBRIVhAyKICKBrMLjVFdhWgFthRAUSFYYNiCAigK7B6FhXaFshboUSFVhXGDYggogAugbDa13BbQW5FUxUoFth2IAIIgLoGozPdYW3FeZWOFHBRIVhAyKICKBrMMDgdQW4FehWQFEBRYVhAyKICGDEoLgFEASD1zBpIQy6BiMMYFeoW6FuhboV6FagAAQZbgh6UwCDWQYYaZGgfxiE2RXuVqAgAZ0lcJGBikRokeVFhhuCvRXAYJYBRl4kQGFvBRAYN0iKIQiMwACG0YQgGE0QgFmGGHERYcSAwAUQBIPYgGmBaQFBhhuC8xTAYJahRmQk6B8GoXeF0BVmD45AdAUBMIJhuCEYXQEMZhlmpEaCLJguBUsJBUrJiEGRCyAIBqkSIP3DgIyvQLrC7MERoK4gAEYwDDcEqSuAwSwDjdRIQMZS0pUKgesKFCglIwZFLoAgGKRK4MwS1Ait2whC9gWCDDcE9imAwSzDjdhI0D8MAvsKsCvMHhxB7AoBYAQD6RcIMktwIwMVYEC/RI0INkIgtoF0EQSiUrYr2K4wbEAEAgF0EUSyUrcr2K5AAQgybEAIBQEMNwT/KYDBLMOO4EjQPwxC/Qq5K8weHIHuCgJgBMNwQ7C7AhjMMuTIjgRZMF0KlhIKlJIRgyIXQBAMUiVA+ocB2V+Bd4XZgyMAX0EAjGAYbgjCVwCDWQYd2ZGAjKWkKxUC8xUoUEpGDIpcAEEwSJXAmSXYkREDgydAEAzgQrSF0RR0VBgxMF4BBMHgH3xb8F+BxYYNiBXbUYEAhg0IFdtRgQCGDYgU21GBAEYMjFcAQTD4B98W/FdAsRGDAgBBMPATehbSVBgxKHgBBMHAT+hZQFOBUE0BIVVTQIjVFJBhA0LFAgIYNiBSTCCAYQMCxQYCGDE4RAIEwcAsUluoSwFGBbsURgyMVwBBMPgH3hZCWFixEQPjFUAQDP6Bt4UQFl6MYAwEGW4IYFQAg1mGH+GRoH8YBBMW1FeYPTiC9RUEwAiG4YaAfQUwmGXokR8JsmC6FCwlFCglIwZFLoAgGKRKgPQPA8LCQvsKswdHEL+CABjBMNwQyK8ABrMMPvIjARlLSVcqBPcrUKCUjBgUuQCCYJAqgTNL8CMjBsYrgCAY/IN6CzAsqNmIgfEKIAgG/6Dewv4KoDZiYLwCCILBP6i38MICro0YGK8AgmDwD+otvLDAbrhW+SvAwHBDQKoCGMwy4IVqBAMdCfwTh/wTpCH/RGpsEA4EAADgHgAAlxmwFE7kB86A2ftuphGRRAX+M0W+RAU+YtN1b4YJDkMtuI/4iI/UtX3b4sP1D0g0YbATLYMJTBFy+cht87cdTkCC0wx17SM+4iO2Tetn8ghOM/hTRBE+4iM+YrgNTNEQho/4SK3TvfE3HJeP1HpfkyIFcOFnroyuKYxOLg0PiEouzG3O7E2uDQgoqigo6CfI6odkDi1MrozsC45ODsiKSi7Mbc7sTa4NCAhojo4MCCioSMiqKYxOLg0PCOiKZgoubKwMCAhIy6UML43OeCOKgRB8xJ4pFIZach+x89o2+goyiIjCn5jHR2xdt30pcgC/92nflyIH+JHhunu7NvwFRmAe3Ed8pL752yAhEEz3EVu3eSs1MBhqyX3kGgWqBWgGfzkkf4oowkd8xEd8xEQtqMkJHGfxG2fyER/xEXuvbQt2iCQq8J8p8iUq8JH6pvODFIiQwp8OovERH/ERW+95+4VYgGHwER+pe7w32ASHoRbcR3zER+oaz41QYrB82vYNmgGpfMRHfMRHfOQcpMKJfMFpBv+JiIMABiKyzoSFoRa79xEf8RFDdKCQRhgIwX+myEd8xEfqvd4NuYFhqMVHeB+pdVu3bAqFoZbcR+z8rk1yIZKowH+myJeowEfqu8aNmiB4TJ8gmKwTQWKoxUd4H/ERH/GRmq5rK3+IgCgCMGS4bh/xEbumb8s/QBhq8ZFe5438YbB8xDgpDsFpqry+DdcCqiYgWAgf8REfsffbtk2I6DcxCckIH/ERH/ERHzH8gguIIgAbCAHAfKSmcx/xEXvXe6t0oJBGGAjBf6bIR3zER+r9rk30wRiQ6tZxE2xoBGBZcB/xkTrPaROWOBhqwWsfud+ACCn86SAaH/ERH6n7frfACkpwmqGufcRHfMRHfMTO99t+KQ7Baarc3k2Z4hCcpspt3lwnIMFphrr2ER/xEdvOe8udeAaksnkf8REfse29Ns0IY0Cqe7eNu4EpGsLwER+p9Zy3aAoFGAbeR+y8zg08wkocpJlKojGm44schp2AaPJrs0xYBOaxax/xER+xdAqDoZYcvy0fIpKowH+myJeowEd8xEfssaERgGXBfcRH6lzHbTNhGZDK5n3ER3zEjBccpBkqIJJ8pLr7/rZigiYiCn9iHh+xd5y2ZgcHaYYKiCQfqe6+742dwmCoJc9pC3yIJCrwER/xER/xkZrfbUOnOASnqXLcNswKZ0Aq20d8xEfsvOdts2D60ynygWGIfNpHfMRHfMQ4LRT/iQgf8REfMViHA/OReudpW3WgkEYYCMF/pshHfMRH6l3nbZtCAYaB9xE7v3Fjb2AYavER3kdqfc+vOUApnMgXnGbwEXOnOASnqfLcNniKQ3CaKs9xk6c4BKep8py3SYNocgLHWfzGmXzER3gaN0eESHCawUd8xEd8xEf6PjfiCglphIEQ/GeKfKTmfcRHzN3AKRrC8BEf8REf8RFrRoCAYcB9BM99xEdqeq9JiwJ58ENWFsbG9jYWRlcG9EMSxsb2NhZG9yYHRAQ0R0cGBBRVFBSEFVUURPS1BKTlUoaXRueS5pImY1NzY9cIEDAMuo/4CL77SE3v/D0KUNaBLIQfOAPmIz7iIz7iIzZM0ERE4U/M4yP2vu/mWpFIVOAjtm7X1oqwDEjlIz5S0zdtuwsSEEUAhgyXj/iIj9S8Tht0QZLhPuIjfV4fbUCDFP50EI2P1L3OG+hBw1DL7SM+4iN9XR9qgFM4kR84A+YjPuIj5kyRAMPgI3Ze04bIwADD4CO9j9Q4TZvvQSNRQU37iI/kt4/YtEEiUQHuIzzPG3VBkuE+4iO9fptnxCE4zZD7iGFTJMAw+Iid273JRyQMtfiITeO8KT84v4kRzeAjPlL3dW7yCspl+4iP1Pid39QhLATQUI9xQji/iUWE5CM+4iM+YpkQDTAM/jNFPuIjPmK5FQtDLTXtI7Z+2zcoMCGFPx1E4yM+4iM+Yus4bZAVE0MtN+0jPuIjPuIjds73xrlQAc3gIz7iIz7iIz7iI/Vt94ZboGS4j/iIj/iIWTJASCMMhOA/U+QjPuIjpguRSFTgI3V/5yYpkTDU4iM2rfOHKDAhhT8dROMjPuIjPmLreW25CgYwDLyP2LlBw1CLj/iIj/iIjxgzRCMwj037iI/UvX4bscQBDAOe+4i1UmS/5UTLYAJThFwcIByEj/iIjeO3HVZMAvPYtY/4iI/4iI/Y+d7bqsTBUIt++4g9VkjAMPhI7yM+4iM+Yuc8f5cBVeFEvuA0w33j/hMRBwEMRGSQBwlDLT7iIz5i8QmO4DSDj/iIj9S2nVtpQiEwj48YNkNTNITR+4iP1HhvWyJCxFCL7iM+4iM+4iN9T5uzAvObWIFE0uQjPmKGDg/mIz7iIz7iI/Ve37cacCGFPx1E4yM+4iM+4iM+4iM+Yr0GEhBFAIYMl577iI/YfF0bNwHx1DpuigmHwDw+4iM2K5Ew1OIjNs3X5giBZLaP2Lp9W6TDg/mIj/iIj/hIvdu7wRYUAvPUtBErFALz1LgZKjwMtdy2j/iIj9Q2rpv+giM4zVDXPuIj9c3nxjjxMMDl0z7iIz5i23VtjQtIhvtIfdO91TskwDD4SM3juGVKLAy11LaP2PSOH4RTOJEfOAPmL5H/HPb7QFUTECyEj/iIj/iIj/iIj9x6wIMU/nQQjY/4iH3bt/EiQAy13D7iIz7iIzWd4+ZoUAjMY/cmKnEAw3DzPmKMB40vIY1S5z7iIz5i7xKLRAU17SN2re+nBiGFTzSDrfuIj9Q4jVu+QyMwj4/4iI/UvK7bo8Hyp1PkIz7C07RZVjQC8/iIj/iInff5OQpQ1oEshC84zeAjPuIjPuIjtmwgAVEEYMhw6bmP+IjN5/flMUjhE83gI3Ve33avgGC3j9T7jtvkhMNQi4/wPuIjtl33ZppQDEjlI2cfACGFPx1EY/uIj9g4jtsnhcJQy+0jNm7TVm8ACU4z1L2P+IiP+IiPmLlDMzmB4yw3vfuNM5HIA9Dgx+1Nri2MLU2vjAzIqmyM7k0OCCiqSCjoJ8gqBghLy6UML41ORoYGxtQPJCCKAAwZrp32ER+x+7s3fIlFooKa9hG75nP7V0Cw20fqnect1eHBfMRHfMRHfKTeddwAC5TfxAokkiYfMVaDQmCevLZeCgegJqcFGoNoptzWTVkhkqjAf6bIH5DKR2q73w3WoBCYJ9ftESESmAf3ER/xER/xkb7XDXHiEZintn3ER3zEtundkhsahlrs3kd8pNbt3eAfICCKAAwZrrr2Edvu+9MNmJDCnw6i8REf8REfqfuevgcKKfzpIBofqe2+96cjIoDhBgMcpPCng2hsH7ltGifVB8jBz92bHBtZUxidXBoeEJVcmNuc2ZtcGxBQVJFQ0E+QVVMYnVwaHhAQlpZLGV4anQwNzI1JKizAMPiIj9S2ntt+g8JQi+0jtd7T5pwARcRUAYtP+4iP1PW+m7uEwlBL7yN2resme8Aw1HL7iI/guI8cfkCCFD7RDPl935CEFD7RDLbuIz7iI3W95xce4CCFTzSDj/iIbdu6GRM4EVH4E/PcPmLveH3yAR1S+EQz4HzuI4VPNEN+378QIdNPDAZhsxMPA1w+7SM+4iO2reNmbVAIzLPbpllQ/Rs2EZIPDEPk0z7iIz7iI8a/4BQNYdS7j/hIffO7VTI8mY/4iI/4iI/UeG1b9oEERBGAIcOl5z7iIzbf56Zv8AjMY+M+4iM+4iM+YvwGz4BU9u4jPuIjPuIjxvlgSVTgP1PkR4fkC4A0+UjN17SNJyyXj/iIj9R2jVuswfKnU+QjPsLnvDUzKBIV6D5S43tuyweFwDz8bfcSCkMtvY/YNY9bY4XEUIuP8D7iIz7iI3bO62ZJYQFRBGADIQCYj/S7j/iIffO3wUssDLXUt4/Ytc7bZkQiMI+P2HSNmziCBAwD7iN47iM57yM1zd+mqZAUDWH0PuIjBuqgMNRy+0i947cFGyx/OkU+4iO8zhs8ggREEYAhw7XTPuIjds/XByiQIIVPNEOu1yT1ADT4cXuTawtjS9MrIwOyKhuje5MDAooqEgr6CbKKAcLScinDS6OTkcmZsVeJg6EWPvcR22WAJidwnMVvnMlH7rrWTbSh+RlgipDLR26btg3f4BGYx659xEd8xEd8xAgdHoF5/MaZfMRH6r2mTXfCYajFR3gf8RHb3m0jJnAiovAn5rl9xN533mAjEoF5fMSmbf02Axyk8KeDaGwfuW1cN9SK5GeAKUIuHzFWC6iagGAhfMRHfMRHfMTyJRaGWurbR+ya122V4cl8xEd8xEd8pMbx3MojEoF5fMSm79raGxqGWuzeR3yk1nf9JgUipPCng2h8xEd8xN5p3BwdHoF5/MaZfMRH6t3G7XliEZjHR3zEvmnehCkUhlpuH7HxnrbSA4ahFtxHbtxHfMSWIRzBaYa69xEfqXvdNuQEBxgGH+l9xEfqeq/tdeIRmKe2fcRHfMS2dfrOAxyk8Ilm8BEfse29N00I6E+nyEd8xEd8xEd8xAwfsn/DJkLygWGIfNpHfMRHfKTm950URAY/bm9ybWFsaXplZEBWZWN0b3JAQFFFQkE/QVYxQFhaLmV4aXSHKRAhhT8dROMjPuIj9l7jJm2ASFTgIzyfH5+DFD7RDD7iI3We16T7ADn4uXuTYyNrCqOTS8MDopILc5sze5NrAwKKKhIK+gmyagqjk0vDAwLC0nIpw0ujk6G5ubk/Byl8ohl8xEfqXM+N3aH5GWCKkMtHbhvHrdIA+y0nWgYTmCLk4gDhIHzER3hat9uGRWAeH/GRWqd5Qz6AJCrwnynyJSrwkb7mzXLiYajlpn3ER3zEtm37OgUipPCng2h8xEd8xN7v3OYVFOz2ER+p8VsntQbMxc8PyRdR2Ryd3Fvel1yY21kZkNUPSRgb29tYGN2bHJDVD8kcWphcGdkXHJ0ckBWVXJjbnNmbXBsQENAcHRkQENAcHRkQENAcHRkQUFYQFlRRkNUPyRxamFwZ2RccnRyQFZVcmNuc2ZtcGxAQEAxQVFGQVQwMUFBRkNUPSRgb29tYGN2bHJDVD8kcWphcGdkXHJ0ckBWVXJjbnNmbXBsQENAcHRkQEBAMEJCWSxleGp1LmkvajQY4SOFPB9HYPnLbPH+zAUvhRH7gDNiN03bq8AjM4zfO5CM+Uu96bY0FicA8PuIjPmKmDgowDLqP1HueW3uCAwzD7iM+4iO1bdfGD0EBUQRgyHD5iI/4iI/4iI+YIURi+YiP2DqNmzkFMlmINOU4bagPCxBFAIYMV+8jV9UghT8dROMjtd33xk6wJA7STCYwRchl6hTIZCHSlOO8USYsAvPYtI/4iI8YucHBUEt9+4h9RygPEAHMves+bYsJjcA8PuIjPlLX9m6aCcuAVPbuIz7iIwYrcQDD0Os+YrsGFxBFADYQAoD5SE3nPuIjNk/3Jg5hSVTgP1PkR4fkC4A0+UjN972dLngRUfgT89g670uRA/i0T/u+FDnALwDSZMoRxoBUOE2TxAPE4IetzO2MDg3IqmyM7k0OCCiqSCjICUvLpQwvjc4lTUZGJseEDxpgGHwEt30k333ERA0MwWkqHzH0BIehFtxHfMRHarveSWAy8fMT80PyRZVGlvd1VhcmRwZk9UNiVzZG9yYHVDX05kYn98b25DZUJ2dXluRm9gZEVeZGFzbGVtb0RlbHVgYEZPVDEsbG9jYWRvcmB1Q19OZGJ/fG9uQ2VCdnV5bkZvYGRFXmRhc2xlbW9EZWx1YGBAQ0R0cGBAQ0R0cGBAQ0R0cGBBRVFBQEhKXlUoaXRueS5pJ2MhJS+EQz+IiP+IiP1HTNn3LAUjiRHzgDdu+0KSc8wDDctY/4iI/U9X6b40PzM8AUIZeP3Dav26zDcflIvfO2GU48RUMYvY/4iI/YNp0b/UIiMI+P1PfeWyFDMyCVzfuIj9R3v1v8ADEdiGTeDsaDNDdNG/jEMyCVzfuIj/iIfdu6kTsYD9LctG7bDYvAPD7iI7We79Y78TDUctM+4iM+Ytt7brUJjcA8PuIjPlLXeW2fEBIQRQCGDFed+4iP2LreW/UEJDjNUNc+4iM+Yt81bp0FD0MtPuIjPuIjPuIjBm5gMNSi+4jlNjCC0ww+4iO1XtPWaGAITlPZPGnHDn7awujk0vCAqOTC3ObM3uTagICiioSCfoKsmsLo5NLwgICuaKbgwsbKgICAtFzK8NLoZmBkcMwXgmGoBfcRH6l7nDfrikiiAh/xER/xER+x9Zw22gqFoZbcR2zd3g15gfnTKfIRH6lvvLZIBYShFtxHfMQQC5g/nSIf8REf8RG7ZmAE5sF9xEdqvK9tViGRqMBHanvv70ZBCp9YJKKubYNUOBhq8REfMdYFTaIC/5kifzkkXwCkyUdqnu7vXt8Ne4H50ynyER+p77y2ZIMLiCIAGwgBwHykpnMf8RGbz2sDVUgY4PJpH/ER+5xQBqS6fcS2b9uCIRhgGHYf8ZG6z+3Tmgon8gWnGXxhIYCGemrdNuSHSGAev3EmH/ERH6n72rZggiYiCn9iHh+x+bonoQeIwQ9bmdsZHRqQVdkY3ZscEFBUkVCQE5aWSxleGp1LmowMjowNLziX7SM+4iM+UvP9ba4RDNIMFRBJPlL5CIkNDH7YytzO6NCArMrG6N7kgICiioSCnLC0XMrw0uhiaGBurHXiKRrC6H3ER3zEtnPeQBMWYBju2kd8xEcMvoDwn4iwxIhJogL/mSJfogIf8RGbpm9zf2CAKAIwZLjq2kfsMkJLHKSZSqIxpuOLHIadgGjy6bvn8aOZBKcZ/CmiCB/xER+paTu37gZGcJrBR3yk1vPewBkaBrj82kd8pM5pmlRmBz9tYXRyaXhAVHJhbnNmb3JtQEBRRUJBP0FWTWF0cml4QEBXNFNwYWNlQEBAWi5leGl0MzA3MNYIcWQ+Yus2be0LikQFuI/Ut44bpYTCUMvuIza906ZJIQFRBGDIcN20j/iIffO7yTJEEhX4zxT5EhX4SI3nuZlSLMAw1LeP2Phd2/XBBUQRgA2EAGA+UtO5j/iIzfe3tR8kEhXgPtLj+cEGNEjhTwfR1LWP+IgFHzQSFdS7j/hIrvuI3VYowDDwPmLrN222EgpDLbuP2DSvW2FE9adT5APDEPm0j/iIj/iIj1g7RCRRgY/4iI/4iI/UPd8b/EEiUQHuI32+W29DIzBPbfuIj9R6jZvxhDIg1e0jts3nJokgCcxT2z7iIz7iIz7S9739EjQRUfgT8/iIzeu1LRNAEVH4E/PcPuIj9q33Nv1gSBAFSMdRCkxI4U8H0fiIj/iIj9g7nZuyQwREEYAhw2X7iI/Uvb2bcEMjMI9d+4iP1Hrd35yCFD6xSETN80coUCGFPx1E4yM+4iM+4iO2jttnKTAhhT8dROMjPuIjPmLvdW22D47APH7jTLeP+IiPGDQCxFCL7SM+gt8+UtM7bpoVkS8hjVLrPuIjPmLrdG2nEZFEBf4zRf6AVD5i0zZttggNMAw+4iM+UtM4b5QTD0Mtdu8jPuIjtm3TRqmAAMOw+4iPmG/CIzCPTfuIj/hIXeu0hUocDLXYvI/YOQMDDIOP9D5S5zRvwg6RRAX+M0X+gFQ+Ut+0boUIikQF9e4jPU8bq8QhUcF++4itQjhIM1RAJPlIhdP0bbIVCTAMPmLrdm6VEQ7SDBUQST5S4TS9WydDwlCLj9R4zZ+nwIQU/nQQjY/4iI/4iL3fvE0uRBIV+M8U+QNS+Uh917klV0wSFfjPFPkSFfiIj/iIjxh0QjIglY/UNU8bu4Jy2T7iI3V+69YM0TDA5dM+4iN1r+NGr6BkuI/4SI3fu0FDNALz2LiP+Ejd67uhSyQMtfiIXee8OVc0AvP4iI/4iK3juIU3NALz1LaP+Eit67clGjhAFAEYMlw17SM+clwRUvjTQTQ+4iM+Ut91b+YNjcA8du0jPlLrOm/zEglDLT5i17tuzwgRQy0+YtM+gts+UtP7beYPDRBFAIYM1+4jPmLhCBEwDD6C2z6S7z5S07x9AQdS+NNBNLY78TDUYvc+4iM+Ytv7bdUKjsA8tV7fvW77jTMZN4QTEVMFLD7tI3XP0wZYMRUNYfQ+4iM+4iM+Yue7bZUFjUQFPuIjPuIjPmL8Eg1DLT7iIz5i1/1tng4KQy22j9Q7XhvhwcNQy237iI/4iI/4iHFGGALz1D5i6AcSEEUAhgyXnvuIj9j9vVv9gSEwT03f9m7gCE4z+IiP+IiP+IhpTzwMcPm0j/iIj9h33VtsRPEgjY8ccECEFP50EI2P+IiP+IiPWDaDIzjNUNc+4iM13t/WTKEw1HL7iJ3TvaFKHAy15LuP2C2Cw1CL7iM+4iM1jfd2jOAw1NL7iI/4SE3ruc0+TBIV+M8U+QNS+YiP1D29GzAEw1CL7iM+Uvd5bYgKUERMFbD4tI/4SG3jvQkjOMAw6D7iIz5S0zptsQgOQy23j/iIj9T0fZ+ShBQ+0Qy27iM+4iO1je+HByGFTzSDrfuIj9R5bZu3ASJRgY/0NG2eBZDAPD5y+4iP+IiP+IidGngANTkt0BhEM+G9/xyIP0VAI/lIIxHRZPoMikQFuo/U+Z3bNYXCUMvtI3Zu89cY8CCFPx1E4yM+Uu81b6AQEhBFAIYM1537iI/Y+r6T4APQ4MftTa4tjC1Nr4wMyKpsjO5NDggoqkgo6CfIKgYIS8ulDC+NTmaGBseECZyIKPyJeW4fsXmbtvAJh6EWH+F9xEfs297NdwHBbh+peR63zoplQCof8RFbp3NrPlj+dIp8xEd62z7+AAkpfKIZfMRHfMRH7Ly/7ZbCAqIIwAZCADAf6Xcf8REbz+97DWCQwp8Oosl9xEfsF8FhqOX2ER/xkZrO9zsMYJDCJ5rBR2r9vs0dQQKiCMCQ4dJzH/ERu9978z5Y/nSKfMRH+ts+yIAHKfzpIBof8ZF6v23jLGAE5vERH/GRfd8NdKLxJaRRat1HbPvGzXriEZintn3ER3zEvuvcCBEUhlpq3Uf6vbftiuzfsImQfGAYIp/2ER/xER+x9Ty3+IUFGAYf8ZH63nM7pJAmJ3CcxW+cyUd8xL73+toDHKTwiWbwER+x7xs3SASpaAij9xEf8REf8ZG+323YwRCYp9Zrc0aAgGHQfQTnfcRHanq3rVQhGZDK3n3ER4z9AJGowEd63LZtBqdoCKPefcRHarzPLbQBmpzAcRa/cSYfuW2aNtWHxKGm0UGaSTJBBQcYBh/pfcRHahu/zXrBEJin3mkDJnAiovAn5rl9xOZ1294PEIkKfKTPcZtkeC4f8REf8REfqfGavsmAByn86SAaH/GRetd7C054GODyax/xER+pa/021oNFooJ69xEf8RFDj1gEpxlyH7HpGzfCiOvfsImQfGAYIp/2ER/xER/xETu0cATmsX3ER3zER3zEphEiYBh8xMZ9BM99pKZ33WAbFIkKdB+p8z63Y4Lk36ii8BEfsVuD67ecaBlMYIqQiwOEg/ARe+fvWwxgkMInmsFHap23rZbBEJin7m8DbHgyH/ERH/ERH6lzXLf+A0SiAh/pd9vIEbqIKPyJeWqa96XIAXzap31fihzgR4brjAMmpPCng2h8xEd8xEdsmubteKLxJaRRat1HbJvfC5ziGb/d9hot54LLyy04Om21DsqAVLmP1Dt/27oDNDmB4yx+40w+ctu4bakMz+UjPuIjPuIjNY7XxtjwZD7iIz7iIz5S5zptzAqGRAV1nh9zACI4zeATzWC3CgpDLbmP1DafG3BF9bsvsPxTRDWCT/tInfuIj5BEA2Dh5yfmh0QsbC5t7GuOTi7N7QyIqOqHZAwtTO6LTi4sjW4OiAhojo4MCMjqhySMje1tLIzuTQ6ICEgGCGiOjgwIKKooKAgIS8ulDC+NLgYHR8ayJZg/nSIf8RG7pntjRXh8CWkUH/ERH6lpmzfPCWVAKttHbPuuLdwBDCKi8CfmsfnblyIH8HGf9n0pcoAfGS6d5421ovkZYIqQy0dsve6NeMHBbh/xER/xkZrvcZOHyP4NmwjJB4Yh8mkf8REf8ZG673FrV1Cw20d8pM7v3aIhlgGpfMRH6l7v7dMgAqIIwJDhumkf8RHepg1yohmQykd8xEdsu9ZJC+Xw80PyFcTG9jYWRlf21RbmVhfGxpb3ZVc2Rvcm9xXGlnbmVkYGVPVFVGYWVsdG9xXGxvY2FkZX9kUnF5ZGNwc0R0cGBAQ0R0cGBJQVBFUUhPW1BKTlUoaXRueS5pLmkuaS5pLmknbjAY/gNIM/RRThI7Z934aM8EhUUNM+4iM+UtO6boQKDzAMd+0jPuIjtY3nRj7xMNRy0z7iIz5i3zdt9w4KMAy6j9R8Tl9agxT+dBCNj9R3j9s1RMNQy037iI/U/Z4bY4JSNIThIz7iI8YpcUhUUOs+Yu8JjcA8PuIjPlLb9m3bCcaAVLmPWOMDNDmB4yx+40w+cts8bpMIVNEQRr37iI/4iI/4SE3TtD1CHJiP2Lqtm2iBBAzD7iM+4iM+4iM+4iMGaLD8DDBFyOUjPmKZC5gALIuP+IiP+IiP+IiP+Eh927vRMhgSFdS9bZgHCkMtuo/4iI8YOEIkUUG9+4iP5LqP1DRfm+lBIlGBj/iIj9ilRCJRgY/Y9G7buoEDDMPuIz7iIz7iIyYKAf0r8fiIj/iIj9g7zZPcA8Tgh63M7YwODciqbIzuTQ4IKKpIKMgJS8ulDC+NziVNZmbmxngLiMv2EdKngBz8/MT8kMyhhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBRRUFBQFhabmU4aXRydzM5BhgggREEYAhw7XTPuIjN23fRq4A/Sa2ANJk+4iP1DvNk9Ds4KctjE4uDQ+ISi7Mbc7sTa4NCCiqSCjoJ8iqKYxOLg0PCOiKZgoubKwMCAhIy6UML41uJiZG5lIDJqTwp4NofMRHfMRHfMRHrPZhAYbBf6bIR3zEiieUAalsH7FtHrdMhElgHhv3ER/xER/xkZqmdfNfaATmsWkf8ZH65nujnniKhjB6H/ERH7Hv+rbIhEVgntr2ER/xEZtmSATm8ZEa53djX0gkKvCR+tZrS3RoBGBZcB/xkXqvezM/uIAoArCBEADMR2o69xEfsfs7Jx2wws9PzA+JWNhc2tjXHJ1cmtsZEFHVD8kYWpjcF51cWBrdHBAR0BwdGRCQ1Q9JGBvb21gY3ZscEBGQDBDQHB0ZEFBUUVAQEJaWSxleGp3dTjQDUvmIj/iIbeu94SoYDLXsPnLpAY/gNIM/RRThI7bN63YqcUhUkNs+YoMTTtEQho/4iI/YNm3bp8Xyp1PkIz5i+4hxPywWUBEfsCxOURi6gcNQC+4jPuIjPuIjNmtw/QMSTRjsRMtgAlOEXD5i73t/gAEKUvjEIhF2bdvxA4U0wkAI/jNFPuIjPlL3dW29BE1EFP7EPD5i9/Rtlg6NACwL7iM+Uu/3bbcMzJ9OkY/4SI3nPclQ4BZ+6N6+5ujk0tzOgOboyICAsoJ+gqx+SMTC5tLGvubo5NLczoCIqn5IxtDC5L7o5MLS6OaAiIDm6MiAgKx+SMLY2N7Gwuje5ICIgGSAgGKAkIC0XMrw0uhI0wE08WOW5kYGleYm9FbnRhYml1Y2B0RV5kYXNsZW1vRGVsdWBgQ0FPQTVPVDAheWJgeEhAQ0R0cGBBRUJGT1Q2JXNkb3JgdUNfTmRif3xgZEVeZGFzbGVtb0RlbHVgYEZPVDEsbG9jYWRvcmB1Q19OZGJ/fGBkRV5kYXNsZW1vRGVsdWBgQENEdHBgQENAOEBKTlUoaXRmecBwxDLbaP+IiP+IjVV5RBRBT+xDw+Yuu67UuRA/g17dO+L0UO8CPDdff2baMGBUMtPmK7FBIQRQCGDNdN+4iP2Hi+G/WCBEQRgCHDtdM+4iM3reeGSSEBUQRgyHDZuY/4iH3zuSVTLMAw1LeP2Dldm/NDIjBPTfuIj9g+xSMwj4/4iI/4iJ3ru7VPKANS3T5i3zhNsrODn7YwOrk0PCAquTC3ObM3uTYgoKgioaCfIKumMDq5NDwgoCuaKbiwsTIgICAtlzK8NLqZmBoay05IBqTykdqma9t8sCQq8J8p8pdD8gVAmnyk5uneeiUOYBjs3EfMViEBhsFHapu/LRRCAqIIwJDhynMf8RFb53PbVFAEpxnq2kd8hFThBj93b3JsZE1hdHJpeEBUcmFuc2Zvcm1AQFFFQkE/QVZNYXRyaXhAQFhaLmV4aXTGjnABUQRgAyEAmI/UdO4jPmL3+26tFk1VND7iIz7iIz5iqQ8MEEUAhgxXbfsISQ8MftjK3M7o0ICsysbo3uSAgKKKhIKcsLRcyvDS6GJqYmoMEWIMIqLwJ+bxpcgBfNynfV+KHOBHhqv3ER+x9Zo2XQvphwlAkXzER3zER+z9vk0QQZGooKZ9pN93o6ZYgGGobx+xc5u2ZAIoIgp/Yp7bR3zExu/eeBOgoiGMevcRH/GRus55a1VIGGq5bR/xEdslaCKi8Cfm8RG7x3OzPWCAYcB9xEdw3UdIfb3wA1c3h/YlFja2BvRDYlc2RvcmB2RlVTZG9yYHBGT1QxLGxvY2Fkb3JgdkZVU2RvcmBwQENEdHBgQENEdHBgQUVRQUhEVCElUUZGVVNkb3JgcEBKTlUoaXRhdTUyNjrA6NACwL7iM+Uu87bbsNTdEQRu8jPlLrtW2qE07REIaP+IiP2HaeG7/DIzCPj/iIj/hIzev9aQpUSOFPB9H4iI/4iI/4iL3Xu3lTLMAw1LeP2Pnd27JDBEQRgCHDpfuIj9S9zRsnwjQglc37iI/4iI/4SE3XtDEzKBIV4D5S47tt3A4GMAx2nxuwxMFQy637iOEnPALz2LSP+IiP1PZtW7UD8gARwNj8bocJDTAMPuIjPlLXNm7DDQ0DXH7tIz5S6zZ9LwpS+NNBNDWNkwQD7OCnLYxOLg0PiEouzG3O7E2uDQgoqkgo6CfIqimMTi4NDwjoimYKLmysDAgISMulDC+NbiYmx8ZwExyBeXAf8REfqesct0aLRmAeH/ERH7F3ujZsiAYYhrv2ER+p+103SYjkqmsfsfX7NkWFZEAqH6nt3DbfAiLDfcQEKyaBeWrbR3zER3zER+x8x0mXAnfw8wPzQzKHFiZXRvYFRycHZEUlF+Y2Z/Ym1wYEBDRHRwYEFFUUFAQUVCRkBRMDBKTlUoaXRueSZvQHhwAsS03bFvpgCMCy+IjFJjTAMPiIj/hIXeO6PSs0AvP4SG33vN84k4lPPAy12L2P+IiP2LfNWy5BExGFPzGPj9g9v9voRMNQi4/4iI/YNq6bscQBDEOO+4jZWjQC8/iIj/iIvd+0xTMkDLX4SJ3XvX03NEVDGL2P+Eit67UpTkCC0wx17yM+4iO2TfdG/6Bcto/4iH3rtp03NAxw+bWP+Eit6725KygZ7iM+Uuc3b/0LjuA0Q937iI/UN89bqEIiMI9d+4iPmPRDIwlEZRCPj/iIj5g2RMNQy237iI/U/b6bcgMDDIOP9D5S6zZvpArLgFQ+4iO1rfcWiJAw1NL7SL/rFjrR+BLSKHXuI7Z95xYOYUlU4D9T5C+H5AuANPlIzfe8nT9IQBQBGDJcde0jPmLXtG6kDgowDLiP1Htu22wEMzmB4yx+40w+Yo4RkUQFPuIjPuIjPmLT9G7ND5BEBf4zRb5EBbyP+IiZPixAFAEYMly3j5yZghT+dBBNvddWnbD4EtIoPlLXvH4XD1L400E0to/4CE/v1guxMNTiIz5S97huiAkOQy26j/iIj9S1nZ9/wCQ4zeBPEUX4iI/4iK3TtM0yRBIV+M8U+QNS+UiN57pFEywRUfgT8/iIj9juwSJRgY/4SE77iD1OPALz2LiP+IiP2HaN2ypC5EtIo9S5j/iIj9S0vZ/AghT+dBCNj/iIRU48A1LZu4/4iI/Ydr1btYEhAMuy12YZ8TwRUaVABDA+ffd8fnQKUvjTQTR1j9uxxMFQS877iEE/OP+HRNJU7z7iIz5ivgRORBT+xDy3j9g9jZtsgsNQi+4jPuIjdY3zFjsBCU4z1L2P+IiP2LZu2zaBERAZQkQXgRRO5AfOgJl7AwMMg4/0PlLr+26GB1BETBWw+LSP+IiP+IgNVlBFQxj17iM+4iM+4iN2vuc3IiGFTzSDrfuIj/iIj/iINU48AvPYtY/4iI/Ydm1XsUI2r4tdcLrcNa+LXemYLGdzweXlFhydNuSJxpeQRqlzH7FtnrddB2VAqtxHap6+zb6iDCKi8Cfm8RFb121fihzAr2uf9n0pcoAfGa67t3P7jFAE5rl33G+cyc4jFMFpBh+x6fu22AqFoZbbR2zdxm2VQpqcwHEWv3EmH/ERG8dr407oIqLwJ+ap7d6XIgfwaZ/2fSlygB8ZLjs2uH7LiZbBBKYIuThAOAgfsXk7t+IFJ8N9xEd8xEdqvs+NukGRqED3kVrH8TMMgJDCJ5rB1n3ER2r9ti2xYhKYx8Z9xEd8xEd8xM752rwlnp8Bpgi5fMRH7LrGbT/hYYDLr33ER3yktu/ceAmciCj8iXluH7F7XDfbiUdgHhv3ER/xEdvWd4NfYBhqwX3ER+p7x+3RgqkmIFgIH/ERHzH3icaXkEapdR+xb9wmFZDCz1cQmVrdHN1XW5hbXRgbW96XXdkY3ZvcVxhb2plbGRnQHB0ZEFBWEFZQURBUURBWUFHQ1xKQlksZXhqdS5pLmkuaS5rhTjwDUtm7j/iIj9j2Ttv8AgMMw+4jPlLfO38+ClL4RDP4iI+QGAVg4ecn5odELGwubexrjk4uze0MiKjqh2QMLUzui04uLI1uDogIaI6ODAjI6ockjI3tbSyM7k0OiAhIBghojo4MCCiqKCgICEvLpQwvjU7GxgbGoBkWYBh8xEdqnL+tMUERnGbwER/xEcN9gP6VeHzER3zER3zERwzwwAGGwUd6H/ERH/ERo514BOaxax/xER+xbT23zwdDYB57z22+wAz+AYkmDHaiZTCBKUIuH/ER/zkQf4qARvKRRiKiyaYPrt9yomUwgSlCLg4QDsJHbF7fjZyhGZDK5n3ER+qczs8xwEEKn2gGH/GRerdpU66IBObxG2fyER/xER/xEZOXWCQqqHcfseudtkiI4/IRW79rw5U4gGGoax8xY4cGiCIAQ4bL9hEfMc6JRGAeH7Ftm7/OgAcp/OkgGh/xkZrfaRLWKvzIlc2VydmVAf2Q2JWN0b3JAVlZlY3RvckBAVn9kISxsb2NhdG9yQFZWZWN0b3JAQEBzdGRAQEBzdGRAQFFFQUFYX0tAWm5lOGl0V1kgIMUPtEMPuIj9X7jFlkgAVEEYMhw+YiP+IiP+IhFI0AMtdw+4iM47iM1vee2L7FIVFDvPmLXPH+KARBS+EQz2LqP+Eit87VZPxyZj9g0vpsugRMRhT8xz+0jds/zFokwCU4z1LWP+IiP+IiP9D1vogkLQy237SM+4iOm28AIzIP7iI/Uel0bY8U0IJXN+4iP+IiP+Iid87n5MzyXj/iIj/iIj9Q5btu2RPYPSDRhsBMtgwlMEXL5iI/YdW2bfwXzr8TjIz7iIz5ilAiU4DRD3fuIj/iIj/hITdO1eUocDLXYto9YaIXDUMvtIz7iI7ZO84bY8Fw+4iM+4iM+Uue5buMPR+YjNr3fxj6hDEhl+4h9372hKiQMtdi9j/iI1T8o2O0jPmLf+n2UAQ5S+EQz+IiP1PteW+mCJTjNFDmLJDaF40uRA/j17dMmePAAw3DXPuIjPuIjPmL+CBIQRQCGDJee+4iP3LRd262EAgwD7yM2ze82bHD9AxJNGOxEy2ACU4RcPmLzdm2VC43APD7iIz5S3/VuwQ/WDxOAIvmIj/iIj/iIj/iIj5j3RDMglY/4iI/Yt43fe8AjOM3gTxFF+Ih947VpIkQDUvmIj/iIj/hITdO8DU8kAvP4iG3ztUU7GBIV2Hxt6gsSEEUAhgzXTvuIj9w1vZu5wSFRQb37iEEmMILTDHXtIz7iIyYN0QxIZe8+4iN1v9O2LpFIVOAjdq3btilxMNRS5z5i7RIKQy26j9i1jls3gRIRhT8xT83j1l7Q/AwwRcjlI/aO44ZegPzpFPmIj9iyxDEglX77yHU4SOFPB9HYPmLvPG7eDYzAPLiP+Eit67ThRyTAMPiITee8ZRMQVd3vNmgh/ZxDNZNP+4iP+IiP+IgpFii/iUWE5CM+Yv8LDQNcPu0jPlLfPW2CDI3APDbuIz5S3/1t9hIKQy26j9g1b1u9RCJRgY/YNU9bu0EjMI+P+IiP+IiPWGFBI1GB/0yRPyCVj1guhQREEYAhw2XnPuIjNp7nVimRAMPgIza910ZoUQnM4zfO5CM+4iM+4iO23utnGjAVTuQLTjP4wkIADfXcd2+XBwkwDD7iIz5izwfXPyDRhMFOtAwmMEXI5SM2r98mvSABUQRgyHDpuY/4yE3rty0zJBIV+EiN670BTjjAMOw+4iM+Ytd9b5YSBkMtvI/YfUUZREThT8zjI7au274UOYBf2z7t+1LkAD8yXHdv79bN0AjMY9M+4iM13u+WzCABUQRgyHDttI/4yF3jvZlKHAy15LWP2GRE9m/YREg+MAyRT/uIj/iIj9h0bVutRAIMg4/YNI9bdMUjMI+P+IiP+Iit4zuJMMAOftrC6OTS8ICo5MLc5sze5NqAgKKKhIJ+gqyawujk0vCAgK5opuDCxsqAgIC0XMrw0uhmZGZwzNag+RlgipDLR+ydty0VgsFuH/ERH7F3O7foCadoCMNHfMRH7LumzVkiAYbBR2y6z20QQWGopb59pN95g12oJCrwnynyB6TykZqv7bvfaXN2qCQq8J8p8gek8pGar+2733HzVFAEpxnq3kd8xPIZFIkKcB+p89s+Bgop/OkgGttHfMRHfMRHfMS6IQxgGO6cP9yAqXAiX3CawRcWAmio59Z7+34gLKAizD4BKhrCqHcf8REfqe2btn4Jh6EW3Ed8xEfsus9NfoFhqEX3ER+p73230ghLogL/mSI/OiRfAKTJR2y65o/nQQp/OojGR3ykrm3eSCUOhlpw3Eess4H50ynyER+p8703YgimaAjDR3yk7vPc5BMcgXlwH/ERH6ltWzfzAgVphgqIJB+pLPaAYajF9hEfwW8fMfWEJfMRH/GR2q5746x4fAlpFB/xER+xdfq21gfmN7EFkKbbR3zEgB0siQr8Z4r86JB8AZAmH6lvGrdQhAkYhrv2ER/xER/xkZquc8tskIAoAjBkuHbaR3zkrvvagCMMYBhufjfeigUYhvr2EVu/c7ONQATmyW/dR0x5omGoxUd8xEfsm64tPaEBhsFHfMRHarvmSZwBdvDTFkYnl4YHRCUX5jZn9ibXBgQUVSQU9BNk1RRGJ5eGBwR0RTMFFzZWBgQEpOVShpdGNyODA2ORC5ZEBf4zRX50SL4ASJOP1Hd9kxADwOCHrcztjA4NyKpsjO5NDggoqkgoyAlLy6UML40uxmamxqghGIZafIT3kbrfbTt2aIAoAjBkuHQf8ZGTUJDCnw6isX3E5AsQ/4kInK5zoy9A/CcicLrWbdAA8Z+IwOl6t0sDxH8iAqdr3jINEP+JCJyu+xN6kMKfDqLxER+paz03xINkQCof8REfsWSJAxgG3fYRUm/APvyQlYWxsb2NhdGVAf2QhLGxvY2F0b3JAVUNvbnRyb2xPbkN1cnZlSW5mb0BUZW50YWNsZU1vZHVsZUBAQHN0ZEBAUUVBQVhRRUFVQ29udHJvbE9uQ3VydmVJbmZvQFRlbnRhY2xlTW9kdWxlQEBfS0BabmU4aXRuaS5pBlxBPIAEcDcfW7iDl1EFP7EPDZ/+1LkAH7u074vRQ7wI8NlxxHIA0QAc/e72Rs8AvPYtI/4iI/4iI9YOsQjMI+P+IiP+Ejd87u5FlQSFfjPFPnRIfkCIE0+svO3mRog/hMROG3ThmqA+E9E4LRdmzoC4j8RgdO2bbwNjuA0Q137iI/Uen1brgHiPxGB0zZuwQqVRAX+M0V+dEi+AEiTj+x8b9IKiP9EBE7bukUrIP4TETht51Z9gPhPROC0fVu4gnLZPuIj9U7n5tqgSFSA+0id97ZtPxBZ7iM22YD4T0TgtL1fdYCCFD6xSMTN87bogPhPROC03ZuyRDIglY/YNN9bK8QUEBlCRBsgESXR+PTd87URTjiC0ww+4iM+Ytv0bYoOiP9EBE7bvJVCINjtI/Ze9+Ud8YzfbjsthnPB5eUWHJ222IJGYJ4av/v89htnsksHxH8iAqdv2jAdEP+JCJy+a/tlQPwnInD6tg2YAfGfiMDp+7ZgBsR/IgKnb9wGGxD/iQicvnMjbED8JyJw+tYNfAHxn4jA6Xu3VoNsMrQLkXwpcgCf9mnflyIH+JHhsvAFxH8iAqdv3sQXEP+JCJy+e8OHsCQq8J8p8qND8gVAmnzER3zEpgmOiCj8iXkMkwHxn4jAaZw2WQdlQKrbR+qdry2TAfGfiMBpvLbLB8R/IgKncdusIxD/iQicxm/LnHgYarltH/ERH7FtG7dFCsR/IgKn8dyuIxD/iQicxnFzpED8JyJwGt9NVkFhqOX2kdrecYOkQPwnInAa7+2RAvGfiMBpnLdGCsR/IgKncZ30dgs/cHVzaF9iYWNrQD8kdmVjdG9yQFZWZWN0b3JAQFY/JGFsbG9jYXRvckBWVmVjdG9yQEBAc3RkQEBAc3RkQEBRRUFBWEFFQlZWZWN0b3JAQEBaLmV4aXSkSgE3+PmJ+SGZQwuTKyP7gqOTA7KikgtzmzN7k2sDAgKaoyMDAooqCgoCwtJyKcNLo7N2AuLB7d5eKRD/iQiczmmDpUD8JyJwOq8tlgLxn4jA6dw2WQrEfyICp/PbSCsQ/4kInM5xw45A/CcicDrPLTsC8Z+IwOlct1oFhaGW20dqm7dNOwLxn4jA6Xy37QjEfyICp3PeuCMQ/4kInM57EmMAGPywlbmd0aEBWZWN0b3JAQFFFQkFOWFpuZThpdHF2ODQ2KPC4ktIo/hIbee82T8oGe4jPmLfOm6XCkjREIaP+Ih1RyD+ExE4rdNmnVAAw+Ajhj0BCU4z1L2P+IiP2He9W6oB4j8RgdN6bf8TiP9EBE7ruE1LIP4TETit32bvoADDgPtIzeO78SNcQBQB2EAIAOYjNZ37iI/cdN0bN4MjOM1Q9z7iIzXe63ZaIAnAsviIj/iIj/iIj/iIHSJEDLXgPuIjPuIjPtLzu4E3OILTDHXtIz5S67pthweMwDw+4iM+0tO8mSsol+0jPlLvuW7vE40vIY1S5z5i3/hthBWU4DRD3fuIj/iIj/iIne+6rU44gtMMPuIjPmLbuW6wBw1DLT5i0z6C2z5i4waHRAU17SPm2+AUDWHUu4/4SK3XuXEmKAy1+AjvIz5i7AkOQy26j/iIj9S2TRu7gSMwj4/4iI/4SE/rJNmAeviRK5tL0ysD+iGxKxuje5MDsvohmUMLkysj+4KjkwOyopILc5sze5NrAwICmqMjAwKy+iEJY2N7Gwuje5MDsvohmUMLkysj+4KjkwOyopILc5sze5NrAwICmqMjAwICkgECmqMjAwKKKgoKwvpaAtJyKcNLozPThUpwmilyFklsCseXIgfwaZ+2QYZlQCof8ZH67nMLdFAkKtB9pN5p3CwPFIZacB/xER8xaAVDYJ7bRy44gBocP3AGzPYRH/ERH/ERHzHgiYehltv2ER/xEdved8tWcC7bR3zER3ykvnHd8CvKICIKf2IeH7F13falyAH8+vZp35ciB/iR4bp7uycZ1MEPWVkYG9vbWBhdGdAPSRgb29tYGN2bHBAR0BwdGRBQVFFQEFZUURDR1xKQlksZXhqdS5pLmtFKKAy14D5i0/xt+grKZfuIj9Q7j9vmggUMw+4jPuIjPuIjPuIj9W3z1j3xCMxj4z7iIz5i37ZttAmLwDw+4iN1ndPmmKAIzIP7iI/4iFkiTAxw+bSP+IiP+IiP1DR9k8Lk4ucH5ofErmyM7k0OqGrozY1O7o3tyW2oTs6uLMnN7A2IqsyNLmyMrazpjayOrQwIyOqHJIyN7W0sjO5NDqhq6M2NTu6N7cltqE7OrizJzewNiKrMjS5sjK2s6Y2sjq0MCAhojo4MCAhojo4MCCiqKCgI6GspqEjI6ockjI3tbSyM7k0OqGrozY1O7o3tyW2oTs6uLMnN7A2IqsyNLmyMrazpjayOrQwICCgGCEjLpQwvjc6+J54BqezdR3zER+zbzo384PotJ1oGE5gi5OIA4SB8xO7p3q4fDsxHbBrvTbEiGpDKR3zER3zER+ycvw164QKiCMAGQgAwH6np3Ed85Kb12lwlDmAYeNxH7jTgQQp/OojGR3yk7unesh0OAVgWu6cNvyFhqMVHap3n7TFhKRrC6H3ER3zEkB0kIIoADBmumvYRH6l7m7bfiupfT+KafGAYIp/2kRr3ER+xW4ImIgp/Yh4fuWm7N/sDg6GWmtaN2UECogjAkOGqaR/xkbq3+zsUeJDCnw6i8REfsXWct+2JR2Aeu/YRH/ER+7Zpczw4BqTyER85sahwIj9wBszed3+J/OewcghDYJ775i384cB8xKb13eQfHiCKAAwZrt1H7Du37ZpAqGrDJhAq28QbnKIhjHr3ER+pdR23zAMFGIbdR3zER+6uQQp/OojGR+qctu8LQwp/OojG9hEf8REf8REfqe/7tm6ESKKCmvYRH8lvH6lpnr6nBCn86SAaH7F5hENwmqq2a8M9YIBh0H3ER/DdRyzf4GGAy699xEd8xEd8xNARrt9yomUwgSlCLg4QDsJH7D6v7dDhyXzER3zER3yk3uvcnhkYhlpwH/GRGudt8yZQIqLwJ+ax6d1qCZqIKPyJeXzkpvfaJh2ezEd8xEd8xEfq3e5NmoEBhmH3ER+pcV63ZQWDoZY6x0084RCcpqpx2oorlgGpfKTufcRHDPYBk6jAf6bIXw7JFwBp8hEfqXsat98IQ2Cem89tEcERmMdHfMRHfKTvbStOeAaksnkf8REfqWudJ4EGoMLPVxCZWt0c3VdbmFtdGBtb3pdd2Rjdm9xXGFvamVsZGdAcHRkQUFYQVlBREFRREFZQUdDXEpCWSxleGp1LmkuaS5pLWgzOjY05MjgRMVXA4tM+UuO0fhYJUvjTQTQ3bZEG2D8g0YTBTrQMJjBFyOUjPsLTt+kmQILTDHXtIz7iI3Wd6+Zr8VRF4yM+4iM+Yu/3btUQDUMtdu8jPlL3+22FC0fmIzVe72bbkAjM4yO1Tu+mPpEIzOMj9n3rJq6gYLeP+Ei907odNzQDUtm8j/hIrdv5fThI4U8H0dg+YvO2bqUIVERMFbD4tI/4iI/4SE3XvYEWUAKwLD7iIz7iIz7iIz7iI/ZNoERE4U/MY9/45QY8SOFPB9H4iI/UPc+TpLgftjK3Mzo0IKuyMbo3OSCgqCKhICcsLZcyvDQ6czXoJkO7EMmXIgfwdZ/2fSlygB8ZrlvPafs8aBhqsX3ER3ykr2nTR7h+y4mWwQSmCLk4QDgIH7H7/rZMBURgHtxHfMRCIwjBaQZ7ZDAYaqn52iIrJmAY7tpHfMRHfMRH7LynDZxAiYjCn5jHxunTSJDCnw6iye3jSJDCnw6iyXcLJ1AiovAn5rFx3cQJlIgo/Il5bJy3zYrIl5BGqXMf8REfsXXaJnmlw88PyVcQG9vbWBhd2VdbmFtdGBtb3pdd2Rjdm9xXGFvamVsZGVDVF1GZWVgdG91XGBvb21gYXdkXnVxYGt0c0BwdGRAQ0BwdGRBQVhBUURDW1xKQlksZXhqdS5pLmkuaS5pLmktazMxMjLU/HJmP2LV+2/9BwlCL7iP9jpuqw5P5iI/4iI/4SL3ruqEvSEAUARgyXHruIz5y13RujBQfQE1OCzQG0Ux5bfvPgfhTBDSSjzQSEU0GfnD9AxJNGOxEy2ACU4RcPmL3dG7jBEpEFP7EPHZeGzmBEhGFPzGPnd9G+7AIzOMjPlL3NH+xAQxS+EQz1LaP+IgxLiDY7SP1TfNWTqBEROFPzGPr9YUkSOFPB9HstxkbND8DTBFy+YjN27ihRhgSFdx7b6cTDjAMu4/4iI/Ydm4bpgIiOM3gIz5i+AyJRAU+Uud2b+wF0OQEjrP4jTP5iL3j9qkkSOFPB9Hw+K04SOFPB9HYPmLzOm+TFo/APD7iIz7iI/ZO36bdkAjM4yO1nutWbnAw1FLrPmLrDc2AVDbvIz5S6ztu5woKdvuIj9R7vpu9AnLZPlLv+23XCQYwDLiPWHSEAQwDTuvGLHEMSKXjPmKlFo/APD7iIz7iI/Ze36b9gGC3j9i0TptxhCFRwd3rlhxhSFRw972NMiTAMPhIjdu8HTNIQBQBGDJceu4jPnLX+G6kEw5DLbiP+IiP2DbOm78Cctk+Uu/8btoERGX3vJEeLAy1+Mh9+4iPmDdDwwCXT/uIj9R4z9vmwcJQi4/4iI/4iB0+XH86RT4wDJFP+4iP+IiP1PzOW35FGURE4U/M4yO2rtu+FDmAX+M+7ftS5AA/Mlx3f9c2DLEIzOMjPlL3OW7SB83PAFOEXD5i87puqQ0SEEUAhgzXTvuIj9z2fRtzxSMAy7L7iI/4iI/4iPFaPALz+IiP+IiP2PuN276Cgt0+4iP1zuc2SMH86RT5iI/Yt77bP4UkMA/uIz7iIz7iI3a+11ZrAE1O4DiL3ziTj9g7T5twQXLZPuIjPN6buIHBUEvvIyTSADv4aQujk0vDA6KSC3ObM3uTawMCiioSCvoJsmoKo5NLwwMCuqKZggsbKwMCAtJyKcNLo5uZkZEhncDBj5ncW1sQXtpckNsZWxlQVF0YHRDQVNBPkFUMUFCRkJVV2RjdmxwQkBOQlksZXhqd4RI4EVH4E/PcPnLTN23GCBBDLbqP3LqP+EhN67hVWixV0fiIj/iIj9j7wsJQi4/4SH3vtsEiOAy12D7iIz5S07dtuBGJ4DQVf+c+YpcNEhBFAIYMl577iI/cNd+broMyINXtIzVP18bakEhU4CN1zvdWjQABw4D7iI/guo/U9L6bPcL1D0g0YbATLYMJTBFy+Yjd8709GxQSFfjI2SRI4RPNUNc16TGgF37g6ubQvsTCxtaAfkjsysbo3uSArKzKxuje5ICArH5IwtjY3sbC6N7kgKysysbo3uSAgIDm6MiAgIDm6MiAgKKKgoKwSEiiioKsrMrG6N7kgICAtFzK8NLoYm5kYoyZ4ImIwp+Yx0d8xK5r2hQRImAYdh/xER/xER/p+9oqESaBeWzaR3zER3zER2qatm26QZGoAPeRWsdr80xQgGHwkd5HfOQ+A6zB8QNnwGwf8REf8REfqfkdN1CJAxgGe/cRm3eQgCgCMGS4dtpHfOS299xcDxhgGHAfwXMf8REzrJgY4PJpH/ERH/ERH7HznSclB5TCD1lZGBvb21gYXRnQD0kYG9vbWBjdmxyQlVXZGN2bHBAQ0BwdGRBQVFFQEFZUUZCVVdkY3ZscENDXEpCWSxleGp1LmkuafSokAvPYtI/4iPkiOAy12D7iIz5S07lu2gXJZfuIj/A8bfQGUNEQRr37iI/4iI/4iEUzMAy16D7iIzXO5wae4ADU5LRAYxDNVN/9JT1I4U8H0fiIj9T2vVsxBCM4zeAjPlL3uX5ICVL4RDPUN262BE5EFP7EPLeP3PRum3dBctk+4iN8b5t9hMJQy+0jNp3bxk8RCczjIz7iIz7iI3au8xZfwP3pFPmIj+x97j8H4k8R0Eg+0khENBnmQgUMg4/4iI/4iI/4iI/Ut60fdEAiLATQUI+PWCJDw1DLTfuIj9Q4XRu8gSMwD+4jPuIjPuIjJOEAU/j5CiJTq5uj+2oLc6sLY2PL+7IrG6N7k/sKY0s7cysjA5qjIwMCygrCCioKgioKwgoqCvpaAtJyKcNLo3NJc0lzSXNJc0mz+wkDGAa8v48qQQqfaIY6p41/wgCGAe9501ZwsNtHfMRHfKS+8d0kDxSGWm4f8REfOc0ABSn86SCam+ZtN8KZnMBxlrr2G2fyEftNeBjg8mkf8REfqWu9JlUG9MIPXN0c2pdY2Nga0A+JXdkY3ZsckJVV2RjdmxwQkNUPSRgb29tYGN2bHJCVVdkY3ZscEBDQHB0ZEBDQHB0ZEFBUUVAQFglJVFGQlVXZGN2bHBAQkJZLGV4aXczNjYx5UiQMtfiIjde8US48AvP4jTP5iI/Ud60b80MlUYH/TJG/HJIvANKk+4iPmOCCctk+4iM1T+M2rqBkuI/4SL3T+y0HJILTDP4UUYQ1IkRFQxg+4iM+4iM+0ve4YRY0wDD4iI/4iI/4iAEjPMAw+IiN+4iP1HTOW/+Dctk+4iN2jtMmCKFcto/4iJ3juklPOILTDD7iIz5i33VtwRVLRDA+Uus+4iP2mbAw1HLTPuIjPmLYD8flIzad16cakCGFPx1E4yM+4iM+4iM+4iN1X9NmnOAw1OIjvI/4SF3rvcUyWBIV+M8U+dEh+QIgTT5S4zlujQeLLyGN4iM+4iOkIzT4cXuTawtjS9MrIwOyKhuje5MDAooqEgr6CbKKAcLScinDS6OLicmBsVaJg6GWHfcRm0xgBKcZ6t5HfMRHTPmgkKiAty3SwvlhAlAkH/ERH/ERkmTALvzA1c2hfYmFja0B/ZDYlY3RvckBWVmVjdG9yQEBWf2QhLGxvY2F0b3JAVlZlY3RvckBAQHN0ZEBAQHN0ZEBAUUVBQVhBRUJWVmVjdG9yQEBAWm5lOGl0cXczNTYccUjMI/fOJOP+IiP+IiJPxyXj9i03ht/hAIMg+4jNq3fdj7xMNRy2z7iIz5i37dt5gsXEEUANhACgPlITec+4iN3Td9WSrEw1FLbPmLjN227CY/APLXtIz7iI3Wd75YM0QjMU9s+4iN1r9M2eqAAw6D7iI/4iG1OQBExVcDi0z7iI7Zt7wceICGFTzSDrfuIj/iIbdu5zSI0DLX4SM37SE3j+RE5SOETzeAjPlLXu27UBolEBbqP8H1tzAgPMAw+gts+4iM1vdNWWUFFxFQBi0/7iI/4iI/YeY8bp0PCUIuP1PvdmzNEIzCPXfuIj9S9nhvtgnLZPuIjNZ/Xhq6gZLiP+Ei957y5JywC8/iIj9S2bdtswwIMg4/4SK3TtylGPALz+IiP+IiP2DSNm7qEwlAL7iN2rdcnKfAghT8dROMjPmLvtG3BFAlDLT5i4zxv+hVlEBGFPzGPj9i6bvtS5AB+nfu070uRA/zIcN39fVsvwsNQi4/YtI/4SE3nudFLKAy14D5i13t/1AEKUvjTQTQ3r1sxwwVEEYANhABgPlLTuY/4yF3juYFGHAKwLPeeW+wDJlGB/0yRHx2SLwDS5CM+Uvd0TmoIh58fmB8Su7Ixujc5ICursjG6NzkgIKsfkjA2trexMLo3OSArq7Ixujc5ICCgOToyICCgOToyIKCooqAgoK+loCIhqx+SMDa2t7Ewujc5ICursjG6NzkgIKAYICAtlzK8NDo7RWgGpPIRH/GRmrZtI2RoBqSydx/xkfrudeNXUDLcR3yk3nnd6iGgyQkcZ/EbZ/IRH/ERUzdwGGrRfcRHfMRHfMRmCZqIKPyJeXzkruvbDhcOzEdqvO4NdMESgGXxER/xER/xER/xkfq+bet3sIAoAjBkuHzER3zER3yk5vf6OAUepPCng2h8xEfs/a6tcsIBhsFHeh/xEdu2a+t+OCygIjTmsVgFg6EW20fOPEBCCp9oBlv3ER/xEdveebNUWATm8REfqW2dN0WGBhiGu/YRH6lx2jZ3BoOhFpvOTXgCioipAhaf9hEfsW2etvCI5YmIKgUigPHrI5AGxw+cAbN9xEd8xEd8xN4jDIF58Ns20ghLogL/mSJ/OSRfAKTJR2y63s2wYBCYx1IRnAGpbh/xER+paRsnKQqgws9XEJla3RzdV1uYW10YG1vel13ZGN2b3FcYW9qZWxkZ0BwdGRBQVhBWUFEQVFEQVlBR0NcSkJZLGV4anUuaS5pLmkuajE0NjV03LMAw+IiP1HpuW2XDBUQRgA2EAGA+UtO5j/jIXfO7jSokAvPYuI/4yAUKPIPjB86A+YhN+4iP2H+EITAPjufm/YBYQEV8EQFZcsLDUMtN+4iP+Ehd77bFEyiJgzST+7yEYNENBkMttt2brMQhUUHP+4jRWjy/KxGSj/iIj9i73duvgyVRgf9Mkb8cki8A0uQj9U3fJk3AREThT8xz+4iPWKBB9VtOtAwmMEXIxQHCQfiIj5hqQuJLSKPUuY9YLEETEYU/MY+P3HWe267EAQyDTfuI1TcYDLXYt223D9T/IZE0+cAwRD6N+4iP+IjhU0TAMPiIj/iIj/iIneu3cTYcgtNUtn0btIEhUQHuIyco4CCFTzSDj/iIrd+90SdAgtMMde0jPuIjtW3z9p/wDEhl8z7iIz5S2zhtkAuWRAX+M0X+cki+AEiTj9R3bRsrA4U0wkAI/jNFPuIjPlLj+G7VBElEFP7EPHdtzxGGRAU4fZs1QRIRhT8xz31fj4MUPtEMtu4jPuIjxsjQMNRy2z7iIzVO31cY0CCFPx1E4yO1btvnGuAghU80g4/4SN3XuPFOOMAw+EjvIz5i2ztu5gRKRBT+xDw33Ru+ApLhPlLve04qEoMftjK3Mzo0IKuyMbo3OSCgqCKhICcsLZcyvDQ6l7SYmJscG48wJCrAa9uUER6GWmrdR3zER2pa5y2coRGYx8Z9xEfqnK6tsGISmMemfcRHfMRHfMTO990KHZ7LR3zER3zER+q9ru2cQImIwp+Y5655u5x4gGG4ax/xER+xbfs2wAUkw32k3vn+Whyk8KeDaGwfsfuaNl6FAxiG+vaRsw1gkMInmsFH6n7v7RwCk6jAf6bIjw7JFwBp8hEfqXs+t/YIQ6IC3OYtN+EpGsLofcRHfKSu89zQCZSIKPyJeW6bvuiApXAiP3AGbPcRSydQIqLwJ+a5bducJxxgGHYf8REfsW96N+IHq5qAYCF8xEd8xEd8xEd8xEfs0eG5fMRHfMRHfKTe7dzsF5iiIQwf8ZH65mt7ZzgyH6nzmrd7CEuiAv+ZIn85JF8ApMlHfMRHzD3CkKgAv2t7VVAiYqqAxad9xJIRHoZa6ttHfMRHalrfDT7CkKgAv3UbXFCw20d8pObp3AQnGoF5fMRHfMS26fqkA5bCiXykEWrcR+yVoImIwp+Yx0fuut+tncGJiKkCFp/2kTqvcSN8iIBh8BEf8REf8ZGa33Mzh5AmJ3CcxW+cyUd8pO752wQLJIkK/GeK/OWQfAGQJh8x4IZGYB6b9hEfqfV6N/8IQ6ICHL/NkIFhqMVHeB+p7543QQlDogIc583/QcFuH/ERO8drEm8AKvx8BZGp1c3RfbWFudWFsbHlfdmVjdG9yX2FsaWduZWRAc3RkQEBZQVhBRUFQRUFYQUVBX0tAWm5lOGl0bmkuaS5pLmkxeTkzNgghILdPuIjdo7vhkjx/AwwRcjlIz5i37tt6gRKRBT+xDw3fhu0wyE4TWXvvBlGSJMTOM7iN87kIz5S931vvhHJ4lhE5NM+YuMHzc8AU4RcPmL3NG+MEoZEBXieG6/EwVCLjfuIcVdcfzpFPjAMkU/7iI/4iI/Yeq7b8oTDUAvuIz7iI/ZN3ybtcAhOU9m8fYkBDVL400E0PlLre23rBEpEFP7EPHdOW7EBNDmB4yx+40w+YvO2bdcOh+A0lc3zhu1wCE5T2Xxv0gnKgFS3j9Q1b5N8A/Lh5yfmh8SubIzuTQ6oaujNjU7uje3JbahOzq4syc3sDYiqzI0ubIytrOmNrI6tDAjI6ockjI3tbSyM7k0OqGrozY1O7o3tyW2oTs6uLMnN7A2IqsyNLmyMrazpjayOrQwICGiOjgwICGiOjgwIKKooKAgIS8ulDC+Nzr4lst9yomUwgSlCLg4QDsJHfMSu6/xwHKTwp4NobB+x+9y2ZIVBqCSTTGCKhjDq3Ud8xEfsseAAhsFHfMRQHZ7LR3zER3zER+pdt8134gGG4a59xEd8xLZ33VoLKokK/GeK/OWQfAGQJh/ZeZu0KbAHPz80PyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQFFFQUFBRUFWMDFAQUVCVjAxQEBaLmV4aXQ2fOAAw4D7CJ77SM77iL0iNAy1+IiP+EhN37UBK1QSFfjPFPnLIfkCIE0+svN8xU8847fbTsPdXHB5uQVHp+20QQKiCMCQ4dJzH/GR275ra1ZQfhMjmsFHfMRqFxTs9hEfqfnctk6Jg6GWevcR80SYGGqxex/xER/xER+p6dq21IlGYB4f8REfse0cN+mGRKICH6n1m7dTCuZPp8hHfMTG791oERqGWnzER3ykpnHd6CMUhlpsH7HpnDb1gukfkGjCYCdaBhOYIuTyESNvaATmsWkf8ZFa13UbljiAYcBtH7H6CUOiArynrfJBAqIIwJDh2mkf8ZH7rvcDWgSnGfwpoggfMVWJQ6IC3fYR268og4go/Il5fMTWdduXIgfwa92nfV+KHOBHhuvu79woGR7MR3zER3zER2q8rq13AblsH6l5/rboA2hyAsdZ/MaZfMTmddxWDxaGWmrdR3zER2xbwclwH/ERH/GR+sZ5O0dofgaYIuTyEbvP6SsOeJDCnw6i8REfsWk6v0QBa3D8wBkw20d8xEd8xEdsPbft0KABogjAkOHKfcRHTsdBCn86iMb2EbvvcaMlcCKi8CfmuX3krmv8ugMgpPCng2hsH/ERu651A3RQJCrAfaTe6doKKbJ/QKIJg51oGUxgipDLR3zEvnfaIg8UhlpsH/ERHzHnguSyfcRHerw3wgRFogLdR+q65k2UQmGoZfcRG7dzi3eQgCgCMGS49NxHfOS299uKJQ6GWvLbR2we4vrTKfKBYYh82kd8xEd8pO773CYVEIZadB/xEXNeuH7LiZbBBKYIuThAOAgfuek7N1WGB/MRH/ERH/GRGsdvOz6oJCrwnynyo0PyBUCafKSvdztOeBhqsXsf8REfqeudts6HSKIC/5kiX6ICH6n5urbFiUdgHpv2ER/xEduuaZMuSC7bR3yk12sLL+AiovAn5tlzX4ocwKd92velyAF+ZLgsH6H5GWCKkMtH7L63rZ3CAIYhz2tzTVAkKtB9pK5v/rYepPCng2h8xEfqu+bNmWFhqMVHfKTGedoSIcggIgp/Yh5fihzAz33a96XIAX5kuOraR3zE1uuaVEMHP2Zyb21BeGlzQW5nbGVAUXVhdEBAU0E/QVYxQEFFQlZWZWN0b3JAQE5AWi5leGl0MTAzNyZL4ERE4U/Mc/vIXee6/TckEhX4SK33vF1WNANS+YiP+Iid97t1TiQDUvmIbd+0+UocwDDYvI9Y7kL0m5iEZISP+IiP1Hyen3OAUjiRHzgD5iOXKQAhhT8dROMjPuIjuo/Yb4MjOM1Q9z7iI7Ve63YYgUlU4D9T5C+H5AuANPmIj9g0XVt+wsMAl0/7iI/4SG3ft3kvXL/lRMtgAlOEXBwgHISP3PS+m7SEAgyD7iN2Tdf2XkEGEVH4E/P4iK3rti9FDuDjPu37UuQAPzJcd1/XFsqgMNRy+0iN2/YNPEjhTwfR+IiP+IiP3G6ANTh+4AyY7SM+4iM+4iN139dnGZAghU80g43nllnhDEh1+4iP+Iid972JMywDUvmIj9Q5fd92QIcUPtEMON77SOETzYDz+S9EyPQTg0HYq0E3GdqFSL4UOYDf+7TvS5ED/Mhw3Xp+m7aDtBCNMR1f5DDsBEST3eO2aLH8rkRIPuIjPmL9FFLREIaP+IiP+IiP2LneGzpDw1DLTfuIj9Q53duoxMFQy937iDFTJAy1+Iid0/tZKUjhTwfR4D5ikgyPwDx+40w+4iM1TvcmO/EIzGPTPuIjPmLb+m2wBE5EFP7EPLeP3HXPk5zQ4MftTa4tjC1Nr4wMyKpsjO5NDggoqkgo6CfIKgYIS8ulDC+NLkbGRsZSLaAfJgBF8hEf8REf8ZHLigon8gNnwGr99pfIfw4rplAYatl9xMb73HoVHqQZKiCSfKTyG+Ka7PSAYahF95Fb9xEfMUAFh6EWH+F9xEdqG6+N0sKpJiBYCB/xER/xEXM/SCQq0H2kx3mSd4Ac/Ny9ybGRNYXRyaXhAVHJhbnNmb3JtQEBRRUJBf0EWTWF0cml4QEBYWm5lOGl0cnE0OQY8UQyIJWP2DZ/2ySEctk+4iO2futGuKBkuI/4SM3Tun0uaEAUARgyXD7iIz7iIz7iIz5S3zdtyBQLQy217SN2TtMWerAAw+AjNu4jPmLWFAlDLT5i57Zu9QmPwDy17SM+4iO1bfcmHXEIwLLg9G7DCpBEBf4zRf6AVD6y97WFLmARMVXA4tM+4iM+4iM+4iP1feNGeZAw1OIjNe8j9v+gZLiP+Iid47YFRyyC01Q33989Xtt4gyM4zVD3PuIjta7nRgihZLiP+Iid4/wtOUjhE83gIz5S2zhvgRbP70qE5CM+4iM+4iMWf5BIVKD7SK/TlrhwXD5S43ZtiwWLACzL7iM+4iO2/nBcPmLXuW7HEE3REEbvIz5S9zlv0xQLQy217SN2XvemjfBIVOAjPpLTPlLTe3/YAQpS+NNBNPh926LBAlCT0wKNQTSTtR4swDD4CG77iI8YKsMjMI/fOJOP+EiN47QdMjQMtdi9j/hIffe9+Us0wDD4iI/4iF33up0yKMAw6D5S4zduyxUWEEUAhgyXj/iIj/iIj9g6Xl92gIIU/nQQDY7bprxw/QMSTRjsRMtgAlOEXD5y03dtzxANA1x+7SM+Uve6ftoBClL400E0OK7bPkQkMI+P+IiP+IiP1H2vm3SFBUQRgCHD5SM+4iM+4iO2jvcGWuEw1GL7iI/4iK3Tu3VCYBIV+M8U+csh+QIgTT7iIz7iI9ZNsTDUUts+Yuc3b7kRx4M0Ne0j9kzgREThT8zjIz7C07VhJiwC89i4j/iIjxiohfKvxOMjPuIjNp3Q+BLSKLXuI3XN46a74PwmFhGSj/hIzee6rSYcvoQ0io9YsAVDXMgkOM3gN85k/BVlEBGFPzGPj9i6bvtS5AB+vfu070uRA/zIcN39vVv6BBQRUwUsPu0jPmLfd37sARJS+EQz2LqP+IiP2Pd9m+2CkuE+4iM1n99W2nABUQRgAyEAmI/UdO4jPnLbdm/DBQl2+4iP8Dltsg0MQy24j/hIrdO2KVpIkxM4zuI3zuQjPmLvNG26CgdDLTXtI8cdoCCFPx1Eg++1pSogwDD4SO8jhrrQRUThT8xj67wvRQ7g4z7t+1LkAD8yXAZN8ERE4U/Mc/uIj/C0baMLEzAM/jNFPuIjPuIj9X3vNvwwCczjIz7iIz7iIz7iIz5itQ0MMAy7j/hIrdO6DSM8DLX4yH37iI/UtF7btMMwIJX1RhgC8+Q+YtoL1z8g0YTBTrQMJjBFyOUjN73fdgghBhFR+BPz+FLkAD7t074vRQ7wI8PlIz5i63RvjhMPA1x+7SM+4iO2Xd/mP2EIzJPTtJEuIM+B+AIgTXYbgSC3T9+7jxhkwSIwj4/4iI/4CIk1gDx+fkjIyubo5N7ygKx+SObQwuTKyL7g6OSArKjkwtzmzN7k2oCAgOboyICAgH5IvojKzMLq2Oi+wtjY3sbC6N7kvujkwtLo5oCsfkjC2NjexsLo3uSArH5I5tDC5MrIvuDo5ICsqOTC3ObM3uTagICA5ujIgICA5ujIgICA5ujIgICmgrCCioKsfkjC2NjexsLo3uSArH5I5tDC5MrIvuDo5ICsqOTC3ObM3uTagICA5ujIgICAYoCiioKsfkjm0MLkysi+4OjkgKyo5MLc5sze5NqAgIBigIC0XMrw0uhc0lzSXNJs1kKanMBxFr9xJh/xEXu3ectMaAak8hEf8ZG6tnvbLkiw20d8hOdr64wwBKcZfMQGFR6GWm7aR3zER2obx82xYmKoxe59xEd8xEd8xM753RILmt/EJCQjfMRHfMSsIRhgGHyk95G633Ebn3CAYfCR3kd8xL7t3kgNDIZabh8xeYYD85E6t2lLXQiDiCj8iXlsnfelyAH83Kd9X4oc4I8A60eGy74LEuz2ER/h+5v04/2wlbmd0aEBWZWN0b3JAQFFFQkFOWFpuZThpdG5pNm7wwVEEYANhABgPlLTuY/4yG3vtekiPAy1+IiP+IiP1HRum3UDw1AL7iM+Uut5bf8SDkMtuo/4iI/Ydc9bOkMDDMNd+4iP1HlNWytBExGFPzGPj9z23RsvhCJRge4jdY/Xpp2gDEh1+0ht07f9QzwSFfiIj/iIj/iIj1h0gjIgle0jdc3XVr+wCMzjIz5S3zxt2Q0MMAy7j/hIree5ZVdEwDD4iI/4iI/4iK3nt8FXkEFEFP7EPD5i67rtS5ED+LlP+74UOcCPDNfd1zeJSQx+2MrczujQgKzKxuje5ICAooqEgpywtFzK8NLoXNJiZGpibDihGZDKR3zER+pa18/oEZxm8KeIInykrvnbaiceBrj82kd8xEdsW9ctVuJgqKXffcTiKQyBefI8t9SExJeQRql1H7H5hKdoCKP3ER/xkdq2d+s3eAaksnkf8REf8REfscAGCmmEgRD8Z4p8xEd8pM5x3swTFsxHfMRHarvWjddhQpqhAiLJRyq/Ia7p7nvczCMUgXlqH7Hp2zb2BwSzfcSu895UFRKGWm7aR3zE1hkahlpu20d8pM7r+jADosKJ/MAZsBun/SXyn8NYKZ6fAaYIuXzER2wct03eABKcZqhrH/ERH/ERH7HfBSTDfaTm+dwcGyikEQZC8J8p8hEf8ZE6121bJWgiovAn5vGR2+ZrC25oGODyaR/xkVqv+asNgJDCJ5rB1n3ER+p+5+1X4mCo5bZ9xAotImAYfMRHfMRHfMTW+90YFZQBqW4fqe0ct/KJBxiGu/YRH/ER+75ry5VYGGqpcx+xaZ434oZGYB4b9xEfqXW7tvsFRnCawUd8pL55294fHiCKAAwZrttHbLvPrZqBKRrC8BEfqXG+t1CDQaICo4RQsNtHfMTW7906KRKJCnzExuvdoCcagXl8xEd8xL7p3sQPoMkJHGfxG2fyEbundXMnUCKi8CfmwW/e5A8aIIoADBkuH+n13GAZLIkK/GeK/OWQfAGQJh+p8fy2XQSIoRbbR3zER3ykpvPbVCMMhlpuvjbbBKdoCMNHfMRH6jq3LTPiEJymuvfauhPCICIKf2Ke2u59KXIAH/dp35ciB/iR4brzPDfcBehPp8hHfMRHfKTmc9xSIw7Baaqbpw26wYmIqQIWn/aRWr9xY404BKepbv62TgWlaAij3n3ERwweIgKGwUd8xEd8xEfqvretVOIAhiGnfcQmHyQgigAMGS499xEfue86N+GIQ3Ca6u5tG444BKep7h43UoqFoZaa9hEbt3krTGgYavERH/GRurZteydQIqLwJ+bBdd30IxRgGHAfsWm9tt4CArt9xMobGga4fNpHfKTW9d36K8ogIgp/Yh4fsXXd9qXIAfya92nflyIH+JHhuvu7P4CCaKYIM9oGhqEW3Ud8pNbp3FIpsn9AogmDnWgZTGCKkMtHfMTGcdpEDxRgGHAf8REfsdqIhHoeIvJpHzH0hkZgHhv3ER+p9Z02xAhMogL/mSI/OiRfAKTJR3zEpmnbsBMMYBh0HzFjCEZgHtxHfKTu890SJ6CiIYx69xEf8RHbpnl7TWgYavERH/GRusZv+2RQGGqxfaTGbdriJRaGWmrdR+xa7y1V4mCoRa99xPYXGoF5attHfKS+ed0CFR6GWuzeR3zER2obt82+4ch8pNb53aAlFGAYcB+x6Z630YIIaAYf8REf8REf8REfMfoGJyKmClh82kdqnb9JyAGo8PMVRKZWN0f31RbmVhfGxpb3ZVc2Rvcm9xXGlnbmVkYGNEdHBgSUFYQVVBQEVRSEFVQU9LUEpOVShpdG55LmkuaS5pImAxMTY70M12850TKYwBQhFwcIB+Ejd133BkyRSFTgIzbO76YvsTDUUus+Ytf8boUTjsA8uI/4iI/YNo3fc0AmLATQUI8vPQsy+YvjPD5xIZOPGDSFwlDL7iN2XuMGT1BcwIVIdu7A/OkU+YiP1Pxdk7rw4OeH5OuojO5rLk2v7OvN7MsNiARGKAkIaI6ODAgoK+hr6WsJSMulDC+NziXNJc0lzSXNJS1mRkbGKA2cnwGmCLl8xEd4OjdAhkZgHrv2ER+p774+BAcp/OkgGh/xkX3nbdUiEpjHR3zER3zER+y91i1cwgKiCMAGQgAwH+l3H/ERu7ZzG4eIJCrwnynyJSrwkbqn6btikMInmsFH6pum7Z/hwXzER3zER3ykznHcihEaiQp8xEd8pKb123IRFokKfMRHajqvSXK58ANXN4f2JRY2tgb0Q2JXNkb3JgdkZVU2RvcmBwRk9UMSxsb2NhZG9yYHZGVVNkb3JgcEBDRHRwYEBDRHRwYEFFUUFIRFQhJVFGRlVTZG9yYHBASk5VKGl0Zn2A0MQy26j/hIree44SNAkxM4zuI3zuQjdt/Tpk2hMNSy+4id37e5EjgRUfgT89w+cts4bZUHDEMtPuIjPtLTvWVPPALz2LSP+IiP2HfNGyMCJDCPj/iIj/iIj/T9bZ0HDEMtt4/4iI/4iBEfOMAw6D6C8z6S9z5iig0P5iM+4iM+4iN1nvN2TLEw1FLTPmLjPU/ysIOftjA6uTQ8ICq5MLc5sze5NiCgqCKhoJ8gq6YwOrk0PCCgK5opuLCxMiAgIC2XMrw0OhmcGJxre5DCnw6i8REfqfH6tvgKMoiIwp+Yx0dsXbd9KXIAX/dp35ciB/iR4br7OjdOhURgntr2ER8x2AmoaAij3n3ER3zEtvXaehMgwWmGuvcRH/GRus57W59IBqTyEfu++SsNSJDCJ5rhtnmLbLh+y4mWwQSmCLk4QDgIH7lrvTb3CjCIiMKfmMdHbF23fSlyAJ/2ad+XIgf4keEy5ApMogL/mSI/OiRfAKTJR3zER3zEWCccgXlwH/ERH7HtfDfqhMaXkEapcx+paz63xAfmT6fIR3yk5nn+rgOaBWgGfzkkf4oowu4ZFIZabh+pc/u2fAqJoRbdR3zER3zER+xczw3QQpqcwHEWv3EmH/ERH/GRg3uQwp8OovERH6lxnDdWAiciCn9inttHbpu37d7gYYDLp33ER3zER3zEUCGYy/YRH/ERe7dxK51ogGHwER/xEdvGe/usaBhq8REf8RFbp3UTnVh8CWkUH7HtWzf+AgmIIgBDhmunfcRH7H2/SRhx8HP3JsdG1hRGJ5eGB0QlF+Y2Z/Ym1wYEFFUkFPQTZNUURieXhgcEhKXlUoaXRodDA0MCsYOftjA6uTQ8ICq5MLc5sze5NiCgqCKhoJ8gq6YwOrk0PCCgK5opuLCxMiAgIC2XMrw0OhkcGxjSjBn8sJW5ndGhAVmVjdG9yQEBRRUJBTlhabmU4aXRuaS5pLmkxcDIxNglQyIAy4L7iI8YZcT1p1PkA8MQ+bSP+IiP+IhN1/fNByhI4U8H0eR0ba4LlUQF/jNFvkQFPlLzdX33em/jDM2AVPbuIz5S5zR+ZA5S+NNBNLaP3PSt2yjCxFDLbfuIj/iIj/hITde6CSc8AvPYuI/4iI/UtY6bv4HDUIuP8D7iIz7iI5ZpYU1O4DiL3ziTj/iIj/iIvdO9FTcsA1L5iI/Uun2bMsETEYU/MY+P+Ih967wRJzwDUtm7j/iIj9S1vlslhJLhPuIjtn7zttzQMNRy0z7iI7Vu9/ZakTDU4iO2bts2XMEITlP5SL37iI+Yd0IYREThT8xT270vRQ7g5z7t+1LkAD8yXHee75bLcP0DEk0Y7ETLYAJThFw+ctd1bo0KjS8hjVLrPlLbuX4kDlL4RDP4iI/4iI8YcMIjMI9d+4iP+Ehd67bVMxyXj9S5bZuwBRIRUwUsPm3NC83PAFOEXD5y0zdu8waPwDy17SM+4iM+4iPWz/AIzOM3zuQjPlLneG2aFtPvSoTkIz7iIz7iI/Ze03ccYA2OHzgDZvuIj/iIj/iITdO9eT5EEhX4zxT5A1L5SM3XNuk2AAx+2MrczujQgKzKxuje5ICAooqEgpywtFzK8NLoYnJwYg6KQQqfaAZb9xEfsXEECRgG3Udw3kfy3kdqmsfvzEEKfzqIxvaRm955S55YfAlpFB+xbb63b4pDAJYlv23brVgYaqltH7H1G78ECCn86SAaH/ERH9n33gYLJIkK/GeK/OiQfAGQJh8xcopDAJYlv3U7bHgE5vEbZ/IRH6nzPLfih6kqGh/xER/xER/xER/xEYt8uIAoArCBEADMR2o69xEfue/6vvwABSn86SCaPNcNGcIRnGaoax/xkbrP+4OZkMKfDqLxER/xER+paXq39IZlQCof8ZFa3227XKAE5vGR20d8xEd8xEfq265J/wF08GMm99YWhJc2F+R2xlYGFFUXRgcENBX0E2QVAxRUJGRlVTZG9yYHBOQEpOVShpdGJ2MTI2OnCghDLT7C+4i9NzQMtdy0j/hIre+8PRck2O0jPtLntNEjMH86RT7iI3VN23aaYAxIZfuImU44DLXoPuIjPmLbeW2jFYcALEuu0zZdkGC3j/hIr9vWvdD8DDBFyOUjN73rN7YUTuQHzoDV+m2bCNOAVPbuIz7iIz7iIzVN9/a6oAjMY+/53e/1xVhI4RPNYOs+4iM+4iM+UtP1br0VhwAsS77v9pyQCMzjI3W984aL4ADDsPuIj/hITec0aUIOftrC6OTS8ICo5MLc5sze5NqAgKKKhIJ+gqyawujk0vCAgK5opuDCxsqAgIC0XMrw0uiMe+JhgMuvfcRHfMS+7doWFZQBqWwfqe38tlWFBBiGu/YRHzHCgkaiAv+ZIl+iAh+xcgaGoRYf4X2kzmndyiUkIIoADBmum/YRH7Fru7fAg4ehlpv2ER/xER/xEftsuP4BiSYMdqJlMIEpQi4fueu+t/6EZkAqH/ERH6ntm7duA4OhFtxHrukRnGbwp4gifKS289wGExSJCnAfqes6t1AKhaGW3Eds3L4NOsJgqAWncQtGcIBhwH3ER3ykpvPeahEchlpwH/ERH6lpfDfxAjCIiMKfmGfPfSlyAB/3ad+XIgf4keG68143+QoyiIjCn5jHR2xdt30pcgB/92nflyIH+JHhuvt6N82DQ6ICH/ERwzTwAGpyWqAxiGbCcf85EH+KgEbykUYiosleCyCJCvxninyJCnxk53EjjzAYasHr2wwRIIZafMRHfMRHfKTncys0gIAoArCBEADMR3zERyw9wmCoBa97U4ZwioYw6t1HfKTu9dqoIw7BaSqc7kklYvDDVuZ2RocGZFU2RvcmBwQUVSQU5ISl5VKGl0bnkuaS5pJmwgqQRAX+M0W+RAU+sve0tSYoEhXgPlLXd27UDIvAPD7iIzXO81aOEAYRUfgT89Q070uRA/i4T/u+FDnAjwzXne+8NRNAEVH4E/PcPuIjdl3XdpmwMMDl1z7iIz5i+w4LMAw+4iM1r/PWytAIwLLgPuIjNY73RowAMdSC+8iN+4iP1LRuW/zDA0QRgCHDdfuIfee0gT5UAZEhRLQBElESjU/7iyBJgDE3NMAw3LWP+Eit37StRxyC01S4XRt7xCE4TYXbu5FCIJftI/Ze8xZtYEhUoPuIORM0EVH4E/P4SN3Tt6kWPMAw+M8U+YiP+IiPmPFBJVGB/0yRvxySLwDS5CN9rdsohQIMA+8jNm7rdihhMNSC57UhShgMteC5bYoSBkMteI5bvMFTNITR+4iP+IiP+Ig5ShgMteC5bvAJTtEQho/4iI/Uto2btgHCUIuP8H1vigfKgFS3j/iIj1jvQyQwj4/4iI/4iI/4iI9YfsOB+Uit871BShgMteC6bawPzW9iBRJJk+0jPmLLFIlEBT5i57RuhhKH4DQVntOGiTAxwOXXPuIjPuIjPlLTdG6LERYQRQCGDJeP+IiP+IiP2DSt2zLCI1FBvfuIj/hITeu9OTc0DLXcto/4SK3ftSU/QALz4D7iI3Vf337jTAbf0ADDcNc+4iO1vvc2T6BEROFPzJPftNUTKBFR+BPz5Hdu1gyM4DSDj/hIjfe0EVMoDLXkPmLj/W2vERHSDBUQST5S+Q1xTT5i1RSJRAU+Yud2btcSh+A0Fb7jRlyQZLiP+Aif12Y/YTDUgve1fUocDLXYuo/Y6wEDDIPuIzjvIz5C6g8wgx+2MrczOjQgq7Ixujc5IKCoIqEgJywtlzK8NDqXNJc0lzSZmhwb258wGGrB+91EFRIGuPzaR3zEpCkWhlpq2kfsvN4t82FCmqECIslHKr8hrgmnado2DSogigBsIAQA85F+9xEf4WvdyhMahlp8xEd8pLbr3IAtJqQZKiCSfKTyG+KacJrmzRtiQpqhAiLJRyq/Ia4Jp2ncYhsWhlp8xEdqnaavUABCCp9oBh/xER/xER8xUIoEGAYfsXG7NtMK5k+nyEd8xNbr3FQrmD+dIh/xEVuveUMtoCJiqoDFp33ER3zER3zERwx/4hCcpsJ73CYrJoZabttHfMRHfMRH7Lyv7Z5AiYjCn5gn123DJ1AiovAn5sn12/onDsFpKrzvrZRBAYYB95Eav+ujYJDCnw6isX3ER4ybYmGopaZ9xM5v3fIJlIgo/Il58p221gVNogL/mSI/OiRfAKTJR2q+pu9e5427IMlwH/ERnrdtn0CJiMKfmCffe7MtUC7bR3zER3zE9CkkYBh2H/ERH/ERH7FzXTdhiERgHh+p+/y2aYhmQCqb9xEfqfu9NmMKBRgG3kdsvNdNV+JgqKXufcTkGxqGWm7bR3yk1nna8heaoiGM3kd8pL553JYjpIVojOn4IodhJyCacLq25ghpIRpjOr7IYdgJiCactm3UovldiZB8xEd8xEeMn0CJiMKfmCfnc1JoQB78kJWFsbG9jYXRlQH9kISxsb2NhdG9yQERAc3RkQEBRRUFBWFFFQURfS0BabmU4aXRuaS5pMXg3ORYP4ESEYU/MU/O7wZekGS4j/gI3+NGz6Aw1GL7SJ3btflTSILTDD7iIz7iIz5i5zttrQ5H5iP1vvM22nD9lhMtgwlMEXJxgHAQPnLb9G2uEMyfTpGP+Ejd171dT0BFQxj17iM+4iP2XeuWbgABw+AjPuIjPuIjPZ1bIEPDAJdf+4iP1Hdvm2mBBUQRgCHD5SM+4iM+4iM+4iP2b/Aw1GL3PuIjPuIjPmLVDQtDLT7iI7WO91YLwfzpFPmIj9S9rZvugzU5geMsfuNMPuIjPuIjPuIjps3QCMxT2z7iIzXe4/cd8CCFPx1E4yM+Ytt1bt0S0uQEjrP4jTP5iI/YdX2bPUXEUIuP+IiP+IiP2LlOmycE86dT5CM+Yut6baIOCTAMPlLveH/6ARNS+NNBND7iIz7iI3bO2+Zf4ExO4DiL3ziTj/iIRUZEwDD4iI/4iI/4iE3XtE1POALz4D7iIz5i37VtvwYSEEUAhgzXTvuIj9h8fZ+IhBT+dBCNj/iIj/hIT+8WLHEAw3DvPmKJFNlvOdEymMAUIRcHCAfhIz5i3/tt3wyNwDx27SM+UuN9b7AKCUMtPlLbe223CY7gNIOP+IiP1HV+3xqDFD7RDD5S43Ru8xVkEBGFPzGPj9i6bvtS5AA+79O+L0UO8CPDdfd1b8kHkEQF/jNF/oBUPtLXvd0nQILTDHXvIz7iI7V91yQWO/hpC6OTS8MDopILc5sze5NrAwKKKhIK+gmyagqjk0vDAwK6opmCCxsrAwIC0nIpw0ujk8mBkTHbCoWhlt1HbN3ubfdh+l2JkHzER3zER3zER3zEyAvAICIKf2KePfelyAH83Kd9X4oc4EeG6857nkQcwP38xAiV6aWVyQ3VydmVAQFFFQUFAWFpuZThpdGZo0LjS0ij1LmP1Ha+W+rBIlFBTfuIj/iI0SokDLX4SG3ztA1TJMAw+IiN97WZMzQMtdi9j/hIndO7tTtcv+VEy2ACU4RcHCAchI/cNp4b80QDDIOP+IiP2DeNn2fAhBT+dBCNj/iIj/hIze+3MSc8DLXcto/4iI/U9Y6fdUCCFD7RDHhd2y6EIlEB7iN1f/O2WDENSGXvPuIjPuIjPmLnPG7mCGEQEYU/MU9N874UOYCf+7TvS5ED/Mhw3TlPGyqCMyCV7SM+4iM1bd+3H2AhhU80g637iI/4iI/4iJ339kUhSOETzeAjBu7QRUThT8xj87cvRQ7g0z7t+1LkAD8yXKZfIAFRBGDIcOm5j/iIve+1+RMkv4ktgDT5yJUHPEjhTwfR+IiP2LbOW7OBBEQRgCHDtdM+4iM2n+fGn/AIzGPjPuIjPlLbt27IBE9EFP7EPD7iIzZ+80cfACGFPx1EY/uIj9j3jpvlwsRQi4/4iI/4iI/4SH3bdKkaOOO3216DueDycguOTpt/wjMglb37iI/4SG3fPcnFDn7awujk0vCAqOTC3ObM3uTagICiioSCfoKsmsLo5NLwgICuaKbgwsbKgICAtFzK8NLoZHJoaMx9QZGoQPeR+tZ3Qz1QGGrpfcRHfOT2HqTwp4NofMRH6hzvr85BCn86iMb2kbu2aXt8uH7LiZbBBKYIuThAOAgfuW1+N0QECBgGH/ERH/ERH+l53j4LImAYfMRHfMRHfMRHfOTcHKTwiWbwER+p8Ro3/YRHYB679hEf8ZHavnHzPFgYavERm/YRHzHZh0miAv+ZIl+iAh/xkbqndbunkBhqwX3ER3zER3zEznXb4CcWX0IaxUfsG8fP70EKfzqIxkd8pM71204tpGoCgoXwER/xER+x9zq3xQXksn2kvund5AkIKLd7Uz1YGGqpbx/xER+5DAQpfKIZ8NxoDxpgGHzExn0Ez32EpEAHPz8kX0dldF9zaXplX29mX25AJDBCSUBAc3RkQEBZQV9LX0tAWi5leGl0LmkuaS5pLmkuaUZPQED5jdviQeNLSKPUuo/4iI9Y4MQiMI+P+Iht07RtH0hAFAEYMlw77SM+YvP9brwMzc8AU4RcPnLXNW/8BwlDLbiP9Httpw8PEEUAhgyX7iN1T9u3gSCFTzRDnpNy7OCnLYxOLg0PiEouzG3O7E2uDQgoqkgo6CfIqimMTi4NDwjoimYKLmysDAgISMulDC+NTiYHx8aMG5oBqezdR3yk1m3cQBEmhlpu2kd8xEd8xEdqusat10KqJiBYCB/xER/xEXu/dWNegCYncJzFb5zJR276tu3aYGCoxeYnHICanBZoDKKZcL637Afksn3EpvPdmicchlp0H/ERH7FvWr/4gAQpfKIZcD63/4LqH5BowmAnWgYTmCLk8hEfMXKISKIC/5kif0AqH6l7ur7AAAcp/OkgGttH7lq3L85BCp9oBh/xkRrPacufcABqclqgMYhmwnvdkCUOYBjy3kfMnoCA8ny3V4dkQCofqfe9t06DCIgiAEOGy859xEf4mrdLhElgHrv2ER/xER/xkZqmcftEkIBh8JHeR3zER3ykpuv7QAWMiJioqDkUBCl8ohl2/lIOpPCJRSKMNIGJiKkCFp/2ER8xYgdFYJ775u9+700wIZGowEfqurYNsWJigMuvfcRHfMRHfMTOedoqExYGuHzaR3zER8y/QWGo5faRWu9tS3e4/gGJJgx2omUwgSlCLh+5bby2XIdkQCofqfe+t9sCBbt9xEd8xEfs+WGRqMBHfKTua90SExxgGHYf8REfqWtbN8GIBxgGH/ERH/ERH/ERg2xofgaYIuTykbvWaeNegCYncJzFb5zJR256xw11YhGYx0d8xLbz20wVkgGpbN5HfMQSFRKBeXyktnPaVCGYDPcRH/ERe7d1G5eQgCgCMGS47NxHfMSu7Z00HHAKP2RlYWxsb2NhdGVAPyRhbGxvY2F0b3JAVlZlY3RvckBAQHN0ZEBAUUVBQVhRRUFWVmVjdG9yQEBfS0BaLmV4aXQuaS5pLmnmXjD9lhMtgwlMEXJxgHAQPmKmCI3APD7iIz5S0zZtrAmJRAU+Ute3bbsKB0Mtte0jpt7QDEhl7z7iI7W+34aaYAxIdfuImUIgGe4j9m7TVqmQCMzjI7Wt7wZdsQDD4CM+Yuu4bugQk0QF/jNFvkQFPuIjdc/rNpvgAMOw+4iP+Ehd472pIkS+hDRKrfuIj/hITdu6JR4oA1LZPuIjPmKSE8+AVDbvIz7iI7Zd8wABMQAA6gQAAFsGWgjUZstgC8HabBnAIbCJLQM5BHOxZSiHwCa2DOgQzMWWYR0Cm9gyxENQF1uGmAjqYsuQE4HabBl0IlibLYNvBCix5QiPgCaImkDaZstAHkjbbBnMA2mbLcN5IGyzZUAPhG22FOtR3ATSNlsG9kDaZsvQHkjbbCncI6AJpG22DO8RrM2WIT4ClNhyzEdAE0RNIG6zpciPoCSQttlS7EdQEkjbbCn6IygJpG22FP4RsMXxNluK/wja4nibLQWIBG5xvM2WgUQQt9kymAjiNluGE0HcZsuAIojbbClWpLgJxG22DCyCuM2WoUUQt9lSuEhAE4jbbBleJFibLcWMBCWBwM2WokaCkkDgZktxI0FJIHCzZciRYDa2DD4SsMWW4UeCttgygEngFluGMQlQYstRJgFNEDWBxM2WAU2QuNkyqAkSN1uGNUHiZsvAJkjcbCnepLgJJG62DHCCxM2WIU6QuNlSyElAE0jcbBnmJFibLUOdBLOxpciToCQQudlS7ElQEojcbCn6JCgJRG62FKMSsMUxN1sKUgna4pibLUWpBG5xzM2WIVWCtdkyrEowG1uGWSneYstQKwVcbBlupYiLLQOvBCix5fCVgCaImkDoZssQLgjdbBnGBaGbLQO5IHWzZSgXpG62FOhS3ARCN1uGdEHoZsugLgjdbCnWJaAJhG62DOwSrM2WAl6CkkDoZkshL0FJIHSzpaCXoCQQutky2EuAElsOfAlogqgJxG62DPuC2M2WoV8Qu9ky+AtyN1uGf0HuZkshMsVNIHazZRgZxG62DCSD2M2WomQCmkDsZkuBMkFJIHazpVCZoCQQu9lSsExQEojdbCliJmCLA2+2FDITtMWBN1uKmQnc4sCbLQXOBGxx5M2WImeCtjjyZkuhM4FbHHmzZdiZ4i22FGATsAWiN1uKsAnaAtGbLcXYBG2B6M2WgmwCtkD0ZktxNoFbIHqzpUibwC0QvdkyzFDxFlsGGirgYstQQ0VcbBl0KFCbLcMYBSixpSijgCaImtgypBGyN1uGNUL2ZsvARgjfbBnaCOGbLQUcFTeB7M2WIY6QvdkyyBGyN1uKOQpoAtmbLQMdBWuzpcCjoCSQvdlS6FFQEsjebCn4KCgJZG+2DH8UoMSWI5QCmiBqAumbLQMpIX2zZTAlpG+2DKeE+M2WAZUQv9lSrFJxE0jfbBlYCembLUMrIX2zpXClgCaQvtlSxFJQEkjfbClmKSgJpG+2FLUUlATSN1sKXQrY4vibLcUuBW1x/M2WgpcCtzj+ZksRTgFbHKCzpRCnoC0O0NlSjFPgFgfobBnMqXiLLcU6BWyBhM6Wgp2CtkBCZ0vhTkFbIKGzpXingC2Q0NlSyFPgFkjobCnoKXALJHS2DL9VvMWWIbwKuNgyjFcRF1uG9EJEZ8uwXojobBnYCxmdLUN7IaOzpYCv4iYQ0dkyxBciOlsG+UJEZ0sxXwFNIKKzZaCvYG22FPgVlAQiOlsK/QpKAhGdLQV/BSWBiM6WAcQClNhyiFhAE0RNIKSzZSgxhHS2DCeGkM6WAcWQ0tkypBhSOlsKFituAiGdLUOLIaSzZXAxhHS2FC8W0ARCOlsKGQtKAiGdLQWNBSWBkM6WwsaCkkBIZ8vgb8VbbBlAroCLLYPIFXGxZSC5YG22DCYXzMaWIuUCtkBMZ0vBckFbIKazpYC5wC0Q09kysF/xFluG9ivgYsvgfkVcbBnkL1CbLcP8BWuzZcg/CU22DC0YBGqzZXDBIFibLQMrBgFbbBlcMQjaYssAi0HgFluGWQwCtdky0GIQrM2WQR2DoC62DPkYFKizZeDHIFCbLUM/BsHabBl8MghQYssRlkFAE0RNIKqzZSDLAFGdLYNZBojqbBnOMkBSZ8uAlgGSOluKtQyKm0BUZ8vAlgGiOluGtgwQ1dlSuGUQ0ASiOluKuAyCkkBUZ0sxl0FQEojqbCnqMghKAlGdLYVdBgFbHKuzpbjLIGiLY3W2FHgZBG5xrM6WYS+DYG22DH0ZBCix5fjLIKAJoiYQ1tkyiGaAsM6WgTQDhHW2DKUZIK2zZTDNAGmdLUVqBsVNIKyzZVDNAGGdLcNqBgjrbClYMwhoAmGdLUVrBoFbIK6zpXDNIGgLxHW2FK8ZBGyBuM6WojaDoCQQ1tlS3GYQlATCOluK3AyCkkBYZ8sgokFgF1uGEQ2C29gynGgQsMWWIUWDoC22DCsaBG6xZWjRILCLLQOMBoFdbBliNAhuY0tho0HgFsjrbClwNAjaAnmdLYWOBgFbIK+zpejRIHALBHa2FD8aBG2BwM6WIkyDgC0Q2NlSjGkQsMUBO1sKMg2CtjhgZ0tRpkHgFgfsbBnSNAjYYsuwpkHQFluGNg0Ct9gyvGkQ2MWWoU6DQG22DHYaBGuzZfjTIECJLUWoBgFNEDWxZSjVAImdLcOpBkjsbBlQNUBkZ8uQqgEiO1sKVg2Km0BiZ8vQqgESO1sGVw2Q2NlSvGoQ0AQSO1sKWA0Ct0BmZ0sRq0HQFsjsbClkNQjYApmdLQWuBkFJILGzpdDVICgJJHa2FLwaBCWBxM6W4mSDwC0Q2tlSqGwQtAVCO1uKlg0CtkBoZ0shs0HAFkftbClmNgja4qidLQXNBoFbHLWzZajZILCLLYPNBsFtbBl0NgjYYsvAs0HQFlsGnw0Ct9gygG0Q2MWWYWyDwC62DGQbBLexZWDbIGCLLUPbBgFbbBneNgjaYssAt0HQFlsGuQ0Ct9gyzG0QuMWWoW6DwC62DHobILazZeDbALGdLUPfBsjtbBn8NkBuZ0sRukFxE4jtbBlEN0BsZ8swugFiO1sK0g0CmkBsZ8tQukGwNluK1A2CkkBsZ0uxukFQEojtbClaNwhKArGdLUPsBgFKbDlmNwhogqgJBHe2DLYbILizZcDdAMGdLUPuBkjubBl0N0ByZ0vRu0FxEwjubBl8N0BwZ8vwuwGCO1sK8A0CmkBwZ0sxvkFQEgjubCnKNwhKAsGdLcX5BkFJILizpUDfIHALRHe2FOobBG2B6M6Wgn2DgC0Q3dlS9HEQuAWyO1sKUA6CtkB2Z0sxykHAFsjubClQOQjY4uCdLUUqB0FbHLyzpVDlIHCLg3e2DKscBHaxZWDlILiNLQMsBwFbbBlkOQjaYstAy0HgFlsGWw4Cu9gy5HIQ2MWWQZeD4Da2DOIcBGyxZRjnIGCLLUM5B0FbbBnMOQjaYsuAzkHgFluGdA4Ct9gyrHMQ2MWWwZ2DwC62DO8cBLexpaDnIHALpHe2FPYcBG2B9M6WAp+DgC2Q3tlS7HMQuAXiO1uKfg6CtkB8Z0vxz0HAFojvbClCOgjY4vCdLYVIB0FbHL6zpRjpIHCLw3e2DCcdBGyxZUjpIGiLLcNKB4FbbBlaOgjsYstA00HAFluGmg6Cttgy2HQQuMWWQqeDwC2Q39lS9HQQtAXyO1sKsA4CtkB+Z0sh1kHAFsfvbCnGOgja4vidLQVZB4FbHL+zZUjrIGCLLYNaB0FbbBnWOgjcYkvR1kHgFgj4bCncOgjaAgGfLcVbBwFbIOCzpZjrIGCLI3y2FHQdBG1xhM+Woq6DwC2O8Nky7HUQqM2Wga+DYG22DKIdSL2yZbjtIBifLQNvBwH5bBl8OwjWZksB3kFAG0RNbBnEOyjKZ8tA3kFhPlsG8w4K1NkynHcQrM2WIr2DgDaImtgyuHcQoMSWA76DgCaImkDOZ8sw3wFyPluG+g6Q89ky2HeAoM+W4b4DBH22FPodFDeBnM+WYb8D5Hy2DPwdIOezpejvIKAJ5Hy2FCAeBCWBnM+WQsSDoCSQ89lSkHgQlARyPlsKFA8CtjjSZ0uR4kHQFkf6bClUPAjc4kifLQOLB4FNbBlaPAjmYsvg4kEgF1sGGA8Cm9gyyHgQzMWWocaDwCa2DDseBHWxZWjzIGCLLYObB0FbbBnePAjcYssQ50GwNluGOQ8ClNhy2HkQ0ARRE8j6bBnyPEDWZ8uw5wGyPlsGPg8Q9dky9HmAqM+WAtSD4iaQ9dkyhHqArM+WQdQDZH22FKMeBDSBrM+WwtSDoCSQ9dlSoHoQlASyPlsKVQ+CkkDWZ0ux6kHAFgf7bClYPQja4mCfLUWrB4FbHOyzZYj1IFibLUOtB4HabBl2PZDYZctQ7kFQEluGcw+CktgypHsQlMSWYd2DoCS2DPEeBHaxZZD3ILCLLYO/B8FZbBlMPgjUYsvQ8kGgFlsGmg8keNgy1HwQ2MWWQeeDADe2DGYfBHaxZThBIUCJLUUKCkFJIO2zpVBBISgJpH22FCsoBCWBtM+WwQWFYG22DDAoBCixpZBBISgJxH22FDMoBCWBuM+WggaFoCQQ99kygKIQqM2WIRSFYG22DKcoSPWyZYhFIaiLLcMvCoFdbBnEUQjsYsuwjkJQF1sGkhSCutgyhKUQqM2WQSyFYG22HHMpBLRB1ATyPluGuhQkfNly+KUQ0AZRE8j7bBlGU5DyZcvQmkIwPlsG2BSC8dky0KYQkM+WwTaFgHy2DLspBOOzZehNISCfLYNvCoHabBl+UwjWZsuwnkIQG1sKEBUCt0DgZ0shokLQFgj8bClIVAjYAoGfLYOJCgFbbBlQVAjYYsuQokLQFluGFRWCttgysKgQuMWWwUWFwC22DDEqBK2xZdhRIXiNLcOPCgFsbBnCVAhcY0uRpkIQEkj8bCnWVAhEAomfLQWcCsFIIPGzpZBTISAJJH62DOUqBGyxZThXIWCLLQO6CkFbbBnUVQjaYsuwrkLgFluGdhUCt9gyvKsQlMSWAV6FoCS2DPEqBCWxZbBXIWCLLcO9CkFJbBnwVQjaYsuQr0JQElsGfRUCt9gy7KsQlMSW4V+FYG22DCErBCix5RhZIaAJoiYQ+dkymKyAyM+WAWUFRH62DCkrIPKzZVBZAZGfLUXLCsVNIPKzZXBZAZGfLcPLCoj8bClgVghoApGfLcXMCkFJIPOzpahZISgJZH62FDcrBCWBzM+WAmeFgC0Q+tlS6KwQtAVCP1uKnhUCt0DoZ8ugu0JQEluG3RWCktgy8K4QlMSWQYWFoCS2DCssBCWxZWBhISiJLYMeC0FJbBn2WAhKYsvAx0JQEluGPxaCtdkyhLIQzMaW4ZSFYDa2FLEsBCWB1M+WQpaFoCSQ+tlSzLIQlARSP1sKWhYCtjjqZ0tRy0LQFkf9bClsWQjc4qifLQMuCwFKbDl0WQhogqgJxH62DL0sIPazZfhlAbGfLQM4C4j9bBnCWUDsZ0tBzkJxE4j9bBnKWUDsZ8tgzgJiP1uKcxYCmkDsZ8uAzkKwNlsGdRaC2dhSrLMQuAVyP1sKdhaCtkDuZ0vRzkLAFsj9bCnqWQhKAsGfLcU9C0FJIPizpchnISgJBH+2DCYtBCix5UBpIaAJoiaQ/NkyrLSA5M+WoaUFJH+2DC4tIPmzZXhpAcmfLYVMC8VNIPmzZZhpAcmfLQNNC0j+bClqWghoAsmfLYNNC8HabCluWgjcAtGfLQVOC0FbIPqzpchpIWALRH+2FGAtBCWB7M+WQqyFoCSQ/dlSkLUQlASyP1sGsxaC2dhSpLYQsMXBP1sK1RaCtjj4Z0ux2kLgFgf/bClsWwhKAumfLcVtC0FJIP2zpcBtISgJpH+2FLktBGxx9M+WQreFoC2O/tlS7LYQuMXRP1uG3xaCtdkyhLcQ1MaWobyFoDa2FO8tBCWB+M+WAr6FoCQQ/9lSxLcQlATiP1sKMheKtzj+Z0tR5kIBF8f/bCnMXCji4vifLQWaCwFJHP+zZVhzIVibLUOcCwFKbBnqXAjWZstw50KAEluKPRcCt0BAaEvh50LgFggIbSlCXQjaAgGhLcWoC0FbICC0pTB1IWALBIS2FKguBGyBgNCWYtWFgC0OENpSsLoQtMUBQluKVhcCtzhAaMsw60KAEluGWxeQEdpS/LoQ2AQyQlsGcRcksNlSjLsQ2MQxQlsGcheOEdpSlLsQzMUxQlsKcxcCmzhGaEvR7kIgF8cIbSngXQhs4hihLQO9C8gIbRnsXQjmYsuQ70JgE1uGfxeCutgyvLwQoMSWAuaFoCQQEtpSxLwQlARCQlsKmReCkkBIaEsx80JQEggJbSloXghKAiGhLUXNC0FJICS0pbB5ISgJhIS2FDcvBCWBkNCWAueFoCQQEtpS5LwQlARCQlsKnReCkkBIaEux80JQEggJbSl4XghKAiGhLUXPC0FJICS0pfB5ISgJhIS2FD8vBCWBkNCWIuyF4iYQEtpSjL1Q4ARCQluKsheKnEBIaEtx9kKhEwgJbSnSXih2AiGhLcXaCwVPICS0pWh7oegJhIS2FG8vFD6BkNCWIu6F4icQEtpSzL1QgAVCQluKuheKsEBIaEtx90IhFggJbSnyXijGAiGhLcXeCwVZICS0peh7oSgLhIS2FH8vFGaBkNCWAfQFhIS2FKIvBGeBlNCWwfQFpIS2DKwvICW0ZXh9QXqHLQPsC0gJbSlkXwjOAimhLYPuC4FabBnCXwjUYstg/kJwGluG8xeCs9gysL8QnMWW4f2FACW2DPEvBHaxZZh/IbCLLQP9C4FdbBn4XwjUYsswgkOgFlsGFRwCttgyrOAQtMWWgQWHwC22FDA4BCWBoNCWIgaHoCQQFNpSyOAQlASCQluKGRwCtjhQaEtBg0PQFgcKbSlqcAjc4kChLUMODsFZbBnCcAjUYsuAhkOgFluGORyktAEAAAAAAAAAYSAAAKADAAATBFssEAAAAAkAAABEoPx/aqAiyokSlAPpGgEgD7Y7hgMIxAgAjRgBoGAjAAAAAAC9GLG4xlzMxbABERQE0IsNzGsc3UQRwEZd1EVd9GKGExuJXdiFXJAwggw3BAcYzDI0QdCLGRFtMHmRF3hBwQgy3EAEYDDLgAjBQMUYhIGhBF0EEeBGX/AFBSDIcEPwgMEsgzEE/cMg7MZfzB4cAWgIgBEMww1BaIDBLANhBFkwXQqWEgqUkhGDIhdCEAxSJUD6hwEJD9GYPTgC0xAAIxiGG4LTAINZhsIIyFhKulIhYA0KlJIRgyIXQhAMUiVwZgmMLkKAXGO4IZjAYJbhEALKRpBZAmSgYgyEAw4C0kaQDAhkDgTyhCCyCLDDDQIbiMEsQ8IEXQRxsIFt1EYGTZcCAuQON4ALhBhuCH6DDGYZFiUYMSBwIQTBIDZihi+BA8gigM4SMAMVBLFYyEBFQCwWMmJg3EMIgsGJ2EwgJBsE2BEDpBxCEAxag26CcsmPOZglaHqxIQ/4Azw6sSLoD/EQD/HoxYw98A/xGI/x+A0SgpHhhmAOwGCWQXOCXszwgxApD/Mwj/KgIBgZbiACMJhlqJ5goCI0wmBSnA6sCEpEPdQjPSgAQYYbAj4Ag1mGCQr6h0FAEfaYPTiC9hAAIxiGGwL3AINZhmgKsmC6FCwlFCglIwZFLoQgGKRKgPQPA+Ii7zF7cATzIQBGMAw3BPQBBrMM0hSQsZR0pUKQHxQoJSMGRS6EIBikSuDMEkwdmADtx3BDMIHBLAP1BJQFI7ME1UBFaAgUHDikBSMZEMgcCOQJQWQRYIcbhFwQg1kGKws6sOHIBfnIoOlSQIDcsQtwgRDDDQGLkMEsA3YFIwYELoQgGMSG3/AlvQBZBNBZgmyggiAwqxqoCAjMqkYMjHsIQTA4kdEJhGSDADtigJRDCIJBa4RPIDNmAg6zBJqGAwHOAgAAJAPy+PkhISubo5N7ywOy+iGZQwuTKyP7gqOTA7KikgtzmzN7k2sDAgKaoyMDAgL6IfkiKjMLq2Oj+wpjY3sbC6N7k/uikwtLo5sDsvohCWNjexsLo3uTA7L6IZlDC5MrI/uCo5MDsqKSC3ObM3uTawMCApqjIwMCApqjIwMCApqjIwMCmgrCCioKsvohCWNjexsLo3uTA7L6IZlDC5MrI/uCo5MDsqKSC3ObM3uTawMCApqjIwMCAooBiioKsvohmUMLkysj+4KjkwOyopILc5sze5NrAwICigEC0nIpw0ujc0lzSXNJu4ILKfzpIBof8REf8REf8REf8RFSRVj8/JB8EZXN0cm95X3JhbmdlQFZ/ZCEsbG9jYXRvckBVQ29udHJvbEBUZW50YWNsZU1vZHVsZUBAQHN0ZEBAQHN0ZEBAWUFYUEVBVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQFFFQVVxcgABRUFWf2QhLGxvY2F0b3JAVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQEBwQABabmU4aXRuaS5pF1EhhT+dBCNj/iIj/iIj/iIj/hIfZsmASVRgf9Mkb8cki8A0uQjPmLSBA8wDD7iIz7iIz5i5/ZK0PwmtgDSdPuIj+RmSAD9K/H4iI/4iI/4iI/YMYElUYH/TJG/HJIvANLkIz5S76ZKgAhOM0XOIp2CNDh+4AyY7SM+4iM+4iM3MCGFPx1E4yM+4iM+4iM+YoQEjsA8fuNMt4/4iI8YMEFVFY2P+IiP+IiP+IiP+IiPmCAB85vYAkjT7SM+YsIEEtIIAyH4zxT5iI/4SI3bKoHzm1iBRNJk+4iP2JZIMP2uREg+4iM+4iM+4iM+cg9P4UR+4AyYj/iIj/RWTVD96RT5wDBEPu0jPuIjPmLztkzQCMzjIz7iIz5i06SJ1fj5ISErm6OTe8sDqhp6c6OTe2MDoipzowsbYytreiOrYysDAgL6IfkiKjMLq2Oj+wpjY3sbC6N7k/uikwtLo5sDsvohCWNjexsLo3uTA6oaenOjk3tjA6Iqc6MLG2Mra3ojq2MrAwICmqMjAwICmqMjAwKaCsIKKgqy+iEJY2N7Gwuje5MDqhp6c6OTe2MDoipzowsbYytreiOrYysDAgKKAYoqCqoaenOjk3tjA6Iqc6MLG2Mra3ojq2MrAwIC0nIpw0ujc0lzSXNJu4QHKfzpIBof8REf8REjJlD8JyJ8xEdq3WIJHoF5/MaZbh/xER/R7ZcAqyYgWAgf8REf8REf8REf8REfsVoCbHICx1n8xpl8xEd8xEd8xEd8xFwJnskJHGfxG2fyER/BjZWA+U2MaAbcR3zkPoCCaKYIOwcGKfzpIBof8ZH9IC6k8KeDaHzER3zER3zER3ykrs2XoBKYx0d8xEd8xEd8xEd8xEcuYEEKfzqIxkd8xJgJKCCKAAwZLh/xER/xER+x67ugBscPnAGzfcRHfMRHfMTG7X9g+U2MaAbcR3zEGgmoagKChfARH/ERH/ERH/ERWySIBObxER/xER/xER/xEZskmKqi8REf8REf8REf8REfMUuCRmAev3EmH/ERH7FngkeiAh/xER/xER+xbRIDPPyQlYWxsb2NhdGVAf2QhLGxvY2F0b3JAVn9kMyhhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAc3RkQEBRRUFBWFFFQVZ/ZDMoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHJAH0tAWm5lOGl0bmkuaSREObi54fki6hsjk7uLe9LLsztrAzI6ockjI3tbSyM7k0OyOqHZA4tTK6M7AuOTg7IikouzG3O7E2uDQgIaI6ODAgIaI6ODAgIaI6ODAgoKwgLqijI6odkDi1MrozsC45ODsiKSi7Mbc7sTa4NCAgIBiiqKMgqBgYoqCjI6ockjI3tbSyM7k0OyOqHZA4tTK6M7AuOTg7IikouzG3O7E2uDQgIaI6ODAgICAYISMulDC+NziXNJc14CbAfJgBF8hEf8REf8REf8REf8REbJngE5vEbZ/IRH/GROjf/geY3sQKJpMn2ER85iwgp/OkgGh/xER/xEfu2/oHEoabRQZpJsk0CSqIC/5kiPzokXwCkyUd8xCoJIKQRBkLwnynyER/xEVKDO/z8xPyQ2JWN0b3JAVn9kMyhhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBWf2QhLGxvY2F0b3JAVn9kMyhhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAckAAc3RkQEBRRUFBQFhabmU4aXRGTXB9W/YREg+MAyRT/uIj/iIj9i7SRJY1QQEC+EjPuIjPuIjPuIjPmKfBBIQRQCGDJeP+IiP+IiPWCTBJDCPj/iIj/iIj/iIj/iIxQ8Q04FIhktQCczjIz7iIz7iIz7iIz5S04ZIYE1O4DiL3ziTj/iIj/iIj/iIlRI0wDD4iI/4iI/4iIkSNBIV+IiP+IiP+MhJZEjhTwfR+IiP+IiP+IiP+IiP+IjpEmDVBAQL4SM+4iM+4iM+4iM+UtskjXH4+Yn5IbErG6N7kwOqGnpzo5N7YwOiKnOjCxtjK2t6I6tjKwMCsvohCWNjexsLo3uTA6oaenOjk3tjA6Iqc6MLG2Mra3ojq2MrAwICmqMjAwICmqMjAwKKKgoKAsLScinDS6OzSwLEfyLCR3yElFEOP2RlYWxsb2NhdGVAPyRhbGxvY2F0b3JAVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQEBzdGRAQFFFQUFYUUVBVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQF9LQFouZXhpdC5pLmkkCrX4+SH5Iiqbo5N7y/uSC3M7KwOy+iEJY2N7Gwuje5MDqhp6c6OTe2MDoipzowsbYytreiOrYysDAgKaoyMDAgKaoyMDAsoKwoIqCqoaenOjk3tjA6Iqc6MLG2Mra3ojq2MrAwKKKgqqipEBCioKsvohCWNjexsLo3uTA6oaenOjk3tjA6Iqc6MLG2Mra3ojq2MrAwICggEC0nIpw0ujc2F7e4Mrw0ujc0lzSbNCAur/kEiafGAYIp/GfcRHfOQEnMKJ/MAZMB/xER+xU4Lq37CJkHxgGCKf9hEf8REfsVkC6V+Jx0d8xEd8xEd8xEdIB3zx80PyRVQ2Ryf3lvclF+Z2VgZk9UMSxsb2NhZG9yYHZPVDMocWJldG9gVHJwdkRSUX5jZn9ibXBgQENEdHBgQENEdHBgQENEdHBgSUFYQFVRRk9UMyhxYmV0b2BUcnB2RFJRfmNmf2JtcGBAQEAxRVFGQVAwMUVBRk9UMSxsb2NhZG9yYHZPVDMocWJldG9gVHJwdkRSUX5jZn9ibXBgQENEdHBgQEBAMEpOVShpdG58L29gZXhpdG55LmknYEFVL400E0PuIjPuIjPuIjPmLIBJZEBf4zRX50SL4ASJOP+EjNkxZI4ecriEytbo7uqy3MrS6MjS3vy65sjO5N7iuMLe3MrYwMaI6ODAgoKwgrqCgIqigIK6go6GsJSMulDC+NziXNJc0lzSXNHgmsHyYARfIRH/ERH/ERH/ERHzFOgkeiAv+ZIl+iAh/xERKGKfx8BZGp1c3RfbWFudWFsbHlfdmVjdG9yX2FsaWduZWRAc3RkQEBZQVhBRUFQRUFYQUVBX0tAWm5lOGl0bmkuaS5pLmkydiYLUH1uxIh+YiP+IiP+IiP+IiPGCrB9KdT5APDEPm0j/iIj/iIBRI4kxM4zuI3zuQjPmKeBIvAPD7iIz7iI5ZMEElU4D9T5EtU4CM+UvcmS1D9HxJJkw8MQ+TTuI/4iI/wAAExAAAaAAAAW4YgUIstQxHYxZYhCexiy+AEZ7FlsAK12DJ0gVpsGchAgoctQxkEdrFlQIPALrYMcRDUxZaBFAK72DKgQmAXW4ZWCM5iy1ALgVpsGXghUIstwzhI8bBlIIfALrYM5xDYxZYBHoK6AAAAAAAAYSAAAGYAAAATBEUsEAAAAAMAAAAEoAQoQTmUAgAAAADxMAAACAAAACuE3miFFYNv9IYrrBB+4xVWDODxG7CwIfCNDQF4AAAAXcNAnIYwbEAEBAF0DUaBGkJbtEVbUDCCdA3GoRrEW7yFW1Awggw3DAEYzDIEQqADFWPQEAjQRRCBa8zFXFCwgXQNQwAbCwUAyHBDsCdgMMswEMGIQdELIQgGr5EyxCwB0UUIhl4MNwQJGMwyBEIQDgQAAAAtAAAAVj8Q/QMSTRjsRMtgAlOEXDdwIIU/HURjgATK5ASOs/iNM5n+QCMwj4/4iN84k01fAFQ4kS84zeALCwE01HMEBlL4RDNY/AAxHYhkgQQM0ggDIfjPFPnICSCFE/mBM2BmP6D8JlYgkTT5iPEPKH86RT7iI/VtggSLwDw+4iN+40yGP5D8JrYA0uQjB1AQzRRhtj8w/X9AGEhT+1LkAD7t03Zt/gPSPyDRhMFOtAwmMEXIhQMAATEAAAgAAABbhiCgiS3FEJwGAh5biiIwDSQ8tgxLgBJbiiagCaImAAAAAABhIAAAIgAAABMEQSwQAAAAAwAAAKRrBIA82O7wDQAAADMRtZGoCin0akRgGmuxFr0aIZwGW6xFBgF2xADJBRAEg9YImUBOTsMYNiCGggCSCLAjBkZPgCAY+Ma+BOLD4UAGAAAANj8wTMxzAAXRTBFm9QPJ3wET4CM+AgAAATEAAAIAAABbhiJQCwAAAAAAAABhIAAAJwAAABMEQSwQAAAABAAAAKRrBIA82O74DbDd4RsAAAC9GlGgRlu0xbABEQwE0KsRRmq4RVtkEGBHDJBcCEEwaI2RCegkNYxejThWAy7eYsTA8IkQBIP1sJdgGDYgiIIANgkHAggAAAB2P3D8HTABPnIABdFMEWb5A8jfARNw+4jFDxDTgUgAAAExAAADAAAAW4YgUIstwxGoBQAAAAAAAGEgAAAkAAAAEwRBLBAAAAADAAAApGsEgDzY7vgNAAAAndpAnAZbDBsQgUAAndpQoAZbZBBgRwwQkAhBMGgNkQnmBDWKTm0wVMMtRgwMnwhBMFiPegmGRcKBAAAACQAAACY/YPzodBDRARREM0WYxQ8Q04FIZj9Q/B0wAYY/YPwdMAE3AAExAAACAAAAW4YgUAsAAAAAAAAAYSAAABoAAAATBEEsEAAAAAIAAADkwXbHbwAAAL0aIZSGWqjFsAERCATQqxGDaayFWowYFD8RgmCQHvISaDgQAAYAAABGP3D8HTABPnIABdFMEWbxA8R0IBIAAAABMQAAAgAAAFuGIFALAAAAAAAAAGEgAAAsAAAAEwRDLBAAAAACAAAA5MF2x28AAAA5BNhejSBOgy3YYtiACAYC6NWIAjXagi1GDIqfCEEwSA96CYYbCrcAg1kGIQhGDAqwCEEwIAt7IWYJhCXCgQAAEQAAAAdQEM0UYRcADZMT+QKwLP9ALMREmP1A8nfABPiIj1j8ADEdiGTyA5J0ONQy/AKwLP9ALMREnEAzTE7kC04zIQ1FAAAAATEAAAIAAABbBiFQCwAAAAAAAABhIAAADgAAABMEQSwQAAAABAAAABRgqOMWcEEMCDch3AQAAAAbhAMBBAAAAAdQEM0UYRY/QEwHIgEAAAAAAAAAYSAAACsAAAATBEMsEAAAAAIAAADkwXbHbwAAADkE2E5tIE6DLYYNiGAggE5tKFCDLUYMip8IQTBID3oJhhsKtwCDWQYhCEYMCrAIQTAgC3shZgmEJcKBABEAAABmP3D8HTABPnIABdFMEXYB0DA5kS8Ay/IPxEJMhMUPENOBSCY/IEmHQy3DLwDL8g/EQkzECTTD5ES+4DQT0lAEAAAAAAExAAACAAAAWwYhUAsAAAAAAAAAYSAAAB4AAAATBEEsEAAAAAQAAAAUYKijFmwhDAg3IdwEAAAAnRohlEZaqAUFAchwQxAPYDDdQAjBBuFACwAAAFY/oExO4DiL3zjTARREM0WYzQ8UP3wAk8UPENOBSGY/sEgPIfgSsRDCBAAAATEAAAIAAABbhiDYDQAAAAAAAABhIAAAYgEAABMEQSwQAAAACAAAAESgCEjBGAEIgiAIgiAIgiAxRgCCIAiCIAiC/D8AAAAA8TAAAAQAAAArhN7QgxWDb/TGHmwIfAMAMxH3kKgKKcxE4EOiKqSQQoAdMTBeAQTB4B/QBjWCEQPjF0AQDGCiZ5AhhQA7YmC8AgiCwT+kTV0EIwaGTYAgGLwHvSRDxzMgrAEXFCggHc9QuIZcUKCA3BBIx0M0sWEXdkGBAtLxEMps4AVeUKCA3BBIx0NItrEXekGBAtLxEA9u9AVfUKCA3BDIGQF0PATGG6HRFxQoIB0PUfnGaPwFBQrIDYGcEcBJQZxFyF2LHBbJXYkcBsllltxgwA0G3GDAaZNcZskJQdwmyXmRnBDEbZOcZskJQdzBwDEFHDPACYKcIMgJAVxQB3J1EMQdiNzByQlBXKAHcgojx4CBnBDABX4ghxxwASjISZLcE8AFoyA3CkFcRcldaiAnBHEBKsg5TVygCnJGARewgtzGwAWuIOcKQYwYGK8AgmDwD+7zH6vQMxSzYCP7YSM2MmxABAIB9AwFLdwIf9yIfwwbEIFBAD1DUQs40h84MgvDBkSQEEDPUNhCjvgHiOTIsAERMATQMxS3oCP/ESIhMmxABBEB9AwFLuwIiIiILQwbEIFFAD1DkQs8EiK3wCPDBkSQEUDPUOhCj4gILpDIsAEReATQMxS74CMjkgu5MGxABGNAACMGBjiAIBi4hPzwwi2MGBivAIJg8A/40yO2sL0QDgQAALYAAABmSYAw1HL7iI9YMMEBDEOv+4gJExwMtfS7jxgnwSFRgY/4iPEPEJbtI6ZJkDDU4iP37SMWSpAw1FLrPuIjNkmgMNRy+4iP+Ii9EhwMtdi2jxgmAQIMA+4jPmLNBIUALAtvhgQGdvuIj5gqwSFRgY/UtLUSHBIV1LqP2CzBAQzDzfuI0RIcDLXcvY8YKYECDAPuI3juIxY/QEwHIhkxwQJEEYAhw3X7iMkPBJDZDwSSoRIUwDD4iLESHAy11LmPmP7AYPmIIRIgDLXgPuIj5ktwMNSy4z5iuQQHQy357iN2TNAAUQRgyHDdPmLfVkqgAMOg+wjO+4ghEzRAFAEYMly7j9i5DRIcDLX4iI8YKEHCUEt9+4iPmDJBA0QRgCHDdfvIndspgcFQy+4jtkzQAFEEYMhw7T5y74ZLcEhUkNs+YokEBzAMPuIj9j9QXD7iI5ZM4ABRBGDIcNW1j9i7GRMwQBQBGDJcde0jlkpgMNTC+4hREiQMtfiITfuIXRIkwDD4iI37iPkPFAy1+IjZEhzAMOS0jxgzgQNEEYAhw1XXPnL3dktwMNSS1z5irgQHQy317iPmSYAw1NL7iI9YIIFx2T7iIyZKkEhUUO8+4iO2S3BIVKDbPmK/BAcwDDzuI5ZJgADDoPuIjxgswcFQi637yAEURDNFmAETHAy18LmP2ChBAgyDj+C2j9gmgcJQC+4jN+4j1kmgMNSi+8it+4hJEigMtdg+4iM+YoQEBeYjPmK6BAdDLXrtI1ZLcDDUguM+YsUECxBFAIYM1+4jBklQSFTgI1ZJgDDUYvuIj5gjAcJQi+4jPmKfBIlEBTXtIz5isQQHMAz27iP2SIAAw7D7iI+YLMHBUIvN+4itEhwMtdS2j1gvwSFRwX77iA0THBIV9LyPGCOBkeU+4iNmSmAw1OIjvSkSFJmP+IjxEhwMtei3j9j9ABIRhT8xj22RBAlDLT7iIz4CAAExAAAbAAAAW4okIAnEN7YUS0ASiG9sKZyALRDf2FJAAVsgvrGlmIK2QHxjS1EFbYH4xpYiC9wC8Y0txRa4BeIbWwZaCEpiy2ALQUlsGXAhKIktgy4EJbFl4IWgJLYMvhCUxJYBHIKS2DKIQ1ASWwZyCEoCAAAAAGEgAABsAgAAEwRELBAAAAAJAAAARKAIyoAUjBGAIAiCIAiCIP8PYwQgCIIgCIIgiP/DCAAAAAAA8TAAAAgAAAAiR8iQUQbEAQMAAABpbnQAG4be8Ida2DD4hm/UAgAAADMRWaIqpDATcQ+JqpDCTMSVqEop5BBgRwyMVwBBMPiHtRGNoGcoFteYC9dwDQoUkJ6hMGCjLmADNoYNiEAggJ6hcGLDLmIDLyhQQHqGIpkNvJgNvRg2IAKBAHqGIqKNvKCNhwIFpGcoGNvYC9uIhg2IQCCAnqGgboMvbiOiQAHpGYonN/wiN6ZhAyIQCKBnKC7d+IvQ0A0KFJCeoZB4IzRGgzeGDYhAIICeodB6QzRIgzQoUEB6hqL6DdIwDdMYNiACgQB6hqIDj9I4jY0CBaRnKDDxOI3U6IYNiEAggJ6hAIPxQA3V6ChQQHqGYisP1WCNb9iACAQC6BmKMTCP1QgD86BAAekZCg89WmMM0GPYgAgEAugZCjNID9cgA9igQAHpGYowWA/YMAPZGDYgAoEAeoYiDdgjNs7gDChQQHqGggzcYzbSIA2GDYhAIICeoWCD96ANNUgDChSQnqE4g/iwDTZYg2EDIhAIoGco3kA+boMN5IMCBaRnKNSAPnLDDehj2IAIBALoGQo5qA/deAPeoEAB6RmKNrgP3ogD3xg2IAKBAHqGog7wozfkYA4oUEB6hgIO9OM36KAOhg2IQCCAnqHAg/0AjzqoAwoUkJ6hmIP+EI87uINhAyIQCCDnIMCOGBivAIJg8A+8wx9BvzPQwX+Qx7ABEeQBAfQ7Qx2ACHkMGxCBHhBAvzPYQYiIx7ABEewBAYwYGOAAgmDgErWDB3cwYmC8AgiCwT/sDogUeQcBdsTAeAUQBIN/CJ/2CDqeARRIBD2oDhQQOgMF5IQASFNATghguCEIBWGWIRCCE0gBRgwKAATBACfmJrigFGTYgFACAjhTEIjaQAGhMlBATgjiiEBoDRQQ8gMF5IQgDgmESEEBIT5QQE4I4phAZgmG4YbKEjIgED1DMQs9IiJBQIECMtxwBUIWBGK6gRcCoUMZ2khMAgoSjAwISIcywFGZBBQkGD1D0QtnwiKGQYEC0jMUv5AmLlIUFCggWRCQnqEQBzaJkSCgQAE5IoA7grggHWDEoABAEAxwAneCC9RB+oXhHOZEGjYgAoEAhhuGdXCuHQiabggKoWco2uFOeGRiKFBAeobiHfLER5yKAgXkhiAuMKRfGOKhT+5h2IAIBALoGQp68JMx6TQKFJCeobAHUCkT7qNAAbkhgGsC6RcGfCAVMBg2IAKBAHqGYh9KRU3IQKNAAekZin44FTbhzIACBeSGAI4KpF8Y/mFVwGDYgAgEAugXBpBgFVahQEHpFwaRcJU6oUAB6RcGkoCVlaBAQaFKARk2IF4hIIBZgmGgQhGJgBEGKhR+CBRhoEKxhwAROh5CJmxlT/Zk2IAICALoeIiZuBU+2ZNhAyIgCKDjIWgCV/okT4YNiIAggBED4xVAEAz+IY5ExRZGDIxXAEEw+Ic4ahWW0HAgAOwAAABWSMAAUQRgyHDVuY8YJwEDRBGAIcOV3z5igwWFLyGNYqYEDBBFAIYM1077iK0SMEAUARgyXDvvI+ZOoABRBGDIcPG1yRMoQBQBGDJcfG78Aw4QRQA2EAKA+YiPWDYBgwzXEzmMj9S6bfMEChBFAIYMF89bPEHBUAt/mysBgd0+Yo0EDBBFAIYMl837iF0SMEAUARgyXHjuIwZMMDDUYvUEChBFAIYMV18bLEEhAMtyH0BBNFOEGTdBAQxDvls3QSFRQc6bN0EBDEPemz6BAkQRgCHD1euGT1Aw1NLfpkzAIMP1RA7jI/WuW/7AERGFPzGPQRIwQBQBGDJc9+0jpknAAFEEYMhw5bSPGD+BAkQRgCHD1ff2ScAAUQRgyHDlvI9YKgEDRBGAIcO15z5yAQdS+NNBNDZOUAxIpecmTZAgw/VEDoPrRkxQMNRi25ZPoABRBGDIcPW5xQ8Q04FIhkxQMNRi9yY/oACG4UeERC2TLRIwQBQBGDJcdu4jtkswDEhlogQMEEUAhgyXfvuIkRMMkk+fwIEUPrFIhCUTFALz3LnpDwSQpRMUEhXst/kPLEAUARgyXLePmCMBA0QRgCHDddM+YoQEDBBFAIYMV337yA0kSOETzVDTu7USEJftI9ZMUAjMg9c2ScAAUQRgyHDdvI/YMoECRBGAIcOF09ZJwABRBGDIcOW5jxg0gQJEEYAhw4XnJkswWD5i0wQKEEUAhgwXvhs8QQEMA28bLsEgMI/hDwwMMBkiAQREEYANhABgPtLvPmKWBAwQRQCGDBd++4jxEhQDUtW2VRMoQBQBGDJcOW23BAUwDDVtuQQFMAx1bdcEChBFAIYMV37bL8EgUYFpEyhAFAEYMly5bvcEBTAMvW2BBAsQRQCGDBfvI1ZKwABRBGDIcOm8j5ggAQNEEYAhw1XTPmKHBAwQRQCGDFfN+4ihEjBAFAEYMlz77SMWScAAUQRgyHDduY+YOEEhMI9+2ysBkeE+YuEEChBFAIYMl27bMEEhUYFdWzmBAkQRgCHDpfd2TFBIVGDzBk5QMNSi06ZIwABRBGDIcNm3j5hgAeJLSKPUO2+BBYgvIY1S771REkRAFAHYQAgA5iM1XfuIjRIwQBQBGDJceu4jlknAAFEEYMhw4byPWC3BAAyDgRJEQBQB2EAIAOYjNZ37iJ0TKEAUARgyXLtt6wQKEEUAhgzXntv/wAJEEYAhw5X7iLETKEAUARgyXDtv/gQLEEUAhgxXTdumTlAw1LLjAAExAABbAAAAWwYjKIktAxKUxJZBCUpiy8AEJbFlcIKS2DJAQUlsGaSgJLYMVFASWwYrKIktAxaUxJZBC0piy8AFJbFl8IKS2DKAQVASWwYxCEpiy0AGQUlsGcwgKIktAxoEJbFlUIOgJLYMbBCUxJbBDYKS2DLAQVASWwY5CEpiy0AHQUlsGewgKIktAx4EJbFl0IOgJLYMfBCUxJbBD4KS2DKAQlASWwZRCEpiy0AKQUlsGVAhYIstgyoEbbFlYIXALbYMshCUxJZhFoKS2DLUQlASWwZeCEhiy+ALQUlsGX4hKIktgzgEJbFlGIegJLYM5hCUxJbhHIKS2DK4Q1ASW4Z5CHxjy2APgW9sGfAhKIktgz4EJbFl6IegJLYMJBGUxJYhJYKS2DKsRFASW4aXCEpiyxATQUlsGWYiKIktw00EJbFlyImgJLYMOxGUxJbhJ4KS2DKERVASW4axCEpiy1AWQUlsGcwiKIktw1kEJAEAAAAAAABhIAAAWgEAABMESywQAAAACAAAAKRrBIAUjACMEbTsvq6w75sm2w9jBOkvivJ8//+//wMA/c5gpIZbUKCAXBBIvzMkrAEXFCggFwRyRAD9ztDARlxQoIBcEMgRAQw3BA0xyxAMwXDD8jDFwHRD0AjDDYvEFAPTDUEjDDcoFVMLTDcEjDDccBDEdEOBBMMNwUBMNxBCMNwQcMEsAyEExwh0ykCHEHTDIDcMckIARxBygQAjBgUvhCAY4ITMBLcEMktAjBgUvBCCYIATNKPNEhADHYowEAIsBP3OsAbvQRsUKCAXBNLvDG4gH7ZBgQJyQSBHBNDvDHJgH7dBgQJyQSBHBDDcEMwBMctQHMFww1IHTDEw3RA0wnDDggdMMTDdEDTCcIOyB0wtMN0QMMJww0EQ0w0FEgw3BAMx3UAIwXBDIArBLANiBMcIdMpAhxB0wyA3DHJCAEcQcoEAIwYFL4QgGOAE3gS3BDJLgIwYFLwQgmCAE3qjzRIgAx2KcBAGTxR3BoEMNwSvIMwyJEpwrXAGcqtQBnJCAJcKYyAnBDBiUPBCCIIBTsxOcAFCww2BLQizBMpAhV4ICV0gG4QDAQAA4AAAAFZMUDDU4iMmTMBExFQBi0/7CI7bIMEhMI+P+IglEiQC89S2j/jIHShI4RPN4CP4baIECkMtuI/4SG1bKkEiMI+P+EjN2yhBAgyDj/hIfRstwSIwj137iI/YvX0SJAy1+IiP1LTBEjBFQxj17iM+YufGS6AAw+AjvY/cvB0SJEVDGL2P+MgVLEjhTwfR+MhtnwCDFD7RDLbuIz5iwwQDQy3mSJAIzGPXPuIjB1AQzRRh9kiQMMDl1z7iI4ZIoAhOM9S1j/gIiYD7YStzO6NDA7IqG6N7kwMCiioSCnLC0nIpw0ujM0mCZEAqe/cRH7FFAkVwmqHufcRHTJdAYajFR3gfuXVDJTgE5vGRejdDAkRgHtxHfMRyCZYBqWzeR3zkzq2ZgBCcZrBKgoShFrv3ER8xSwIEGAYf6X3EIgmOAal8xEcuIRGcZvCniCLsliAZkMpHfOS+LX6AmA5EMlmCRWAem/YRH7F3EoL3w1bmdkaHBmRVNkb3JgcEFFUkFOSEpeVShpdGR1NjlwQJQy037SM+YpoECUMtt+0jPmLLBMOAVMZJoETEVAGLT/uIsRIoAvPgPuIjdm36AwXmIz5yAwhS+EQz+IiREhyZj/hIjRshAVI0hOEjPmKUBAhDLT7C+4ipEihFQxg+4iN1b7YEi8A8Nu4jPnLXhkxgMNSi+4j5EizAMNy1j/gITtsxQQEMg48YLsEyIJW9+4iP3LgBEywMtdy2j/gIXlsrwVI0hNH7iI/YtvEPIAy14D7iI2fgIIVPNIOt+4iP4LYBEiAMteg+4iOWTGAAw7D7iJkSKAy16D7iI3Vu+QMHQy0+4iNGTDAIzHMBCVL400E0PmKgBAfmIz5S1xZIgADDsPuIjxgjQSIwj037iI9YI0HCAJdP+4iPWCEBIjjN4CM+YpAEicA8Nu4jPmKnBAowDLuP+EitWy3BwgCXX/uIj9y0TRIkA1LZvI/4iMkPFM50EJHtEiwMtdi9j/jIvdsqgSI4zeAjPmLTxkxACMyTW//AAQyDj/iIuRIwgtMMde0jPmLfhkmQAMNw1z7iIzZLsDDA5dM+4iM2b50ExuUjPtJbLAEjOM1Q9z7iI7Zu9wPF5SM+Yv4DReYjPnIKiOA0g080g/USLAy13LSP+MjdmyKBUjSEUe8+4iMmSFAIzOMj9kqwCMxT2z7iIzZuxgQGQy24jwAAATEAAAgAAABbhiBgiy0DEbTFlgEJ3GLLsAYBW2wZ3CBoiy2DHARuAQAAAABhIAAAOwEAABMERywQAAAABAAAAKRgBGCMoGX3dYV93zTZfgDxMAAABAAAACuE3lCDFYNv9MYabAh8AwD9zlCgRlpQoID0O4OhGmtBgQJyQwD9zqC0RlxQoID0O8PyGnNBgQJyQwD9zvDIxl1QoID0OwNEG3lBgQJyQwAXBHLHIRcIcI4jFwgw3BBUxCxDMATDDcfFFALTDUEiDDc8GlMQTDcEkTDccHVMYTDdEGTCcMNBENMNBRIMNwQDMd1ACMFwQ0AGwSyDIQTHCHTKQIcQdMMgNwxyQgBHEHKBACMGBS+EIBjghM4EtwQyS0CMGBS8EIJggBM8o80SEAMVijAQwnBDAAfCLENhBMcGAh0aDHRkQNAsgTHQoQiFKgSqQAx0KEZhC4EtEAMdilKIQyAOxK3BIBcHg5wQwOEBIScE0PEMfjAi5zFsQAQCAVwcIHJ3oMgJQZwfMHJ1sMgJQRwfNHKi8MgJQXQ8BCq0iHzIx7ABEQgE0PEQqeAi8yEfwwZEYBBAx0OowovQB3wMGxCBQgAaDgQAAADCAAAAJ+AghU80g637iI/4iO0SbBFR+BPz1L4UOYBP+7TvS5ED/MhwGStBwVCLjxglwSIwj037iI/4iOESHAy11LePGCbBIjCPjfuIj/iIKRIcAvP4iI/Y/sCA+YhpEiwDUtm7j/iIj5gjgSIwD+4jPuIjtkpw+BLSKD5iqQSJLyGNUus+Yv0DBHb7iMkPCBN9BYvgNIM/RRThIwdQEM0UYfZIsBQNYfQ+4iM+YrYEBkMtvY8Y/gCR2T5iggTElfuIMRIoRUMYPuIjPmKXBAsDXH7tIz7iI2Y/MGQ+YvEDQkEbIYEBDIPuI9ZJsDDUYvc+4iM+YogECkMtuo/4iI/Y/EAA2SfBwlDLTfuIj/iIxRIElpESMBExVcDi0z7iI/ZKYDDUovuImRIUA1L5iOkPFMAw+AjJgAx+3N7k2sLY0vTKyICsysbo3uSAgKKKhIJ+gqxigLC0XMrw0uhuQEEKn2gGH/ERSyRQgGHYfcRHfMRoCQqJCnzEGgkUwWkGH/ERH7FKgoUBLp/2ER/xEYMkYASnGeraR3zER+yUwBiQyvYR0yU4JCqodx+xSQJGcJqh7n3ER3zEYAkMYBh2HzFPAgUYBh/pfcRHLJJgEZintn3ER3zEegm6iCj8iXlqX4ocwM992velyAF+ZLhs21wJDGAYfIS/gAUp/OkgGh/xEZslQBhqwX2kvq2WAGGoRfeROrdbgkOigpr2EbMkWATmsWsf8REfMVmCg6EWH6lt4yRQGGrxEd5HfIRE4P2wlbmd0aEBWZWN0b3JAQFFFQkFOWFpuZThpdG5pJkkAVM0hFHvPuIjPmKoBMaAVLePGCDBcPmIbRIsA1LZvI/4iI/Y/4ABDAPuI5ZLcDDUUus+YqoEiS8hjVLnPmKLBInAPD7iIz5ihgQKQy24j/iIj1gmQTIglY/4iI8YL0EXEYU/MU/tS5ED+LhP+74UOcCPDJdN2yFBAgyDj/iIjxgowQIMw137iI/4iBUSJAy1+IiP+IiVEhQC8/iIiRIsDLXcto/4iI9YK4HBUAvuIwABMQAAEQAAAFuKIHALxDe2FEPgFohvbCmMoC0Q39hSIEFbIL6xpVgCtkB8Y0vRBGyB+MaWQRQCktgytELxFluGVyjgYssQC0VcAAAAAAAAAGEgAABbAgAAEwRKLBAAAAANAAAABKAEiEARlEHBJ5QHJSiGgiiEcigJ0jUCQArGCEAQBEEQBEGQ/wfaMAJAHmx3AAcQiBEAAPEwAAAUAAAAIkfIkFEKBBgAAAAAGAEAAD9BVl9SZWZfY291bnRfYmFzZUBzdGRAQGxvbmcTBAJVNgy+4Q+1sKHoDfCwBfD4jQ1DeICHLWwYwgM8fgMAAAAjBkVYhCAY3Ae9MBnw276PCGpDL/Ji2IAI9IIA+j5CsI29uIthAyLYiwHo+4jhNviCL4YNiOAggL6vIHCDL/qiLzIIsH1fYuiGX/zFX/jFX/yFX/R9ybEbfwEaoPEXoAEafDFsQAi8QQAjBkg5hCAYtAbNDKWSG86wARFQBND3JQhvgEZohEZfhAZvjEYGAXbEANGFEASD1rCZ4FRgA+r7EsU3RGM0RuMvRsM3fGPYgAggAuj7kuU3RoM0SAM0SMM0TGPYgAgiAuj7EgY8SKM0SiM0SmPbhg2IQCKAvi9pwqM0TMM0RMM0tm3YgAgmAuj7Ekc8TOM0TsMuTkM8UiODADtigOhCCIJBa/BM0Cq2YfV9CUQeqJEaqYEXqUEe5DFsQAQWAfR9SVQeqaEaqpEXqsEarDFsQAQXAfR9iWQeqrEaq6EXqxEGYTBsQAQYAfR9yXQeq8EarLEXrBEGYTBsQAQZAfR9BoUerNEardH1fUmVHq3hGq4BBq6RHrCRQYAdMUB0IQTBoDXGJqCV3uj6vuRaj9eADdgQA9hYj/VIIsCOGCBiEYJg0BplE9jKbXzDBoTgEUDfl2TtERuyIRtkIBu0QRvDBkTwEUDfl2juIRuzMRtlMBtpkAbDBkQABgTQ9yXbe8wGbdCGGdBGGqTBsAERhAEB9H0GBx+0URu1QQbDBkTQBgTQ9yVdfNSGbdjGGdhGfOBGBgF2xADRhRAEg9ZYm4BXyqMM+r7km4/bwA3cSAPcmI/5GDYggjIggL4vAQP6wI3cyA01yI3d2I1hAyIwAwLo+5IwqI/c0A3dWAPdgAM4GDYggjMggL4vEQP70I3d2A022A04gINhAyJAAwLo+4wxuI/d4A3eUINhAyKgAwJo+wYywI/e6CIIO8gP3/CNYQMiEAMC6CKIO9CP3/CNYQMiGAig70vOYD9+AzzAAzzAAzx+Y/bgOAPwCAAjGGgAQYYbAjYAg1kGIQj6h0H4D/CYPTgC8ggAIxhmCYSBik0cAFkIugZDDUTkPM7jPM5j2IAIBAIgBAQZNiCSgwCGGwI5AINZhmII+odBKBHzmD04AvUQACMYhhuC9QCDWQaiCLJguhQsJV2pEMQHBUrJiEGRCyEIBqkSJLMExSxDYjj9w/CwCHzMHhxBfAiAEQzDDYF8gMEsw5EEKTFdCpYSCpSSEYMiF0IQDFIlqPqHoZKR+Zg9OIL7EAAjGIYbAvwAg1kGJAnIWEq6UiHoDwqUkhGDIhdCEAxSJdhmCRINBwIaAQAA9kggAVEEYMhw1baP+IiP+IjNEkQ/TACK5CM+4iO7j/iIpRIo/0o8PuIjPmKeBNc/INGEwU60DCYwRcjlIz7iIySBcfj5IfmBsaKSC3ObM3uTawMCIoEJAgL6IbkrC1v7gqOTA7KikgtzmzN7k2sDAgKaoyMDAooqCgoCCioSsvohmUMLkysj+4KjkwOyopILc5sze5NrAwICigEC0nIpw0ujc0lzSTuDBin86SAaH/ERHzFDAuR/gYUifMRKCbx/QKIJExtkQoAFdqJlMIEpQi4f8REfMWGCR2AeH/ERH/GRWvcRQyUw/pV4fMRkCabJCRxn8Rtn8hEf0X3ER24AQgp/OojGR3yE9xEfOYQJKfzpIBof8REf8RGb9pEDSJDCnw6i8RGDJWj+dIp8xEdsH/ERIyWggCgCMGS4attHbNpHfMRHjJBA+WECUCQf8REbJpCqCQgWwkd8xEd8pOZ9xBAJpt/EJCQjfMRHfMRHfMRHbJAg+V2JkHzER4yRIAKiCMCQ4bp9xEd8xEeskSACogjAkOHSfcRHfMRHbJJgAqIIwJDh0n2kpn3ER3zEMgkmIIoADBmu20fq20d8xEfMkSACogjAkOHqfcRHfMRHLJRgAqIIwJDhun2k3n3ER3zEKAkmIIoADBmu3kfq2kd8xEdsk2ACogjAkOHSfaTGfcRHfMRECSYgigAMGS7dR2reR3zER4yTYAKiCMCQ4ep9pM59xEd8xBIJoN/EIkLyER/xER/xERslmIAoAjBkuHofqXsf8REfsUoCCogiAEOGq7Z9pLZ9xEd8xHAJmqpofMRHfMRHfMSICZ6qaHzER3zER+reR+yVgIqIwp+Yx5ciB/Bpn/YRH7FOAgqIIgBDhqu2faTWfcRHfMROCYw/nSIfIRWMw88PyQ+NFZVcmNuc2ZtcGxAQ0A/JXVnY2hccnRyQFZVcmNuc2ZtcGxAQ0BwdGRBQVFFQUFBRkBVMDFBQkZDVD8kcWphcGdkXHJ0ckBWVXJjbnNmbXBsQEFAMEJCWSxleGp1Lmt0SQNUEBAvhIz7iIz7iI1ZL0AjM4yM+4iM+4iOkhH/4+SH5miqj+4Kjk/uSK4P7CnMj+ypzCxNjK/uaQwuTKyMDsqKSC3ObM3uTawMCAvohmUMLkysj+4KjkwOyopILc5sze5NrAwICmqMjAwIKKgoKwooqCrKikgtzmzN7k2sDAooqCrL6kioz+xp7q3Oj+xILmysDigEC0nIpw0ujs/gBBTAMPyIkaplMl+D5XYmQfMRHfKTGfeQCIqTwp4NofMRHfKSufcRYCajJCRxn8Rtn8hEf8ZGa9hGTJJCAKAIwZLhuH+l9xEd8xFoJoB8mAEXyER/xER/xEbMkaP4HiIhm8hEf8ZE7iJDCnw6i8REf8ZF69xEDJpB+mAAUyUd8xEd8pM59xFYJFP+JCB/xER8xXwKnmoBgIXzER3zERyyQgBCAZTFegkVgHh/xER/xkSOIkMKfDqLxER/xER/xEQAAATEAACoAAABbhiEIjy1DEYjHluEI1GLL4ARzsWWYgpLYMlRBSWwZrqAktgxZUBJbBi8oiS0DGAQlsWUQg6AktgxkEJTEloENgpLYMrhBUBJbBjgISmLLIAdBSWwZ6CCgiS1DHgQlsWXYg6Aktgx9EJTEluEPgpLYMoRCsBZbBlIIUGLLYArBWWwZUiE4iy1DLAR2sWWQhcAutgyzENjFlmEXArXYMphDoBZbhnYI1AIAAAAAYSAAAA8AAAATBEHfVwSkgRZpkRYjBsUthCAYvEa4BBoOBAAABgAAAAdQEM0UYRY/QEwHIpn8gPG/wEIRAAAAAAAAAABhIAAAGgAAABMEQSwQAAAAAQAAAESgCAApbF0KtJIOUAgGCgCSEQNjLEIQDP4jMNpCw4EACQAAAAdQEM0UYRY/QEwHIln9wFAVjd0PEAKwLEY/YFQTECwEAAAAAAExAAACAAAAW4YgUAsAAAAAAAAAYSAAACQAAAATBEMsEAAAAAIAAADkwXYHcAAAADkE2L6PIE6DLdhi2IAIBgIYbiDaAgxmGYQgGDEowCIEwYAs6mWYJRB2CAcCDgAAAAdQEM0UYRcADZMT+QKwLP9ALMREWPwAMR2IZPIDknQ41DL8ArAs/0AsxEScQDNMTuQLTjMhDUUAATEAAAIAAABbBiFQCwAAAAAAAABhIAAACAAAABMEwb5DOBAABAAAAAdQEM0UYRY/QEwHIgEAAAAAAAAAYSAAAAkDAAATBFssEAAAAAcAAABEoCLK/6c8aqCcKEEpFALpGgEgECMANGIEAAAAXcOwuEbRTRTBa9AFXdBF12A0sHHURV3EBQkjyHBDUIDBLEMTBF2DAc2Gghd4cRcUjCDDDUQABrMMiBAMVIxBGBhK0EUQwW3wxV5QAIIMNwQNGMwyGEPQPwyCbvjF7MER/IUAGMEw3BCABhjMMhBGkAXTpWApoUApGTEociEEwSBVAqR/GBDwCI3ZgyMoDQEwgmG4ITANMJhlKIyAjKWkKxWC1aBAKRkxKHIhBMEgVQJnlsDoIgSoNYYbggkMZhkOIaBsBJklQAYqxkA44CAgbQTJgEDmQCBPCCKLADvcIKiBGMwyJEzQRRBHGtQGbWTQdCkgQO54A7hAiOGGwDfIYJZhUYIRAwIXQhAMYgNm+BI3gCwC6CwBM1BBEIuFDFQExGIhIwbGPYQgGJxIzQRCskGAHTFAyiEEwaA15iYgF/yAg1mCpmso8GA/4gA8foMCEGS4IYgDMJhliJygfxgE/xCP2YMjGA8BMIJhuCEgDzCYZXiiIAumS8FSQoFSMmJQ5EIIgkGqBEj/MCAkUh6zB0eQHgJgBMNwQ6AeYDDLAEUBGUtJVyoE70GBUjJiUORCCIJBqgTOLEHUNQynoCLu0TUYqLAi7wEf8MEeFBAgww3BKYjBLIN0Bf2AQbjIfMzHfMwHBQHIEfcBww0BK4jBLMNkBR2AMLhCBk2XAgIkDQJ5gSzABUMMNwQhQgazDBUVjBgQuBCCYBAbc8PXjAikEUBnCayBCoKoLGmgIiAqTRoxMO4hBMHgRPAmEGYJrq7B0IUeCREREZEQGTYgAh8hgGEDYsIFAkgqwA4bEAHKEEDXYPDCj5AIiZDIiFAAggw3BLUABrMMGhb0D4MgJiMye3AEJyIARjAMNwQoAgazDJkWZMF0KVhKulIhcBEKlJIRgyIXQhAMUiVIZgk0DQcCADMCAAAkjT34+Yn5ISlzCxNjK/uaQwuTKyP7MpN7a/uiQ0ubA7KikgtzmzN7k2sDAgKaoyMDAkoqCgoCwtJyKcNLoyMZkMfPDwlZ2Ryd3FsekNUPyRxamFwZ2RccnRyQFZVcmNuc2ZtcGxAQ0BwdGRAQ0A/JF1GZWVgdG91XGBvb21gY3ZvcF51cWBrdHJDVD0kYG9vbWBjdmxyQ1Q/JHFqYXBnZFxydHJAVlVyY25zZm1wbEBDQHB0ZEBDQHB0ZEBDQHB0ZENBUEFZQUZDVD0kYG9vbWBjdmxyQ1Q/JHFqYXBnZFxydHJAVlVyY25zZm1wbEBDQHB0ZEBBQDFBUUZDVD8kcWphcGdkXHJ0ckBWVXJjbnNmbXBsQEFAMEJCWSxleGp1LmkuaS9oVXEjhTwfR+IiP+IiP+IiP+IiPkCzq4IesLIyN7W0sjK4M6IckjI3tbSyM7k0OiAhojo4MCCiqKCgIK6ooiOhrCUjLpQwvjc4lzSXNpAkagXl8xEd8xEdq3vgHkl84kGWIiMYyCSiJCvxnivzlkHwBkCYf8RFrJlD+lXh8xEd8xKoJmqpofMRHfMRH7NoKCaB/JR4f8REf8REf8ZF7aJDCnw6i8REf8RFjJmCAKAIwZLh8xEdOQRocP3AGzPYRH/ERH/GRG5iQwp8OovERH/ERH/ERH7FBAkdgHr9xpttHfMRHjoIaHD9wBsz2ER/xER/xkdo2WQLnhwlAkXzER3zERyyQgPlNbAGk6fYRHzFqAqiagGAhfMRHfMRHbNqICR6JCnzER3zER3ykpg2aAPphAlAkH/ERH/GRejdcguJvAIYwRILpdyVC8hEf8REf8REf8ZFLeJDCnw6i8REf8REfuYkIKfzpIBof8REf8ZG6PgcGKfzpIBof8ZHbVgmeyQkcZ/EbZ/IRH7EtmeD6N2wiJB8YhsinfcRHfMRH6txoCRiBeXzER3zER/ADKIhmijD7JWAE5vERH/ERH9ktlQD5V+LxER85CQYp/OkgGh/xEZ5UYQo/X0FkanVzdF9tYW51YWxseV92ZWN0b3JfYWxpZ25lZEBzdGRAQFlBWEFFQVBFQVhBRUFfS0BaLmV4aXQuaS5pLmkuaTE0pAtW+PmJ+SERC5tLG/uao5NLczsDIqr6IRlDC5P7opMLS6ObAyICmqMjAwKy+iEJY2N7Gwuje5MDIgKSAQKaoyMDAooqCgoCwtJyKcNLo7uABSn86SAaH/ER2yVQBObxER/xEd38B5bfxIhmwH3ER4yRgKomIFgIH/ERH/ERH/ERHzFFgkhgHh/xER/xER/xER8xSYKpKhof8REf8REf8REf8RGrJGgE5vEbZ/IRH/ERYyVYflciJB/xER8hMcDDD1lZGBvb21gYXRnQD0kYG9vbWBjdmxyQ1Q/JHFqYXBnZFxydHJAVlVyY25zZm1wbEBDQHB0ZEBDQHB0ZEFBUUVAQVlRRkNUPyRxamFwZ2RccnRyQFZVcmNuc2ZtcGxAQkAzQ1xKQlksZXhqdS5pLGglhLn5+SL6Iyubo5N7yvuTC3M7KgKx+SMLY2N7Gwuje5ICsfkjm0MLkysi+4OjkgKyo5MLc5sze5NqAgIDm6MiAgIDm6MiAgIDm6MiAgLKCsKCKgqx+SObQwuTKyL7g6OSArKjkwtzmzN7k2oCAgGCAooqCrGJggIKKgqx+SMLY2N7Gwuje5ICsfkjm0MLkysi+4OjkgKyo5MLc5sze5NqAgIDm6MiAgIBggIC0XMrw0uhc0lzSLiNCCn86iMZHfMRHfMS2rX+g+U2sQCJpsn3ER0gRbvDzE/NDMocWJldG9gVHJwdkRSUX5jZn9ibXBgQENEdHBgQUVRQUBISl5VKGl0ZnlAQQ0ggDIfjPFPmIj/iIaRJQEhX4zxT50SH5AiBNPuIjtkyw/CYmIRnhIz5CanCHn5+YHxK7sjG6Nzkgqx+SObQwuTKyLzg6OSArKrkwtzmzN7k2ICCgOToyICCrH5IwNra3sTC6Nzkgqx+SObQwuTKyLzg6OSArKrkwtzmzN7k2ICCgOToyICAgGSCgOToyIKCooqAgICwtlzK8NDp7JoAmJ3CcxW+cyUd8xEcsl4D5TSwiJB/xER+xSAKrmoBgIXzER3zER3zER3zER8yTQAKiCMCQ4fIRH/ERH/ERgySYBObxER/xER/xER/xER+x+AFiOhDJfAkOYBh8xEfskMCanMBxFr9xJh/xER/xER/xESMlaIBh8BEf8REf8RELJWgkKvARH/ERH/GRg4CQwp8OovERH/ERH8ntmOABhsFHfMRHfMRH6vswHqTwp4NofMRHfKTuzZIA8Z+I8BEfMVgCppqAYCF8xEd8xFwJEoF5fMRHfMRsCZaqaHzER3zER4yQgPo/JJImHxiGyKdxH/ERHzkBp3AiP3AGzEd8xEfMlKD6N2wiJB8YhsinfcRHfMRHSAd88fND8kVUNkcn95b3JRfmdlYGZPVDEsbG9jYWRvcmB2T1QzKHFiZXRvYFRycHZEUlF+Y2Z/Ym1wYEBDRHRwYEBDRHRwYEBDRHRwYElBWEBVUUZPVDMocWJldG9gVHJwdkRSUX5jZn9ibXBgQEBAMUVRRkFQMDFFQUZPVDEsbG9jYWRvcmB2T1QzKHFiZXRvYFRycHZEUlF+Y2Z/Ym1wYEBDRHRwYEBAQDBKTlUoaXRufC9vYGV4aXRueS5pJ2BBVS+NNBND7iIz7iIz7iIz5iwAQTEEUAhgyXj/iIj/iIj/SkBVL4+QoiU6ubo/tqC3OrC2Njy/uyKxuje5P7CmNLO3MrIwOaoyMDAsoKwgoqCoIqCsIKKgr6WgLScinDS6NzSXNJc0lzSTNHAuuHCUCRfMRHfMRHfMRHfMRHbJPgkajAf6bIl6jAR3zETgmmP50iHxiGyKd9xEd8xEeMlyD50ynSfcRHrJbAqSYgWAgf8REf8REDJHAmJ3CcxW+cyUd8xDoJFoF5fMRHfMRHTJmg+tMp8oFhiHzaR3zER3yk1gEAAAExAAAcAAAAW4YhsIstwxHYxZaBCc5iy0AFarFl2AK12DKIgQQPW4YxCOxiy2AGgV1sGd4gqIstAygEZ7FlQIVALbYMrxCoxZbBFoK52DLoQmATWwZwCOpiywAPgVxsGeIhoIstwzwENrFlqIfgLLYM/RCoBQAAAAAAAABhIAAAWgEAABMEUCwQAAAACAAAAESg/P//////////A8qj/H8qoJwqop4qqAZI1wgAAAAAww1NbKDBLEMgBCMGBFmEIBjERrpwP1A8snEXdzEXFBAgBzE73BDUBhrMMhxDcENf4AUQDzcEBRnMMhxEcIMBww1GQAbTDcIRXDAaMNwQUGIwy1AgwXCDEJHBLMNhBCMGBC6EIBjEBr3wQAeBFHAwwIEw0EEgBRsMbCBgYEHAiEFBDyEIBvcxMkEGBPKCDC64NIMAmkJT7QSEIBs2IAKDAGYJkuGGJj3CYMSgAEIQDECFV4IRg4IeQhAM7mNlnFmCZKCCwA4wQAYqAuYgkH6gUIP2kA3ZiI1hAyJQAwIYNiC4gQBGDBB3CEEw2Iu1EdBADbwOQBDUYNiACHAlAIYbuDMQg1kG5Qmuuw3oBww3iA/bsA3bsA0KApDhhkENxGCWYXGCDkAQ0CCDpksBAZIFgbyADeCCIYYbgvEgg1mGhglGDAhcCEEwiI2a4UOD8oA0AugsgTNQQRCNpgxUBESDKSMGxj2EIBiciM4EwizB0w8YfPAf5EEe5EEewwZEQBHA9kE4EN4AAAA3oCCFTzSDj/gIqQEUfr6CyNTq5ui+2sLc6sLY2PK+7MrG6N7kvsLY0s7cysiA5ujIgICygrCCioKgioKwgoqCvpaAtFzK8NLoXNJc0kySQAGGYfcRH/ERYyV4/nSKfGAYIp/2ER8xUQIIiCIAQ4bLR3zER3DaBgkOgXl8xEfOoEEKfzqIxkd8xEdOwEAKn2gGUoIb/ISxsb2NhdGVAf2QhLGxvY2F0b3JAREBzdGRAQFFFQUFQRUFEX0tAWm5lOGl0ZEc4uCHrCyMje1tLIyuDOiHJIyN7W0sjO5NDogIaI6ODAgoqigoCCuqKIjoawlIy6UML43OCgkOiQp8xEduoUEKfzqIxkd8BK/tf2AQmMdaCZY/nSI79yWkUUx+IPlPwvolJCOsk6AQmKe+j8EZHD9wBsz2ER/xEaMfKH4tMqQDKIhmijD7JCD+dIpskiABmsFHfMRHzJOgAIahzq9gQQp/OojGR3yEdNALPz8kX0FsbG9jYXRlX21hbnVhbGx5X3ZlY3Rvcl9hbGlnbmVkQFVfRGVmYXVsdF9hbGxvY2F0ZV90cmFpdHNAc3RkQEBAc3RkQEBZQVBFQVhfS0BaLmV4aXQuaS5p94AghU80g62bIIHhRD7iI2ZIgAjMU/uIjxgmgSIAy+IjPuIjxkjQCMzjN87kIz7iI6ZJ4ETEVAGLT/uIj9y8NRJAETFVwOLTPuIjOZ3rF3AghT8dRHMIDFL4RDP4iI/cuwESGL+JRYR0CglS+NNBNDVuhATHgFQ+4iOWSrAAw+AjPuIjuG2HBAcwDD7iIxY/QEwHIhkkASMAy+IjPuIjPkIi+IWfr6EwtrE6tjC6sq8zubc7OjSgHxKxsLm0sa85Ork0tzMgoqofkjG0MLkvOrmwNLo5ICKgOToyICCrH5IwNra3sTC6NzkgIiAZIKA5OjIgoKAioaCvpa8lIC2XMrw0OgslSATm8REfuXtbJEgE5vERH7l1uyRgBOap/caZfMRHbJPg+E1MQjLCEAkSgXl8xEd8xDIJnIiYKmDxaR/xEbw3RYIBGAZLJKB8KXIAX3oIgVqAiRh8xEfMksABogjAkOHyER/xEXskSIBh8BEf8REzJUgkKvARH/ERmx9Q/q/xBYeIBMIcCQ5gGPI6z42TQAGiCMCQ4fIRWyWI/g2bCMkHhiHyaR/xEQAAAAABMQAADAAAAFuGIqCLLUMYBHWxZVCDQC62DGsQ0MWWwQ0Cm9gyzEFgE1sGPAjqYsuACoFNAAAAAAAAAABhIAAADwAAABMEQSwQAAAABAAAABRgqEMcxsENCDch3AQAAAAjBkVZhCAYkIWuBBwOBAAAAgAAAAdQEM0UYQAAAAAAAGEgAAApAAAAEwRBLBAAAAAFAAAAFGCoIx3UoQ4INyHchDzY7ggOAAAzESySqAopdIZGYBprsRZqoRYZNN1hAyJADQLoDI0BNdqiLdiiLYYNiMAggM6wIFLDLdzCLYYNiMAggCwC7IiB0RMgCAa+wS9B6XA4EAAAAAYAAAA2PzBMzHMABdFMEWb2A8sPH8DkIz7iIwABMQAAAwAAAFuGItiNLcMRqAUAAAAAAABhIAAAKQAAABMEQSwQAAAABAAAAKRrBIA82O74DbDdERwAAACdYVGgRlu0RVsMGxDBQACdYWGkhlu4RVtkEGBHDJBcCEEwaI2RCegkNYzOsDhWAy7g4i1GDAyfCEEwWA97CYZhA4IoCGCTcCAJAAAAB1AQzRRhdj+Q/B0wAT7iIxY/QEwHIln+gPJ3wATcPuIjAAAAATEAAAMAAABbhiBQiy3DEagFAAAAAAAAYSAAACcAAAATBEEsEAAAAAQAAACkawSAPNju+A2w3SEcAAAAfSFRoEZbtMWwAREMBNAXEkZquEVbZBBgRwyQXAhBMGiNkQnoJDWMvpA4VgMu3mLEwPCJEASD9bCXYBg2IIiCADYJBwIIAAAAdj9w/B0wAT5yAAXRTBFm+QPI3wETcPuIxQ8Q04FIAAABMQAAAwAAAFuGIFCLLcMRqAUAAAAAAABhIAAAGwAAABMEQSwQAAAAAgAAAOTBdsdvAAAAnWEhlIZaqIVaDBsQgUAAnWExmMZarIVajBgUPxGCYJAe8hJoOBAAAAYAAAAHUBDNFGFGP5D8HTABPuIjFj9ATAciAQABMQAAAgAAAFuGIFALAAAAAAAAAGEgAAAtAAAAEwRDLBAAAAACAAAA5MF2x28AAAA5BNjOsCBOgy3Ygi2GDYhgIIDOsChQoy3agi1GDIqfCEEwSA96CYYbCrcAg1kGIQhGDAqwCEEwIAt7IWYJhCXCgQAAABEAAAAHUBDNFGEXAA2TE/kCsCz/QCzERFj8ADEdiGTyA5J0ONQy/AKwLP9ALMREnEAzTE7kC04zIQ1FmP3A8nfABPiIj/gIAAExAAACAAAAWwYhUAsAAAAAAAAAYSAAACwAAAATBEMsEAAAAAIAAADkwXbHbwAAADkE2L6QIE6DLdhi2IAIBgLoC4kCNdqCLUYMip8IQTBID3oJhhsKtwCDWQYhCEYMCrAIQTAgC3shZgmEJcKBAAARAAAAB1AQzRRhFwANkxP5ArAs/0AsxESY/UDyd8AE+IiPWPwAMR2IZPIDknQ41DL8ArAs/0AsxEScQDNMTuQLTjMhDUUAAAABMQAAAgAAAFsGIVALAAAAAAAAAGEgAABnAgAAEwRVLBAAAAAEAAAAlKAUCoF0jQAQiBEAAAAAAPEwAAAEAAAAK4TeAIMVg2/0RhhsCHwDADMRYpCoCil0EYSxGnABFxRsICMGhjqAIBj4hK4EQxdBDK0hF3FBAQgy3BAYYDDLQARB/zAIsEEXswdHUBcCYATDcENgF2AwyyAQQRZMl4KlhAKlZMSgyAUQBINUCZD+YUBs4y5mD45gLwTACIbhhoAvwGCWYSACMpaSrlQIQoMCpWTEoMgFEASDVAmcWQKiazAy3giN0AgN0KAABBluCCowmGVAiqB/GITfGA0KEtBZAmOgIhGK5RhuCE4DDGYZkCNA4TRAYNwgKYYgMAIDGEYTgmA0QQBmGRJDGDEgcAEEwSA2eIa7BoMMzoM1WIM1WIOCDYQaEIS+DaRrKIL1IAPYgI1hAyIgCKBrKAT2KIPYgA0KQJBhA0IoCGC4ISgDMJhlaJSgfxiE95iN2YMjoA0BMIJhuCGoDTCYZViaIAumS8FSQoFSMmJQ5AIIgkGqBEj/MCD1YRuzB0egGwJgBMNwQ7AbYDDLwDQBGUtJVyoE4EGBUjJiUOQCCIJBqgTOLEHTNRh4sB91AB7g8RsUjCBdg6EH/XEH4iEevkHBCDLcMARgMMsQOUESAXbEAMkFEASD1sibQF3+Iw+6CIIPQsQ8yoMCEGS4IdADMJhlgJ6gfxgEEkGP2YMjSI8AMIKBChBklgAaqAADfnCEh/pgA+kiiCZF3MM9hg2IQCCALoJwVOQ93GPYgAgIAiBoBOkihGA+hg0IKSCAWQKpaxhUoUVOYcTgMAsQBAMfwZlASoVZAolIYQMZMSh6AQTB4DV4JqBS2EBGDIpeAEEweI3TCbIVAuyIAZILIAgGraE6wb7AiCp0EUQryMh92AcFIMhwQ7AKYDDLQE1B/zAINZIfswdHoB8BYAQDFSDILAE1UAEGPiEJE7nCBtJFELagI//xH8MGRCAQQBdB3MKOgMh/DBsQAUEAGg4EAHgBAACmSbD8K/H4iI/kPnIODVL400E0PuIjd264BNG/Es/tIz7iIz7iIz5inwSNwDw+4iM+4iM1b6sEym9iRDP4iI+YIoHyr8TjIz7iI5ZJsPzpFPmIj9w+YqkEzG9iCyBNto/4CAmCPX5+SL6K2uDYwsbKvsTCxta+7tLo0L7q3Ormysi+xsLgwsbS6PKAgoqErH5I5tDC5MrIvuDo5ICsqOTC3ObM3uTagICA5ujIgICAfkjsysbo3uSArH5I5tDC5MrIvuDo5ICsqOTC3ObM3uTagICA5ujIgICsfkjC2NjexsLo3uSArH5I5tDC5MrIvuDo5ICsqOTC3ObM3uTagICA5ujIgICAZICA5ujIgICCioKCfoJ+eMjKxtjo8uDKWsLq6N58gICCioSsfkjm0MLkysi+4OjkgKyo5MLc5sze5NqAgIBigIC0XMrw0uhc0lzSrmBagGbwl0Pyp4gifMRHfOQGHqTwp4NofMRHfMRHLJYAm5zAcRa/cSYf8REf8REf8REfsWSC5F+J5/YRHzmAgmimCLNTgqYqGh/xER/xER+xYYLndyVC8hEf8REfwWnzH1h+VyIkH/ERHzkDyTqQhfAFpxl8xEd8xEdIBG7w8xPzQzKHFiZXRvYFRycHZEUlF+Y2Z/Ym1wYEBDRHRwYEFFUUFASEpeVShpdGZ6YEUDUBwUL4iI/4iI/4iDESQJMTOM7iN87kIz7iI6QGOPj5ifkhmUMLkysj+4KjkwOyopILc5sze5NrAwICmqMjAwKKKgoKAsLScinDS6ObobFbguhPp8j2ER/xER/xER+x+AFiOhDpFB6k8KeDaHzER3yk7k1+QAEMw48IiVomEyRgqgkIFsJHfMRHDJFgqYrGR3zER3zERgmgHyYARfIRH/ERH/GRe6iQwp8OovERH/ERH/ERH/ERQyZI/nSKbB/xEZMlqH5XIiQf8REf8REf8REf8RE7JHCqCQgWwkd8xEd8xAwJFoF5fMRHfMRHjiFCCn86iMZHfMRHfMRHLkJBCp9oBh/xEdslSH7hQJYhIpoTaJDCnw6i8REf8RHDH3gAw/An5vGJRqIiYjBCAueHCUCRfMRHfMRHDJiA+Vfi8REf8ZGbN04CaXICx1n8xpl8xEd8pNatkaD5XYmQfMRHfMRHDJLgEZjHb5zJR3zER3zEQgmgagKChfARH/ERH7Fp4yVIBGBZcB/xEVICOvzMoYXJlZF9mcm9tX3RoaXNAf2QlLmFibGVfc2hhcmVkX2Zyb21fdGhpc0BWVHJhbnNmb3JtQEBAc3RkQEBRRUFBf0EWf2QzKGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEByQBhabmU4aXRWf4A8qdT5CM+Yq0Ei8A8fuNMPuIjNknACMxj+4iP+IiP3IFkHchC+IEzYD7iIz7iIySKOvj5gfkhmUMLkysj+4KjkwOyopILc5sze5NrAwICmqMjAwKKKgoKAgoqErKCiQEC0nIpw0ujs/0B5F+Jx0d85CYepPCng2h8xEd8BK+tkkD50ynyER/xkQtYkMKfDqLxER85hAYp/OkgGh/xkdq2+YHCmQ4iIknYxA9c3Rzal1jY2BrQD4ld2RjdmxyQ1Q/JHFqYXBnZFxydHJAVlVyY25zZm1wbEBDQHB0ZEJDVD0kYG9vbWBjdmxyQ1Q/JHFqYXBnZFxydHJAVlVyY25zZm1wbEBDQHB0ZEBCQDBDQHB0ZEFBUUVAQVlCRkNUPyRxamFwZ2RccnRyQFZVcmNuc2ZtcGxAQkAwQkJZLGV4anUUSLMAw+IiP+IiPGC0B5D8R4SM+4iM+4iM+cgsRUvjTQTQ+4iM+4iN2bboEENIIAyH4zxT5iI/4iJUSNALz+IiP+IiP+IgJE0iTEzjO4jfO5CM+4iN3b48E0M85VDP5tI/4iI/4iHUSPL8rEZKP+IiP+Ei9WzEB4j8R4SM+YoAEicA8PuIjPmKvBNK/Eo+P+IiP+IiP+IiPWP+AMzmB4yx+40w+4iMAAAAAATEAADAAAABbBiFAiS1DEZzFlqEJ1GLLQAVqsaXQgrNAfGPL4CG+sWUgA8Q3tgxnIL3DlgENEN/YUqxBgBKIb2wp2CA4C8Q3tgxtEKDEluENArvYMsRBYBdbBjkI7GLLoAeBWmwZQiFQiy3DKQR2sWVIhQA3tgyvEJzFloEWgrPYMtxCgBJbhlwIUGLLsAvBWWwZeCGwiy2DLwR2sWUYhwAltgzlEKDElkEdgrPYMrxDcBZbBnkIUGLLQA8BSmwZ7CE4CwAAAAAAAAAAYSAAAE4DAAATBEosEAAAAAUAAABEoAjKgBIUAukaAaANIwAEYgQAAPEwAAAqAAAAIkfIkFEKRD4AAAAAdBAKAD9pbml0aWFsTWF0cml4QFRyYW5zZm9ybUBAUUVCQT9BVk1hdHJpeEBAVzRTcGFjZUBAQFo/aW5pdGlhbE1hdHJpeEBUcmFuc2Zvcm1AQFFFQkE/QVZNYXRyaXhAQFc0U3BhY2VAQEBaOiAlYWdnLnJlc3VsdAAAACuE3+iNFQN4/IZvrBDCAwxWDOIRHmGwIQCPDYF4AAAAMxFZoiqkMBORJapCCjMRWaIqpJBDgB0xMF4BBMHgH9ymNILhhsUuwCCJADtiYLwCCILBP8DNaQRJBNgRA+MVQBAM/iFuUCOYZRiCoWsoItpY8iIvKNhAhhuCBQxmGQYhGDEogBAEAz9RlTHpGgzhNtaCL27jNihQQHqGQskNv8iN3Bg2IAKBALoGo9ANt/gL3QgNChSQnqFoeCM0eGM0hg2IQCCArsFAeiMuRKM3LAoUkJ6hgH6DNH4DGzYgAoEAugZjAQ+6KA3wwChQQHqGYhKP0xAPbdiACAQC6BoMZzzuAjVUYzwoUEB6hsIqD9VgjfIYNiACgQC6BiMyD71YjdZoDQoUkJ6hyNCjNV7jNYYNiEAggK7BoNKjL1wDNsSAAgWkZyi49YAN2SCDYQMiEAigazAu9gCN2JgNMqBAAekZis89ZqM2zGDYgAgEAugaDO09RoM20OA9KFBAeoZCDOLDNtQgPoYNiEAggK7B6OTDNG5jDXKDAgWkZyjKgD5yow12Y9iACAQC6BoMMKiP1NANN3ADChSQnqFAg/vgDTiAg2EDIhAIoGswxgA/WKM34gAOKFBAeoZiDfTjN+ZADoYNiEAggK7BMIP9eA3wmIP9oEAB6RkKN+gP8aiD/hg2IAKBALoGIw38QzbGww7KgwIFpGco4gBEygMPzmPYgAgEAugaDDYIkdowjzzQAwoUkJ6hoIMRQY894INhAyIQCKBrMN6ARHAjPfiADyhQQHqG4g5MZD38wA+GDYhAIIARAyMWQBAMSiJ88CAPRgwOWQBBMBgJ8REFPciDWQKiZyhE4UTY40ROhAIFpGco+CBF3CNFUmTYgAgEAugZilJQkfdQkfigQAHpGYo/YJH4YJH5GDYgAoEAeoYCFVpEPlrEFChQQHqGQhRehD5eBBWGDYhAIICeoVgFGKkPGEEFChSQnqEoBRm5DxlRhWEDIhAIoGcoXGFG8EM/ZoQCBaRnKFChRvSDP2pk2IAIBALoGYpYsJH96I/+oEAB6RmKVcCR/viP/xg2IAKBAHqGghZyxD9ARBYoUEB6hsIVdgRERIQWhg2IQCCAnqG4BR4JkRGhBQoUkJ6hiAUfGZESsYVhAyIQCKBnKHThR0gEF36EAgWkZyhoIUxMRBfCZNiACAQC6BmKXhCTE9mFFKFAAekZilsgkxTphRUZNiACgQB6hgIcykRFfMEXKFBAeoZCF86ERcABHIYNiEAggJ6hGAc0aZFwAAcKFJCeoegFNXmRcRCHYQMiEAigZyjMYU1gZBzWhAIFpGcowKFNZKQc2mTYgAgEAugZinRwkxkxhxqhQAHpGYpxgJMaQYcbGTYgAoEAeoaCHeLERtJBHShQQHqGwhzmBEfWgR2GDYhAIICeoXgHOskRdmAHChSQnqFIBzvZEXdwh2EDIhAIYJaA6BoGeriTFckgwI4YILsAgmCwF/YTpEObvMOIgfEKIAgG/xBDbWIOIwbGK4AgGPxDDLXJOYwYGK8AgmDwDzHUJukwYlD0AgiCwWuUjj2MGBQACIKBn7ANyWQ9BNgRAyQXQBAMWkN+grHBE3joGox70JMf+ZEf8REKQJDhhgAewGCWASmC/mEQ+iRMKEhAZwmMgYpEKJZjuCEoEzCYZUCOAIUyAYFxg6QYgsAIDGAYTQiC0QQBmGVIDGHEgMAFEASD2NAf7hoMkSgVNVETNVETCjaQLoIYiVNhEzYZNiACgQDIAUG6CKIkUsVN2mTYgAgEAtBwIE8BAAAGSQABUQRgyHDVvI/Yt4+YLwEDRBGAIcNV5z5ioAQQEEUAhgwXnvvIjfuIVRMwQBQBGDJc+e0j9k3AAFEEYMhw7bSPGDkBA0QRgCHDtfM+YugEyr8Sj4/4iI8YLQEERBGAIcO18z6C7z5iiAQPEEUAhgxX7iM17yNWS+AAUQRgAyEAmI/4iGkSQEAUARgyXHfuIzftI1ZKAAFRBGDIcOW3j9y7j5gxAQNEEYAhw2XzPmKuBBAQRQCGDJfO+wh++8gVTAvQDP5ySP4UUYSP+IiPGDQBA0QRgCHDhec+YvQDhfQAAmGFBBIQRQA2EAKA+YiP1LqPHEBBNFOE2SIBBEQRgCHDVdM+YtM+YvsDR0QU/sQ8Vk7g/EiDTAiwmMAUIZd9EkBAFAEYMlz47SP37SM2TcAAUQRgyHDltI/YKwEERBGAIcO10z6C4z5iyQQMEEUAhgzXffuIiRMwQBQBGDJce+4jhk3AAFEEYMhw5byPnIFkHchC+ILTDD7iIz7iI3ZI8ABRBGDIcN0+Uu8+cgKJ4DSDP0UUYeoE0OQEjrP4jTP5iI/4iM0PGAwwRchl8QPEdCCSyQ8ogGH4ESFRy2SUBBAQRQCGDJed+4it+8gFNAvQDP5ySP4UUYQREzBAFAEYMlx27iO2TcAAUQRgyHDpt48YKgEERBGAIcOV8z5y9z5itwQLEEUAhgzX7SPmSAABUQRgyHDVuY/Yto/YMQEDRBGAIcN10z5ivQQMEEUAhgxXffuIZRJAQBQBGDJc9+0jdu8jZk3AAFEEYMhw5bmPGDMBA0QRgCHDdfM+YqIEEBBFAIYMF877yJ37iMkSQEAUARgyXHvuI7juI/Y/oExO4DiL3ziTKRI8QBQBGDJcvI/UvY8YIUEiMI+P+I0z2TpB87sSIfmIj/iIj5g7wSMwj984k4/4iI/4iE0SQEAUARgyXPbtI3buIxZJQAFRBGADIQCYj/S7j9i4jxgnAQREEYAhw3XzPnLXPmLPBAwQRQCGDBd++4gJEiB/OkU+4iOWSlABUQRgAyEAmI/UdO4jOO0jpAR0+JlDC5MrI/syk3tr+6JDS5sD+iEpcwsTYyv7mkMLkysj+zKTe2v7okNLmwOyopILc5sze5NrAwICmqMjAwKKKgoK+gmy+iGZQwuTKyP7gqOTA7KikgtzmzN7k2sDAgKSAcLScinDS6OzUQIIiCIAQ4Yrp33k1n3EWAkgIIoADBkuPfcR3PYR8yZggCgCMGS4dN5HLJgAAqIIwAZCADAf6XcfsXgCRmAe20d8xEd85A4k60AWwg+cAfMRH/ERHzFdggWIIgBDhov3EWskgIAoAjBkuOrbR+zaRw5hQQp/OojGR3zE5gmUP50iH/ERH7FdAgaIIgBDhqumfcTuCZZ/JZ7cR3zER6yToAKiCMAGQgAwH6np2kdu20dMmYABogjAkOG6cx8xYAIGiCIAQ4ar5n3EYgkgIIoADBmu/fYRPPcRCydggCgCMGS49ttH7J1gAYbBR3zER3zE6gmWP52i20d8xEdslQACogjAkOHSbx/Bax+xYQIGiCIAQ4bLvn3E2gmgn3OoZvJpH/ERH/ERsySAgCgCMGS4bN5H7N1HrJkgAqIIwAZCADAfqenaR8yUAAKiCMCQ4cpzH7l5HzFpAgaIIgBDhgvnfeQIEMFpBp9oBssmiIAoArCBEADMR2o69xHjJmCAKAIwZLj03EeMfwCJiMKfmMe2/gEkIgp/Yp7bcAkWIIoADBmu3EduQBGcZvALYJEIuySAgCgCMGS4btpHbN5HAAExAAB/AAAAWwYmQIktRRSUBCIeW4opKIlDPLYUVVASiHhsKa6gJA7x2FJkQUkg4rGl2IKSOMRjS9EFJYGIx5biC0riEI8tRRgEJYGIx5ZiDIKSOMRjS1EGQUkg4rGlOIOgJA7x2FKkQVASiHhsKdYgKIlDPLYUbRCUBCIeW4o3CEriEI8tRRwEJYGIx5ZiDoKSOMRjS1EHQUkg4rGluIOgJA7x2FLkQVASiHhsKfYgKIlDPLYUfRCUBCIeW4o/CEriEI8tRSgEJYGIx5ZiFIKSOMRjS1EKQUkg4rGlOIWgJA7x2FKkQlASiHhsKVYhKIlDPLYUrRCUBCIeW4pXCEriEI8tAy0EJbFlsIWgJLYMuBCUxJZBF4KS2DLwQlASWwZfCEpiywAOQUlsGcQhKIktAzkEJbFlMIegJLYM6BCUxJZBHYKS2DKwQ1ASWwZ3CEpiywAPQUlsGeQhKIktAz0EJbFlsIegJLYM+BCUxJZBH4KS2DLwQ1ASWwZ/CEpiywASQUlsGUQiKIktA0kEJbFlMImgJLYMKBGUxJZBJYKS2DKwRFASWwaXCEpiywATQUlsGWQiKIktg00UN7Fl6IljPLYUPxGcBTIeW4axQMZjy5AWyHhsGdhCeoctQ1sg47GlgIsAJZDx2FLIRYASx3hsKeYiOAtkPLYUdRGcxTEeAAAAAAAAAABhIAAAiAQAABMEVywQAAAABQAAAESgBihBIZQC6RoBoA0jAARiBAAA8TAAAI0BAAAiR8iQURrM+QYAAACvwRux4Rt6cioAAAA/ZW5kQD8kdmVjdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAVj8kYWxsb2NhdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQDJAQHN0ZEBAUUVBQT9BVj8kX1ZlY3Rvcl9pdGVyYXRvckBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAQHN0ZEBAQDJAWFo/ZW5kQD8kdmVjdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAVj8kYWxsb2NhdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQDJAQHN0ZEBAUUVBQT9BVj8kX1ZlY3Rvcl9pdGVyYXRvckBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAQHN0ZEBAQDJAWFo6ICVhZ2cucmVzdWx0P2JlZ2luQD8kdmVjdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAVj8kYWxsb2NhdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQDJAQHN0ZEBAUUVBQT9BVj8kX1ZlY3Rvcl9pdGVyYXRvckBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAQHN0ZEBAQDJAWFo/YmVnaW5APyR2ZWN0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBWPyRhbGxvY2F0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAMkBAc3RkQEBRRUFBP0FWPyRfVmVjdG9yX2l0ZXJhdG9yQFY/JF9WZWN0b3JfdmFsQFU/JF9TaW1wbGVfdHlwZXNAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAc3RkQEBAc3RkQEBAMkBYWjogJWFnZy5yZXN1bHQ/ZXJhc2VAPyR2ZWN0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBWPyRhbGxvY2F0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAMkBAc3RkQEBRRUFBP0FWPyRfVmVjdG9yX2l0ZXJhdG9yQFY/JF9WZWN0b3JfdmFsQFU/JF9TaW1wbGVfdHlwZXNAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAc3RkQEBAc3RkQEBAMkBWPyRfVmVjdG9yX2NvbnN0X2l0ZXJhdG9yQFY/JF9WZWN0b3JfdmFsQFU/JF9TaW1wbGVfdHlwZXNAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAc3RkQEBAc3RkQEBAMkBAWj9lcmFzZUA/JHZlY3RvckBWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQFY/JGFsbG9jYXRvckBWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRA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OAAAAP////8AJAAAaQkAAFgAAABpCQAAWAAAAAUAAAAQJgAAtx0AADkAAAC3HQAAOQAAAP////8AJAAAwQkAACoAAADBCQAAKgAAAAYAAAAQJgAA6wkAACAAAADrCQAAIAAAAAcAAAAQJgAA8B0AAEQAAADwHQAARAAAAP////8AJAAACwoAACkAAAALCgAAKQAAAAgAAAAQJgAANB4AAD4AAAA0HgAAPgAAAP////8AJAAAch4AAAQAAAByHgAABAAAAP////8IJAAAdh4AADEAAAB2HgAAMQAAAP////8AJAAApx4AAD4AAACnHgAAPgAAAP////8AJAAANAoAAEMAAAA0CgAAQwAAAAkAAAAQJgAAdwoAAEoAAAB3CgAASgAAAAoAAAAQJgAA5R4AAE4AAADlHgAATgAAAP////8AJAAAMx8AAAcAAAAzHwAABwAAAP////8IJAAAOh8AAE4AAAA6HwAATgAAAP////8AJAAAiB8AAAcAAACIHwAABwAAAP////8IJAAAjx8AAB8AAACPHwAAHwAAAP////8AJAAArh8AAB8AAACuHwAAHwAAAP////8AJAAAzR8AAFYAAADNHwAAVgAAAP////8AJAAAIyAAACEAAAAjIAAAIQAAAP////8AJAAARCAAAB8AAABEIAAAHwAAAP////8AJAAAYyAAAF4AAABjIAAAXgAAAP////8AJAAAwSAAADEAAADBIAAAMQAAAP////8AJAAAwQoAACkAAADBCgAAKQAAAAsAAAAQJgAA8iAAABkAAADyIAAAGQAAAP////8ILAAACyEAAAQAAAALIQAABAAAAP////8AJAAA6goAAEcAAADqCgAARwAAAAwAAAAQJgAAMQsAABwAAAAxCwAAHAAAAA0AAAAQNgAATQsAABoAAABNCwAAGgAAAA4AAAAQNgAADyEAABQAAAAPIQAAFAAAAP////8ILAAAIyEAAA0AAAAjIQAADQAAAP////8ILAAAZwsAACkAAABnCwAAKQAAAA8AAAAQJgAAkAsAAB8AAACQCwAAHwAAABAAAAAQJgAArwsAACMAAACvCwAAIwAAABEAAAAQNgAA0gsAACAAAADSCwAAIAAAABIAAAAQNgAA8gsAABwAAADyCwAAHAAAABMAAAAQNgAAMCEAABIAAAAwIQAAEgAAAP////8IJAAADgwAACEAAAAODAAAIQAAABQAAAAQNgAALwwAACIAAAAvDAAAIgAAABUAAAAQNgAAUQwAAB4AAABRDAAAHgAAABYAAAAQNgAAbwwAAB8AAABvDAAAHwAAABcAAAAQNgAAQiEAAA0AAABCIQAADQAAAP////8IJAAATyEAABcAAABPIQAAFwAAAP////8IJAAAZiEAABQAAABmIQAAFAAAAP////8IJAAAjgwAACYAAACODAAAJgAAABgAAAAQJgAAtAwAACEAAAC0DAAAIQAAABkAAAAQJgAAeiEAAA0AAAB6IQAADQAAAP////8ILAAA1QwAACIAAADVDAAAIgAAABoAAAAQJgAA9wwAADQAAAD3DAAANAAAABsAAAAQJgAAhyEAAAwAAACHIQAADAAAAP////8ILAAAkyEAAAwAAACTIQAADAAAAP////8ILAAAKw0AAEcAAAArDQAARwAAABwAAAAQJgAAnyEAAA4AAACfIQAADgAAAP////8IJAAAcg0AADUAAAByDQAANQAAAB0AAAAQNgAApw0AADkAAACnDQAAOQAAAB4AAAAQNgAA4A0AADMAAADgDQAAMwAAAB8AAAAQNgAAEw4AADwAAAATDgAAPAAAACAAAAAQNgAATw4AABUAAABPDgAAFQAAACEAAAAQNgAArSEAAA8AAACtIQAADwAAAP////8IJAAArCIAACgAAAC8IQAAIgAAAP////8IJAAAZA4AAP0AAABkDgAA/QAAACIAAAAQJgAA3iEAABoAAADeIQAAGgAAAP////8ILAAAYQ8AABgAAABhDwAAGAAAACMAAAAQJgAA+CEAAB4AAAD4IQAAHgAAAP////8IJAAAeQ8AACcAAAB5DwAAJwAAACQAAAAQJgAAoA8AACsAAACgDwAAKwAAACUAAAAQNgAAyw8AACAAAADLDwAAIAAAACYAAAAQNgAA6w8AACQAAADrDwAAJAAAACcAAAAQNgAADxAAACkAAAAPEAAAKQAAACgAAAAQNgAAOBAAAB4AAAA4EAAAHgAAACkAAAAQNgAAVhAAAEQAAABWEAAARAAAACoAAAAQJgAAmhAAAFoAAACaEAAAWgAAACsAAAAQJgAA9BAAAD0AAAD0EAAAPQAAACwAAAAQJgAAMREAADAAAAAxEQAAMAAAAC0AAAAQJgAAYREAAH4BAABhEQAAfgEAAC4AAAAQJgAA3xIAAM4AAADfEgAAzgAAAC8AAAAQJgAArRMAAG4AAACtEwAAbgAAADAAAAAQJgAAGxQAADMAAAAbFAAAMwAAADEAAAAQJgAAFiIAAA4AAAAWIgAADgAAAP////8ILAAAJCIAAAkAAAAkIgAACQAAAP////8INAAAThQAALcAAABOFAAAtwAAADIAAAAQJgAABRUAABwAAAAFFQAAHAAAADMAAAAQJgAAIRUAACwAAAAhFQAALAAAADQAAAAQJgAATRUAACwAAABNFQAALAAAADUAAAAQJgAAeRUAACgAAAB5FQAAKAAAADYAAAAQJgAALSIAAAwAAAAtIgAADAAAAP////8ILAAAoRUAAHsAAAChFQAAewAAADcAAAAQJgAAHBYAAEMAAAAcFgAAQwAAADgAAAAQJgAAXxYAAFIAAABfFgAAUgAAADkAAAAQJgAAsRYAAHYAAACxFgAAdgAAADoAAAAQJgAAJxcAAHUAAAAnFwAAdQAAADsAAAAQJgAAnBcAAHkAAACcFwAAeQAAADwAAAAQJgAAFRgAAKsAAAAVGAAAqwAAAD0AAAAQJgAAOSIAAA0AAAA5IgAADQAAAP////8ILAAAwBgAAAUBAADAGAAABQEAAD4AAAAQJgAAxRkAAHEAAADFGQAAcQAAAD8AAAAQJgAANhoAAFEAAAA2GgAAUQAAAEAAAAAQJgAARiIAAA4AAABGIgAADgAAAP////8ILAAAVCIAACQAAABUIgAAJAAAAP////8ILAAAeCIAAAsAAAB4IgAACwAAAP////8ILAAAgyIAAA0AAACDIgAADQAAAP////8ILAAAhxoAAEsAAACHGgAASwAAAP////8IBAAA0hoAAEIAAADSGgAAQgAAAP////8IBAAAFBsAAHIAAAAUGwAAcgAAAP////8IBAAAAAAAAEAAAAAAAAAAQAAAAEEAAAAQFgAAhhsAADsAAACGGwAAOwAAAP////8IBAAAQAAAAEIAAABAAAAAQgAAAEIAAAAQFgAAwRsAADUAAADBGwAANQAAAP////8IBAAAggAAAEIAAACCAAAAQgAAAEMAAAAQFgAA9hsAADMAAAD2GwAAMwAAAP////8IBAAAxAAAAEMAAADEAAAAQwAAAEQAAAAQFgAAKRwAAA8AAAApHAAADwAAAP////8IBAAA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ZXB0aW9uQHN0ZEBAOD8/XzdleGNlcHRpb25Ac3RkQEA2QkA/P19SNGV4Y2VwdGlvbkBzdGRAQDZCQD8/X0NAXzBCQ0BFT09EQUxFTEBVbmtub3duPzVleGNlcHRpb24/JEFBQD8/X0NAXzBOQEZKSEhGRkFGQGJhZF93ZWFrX3B0cj8kQUFAPz9fNz8kX1JlZl9jb3VudF9vYmoyQFZUcmFuc2Zvcm1AQEBzdGRAQDZCQD8/X1I0PyRfUmVmX2NvdW50X29iajJAVlRyYW5zZm9ybUBAQHN0ZEBANkJAPz9fUjA/QVY/JF9SZWZfY291bnRfb2JqMkBWVHJhbnNmb3JtQEBAc3RkQEBAOD8/X1IzPyRfUmVmX2NvdW50X29iajJAVlRyYW5zZm9ybUBAQHN0ZEBAOD8/X1IyPyRfUmVmX2NvdW50X29iajJAVlRyYW5zZm9ybUBAQHN0ZEBAOD8/X1IxQUA/MEFARUFAPyRfUmVmX2NvdW50X29iajJAVlRyYW5zZm9ybUBAQHN0ZEBAOD8/X1IxQUA/MEFARUFAX1JlZl9jb3VudF9iYXNlQHN0ZEBAOD8/X1IwP0FWX1JlZl9jb3VudF9iYXNlQHN0ZEBAQDg/P19SM19SZWZfY291bnRfYmFzZUBzdGRAQDg/P19SMl9SZWZfY291bnRfYmFzZUBzdGRAQDg/P19DQF8wQkFASkZOSU9MQUtAc3RyaW5nPzV0b28/NWxvbmc/JEFBQD8/X1IwP0FWYmFkX2FycmF5X25ld19sZW5ndGhAc3RkQEBAOF9DVD8/X1IwP0FWYmFkX2FycmF5X25ld19sZW5ndGhAc3RkQEBAOD8/MGJhZF9hcnJheV9uZXdfbGVuZ3RoQHN0ZEBAUUVBQUBBRUJWMDFAQFoyND8/X1IwP0FWYmFkX2FsbG9jQHN0ZEBAQDhfQ1Q/P19SMD9BVmJhZF9hbGxvY0BzdGRAQEA4Pz8wYmFkX2FsbG9jQHN0ZEBAUUVBQUBBRUJWMDFAQFoyNF9DVEEzP0FWYmFkX2FycmF5X25ld19sZW5ndGhAc3RkQEBfVEkzP0FWYmFkX2FycmF5X25ld19sZW5ndGhAc3RkQEA/P19DQF8wQkZAS0lOQ0RFTkpAYmFkPzVhcnJheT81bmV3PzVsZW5ndGg/JEFBQD8/XzdiYWRfYXJyYXlfbmV3X2xlbmd0aEBzdGRAQDZCQD8/X1I0YmFkX2FycmF5X25ld19sZW5ndGhAc3RkQEA2QkA/P19SM2JhZF9hcnJheV9uZXdfbGVuZ3RoQHN0ZEBAOD8/X1IyYmFkX2FycmF5X25ld19sZW5ndGhAc3RkQEA4Pz9fUjFBQD8wQUBFQUBiYWRfYXJyYXlfbmV3X2xlbmd0aEBzdGRAQDg/P19SMUFAPzBBQEVBQGJhZF9hbGxvY0BzdGRAQDg/P19SM2JhZF9hbGxvY0BzdGRAQDg/P19SMmJhZF9hbGxvY0BzdGRAQDg/P183YmFkX2FsbG9jQHN0ZEBANkJAPz9fUjRiYWRfYWxsb2NAc3RkQEA2QkA/P19DQF8wQkFARk9JS0VOT0RAdmVjdG9yPzV0b28/NWxvbmc/JEFBQD8/XzdUZW50YWNsZU1vZHVsZUBANkJAPz9fUjRUZW50YWNsZU1vZHVsZUBANkJAPz9fUjA/QVZUZW50YWNsZU1vZHVsZUBAQDg/P19SM1RlbnRhY2xlTW9kdWxlQEA4Pz9fUjJUZW50YWNsZU1vZHVsZUBAOD8/X1IxQUA/MEFARUFAVGVudGFjbGVNb2R1bGVAQDg/P19SMUFAPzBBQEVBQE1vZHVsZUBAOD8/X1IwP0FWTW9kdWxlQEBAOD8/X1IzTW9kdWxlQEA4Pz9fUjJNb2R1bGVAQDg/P183TW9kdWxlQEA2QkA/P19SNE1vZHVsZUBANkJAPz9fQ0BfMDNFQUhQTElGQFBJTj8kQUFAP2luaXRpYWxNYXRyaXhAVHJhbnNmb3JtQEBRRUJBP0FWTWF0cml4QEBXNFNwYWNlQEBAWj8/RE1hdHJpeEBAUUVCQT9BVjBAQUVCVjBAQFo/aW52ZXJzZUBNYXRyaXhAQFFFQkE/QVYxQFhaP3BhcmVudE1hdHJpeEBUcmFuc2Zvcm1AQFFFQkE/QVZNYXRyaXhAQFhaP3NldE1hdHJpeEBUcmFuc2Zvcm1AQFFFQUE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQUVCVk1hdHJpeEBAVzRTcGFjZUBAQFo/c2V0VHJhbnNsYXRpb25AVHJhbnNmb3JtQEBRRUFBP0FWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQEFFQlZWZWN0b3JAQFc0U3BhY2VAQEBaP3NldFNjYWxlQE1hdHJpeEBAUUVBQUFFQVYxQEFFQlZWZWN0b3JAQEBaP3NjYWxlQE1hdHJpeEBAUUVCQT9BVlZlY3RvckBAWFo/ZnJvbVZlY3RvcnNAUXVhdEBAU0E/QVYxQEFFQlZWZWN0b3JAQDBAWj93b3JsZFRyYW5zZm9ybUBUcmFuc2Zvcm1AQFFFQkE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAWFo/c2V0UGFyZW50UHJlc2VydmVAVHJhbnNmb3JtQEBRRUFBP0FWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQFYyM0BAWj9ldmFsdWF0ZUBCZXppZXJDdXJ2ZUBAUUVCQT9BVlZlY3RvckBATUBaP2FkZENvbnRyb2xAVGVudGFjbGVNb2R1bGVAQFFFQUFYVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBNX05OQFo/cnVuQFRlbnRhY2xlTW9kdWxlQEBVRUFBSFhaPz8xVGVudGFjbGVNb2R1bGVAQFFFQUFAWFo/X21hcmtXb3JsZE1hdHJpeERpcnR5QFRyYW5zZm9ybUBAQUVCQVhYWj9fVGhyb3dfYmFkX3dlYWtfcHRyQHN0ZEBAWUFYWFo/PzBiYWRfd2Vha19wdHJAc3RkQEBRRUFBQEFFQlYwMUBAWj8/MGV4Y2VwdGlvbkBzdGRAQFFFQUFAQUVCVjAxQEBaPz8xYmFkX3dlYWtfcHRyQHN0ZEBAVUVBQUBYWj8/X0diYWRfd2Vha19wdHJAc3RkQEBVRUFBUEVBWElAWj93aGF0QGJhZF93ZWFrX3B0ckBzdGRAQFVFQkFQRUJEWFo/P19HZXhjZXB0aW9uQHN0ZEBAVUVBQVBFQVhJQFo/d2hhdEBleGNlcHRpb25Ac3RkQEBVRUJBUEVCRFhaP3JvdGF0ZUBNYXRyaXhAQFFFQUFBRUFWMUBBRUJWUXVhdEBAQFo/cm90YXRpb25ATWF0cml4QEBRRUJBP0FWUXVhdEBAWFo/aXNQYXJhbGxlbEBWZWN0b3JAQFFFQkFfTkFFQlYxQEBaP19zZXRSb3RhdGlvbkludGVybmFsQFF1YXRAQENBWEFFQlZWZWN0b3JAQDBBRUFWMUBAWj8/JG1ha2Vfc2hhcmVkQFZUcmFuc2Zvcm1AQCQkVkBzdGRAQFlBP0FWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEAwQFhaP19EZXN0cm95QD8kX1JlZl9jb3VudF9vYmoyQFZUcmFuc2Zvcm1AQEBzdGRAQEVFQUFYWFo/X0RlbGV0ZV90aGlzQD8kX1JlZl9jb3VudF9vYmoyQFZUcmFuc2Zvcm1AQEBzdGRAQEVFQUFYWFo/P19HPyRfUmVmX2NvdW50X29iajJAVlRyYW5zZm9ybUBAQHN0ZEBAVUVBQVBFQVhJQFo/X0dldF9kZWxldGVyQF9SZWZfY291bnRfYmFzZUBzdGRAQFVFQkFQRUFYQUVCVnR5cGVfaW5mb0BAQFo/PzFUcmFuc2Zvcm1AQFFFQUFAWFo/PyRfUmVhbGxvY2F0ZV9mb3JAVjxsYW1iZGFfMT5APzA/P2Fzc2lnbkA/JGJhc2ljX3N0cmluZ0BEVT8kY2hhcl90cmFpdHNAREBzdGRAQFY/JGFsbG9jYXRvckBEQDJAQHN0ZEBAUUVBQUFFQVYzNEBRRUJEX0tAWkBQRUJEQD8kYmFzaWNfc3RyaW5nQERVPyRjaGFyX3RyYWl0c0BEQHN0ZEBAVj8kYWxsb2NhdG9yQERAMkBAc3RkQEBBRUFBQUVBVjAxQF9LVjxsYW1iZGFfMT5APzA/P2Fzc2lnbkAwMUBRRUFBQUVBVjAxQFFFQkQwQFpAUEVCREBaP19YbGVuX3N0cmluZ0BzdGRAQFlBWFhaP19UaHJvd19iYWRfYXJyYXlfbmV3X2xlbmd0aEBzdGRAQFlBWFhaPz8wYmFkX2FycmF5X25ld19sZW5ndGhAc3RkQEBRRUFBQEFFQlYwMUBAWj8/MGJhZF9hbGxvY0BzdGRAQFFFQUFAQUVCVjAxQEBaPz8xYmFkX2FycmF5X25ld19sZW5ndGhAc3RkQEBVRUFBQFhaPz9fR2JhZF9hcnJheV9uZXdfbGVuZ3RoQHN0ZEBAVUVBQVBFQVhJQFo/P19HYmFkX2FsbG9jQHN0ZEBAVUVBQVBFQVhJQFo/YWRkQ2hpbGRAVHJhbnNmb3JtQEBRRUFBP0FWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQEFFQlYyM0BAWj9zZXRJbml0aWFsTWF0cml4QFRyYW5zZm9ybUBAUUVBQT9BVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBBRUJWTWF0cml4QEBXNFNwYWNlQEBAWj91bnBhcmVudEBUcmFuc2Zvcm1AQFFFQUE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAWFo/X21hcmtJbml0aWFsV29ybGRNYXRyaXhEaXJ0eUBUcmFuc2Zvcm1AQEFFQkFYWFo/PyRyZW1vdmVfaWZAVj8kX1ZlY3Rvcl9pdGVyYXRvckBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAQHN0ZEBAQHN0ZEBAVjxsYW1iZGFfMT5APzA/P3VucGFyZW50QFRyYW5zZm9ybUBAUUVBQT9BVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAMkBYWkBAc3RkQEBZQT9BVj8kX1ZlY3Rvcl9pdGVyYXRvckBWPyRfVmVjdG9yX3ZhbEBVPyRfU2ltcGxlX3R5cGVzQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQHN0ZEBAQHN0ZEBAQDBAVjEwQFYxMEBWPGxhbWJkYV8xPkA/MD8/dW5wYXJlbnRAVHJhbnNmb3JtQEBRRUFBP0FWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEAwQFhaQEBaPz8kX0VtcGxhY2VfcmVhbGxvY2F0ZUBBRUJWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQEA/JHZlY3RvckBWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQFY/JGFsbG9jYXRvckBWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQEAyQEBzdGRAQFFFQUFQRUFWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEAxQFFFQVYyMUBBRUJWMjFAQFo/X1hsZW5ndGhAPyR2ZWN0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBWPyRhbGxvY2F0b3JAVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBAMkBAc3RkQEBDQVhYWj9fWGxlbmd0aEA/JHZlY3RvckBOVj8kYWxsb2NhdG9yQE5Ac3RkQEBAc3RkQEBDQVhYWj8/JF9FbXBsYWNlX3JlYWxsb2NhdGVAVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQEA/JHZlY3RvckBVQ29udHJvbEBUZW50YWNsZU1vZHVsZUBAVj8kYWxsb2NhdG9yQFVDb250cm9sQFRlbnRhY2xlTW9kdWxlQEBAc3RkQEBAc3RkQEBRRUFBUEVBVUNvbnRyb2xAVGVudGFjbGVNb2R1bGVAQFFFQVUyM0AkJFFFQVUyM0BAWj9hbmdsZUBWZWN0b3JAQFFFQkFOQUVCVjFAQFo/ZmluZExlbmd0aEZyb21QYXJhbUBCZXppZXJDdXJ2ZUBAUUVCQU5NTUhAWj9maW5kUGFyYW1Gcm9tTGVuZ3RoQEJlemllckN1cnZlQEBRRUJBTU5NSEBaP3RhbmdlbnRAQmV6aWVyQ3VydmVAQFFFQkE/QVZWZWN0b3JAQE1AWj9hZGRDaGlsZEBUcmFuc2Zvcm1AQFFFQUE/QVY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQUVCVj8kYmFzaWNfc3RyaW5nQERVPyRjaGFyX3RyYWl0c0BEQHN0ZEBAVj8kYWxsb2NhdG9yQERAMkBAM0BAWj9fWGxlbmd0aEA/JHZlY3RvckBWVmVjdG9yQEBWPyRhbGxvY2F0b3JAVlZlY3RvckBAQHN0ZEBAQHN0ZEBAQ0FYWFo/X1JlYWxsb2NhdGVfZXhhY3RseUA/JHZlY3RvckBWVmVjdG9yQEBWPyRhbGxvY2F0b3JAVlZlY3RvckBAQHN0ZEBAQHN0ZEBAQUVBQVhfS0BaPz8kX0VtcGxhY2VfcmVhbGxvY2F0ZUBBRUJWVmVjdG9yQEBAPyR2ZWN0b3JAVlZlY3RvckBAVj8kYWxsb2NhdG9yQFZWZWN0b3JAQEBzdGRAQEBzdGRAQFFFQUFQRUFWVmVjdG9yQEBRRUFWMkBBRUJWMkBAWj8/JF9FbXBsYWNlX3JlYWxsb2NhdGVAVlZlY3RvckBAQD8kdmVjdG9yQFZWZWN0b3JAQFY/JGFsbG9jYXRvckBWVmVjdG9yQEBAc3RkQEBAc3RkQEBRRUFBUEVBVlZlY3RvckBAUUVBVjJAJCRRRUFWMkBAWj9fWGxlbmd0aEA/JHZlY3RvckBVQ29udHJvbE9uQ3VydmVJbmZvQFRlbnRhY2xlTW9kdWxlQEBWPyRhbGxvY2F0b3JAVUNvbnRyb2xPbkN1cnZlSW5mb0BUZW50YWNsZU1vZHVsZUBAQHN0ZEBAQHN0ZEBAQ0FYWFo/PyRfUmVzaXplX3JlYWxsb2NhdGVAVV9WYWx1ZV9pbml0X3RhZ0BzdGRAQEA/JHZlY3RvckBWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQFY/JGFsbG9jYXRvckBWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQEAyQEBzdGRAQEFFQUFYX0tBRUJVX1ZhbHVlX2luaXRfdGFnQDFAQFo/PyRfUmVhbGxvY2F0ZV9ncm93X2J5QFY8bGFtYmRhXzE+QD8wPz9hcHBlbmRAPyRiYXNpY19zdHJpbmdARFU/JGNoYXJfdHJhaXRzQERAc3RkQEBWPyRhbGxvY2F0b3JAREAyQEBzdGRAQFFFQUFBRUFWMzRAUUVCRF9LQFpAUEVCRF9LQD8kYmFzaWNfc3RyaW5nQERVPyRjaGFyX3RyYWl0c0BEQHN0ZEBAVj8kYWxsb2NhdG9yQERAMkBAc3RkQEBBRUFBQUVBVjAxQF9LVjxsYW1iZGFfMT5APzA/P2FwcGVuZEAwMUBRRUFBQUVBVjAxQFFFQkQwQFpAUEVCRF9LQFo/PyRfRW1wbGFjZV9yZWFsbG9jYXRlQFVTaGFwZUBAQD8kdmVjdG9yQFVTaGFwZUBAVj8kYWxsb2NhdG9yQFVTaGFwZUBAQHN0ZEBAQHN0ZEBAUUVBQVBFQVVTaGFwZUBAUUVBVTJAJCRRRUFVMkBAWj8/JF9FbXBsYWNlX3JlYWxsb2NhdGVATkA/JHZlY3RvckBOVj8kYWxsb2NhdG9yQE5Ac3RkQEBAc3RkQEBRRUFBUEVBTlFFQU4kJFFFQU5AWj9ub2RlTmFtZUBAM1Y/JGJhc2ljX3N0cmluZ0BEVT8kY2hhcl90cmFpdHNAREBzdGRAQFY/JGFsbG9jYXRvckBEQDJAQHN0ZEBAQT9kcmF3U2hhcGVzQEAzVj8kdmVjdG9yQFVTaGFwZUBAVj8kYWxsb2NhdG9yQFVTaGFwZUBAQHN0ZEBAQHN0ZEBAQT9hdHRyX2NvbnRyb2xzQEAzVj8kdmVjdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAVj8kYWxsb2NhdG9yQFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQDJAQHN0ZEBAQT9hdHRyX2F1dG9UYW5nZW50c0BAM1Y/JHZlY3RvckBNVj8kYWxsb2NhdG9yQE1Ac3RkQEBAc3RkQEBBP2F0dHJfdHdpc3RzQEAzVj8kdmVjdG9yQE5WPyRhbGxvY2F0b3JATkBzdGRAQEBzdGRAQEE/YXR0cl9waW5zQEAzVj8kdmVjdG9yQERWPyRhbGxvY2F0b3JAREBzdGRAQEBzdGRAQEE/YXR0cl93YXZlQEAzTkE/YXR0cl93YXZlQW1wQEAzTkE/YXR0cl93YXZlRnJlcUBAM05BP2F0dHJfd2F2ZUZhbGxvZmZAQDNNQT9hdHRyX3NxdWFzaEBAM01BPz9fN3R5cGVfaW5mb0BANkJAX19JbWFnZUJhc2VfX2NvbnN0Lj9yb3RhdGlvbkBNYXRyaXhAQFFFQkE/QVZRdWF0QEBYWi5ueHQ/cm9vdEBAM1Y/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAQT90b01hdHJpeEBRdWF0QEBRRUJBP0FWTWF0cml4QEBYWj9wYXJlbnRDb25zdHJhaW50QEBZQVhWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQDBAWmxsdm0ubGlmZXRpbWUuc3RhcnQucDBpOGxsdm0ubGlmZXRpbWUuZW5kLnAwaTg/cG9pbnRDb25zdHJhaW50QEBZQVhWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQDBAWj9vcmllbnRDb25zdHJhaW50QEBZQVhWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQDBAWj9haW1Db25zdHJhaW50QEBZQVhWPyRzaGFyZWRfcHRyQFZUcmFuc2Zvcm1AQEBzdGRAQEFFQlZWZWN0b3JAQDFISEBaP3NvbHZlUlBAQFlBWFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAMDBBRUJWVmVjdG9yQEAxQFphY29zP3NvbHZlU0NAQFlBWFY/JHNoYXJlZF9wdHJAVlRyYW5zZm9ybUBAQHN0ZEBAMDBAWj9jcmVhdGVKb2ludFNDQEBZQT9BVj8kc2hhcmVkX3B0ckBWVHJhbnNmb3JtQEBAc3RkQEBWMTJAMDAwMEBaP3ByaW50QEBZQVhBRUJWPyRiYXNpY19zdHJpbmdARFU/JGNoYXJfdHJhaXRzQERAc3RkQEBWPyRhbGxvY2F0b3JAREAyQEBzdGRAQEBaY19wcmludD9lcnJvckBAWUFYQUVCVj8kYmFzaWNfc3RyaW5nQERVPyRjaGFyX3RyYWl0c0BEQHN0ZEBAVj8kYWxsb2NhdG9yQERAMkBAc3RkQEBAWmNfZXJyb3I/ZHJhd1BvaW50QEBZQVhBRUJWVmVjdG9yQEBOMEBaP2RyYXdMaW5lQEBZQVhBRUJWVmVjdG9yQEAwTjBAWj9kcmF3TGluZXNAQFlBWEFFQlY/JHZlY3RvckBWVmVjdG9yQEBWPyRhbGxvY2F0b3JAVlZlY3RvckBAQHN0ZEBAQHN0ZEBATkFFQlZWZWN0b3JAQEBaP2RyYXdWZWN0b3JAQFlBWEFFQlZWZWN0b3JAQDBOMEBaP2RyYXdNYXRyaXhAQFlBWEFFQlZNYXRyaXhAQE5AWj9kcmF3VGV4dEBAWUFYQUVCVj8kYmFzaWNfc3RyaW5nQERVPyRjaGFyX3RyYWl0c0BEQHN0ZEBAVj8kYWxsb2NhdG9yQERAMkBAc3RkQEBBRUJWVmVjdG9yQEBOQFo/ZHJhd0JlemllckBAWUFYQUVCVkJlemllckN1cnZlQEBITkFFQlZWZWN0b3JAQEBabGx2bS5tZW1jcHkucDBpOC5wMGk4Lmk2NG1haW5sbHZtLm1lbXNldC5wMGk4Lmk2NGxsdm0uZmFicy5mNjRfQ3h4VGhyb3dFeGNlcHRpb24/PzNAWUFYUEVBWEBaX19zdGRfZXhjZXB0aW9uX2Rlc3Ryb3lfX3N0ZF9leGNlcHRpb25fY29weWxsdm0uc3FydC5mNjRsbHZtLnNpbi5mNjRsbHZtLmNvcy5mNjQ/PzJAWUFQRUFYX0tAWj8/M0BZQVhQRUFYX0tAWl9pbnZhbGlkX3BhcmFtZXRlcl9ub2luZm9fbm9yZXR1cm5sbHZtLm1lbW1vdmUucDBpOC5wMGk4Lmk2ND9fWGxlbmd0aF9lcnJvckBzdGRAQFlBWFBFQkRAWmxsdm0uZmxvb3IuZjY0X3B1cmVjYWxsbGx2bS5wb3cuZjY0bGx2bS5mYWJzLmYzMmxsdm0uZmxvb3IuZjMybGx2bS5leHBlcmltZW50YWwubm9hbGlhcy5zY29wZS5kZWNsbGx2bS5hc3N1bWVsbHZtLnVtYXguaTY0MTQuMC4weDg2XzY0LXBjLXdpbmRvd3MtbXN2Y19faW1wX19pbnZhbGlkX3BhcmFtZXRlcl9ub2luZm9fbm9yZXR1cm4ueGRhdGEuTF9fdW5uYW1lZF8xLkxfX3VubmFtZWRfMi5MX19jb25zdC4/cm90YXRpb25ATWF0cml4QEBRRUJBP0FWUXVhdEBAWFoubnh0LkxfX3VubmFtZWRfMy5MX191bm5hbWVkXzQuTF9fdW5uYW1lZF81LkxfX3VubmFtZWRfNi5MX191bm5hbWVkXzcgL0ZBSUxJRk1JU01BVENIOiJfQ1JUX1NURElPX0lTT19XSURFX1NQRUNJRklFUlM9MCIgL0ZBSUxJRk1JU01BVENIOiJfTVNDX1ZFUj0xOTAwIiAvRkFJTElGTUlTTUFUQ0g6Il9JVEVSQVRPUl9ERUJVR19MRVZFTD0wIiAvRkFJTElGTUlTTUFUQ0g6IlJ1bnRpbWVMaWJyYXJ5PU1EX0R5bmFtaWNSZWxlYXNlIiAvREVGQVVMVExJQjptc3ZjcHJ0LmxpYgAAAAA=]]></code>\n"
		+ "  <attributes>\n    <attr name=\"controls\" type=\"transformHandle\" array=\"true\" />\n    <attr name=\"twists\" type=\"double\" array=\"true\" />\n    <attr name=\"autoTangents\" type=\"float\" array=\"true\" value=\"1\" min=\"0\" max=\"1\" />\n    <attr name=\"pins\" type=\"bool\" array=\"true\" />\n    <attr name=\"wave\" type=\"double\" />\n    <attr name=\"waveFreq\" type=\"double\" />\n    <attr name=\"waveAmp\" type=\"double\" />\n    <attr name=\"waveFalloff\" type=\"float\" value=\"1\" min=\"0\" max=\"1\" />\n    <attr name=\"squash\" type=\"float\" min=\"0\" max=\"1\" />\n  </attributes>\n</module>");
	setAttr -s 10 ".hierarchy";
	setAttr ".hierarchy[0].transformName" -type "string" "tentacle_5_control";
	setAttr ".hierarchy[0].transformParentIndex" 9;
	setAttr ".hierarchy[1].transformName" -type "string" "tentacle_4_control";
	setAttr ".hierarchy[1].transformParentIndex" 8;
	setAttr ".hierarchy[2].transformName" -type "string" "tentacle_3_control";
	setAttr ".hierarchy[2].transformParentIndex" 7;
	setAttr ".hierarchy[3].transformName" -type "string" "tentacle_2_control";
	setAttr ".hierarchy[3].transformParentIndex" 6;
	setAttr ".hierarchy[4].transformName" -type "string" "tentacle_1_control";
	setAttr ".hierarchy[4].transformParentIndex" 5;
	setAttr ".hierarchy[5].transformName" -type "string" "tentacle_1_control_group";
	setAttr ".hierarchy[5].transformInitialMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0
		 -8 0 0 1;
	setAttr ".hierarchy[5].transformMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8 0 0 1;
	setAttr ".hierarchy[6].transformName" -type "string" "tentacle_2_control_group";
	setAttr ".hierarchy[6].transformInitialMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0
		 -4 0 0 1;
	setAttr ".hierarchy[6].transformMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4 0 0 1;
	setAttr ".hierarchy[7].transformName" -type "string" "tentacle_3_control_group";
	setAttr ".hierarchy[8].transformName" -type "string" "tentacle_4_control_group";
	setAttr ".hierarchy[8].transformInitialMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0
		 4 0 0 1;
	setAttr ".hierarchy[8].transformMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4 0 0 1;
	setAttr ".hierarchy[9].transformName" -type "string" "tentacle_5_control_group";
	setAttr ".hierarchy[9].transformInitialMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0
		 8 0 0 1;
	setAttr ".hierarchy[9].transformMatrix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8 0 0 1;
	setAttr -s 5 ".controls";
	setAttr ".controls[0]" -type "string" "tentacle_1_control";
	setAttr ".controls[1]" -type "string" "tentacle_2_control";
	setAttr ".controls[2]" -type "string" "tentacle_3_control";
	setAttr ".controls[3]" -type "string" "tentacle_4_control";
	setAttr ".controls[4]" -type "string" "tentacle_5_control";
	setAttr -s 5 -k on ".twists[0:4]"  0 0 0 0 0;
	setAttr -s 5 -k on ".twists";
	setAttr -k on ".twists[0]";
	setAttr -k on ".twists[1]";
	setAttr -k on ".twists[2]";
	setAttr -k on ".twists[3]";
	setAttr -k on ".twists[4]";
	setAttr -s 5 -k on ".autoTangents[0:4]"  1 1 1 1 1;
	setAttr -s 5 -k on ".autoTangents";
	setAttr -k on ".autoTangents[0]";
	setAttr -k on ".autoTangents[1]";
	setAttr -k on ".autoTangents[2]";
	setAttr -k on ".autoTangents[3]";
	setAttr -k on ".autoTangents[4]";
	setAttr -s 5 -k on ".pins[0:4]" yes no no no no;
	setAttr -s 5 -k on ".pins";
	setAttr -k on ".pins[0]";
	setAttr -k on ".pins[1]";
	setAttr -k on ".pins[2]";
	setAttr -k on ".pins[3]";
	setAttr -k on ".pins[4]";
	setAttr -k on ".wave" 0;
	setAttr -k on ".waveFreq" 0.58999999999999986;
	setAttr -k on ".waveAmp" 0;
	setAttr -k on ".waveFalloff" 1;
	setAttr -k on ".squash" 0;
createNode transform -n "geometry" -p "rig";
	rename -uid "177257C6-41E4-6456-7862-D58DA9D2AB8D";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "mesh" -p "geometry";
	rename -uid "A13B0544-4363-5D2B-A65F-B6A87AB6D030";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "meshShape" -p "mesh";
	rename -uid "80C4B20E-4907-91A5-47A9-62BEA913E20F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "meshShapeOrig" -p "mesh";
	rename -uid "F5039374-4333-BB1D-5AB5-20A7923BE47B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[620:639]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[640]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:639]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[620:639]" "vtx[641]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[620:639]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:619]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[640:659]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[620:639]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 714 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661 0.34374997
		 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.32459676 0.38749999
		 0.32459676 0.39999998 0.32459676 0.41249996 0.32459676 0.42499995 0.32459676 0.43749994
		 0.32459676 0.44999993 0.32459676 0.46249992 0.32459676 0.4749999 0.32459676 0.48749989
		 0.32459676 0.49999988 0.32459676 0.51249987 0.32459676 0.52499986 0.32459676 0.53749985
		 0.32459676 0.54999983 0.32459676 0.56249982 0.32459676 0.57499981 0.32459676 0.5874998
		 0.32459676 0.59999979 0.32459676 0.61249977 0.32459676 0.62499976 0.32459676 0.375
		 0.33669353 0.38749999 0.33669353 0.39999998 0.33669353 0.41249996 0.33669353 0.42499995
		 0.33669353 0.43749994 0.33669353 0.44999993 0.33669353 0.46249992 0.33669353 0.4749999
		 0.33669353 0.48749989 0.33669353 0.49999988 0.33669353 0.51249987 0.33669353 0.52499986
		 0.33669353 0.53749985 0.33669353 0.54999983 0.33669353 0.56249982 0.33669353 0.57499981
		 0.33669353 0.5874998 0.33669353 0.59999979 0.33669353 0.61249977 0.33669353 0.62499976
		 0.33669353 0.375 0.34879029 0.38749999 0.34879029 0.39999998 0.34879029 0.41249996
		 0.34879029 0.42499995 0.34879029 0.43749994 0.34879029 0.44999993 0.34879029 0.46249992
		 0.34879029 0.4749999 0.34879029 0.48749989 0.34879029 0.49999988 0.34879029 0.51249987
		 0.34879029 0.52499986 0.34879029 0.53749985 0.34879029 0.54999983 0.34879029 0.56249982
		 0.34879029 0.57499981 0.34879029 0.5874998 0.34879029 0.59999979 0.34879029 0.61249977
		 0.34879029 0.62499976 0.34879029 0.375 0.36088705 0.38749999 0.36088705 0.39999998
		 0.36088705 0.41249996 0.36088705 0.42499995 0.36088705 0.43749994 0.36088705 0.44999993
		 0.36088705 0.46249992 0.36088705 0.4749999 0.36088705 0.48749989 0.36088705 0.49999988
		 0.36088705 0.51249987 0.36088705 0.52499986 0.36088705 0.53749985 0.36088705 0.54999983
		 0.36088705 0.56249982 0.36088705 0.57499981 0.36088705 0.5874998 0.36088705 0.59999979
		 0.36088705 0.61249977 0.36088705 0.62499976 0.36088705 0.375 0.37298381 0.38749999
		 0.37298381 0.39999998 0.37298381 0.41249996 0.37298381 0.42499995 0.37298381 0.43749994
		 0.37298381 0.44999993 0.37298381 0.46249992 0.37298381 0.4749999 0.37298381 0.48749989
		 0.37298381 0.49999988 0.37298381 0.51249987 0.37298381 0.52499986 0.37298381 0.53749985
		 0.37298381 0.54999983 0.37298381 0.56249982 0.37298381 0.57499981 0.37298381 0.5874998
		 0.37298381 0.59999979 0.37298381 0.61249977 0.37298381 0.62499976 0.37298381 0.375
		 0.38508058 0.38749999 0.38508058 0.39999998 0.38508058 0.41249996 0.38508058 0.42499995
		 0.38508058 0.43749994 0.38508058 0.44999993 0.38508058 0.46249992 0.38508058 0.4749999
		 0.38508058 0.48749989 0.38508058 0.49999988 0.38508058 0.51249987 0.38508058 0.52499986
		 0.38508058 0.53749985 0.38508058 0.54999983 0.38508058 0.56249982 0.38508058 0.57499981
		 0.38508058 0.5874998 0.38508058 0.59999979 0.38508058 0.61249977 0.38508058 0.62499976
		 0.38508058 0.375 0.39717734 0.38749999 0.39717734 0.39999998 0.39717734 0.41249996
		 0.39717734 0.42499995 0.39717734 0.43749994 0.39717734 0.44999993 0.39717734 0.46249992
		 0.39717734 0.4749999 0.39717734 0.48749989 0.39717734 0.49999988 0.39717734 0.51249987
		 0.39717734 0.52499986 0.39717734 0.53749985 0.39717734 0.54999983 0.39717734 0.56249982
		 0.39717734 0.57499981 0.39717734 0.5874998 0.39717734 0.59999979 0.39717734 0.61249977
		 0.39717734 0.62499976 0.39717734 0.375 0.4092741 0.38749999 0.4092741 0.39999998
		 0.4092741 0.41249996 0.4092741 0.42499995 0.4092741 0.43749994 0.4092741 0.44999993
		 0.4092741 0.46249992 0.4092741 0.4749999 0.4092741 0.48749989 0.4092741 0.49999988
		 0.4092741 0.51249987 0.4092741 0.52499986 0.4092741 0.53749985 0.4092741 0.54999983
		 0.4092741 0.56249982 0.4092741 0.57499981 0.4092741 0.5874998 0.4092741 0.59999979
		 0.4092741 0.61249977 0.4092741 0.62499976 0.4092741 0.375 0.42137086 0.38749999 0.42137086
		 0.39999998 0.42137086 0.41249996 0.42137086 0.42499995 0.42137086 0.43749994 0.42137086
		 0.44999993 0.42137086 0.46249992 0.42137086 0.4749999 0.42137086 0.48749989 0.42137086
		 0.49999988 0.42137086 0.51249987 0.42137086 0.52499986 0.42137086 0.53749985 0.42137086
		 0.54999983 0.42137086 0.56249982 0.42137086 0.57499981 0.42137086 0.5874998 0.42137086
		 0.59999979 0.42137086 0.61249977 0.42137086 0.62499976 0.42137086 0.375 0.43346763
		 0.38749999 0.43346763 0.39999998 0.43346763 0.41249996 0.43346763 0.42499995 0.43346763
		 0.43749994 0.43346763 0.44999993 0.43346763 0.46249992 0.43346763 0.4749999 0.43346763
		 0.48749989 0.43346763 0.49999988 0.43346763 0.51249987 0.43346763 0.52499986 0.43346763
		 0.53749985 0.43346763 0.54999983 0.43346763 0.56249982 0.43346763 0.57499981 0.43346763
		 0.5874998 0.43346763 0.59999979 0.43346763 0.61249977 0.43346763;
	setAttr ".uvst[0].uvsp[250:499]" 0.62499976 0.43346763 0.375 0.44556439 0.38749999
		 0.44556439 0.39999998 0.44556439 0.41249996 0.44556439 0.42499995 0.44556439 0.43749994
		 0.44556439 0.44999993 0.44556439 0.46249992 0.44556439 0.4749999 0.44556439 0.48749989
		 0.44556439 0.49999988 0.44556439 0.51249987 0.44556439 0.52499986 0.44556439 0.53749985
		 0.44556439 0.54999983 0.44556439 0.56249982 0.44556439 0.57499981 0.44556439 0.5874998
		 0.44556439 0.59999979 0.44556439 0.61249977 0.44556439 0.62499976 0.44556439 0.375
		 0.45766115 0.38749999 0.45766115 0.39999998 0.45766115 0.41249996 0.45766115 0.42499995
		 0.45766115 0.43749994 0.45766115 0.44999993 0.45766115 0.46249992 0.45766115 0.4749999
		 0.45766115 0.48749989 0.45766115 0.49999988 0.45766115 0.51249987 0.45766115 0.52499986
		 0.45766115 0.53749985 0.45766115 0.54999983 0.45766115 0.56249982 0.45766115 0.57499981
		 0.45766115 0.5874998 0.45766115 0.59999979 0.45766115 0.61249977 0.45766115 0.62499976
		 0.45766115 0.375 0.46975791 0.38749999 0.46975791 0.39999998 0.46975791 0.41249996
		 0.46975791 0.42499995 0.46975791 0.43749994 0.46975791 0.44999993 0.46975791 0.46249992
		 0.46975791 0.4749999 0.46975791 0.48749989 0.46975791 0.49999988 0.46975791 0.51249987
		 0.46975791 0.52499986 0.46975791 0.53749985 0.46975791 0.54999983 0.46975791 0.56249982
		 0.46975791 0.57499981 0.46975791 0.5874998 0.46975791 0.59999979 0.46975791 0.61249977
		 0.46975791 0.62499976 0.46975791 0.375 0.48185468 0.38749999 0.48185468 0.39999998
		 0.48185468 0.41249996 0.48185468 0.42499995 0.48185468 0.43749994 0.48185468 0.44999993
		 0.48185468 0.46249992 0.48185468 0.4749999 0.48185468 0.48749989 0.48185468 0.49999988
		 0.48185468 0.51249987 0.48185468 0.52499986 0.48185468 0.53749985 0.48185468 0.54999983
		 0.48185468 0.56249982 0.48185468 0.57499981 0.48185468 0.5874998 0.48185468 0.59999979
		 0.48185468 0.61249977 0.48185468 0.62499976 0.48185468 0.375 0.49395144 0.38749999
		 0.49395144 0.39999998 0.49395144 0.41249996 0.49395144 0.42499995 0.49395144 0.43749994
		 0.49395144 0.44999993 0.49395144 0.46249992 0.49395144 0.4749999 0.49395144 0.48749989
		 0.49395144 0.49999988 0.49395144 0.51249987 0.49395144 0.52499986 0.49395144 0.53749985
		 0.49395144 0.54999983 0.49395144 0.56249982 0.49395144 0.57499981 0.49395144 0.5874998
		 0.49395144 0.59999979 0.49395144 0.61249977 0.49395144 0.62499976 0.49395144 0.375
		 0.5060482 0.38749999 0.5060482 0.39999998 0.5060482 0.41249996 0.5060482 0.42499995
		 0.5060482 0.43749994 0.5060482 0.44999993 0.5060482 0.46249992 0.5060482 0.4749999
		 0.5060482 0.48749989 0.5060482 0.49999988 0.5060482 0.51249987 0.5060482 0.52499986
		 0.5060482 0.53749985 0.5060482 0.54999983 0.5060482 0.56249982 0.5060482 0.57499981
		 0.5060482 0.5874998 0.5060482 0.59999979 0.5060482 0.61249977 0.5060482 0.62499976
		 0.5060482 0.375 0.51814497 0.38749999 0.51814497 0.39999998 0.51814497 0.41249996
		 0.51814497 0.42499995 0.51814497 0.43749994 0.51814497 0.44999993 0.51814497 0.46249992
		 0.51814497 0.4749999 0.51814497 0.48749989 0.51814497 0.49999988 0.51814497 0.51249987
		 0.51814497 0.52499986 0.51814497 0.53749985 0.51814497 0.54999983 0.51814497 0.56249982
		 0.51814497 0.57499981 0.51814497 0.5874998 0.51814497 0.59999979 0.51814497 0.61249977
		 0.51814497 0.62499976 0.51814497 0.375 0.53024173 0.38749999 0.53024173 0.39999998
		 0.53024173 0.41249996 0.53024173 0.42499995 0.53024173 0.43749994 0.53024173 0.44999993
		 0.53024173 0.46249992 0.53024173 0.4749999 0.53024173 0.48749989 0.53024173 0.49999988
		 0.53024173 0.51249987 0.53024173 0.52499986 0.53024173 0.53749985 0.53024173 0.54999983
		 0.53024173 0.56249982 0.53024173 0.57499981 0.53024173 0.5874998 0.53024173 0.59999979
		 0.53024173 0.61249977 0.53024173 0.62499976 0.53024173 0.375 0.54233849 0.38749999
		 0.54233849 0.39999998 0.54233849 0.41249996 0.54233849 0.42499995 0.54233849 0.43749994
		 0.54233849 0.44999993 0.54233849 0.46249992 0.54233849 0.4749999 0.54233849 0.48749989
		 0.54233849 0.49999988 0.54233849 0.51249987 0.54233849 0.52499986 0.54233849 0.53749985
		 0.54233849 0.54999983 0.54233849 0.56249982 0.54233849 0.57499981 0.54233849 0.5874998
		 0.54233849 0.59999979 0.54233849 0.61249977 0.54233849 0.62499976 0.54233849 0.375
		 0.55443525 0.38749999 0.55443525 0.39999998 0.55443525 0.41249996 0.55443525 0.42499995
		 0.55443525 0.43749994 0.55443525 0.44999993 0.55443525 0.46249992 0.55443525 0.4749999
		 0.55443525 0.48749989 0.55443525 0.49999988 0.55443525 0.51249987 0.55443525 0.52499986
		 0.55443525 0.53749985 0.55443525 0.54999983 0.55443525 0.56249982 0.55443525 0.57499981
		 0.55443525 0.5874998 0.55443525 0.59999979 0.55443525 0.61249977 0.55443525 0.62499976
		 0.55443525 0.375 0.56653202 0.38749999 0.56653202 0.39999998 0.56653202 0.41249996
		 0.56653202 0.42499995 0.56653202 0.43749994 0.56653202 0.44999993 0.56653202 0.46249992
		 0.56653202 0.4749999 0.56653202 0.48749989 0.56653202 0.49999988 0.56653202 0.51249987
		 0.56653202 0.52499986 0.56653202 0.53749985 0.56653202 0.54999983 0.56653202 0.56249982
		 0.56653202 0.57499981 0.56653202 0.5874998 0.56653202 0.59999979 0.56653202 0.61249977
		 0.56653202 0.62499976 0.56653202 0.375 0.57862878 0.38749999 0.57862878 0.39999998
		 0.57862878 0.41249996 0.57862878 0.42499995 0.57862878 0.43749994 0.57862878 0.44999993
		 0.57862878 0.46249992 0.57862878 0.4749999 0.57862878 0.48749989 0.57862878 0.49999988
		 0.57862878 0.51249987 0.57862878 0.52499986 0.57862878 0.53749985 0.57862878 0.54999983
		 0.57862878 0.56249982 0.57862878 0.57499981 0.57862878 0.5874998 0.57862878;
	setAttr ".uvst[0].uvsp[500:713]" 0.59999979 0.57862878 0.61249977 0.57862878
		 0.62499976 0.57862878 0.375 0.59072554 0.38749999 0.59072554 0.39999998 0.59072554
		 0.41249996 0.59072554 0.42499995 0.59072554 0.43749994 0.59072554 0.44999993 0.59072554
		 0.46249992 0.59072554 0.4749999 0.59072554 0.48749989 0.59072554 0.49999988 0.59072554
		 0.51249987 0.59072554 0.52499986 0.59072554 0.53749985 0.59072554 0.54999983 0.59072554
		 0.56249982 0.59072554 0.57499981 0.59072554 0.5874998 0.59072554 0.59999979 0.59072554
		 0.61249977 0.59072554 0.62499976 0.59072554 0.375 0.6028223 0.38749999 0.6028223
		 0.39999998 0.6028223 0.41249996 0.6028223 0.42499995 0.6028223 0.43749994 0.6028223
		 0.44999993 0.6028223 0.46249992 0.6028223 0.4749999 0.6028223 0.48749989 0.6028223
		 0.49999988 0.6028223 0.51249987 0.6028223 0.52499986 0.6028223 0.53749985 0.6028223
		 0.54999983 0.6028223 0.56249982 0.6028223 0.57499981 0.6028223 0.5874998 0.6028223
		 0.59999979 0.6028223 0.61249977 0.6028223 0.62499976 0.6028223 0.375 0.61491907 0.38749999
		 0.61491907 0.39999998 0.61491907 0.41249996 0.61491907 0.42499995 0.61491907 0.43749994
		 0.61491907 0.44999993 0.61491907 0.46249992 0.61491907 0.4749999 0.61491907 0.48749989
		 0.61491907 0.49999988 0.61491907 0.51249987 0.61491907 0.52499986 0.61491907 0.53749985
		 0.61491907 0.54999983 0.61491907 0.56249982 0.61491907 0.57499981 0.61491907 0.5874998
		 0.61491907 0.59999979 0.61491907 0.61249977 0.61491907 0.62499976 0.61491907 0.375
		 0.62701583 0.38749999 0.62701583 0.39999998 0.62701583 0.41249996 0.62701583 0.42499995
		 0.62701583 0.43749994 0.62701583 0.44999993 0.62701583 0.46249992 0.62701583 0.4749999
		 0.62701583 0.48749989 0.62701583 0.49999988 0.62701583 0.51249987 0.62701583 0.52499986
		 0.62701583 0.53749985 0.62701583 0.54999983 0.62701583 0.56249982 0.62701583 0.57499981
		 0.62701583 0.5874998 0.62701583 0.59999979 0.62701583 0.61249977 0.62701583 0.62499976
		 0.62701583 0.375 0.63911259 0.38749999 0.63911259 0.39999998 0.63911259 0.41249996
		 0.63911259 0.42499995 0.63911259 0.43749994 0.63911259 0.44999993 0.63911259 0.46249992
		 0.63911259 0.4749999 0.63911259 0.48749989 0.63911259 0.49999988 0.63911259 0.51249987
		 0.63911259 0.52499986 0.63911259 0.53749985 0.63911259 0.54999983 0.63911259 0.56249982
		 0.63911259 0.57499981 0.63911259 0.5874998 0.63911259 0.59999979 0.63911259 0.61249977
		 0.63911259 0.62499976 0.63911259 0.375 0.65120935 0.38749999 0.65120935 0.39999998
		 0.65120935 0.41249996 0.65120935 0.42499995 0.65120935 0.43749994 0.65120935 0.44999993
		 0.65120935 0.46249992 0.65120935 0.4749999 0.65120935 0.48749989 0.65120935 0.49999988
		 0.65120935 0.51249987 0.65120935 0.52499986 0.65120935 0.53749985 0.65120935 0.54999983
		 0.65120935 0.56249982 0.65120935 0.57499981 0.65120935 0.5874998 0.65120935 0.59999979
		 0.65120935 0.61249977 0.65120935 0.62499976 0.65120935 0.375 0.66330612 0.38749999
		 0.66330612 0.39999998 0.66330612 0.41249996 0.66330612 0.42499995 0.66330612 0.43749994
		 0.66330612 0.44999993 0.66330612 0.46249992 0.66330612 0.4749999 0.66330612 0.48749989
		 0.66330612 0.49999988 0.66330612 0.51249987 0.66330612 0.52499986 0.66330612 0.53749985
		 0.66330612 0.54999983 0.66330612 0.56249982 0.66330612 0.57499981 0.66330612 0.5874998
		 0.66330612 0.59999979 0.66330612 0.61249977 0.66330612 0.62499976 0.66330612 0.375
		 0.67540288 0.38749999 0.67540288 0.39999998 0.67540288 0.41249996 0.67540288 0.42499995
		 0.67540288 0.43749994 0.67540288 0.44999993 0.67540288 0.46249992 0.67540288 0.4749999
		 0.67540288 0.48749989 0.67540288 0.49999988 0.67540288 0.51249987 0.67540288 0.52499986
		 0.67540288 0.53749985 0.67540288 0.54999983 0.67540288 0.56249982 0.67540288 0.57499981
		 0.67540288 0.5874998 0.67540288 0.59999979 0.67540288 0.61249977 0.67540288 0.62499976
		 0.67540288 0.375 0.68749964 0.38749999 0.68749964 0.39999998 0.68749964 0.41249996
		 0.68749964 0.42499995 0.68749964 0.43749994 0.68749964 0.44999993 0.68749964 0.46249992
		 0.68749964 0.4749999 0.68749964 0.48749989 0.68749964 0.49999988 0.68749964 0.51249987
		 0.68749964 0.52499986 0.68749964 0.53749985 0.68749964 0.54999983 0.68749964 0.56249982
		 0.68749964 0.57499981 0.68749964 0.5874998 0.68749964 0.59999979 0.68749964 0.61249977
		 0.68749964 0.62499976 0.68749964 0.64860266 0.79546607 0.62640899 0.75190848 0.59184152
		 0.71734101 0.54828393 0.69514734 0.5 0.68749994 0.45171607 0.69514734 0.40815851
		 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607 0.34374997 0.84375 0.3513974
		 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526 0.5 1
		 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146 0.6486026 0.89203393
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 642 ".vt";
	setAttr ".vt[0:165]"  -8 -0.70445794 -0.22889219 -8 -0.59924769 -0.43537882
		 -8 -0.43537888 -0.59924752 -8 -0.22889225 -0.7044577 -8 -2.8694906e-08 -0.74071062
		 -8 0.22889219 -0.7044577 -8 0.43537873 -0.5992474 -8 0.59924734 -0.4353787 -8 0.70445752 -0.2288921
		 -8 0.7407105 4.3042359e-08 -8 0.70445752 0.22889218 -8 0.59924734 0.43537873 -8 0.43537858 0.59924734
		 -8 0.22889219 0.70445752 -8 -2.8694906e-08 0.74071044 -8 -0.22889207 0.70445752 -8 -0.43537861 0.59924734
		 -8 -0.59924722 0.4353787 -8 -0.7044574 0.22889213 -8 -0.74071038 4.3042359e-08 -7.48387098 -0.68737125 -0.22334039
		 -7.48387098 -0.58471292 -0.42481872 -7.48387098 -0.42481878 -0.5847128 -7.48387098 -0.22334048 -0.68737113
		 -7.48387098 -2.6553202e-08 -0.7227447 -7.48387098 0.22334033 -0.68737108 -7.48387098 0.42481855 -0.58471268
		 -7.48387098 0.58471268 -0.42481858 -7.48387098 0.68737102 -0.22334032 -7.48387098 0.72274446 3.9829811e-08
		 -7.48387098 0.68737102 0.22334039 -7.48387098 0.58471268 0.42481863 -7.48387098 0.42481855 0.58471262
		 -7.48387098 0.22334033 0.68737096 -7.48387098 -2.6553202e-08 0.72274452 -7.48387098 -0.2233403 0.6873709
		 -7.48387051 -0.42481852 0.58471256 -7.48387098 -0.58471256 0.42481858 -7.48387098 -0.68737084 0.22334035
		 -7.48387098 -0.72274446 3.9829811e-08 -6.96774197 -0.67028463 -0.21778862 -6.96774197 -0.57017815 -0.4142586
		 -6.96774197 -0.41425866 -0.57017809 -6.96774197 -0.21778868 -0.67028451 -6.96774197 -2.4411497e-08 -0.70477879
		 -6.96774197 0.21778864 -0.67028445 -6.96774197 0.41425854 -0.57017791 -6.96774197 0.57017785 -0.41425848
		 -6.96774197 0.67028433 -0.21778853 -6.96774197 0.70477867 3.6617248e-08 -6.96774197 0.67028433 0.21778861
		 -6.96774197 0.57017785 0.41425851 -6.96774197 0.41425854 0.57017791 -6.96774197 0.21778846 0.67028433
		 -6.96774197 -2.4411497e-08 0.70477861 -6.96774197 -0.21778852 0.67028427 -6.96774197 -0.41425842 0.57017785
		 -6.96774197 -0.57017779 0.41425848 -6.96774197 -0.67028421 0.21778856 -6.96774197 -0.70477855 3.6617248e-08
		 -6.45161295 -0.65319806 -0.21223685 -6.45161295 -0.55564344 -0.4036985 -6.45161295 -0.40369856 -0.55564332
		 -6.45161295 -0.2122369 -0.65319788 -6.45161295 -2.2269793e-08 -0.68681288 -6.45161295 0.21223685 -0.65319782
		 -6.45161295 0.4036985 -0.5556432 -6.45161295 0.5556432 -0.40369838 -6.45161295 0.65319777 -0.21223676
		 -6.45161295 0.68681282 3.3404696e-08 -6.45161295 0.65319777 0.21223684 -6.45161295 0.55564302 0.40369841
		 -6.45161295 0.40369835 0.55564314 -6.45161295 0.21223678 0.65319771 -6.45161295 -2.2269793e-08 0.6868127
		 -6.45161295 -0.21223673 0.65319765 -6.45161247 -0.4036983 0.55564308 -6.45161295 -0.55564308 0.40369835
		 -6.45161295 -0.65319765 0.21223679 -6.45161295 -0.68681258 3.3404696e-08 -5.93548393 -0.63611144 -0.20668507
		 -5.93548393 -0.54110867 -0.39313841 -5.93548393 -0.39313844 -0.54110861 -5.93548393 -0.20668513 -0.63611126
		 -5.93548393 -2.0128089e-08 -0.66884696 -5.93548393 0.20668508 -0.63611126 -5.93548393 0.39313832 -0.54110849
		 -5.93548393 0.54110837 -0.39313829 -5.93548393 0.63611108 -0.20668499 -5.93548393 0.66884679 3.0192133e-08
		 -5.93548393 0.63611108 0.20668505 -5.93548393 0.54110837 0.39313829 -5.93548393 0.39313817 0.54110843
		 -5.93548393 0.20668499 0.63611108 -5.93548393 -2.0128089e-08 0.66884679 -5.93548393 -0.20668496 0.63611108
		 -5.93548393 -0.3931382 0.54110837 -5.93548393 -0.54110831 0.39313826 -5.93548393 -0.63611102 0.20668501
		 -5.93548393 -0.66884667 3.0192133e-08 -5.41935492 -0.61902475 -0.2011333 -5.41935492 -0.5265739 -0.38257828
		 -5.41935492 -0.38257831 -0.52657384 -5.41935492 -0.20113334 -0.61902469 -5.41935492 -1.7986384e-08 -0.65088099
		 -5.41935492 0.2011333 -0.61902463 -5.41935492 0.38257822 -0.52657372 -5.41935492 0.52657372 -0.38257816
		 -5.41935492 0.61902452 -0.20113322 -5.41935492 0.65088081 2.6979578e-08 -5.41935492 0.61902452 0.20113327
		 -5.41935492 0.52657372 0.38257819 -5.41935492 0.38257813 0.52657366 -5.41935492 0.20113322 0.61902452
		 -5.41935492 -1.7986384e-08 0.65088081 -5.41935492 -0.20113318 0.61902446 -5.41935444 -0.38257807 0.5265736
		 -5.41935492 -0.5265736 0.38257816 -5.41935492 -0.61902434 0.20113324 -5.41935492 -0.65088075 2.6979578e-08
		 -4.9032259 -0.60193813 -0.19558153 -4.9032259 -0.51203918 -0.37201819 -4.9032259 -0.37201822 -0.51203912
		 -4.9032259 -0.19558156 -0.60193807 -4.9032259 -1.584468e-08 -0.63291508 -4.9032259 0.19558153 -0.60193801
		 -4.9032259 0.3720181 -0.51203901 -4.9032259 0.51203895 -0.37201807 -4.9032259 0.60193783 -0.19558145
		 -4.9032259 0.63291496 2.3767013e-08 -4.9032259 0.60193783 0.1955815 -4.9032259 0.51203895 0.37201807
		 -4.9032259 0.37201804 0.51203895 -4.9032259 0.19558145 0.60193789 -4.9032259 -1.584468e-08 0.6329149
		 -4.9032259 -0.19558141 0.60193783 -4.9032259 -0.37201798 0.51203889 -4.9032259 -0.51203883 0.37201804
		 -4.9032259 -0.60193771 0.19558145 -4.9032259 -0.63291484 2.3767013e-08 -4.38709688 -0.5848515 -0.19002974
		 -4.38709688 -0.49750444 -0.36145806 -4.38709688 -0.36145809 -0.49750435 -4.38709688 -0.19002977 -0.58485138
		 -4.38709688 -1.3702969e-08 -0.61494917 -4.38709688 0.19002976 -0.58485132 -4.38709688 0.361458 -0.49750423
		 -4.38709688 0.49750426 -0.36145797 -4.38709688 0.58485126 -0.19002967 -4.38709688 0.61494905 2.0554456e-08
		 -4.38709688 0.58485126 0.19002971 -4.38709688 0.49750417 0.36145797 -4.38709688 0.36145794 0.49750417
		 -4.38709688 0.19002968 0.58485121 -4.38709688 -1.3702969e-08 0.61494899 -4.38709688 -0.19002964 0.58485115
		 -4.38709641 -0.36145788 0.49750412 -4.38709688 -0.49750409 0.36145794 -4.38709688 -0.58485115 0.19002968
		 -4.38709688 -0.61494887 2.0554456e-08 -3.8709681 -0.56776488 -0.18447797 -3.87096763 -0.48296967 -0.35089797
		 -3.87096786 -0.350898 -0.48296961 -3.87096786 -0.184478 -0.56776476 -3.87096786 -1.1561265e-08 -0.59698319
		 -3.87096786 0.18447797 -0.56776476;
	setAttr ".vt[166:331]" -3.87096786 0.35089791 -0.48296952 -3.87096786 0.48296943 -0.35089788
		 -3.87096786 0.56776458 -0.1844779 -3.87096786 0.59698302 1.73419e-08 -3.87096786 0.56776458 0.18447794
		 -3.87096786 0.48296943 0.35089788 -3.87096786 0.35089782 0.48296943 -3.87096786 0.1844779 0.56776458
		 -3.87096786 -1.1561265e-08 0.59698302 -3.87096786 -0.18447785 0.56776458 -3.8709681 -0.35089779 0.4829694
		 -3.87096786 -0.48296937 0.35089782 -3.87096786 -0.56776452 0.1844779 -3.87096786 -0.5969829 1.73419e-08
		 -3.35483885 -0.55067825 -0.1789262 -3.35483885 -0.46843493 -0.34033784 -3.35483885 -0.34033787 -0.46843487
		 -3.35483885 -0.17892621 -0.55067813 -3.35483885 -9.4195611e-09 -0.57901722 -3.35483885 0.1789262 -0.55067813
		 -3.35483885 0.34033778 -0.46843478 -3.35483885 0.46843478 -0.34033772 -3.35483885 0.55067807 -0.17892613
		 -3.35483885 0.5790171 1.4129344e-08 -3.35483885 0.55067807 0.17892615 -3.35483885 0.46843472 0.34033772
		 -3.35483885 0.34033772 0.46843469 -3.35483885 0.17892613 0.55067796 -3.35483885 -9.4195611e-09 0.57901704
		 -3.35483885 -0.17892608 0.55067796 -3.35483885 -0.34033766 0.46843466 -3.35483885 -0.46843463 0.34033769
		 -3.35483885 -0.5506779 0.17892613 -3.35483885 -0.57901698 1.4129344e-08 -2.83870983 -0.53359163 -0.1733744
		 -2.83870983 -0.45390019 -0.32977772 -2.83870983 -0.32977778 -0.45390013 -2.83870983 -0.17337441 -0.53359157
		 -2.83870983 -7.2778565e-09 -0.56105131 -2.83870983 0.17337441 -0.53359151 -2.83870983 0.32977769 -0.45390004
		 -2.83870983 0.45389998 -0.32977763 -2.83870983 0.53359139 -0.17337434 -2.83870983 0.56105119 1.0916787e-08
		 -2.83870983 0.53359139 0.17337435 -2.83870983 0.45389998 0.32977763 -2.83870983 0.32977763 0.45389995
		 -2.83870983 0.17337435 0.53359139 -2.83870983 -7.2778565e-09 0.56105113 -2.83870983 -0.17337433 0.53359133
		 -2.83870983 -0.32977757 0.45389992 -2.83870983 -0.45389989 0.32977757 -2.83870983 -0.53359133 0.17337433
		 -2.83870983 -0.56105107 1.0916787e-08 -2.32258081 -0.516505 -0.16782263 -2.32258081 -0.43936545 -0.31921762
		 -2.32258081 -0.31921765 -0.43936536 -2.32258081 -0.16782264 -0.51650494 -2.32258081 -5.1361524e-09 -0.5430854
		 -2.32258081 0.16782264 -0.51650488 -2.32258081 0.31921759 -0.43936527 -2.32258081 0.4393653 -0.31921753
		 -2.32258081 0.51650482 -0.16782257 -2.32258081 0.54308528 7.7042239e-09 -2.32258081 0.51650482 0.16782258
		 -2.32258081 0.43936524 0.3192175 -2.32258081 0.3192175 0.43936518 -2.32258081 0.16782258 0.51650476
		 -2.32258081 -5.1361524e-09 0.54308522 -2.32258081 -0.16782254 0.5165047 -2.32258081 -0.31921747 0.43936515
		 -2.32258081 -0.43936515 0.31921747 -2.32258081 -0.5165047 0.16782255 -2.32258081 -0.54308516 7.7042239e-09
		 -1.80645168 -0.49941838 -0.16227086 -1.8064518 -0.42483065 -0.30865753 -1.8064518 -0.30865753 -0.42483062
		 -1.8064518 -0.16227086 -0.49941832 -1.8064518 -2.994448e-09 -0.52511948 -1.8064518 0.16227087 -0.49941829
		 -1.8064518 0.30865744 -0.42483053 -1.8064518 0.42483047 -0.30865741 -1.8064518 0.49941817 -0.1622708
		 -1.8064518 0.52511936 4.491667e-09 -1.8064518 0.49941817 0.1622708 -1.8064518 0.42483047 0.30865741
		 -1.8064518 0.30865738 0.42483044 -1.8064518 0.1622708 0.49941814 -1.8064518 1.2655327e-08 0.5251193
		 -1.8064518 -0.16227077 0.49941811 -1.8064518 -0.30865732 0.42483041 -1.80645192 -0.42483038 0.30865738
		 -1.8064518 -0.49941808 0.16227077 -1.8064518 -0.52511925 4.491667e-09 -1.29032278 -0.48233178 -0.15671909
		 -1.29032278 -0.4102959 -0.2980974 -1.29032278 -0.2980974 -0.41029587 -1.29032278 -0.15671907 -0.48233172
		 -1.29032278 -8.5274388e-10 -0.50715357 -1.29032278 0.15671909 -0.48233169 -1.29032278 0.29809734 -0.41029578
		 -1.29032278 0.41029578 -0.29809731 -1.29032278 0.48233163 -0.15671901 -1.29032278 0.50715345 1.2791105e-09
		 -1.29032278 0.48233163 0.15671903 -1.29032278 0.41029572 0.29809728 -1.29032278 0.29809728 0.4102957
		 -1.29032278 0.15671903 0.48233154 -1.29032278 1.4261605e-08 0.50715339 -1.29032278 -0.15671898 0.48233151
		 -1.29032278 -0.29809722 0.41029567 -1.29032278 -0.41029564 0.29809725 -1.29032278 -0.48233148 0.156719
		 -1.29032278 -0.50715333 1.2791105e-09 -0.77419376 -0.46524516 -0.1511673 -0.77419382 -0.39576116 -0.28753731
		 -0.77419382 -0.28753728 -0.39576113 -0.77419376 -0.15116729 -0.4652451 -0.77419376 1.2889639e-09 -0.48918763
		 -0.77419376 0.1511673 -0.46524507 -0.77419376 0.28753722 -0.39576104 -0.77419376 0.39576098 -0.28753722
		 -0.77419376 0.46524495 -0.15116724 -0.77419376 0.48918751 -1.9334461e-09 -0.77419376 0.46524495 0.15116724
		 -0.77419376 0.39576098 0.28753719 -0.77419376 0.28753719 0.39576095 -0.77419376 0.15116724 0.46524492
		 -0.77419376 1.5867883e-08 0.48918745 -0.77419376 -0.1511672 0.46524489 -0.77419376 -0.2875371 0.39576092
		 -0.77419376 -0.39576089 0.28753716 -0.77419376 -0.46524486 0.15116721 -0.77419376 -0.48918739 -1.9334461e-09
		 -0.25806478 -0.44815853 -0.14561553 -0.25806475 -0.38122642 -0.27697721 -0.25806475 -0.27697718 -0.38122639
		 -0.25806475 -0.1456155 -0.44815847 -0.25806475 3.4306717e-09 -0.47122169 -0.25806475 0.1456155 -0.44815844
		 -0.25806475 0.27697712 -0.38122633 -0.25806475 0.38122627 -0.27697712 -0.25806475 0.44815841 -0.14561547
		 -0.25806475 0.47122157 -5.1460023e-09 -0.25806475 0.44815841 0.14561546 -0.25806475 0.38122624 0.27697706
		 -0.25806475 0.27697706 0.38122621 -0.25806475 0.14561547 0.44815829 -0.25806475 1.7474164e-08 0.47122151
		 -0.25806475 -0.14561541 0.44815826 -0.25806475 -0.276977 0.38122618 -0.25806472 -0.38122615 0.27697703
		 -0.25806472 -0.44815826 0.14561544 -0.25806475 -0.47122145 -5.1460023e-09 0.25806427 -0.43107191 -0.14006376
		 0.25806427 -0.36669168 -0.26641709 0.25806427 -0.26641706 -0.36669165 0.25806427 -0.14006372 -0.43107185
		 0.25806427 5.5723759e-09 -0.45325577 0.25806427 0.14006373 -0.43107182 0.25806427 0.26641703 -0.36669159
		 0.25806424 0.36669153 -0.266417 0.25806424 0.43107173 -0.1400637 0.25806427 0.45325565 -8.3585663e-09
		 0.25806424 0.43107173 0.14006369 0.25806427 0.36669153 0.26641697;
	setAttr ".vt[332:497]" 0.25806427 0.26641697 0.36669147 0.25806427 0.14006369 0.43107167
		 0.25806427 1.9080444e-08 0.45325559 0.25806427 -0.14006364 0.43107164 0.25806427 -0.26641691 0.36669147
		 0.25806427 -0.36669141 0.26641694 0.25806427 -0.43107158 0.14006366 0.25806427 -0.45325553 -8.3585663e-09
		 0.77419329 -0.41398525 -0.13451198 0.77419329 -0.35215691 -0.25585699 0.77419329 -0.25585696 -0.35215691
		 0.77419329 -0.13451196 -0.41398522 0.77419329 7.71408e-09 -0.4352898 0.77419329 0.13451196 -0.41398522
		 0.77419329 0.2558569 -0.35215685 0.77419329 0.35215682 -0.2558569 0.77419329 0.41398513 -0.13451193
		 0.77419329 0.43528971 -1.1571123e-08 0.77419329 0.41398513 0.1345119 0.77419329 0.35215679 0.25585687
		 0.77419323 0.25585687 0.35215676 0.77419329 0.13451192 0.41398504 0.77419329 2.0686722e-08 0.43528962
		 0.77419329 -0.13451186 0.41398504 0.77419329 -0.25585678 0.35215673 0.77419329 -0.3521567 0.25585684
		 0.77419329 -0.41398504 0.13451187 0.77419329 -0.43528959 -1.1571123e-08 1.2903223 -0.39689866 -0.12896021
		 1.2903223 -0.33762217 -0.24529687 1.2903223 -0.24529684 -0.33762214 1.2903223 -0.12896018 -0.39689863
		 1.2903223 9.8557846e-09 -0.41732389 1.2903223 0.12896018 -0.3968986 1.2903223 0.24529681 -0.33762208
		 1.2903223 0.33762208 -0.24529679 1.2903223 0.39689851 -0.12896016 1.2903223 0.41732377 -1.4783679e-08
		 1.2903223 0.39689851 0.12896013 1.2903223 0.33762205 0.24529673 1.2903223 0.24529676 0.33762196
		 1.2903223 0.12896015 0.39689845 1.2903223 2.2292999e-08 0.41732371 1.2903223 -0.12896007 0.39689842
		 1.2903223 -0.24529669 0.33762196 1.2903223 -0.33762193 0.2452967 1.2903223 -0.39689836 0.1289601
		 1.2903223 -0.41732365 -1.4783679e-08 1.80645132 -0.379812 -0.12340842 1.80645132 -0.32308742 -0.23473676
		 1.80645132 -0.23473673 -0.32308742 1.80645132 -0.12340839 -0.379812 1.80645132 1.1997492e-08 -0.39935794
		 1.80645132 0.12340841 -0.379812 1.80645144 0.2347367 -0.32308733 1.80645132 0.32308733 -0.23473668
		 1.80645144 0.37981191 -0.12340838 1.8064512 0.39935786 -1.7996236e-08 1.80645144 0.37981191 0.12340834
		 1.80645132 0.3230873 0.23473662 1.80645132 0.23473665 0.32308725 1.80645132 0.12340837 0.37981182
		 1.80645132 2.3899281e-08 0.39935777 1.80645132 -0.1234083 0.37981182 1.80645132 -0.23473658 0.32308722
		 1.80645132 -0.32308725 0.23473661 1.80645132 -0.37981182 0.12340832 1.80645132 -0.39935774 -1.7996236e-08
		 2.32258034 -0.36272544 -0.11785665 2.32258034 -0.30855265 -0.22417663 2.32258034 -0.22417662 -0.30855268
		 2.32258034 -0.11785661 -0.36272541 2.32258034 1.4139196e-08 -0.38139203 2.32258034 0.11785663 -0.36272538
		 2.32258034 0.2241766 -0.30855259 2.32258034 0.30855256 -0.22417657 2.32258034 0.36272529 -0.11785661
		 2.32258034 0.38139191 -2.1208793e-08 2.32258034 0.36272529 0.11785656 2.32258034 0.30855253 0.2241765
		 2.32258034 0.22417656 0.3085525 2.32258034 0.1178566 0.36272523 2.32258034 1.4139196e-08 0.38139185
		 2.32258034 -0.11785652 0.3627252 2.32258034 -0.22417648 0.30855247 2.32258034 -0.30855241 0.22417648
		 2.32258034 -0.36272514 0.11785654 2.32258034 -0.38139179 -2.1208793e-08 2.83870935 -0.34563875 -0.11230487
		 2.83870935 -0.29401791 -0.21361654 2.83870935 -0.21361649 -0.29401794 2.83870935 -0.11230483 -0.34563875
		 2.83870935 1.62809e-08 -0.36342612 2.83870935 0.11230485 -0.34563875 2.83870935 0.21361648 -0.29401785
		 2.83870935 0.29401782 -0.21361646 2.83870935 0.34563869 -0.11230482 2.83870935 0.363426 -2.4421356e-08
		 2.83870935 0.34563869 0.11230478 2.83870935 0.29401779 0.2136164 2.83870935 0.21361643 0.29401776
		 2.83870935 0.11230482 0.34563857 2.83870935 1.62809e-08 0.36342594 2.83870935 -0.11230475 0.34563857
		 2.83870935 -0.21361636 0.29401773 2.83870935 -0.29401773 0.21361637 2.83870935 -0.34563857 0.11230475
		 2.83870935 -0.36342588 -2.4421356e-08 3.35483837 -0.32855219 -0.10675309 3.35483837 -0.27948314 -0.20305642
		 3.35483837 -0.20305638 -0.2794832 3.35483837 -0.10675304 -0.32855216 3.35483837 1.8422607e-08 -0.34546015
		 3.35483837 0.10675308 -0.32855213 3.35483837 0.20305637 -0.27948314 3.35483837 0.27948308 -0.20305637
		 3.35483837 0.32855207 -0.10675305 3.35483837 0.34546009 -2.7633913e-08 3.35483837 0.32855207 0.10675299
		 3.35483837 0.27948305 0.20305629 3.35483837 0.20305634 0.27948302 3.35483837 0.10675304 0.32855198
		 3.35483837 1.8422607e-08 0.34545997 3.35483837 -0.10675296 0.32855195 3.35483837 -0.20305625 0.27948299
		 3.35483837 -0.27948293 0.20305626 3.35483837 -0.32855195 0.10675298 3.35483837 -0.34545997 -2.7633913e-08
		 3.87096739 -0.3114655 -0.10120132 3.87096739 -0.2649484 -0.19249631 3.87096739 -0.19249626 -0.26494846
		 3.87096739 -0.10120127 -0.31146553 3.87096739 2.0564313e-08 -0.32749423 3.87096739 0.1012013 -0.3114655
		 3.87096739 0.19249627 -0.2649484 3.87096739 0.26494834 -0.19249626 3.87096715 0.31146544 -0.10120128
		 3.87096739 0.32749414 -3.0846468e-08 3.87096715 0.31146544 0.10120122 3.87096739 0.26494834 0.19249618
		 3.87096763 0.19249623 0.26494825 3.87096739 0.10120127 0.31146535 3.87096739 2.0564313e-08 0.32749406
		 3.87096739 -0.10120118 0.31146532 3.87096739 -0.19249615 0.26494825 3.87096739 -0.26494825 0.19249615
		 3.87096739 -0.31146532 0.1012012 3.87096739 -0.32749403 -3.0846468e-08 4.38709641 -0.29437891 -0.09564954
		 4.38709641 -0.25041366 -0.1819362 4.38709641 -0.18193614 -0.25041372 4.38709641 -0.095649481 -0.29437894
		 4.38709641 2.2706017e-08 -0.30952829 4.38709641 0.095649526 -0.29437891 4.38709641 0.18193616 -0.25041366
		 4.38709641 0.2504136 -0.18193616 4.38709641 0.29437882 -0.095649503 4.38709641 0.3095282 -3.4059024e-08
		 4.38709641 0.29437882 0.095649436 4.38709641 0.2504136 0.18193607 4.38709641 0.18193612 0.25041354
		 4.38709641 0.095649488 0.29437876 4.38709641 2.2706017e-08 0.30952811 4.38709641 -0.095649406 0.29437873
		 4.38709641 -0.18193604 0.25041351 4.38709641 -0.25041348 0.18193606;
	setAttr ".vt[498:641]" 4.38709641 -0.2943787 0.095649421 4.38709641 -0.30952808 -3.4059024e-08
		 4.90322542 -0.27729225 -0.09009777 4.90322542 -0.2358789 -0.17137609 4.90322542 -0.17137603 -0.23587894
		 4.90322542 -0.090097703 -0.27729231 4.90322542 2.4847724e-08 -0.29156238 4.90322542 0.090097755 -0.27729228
		 4.90322542 0.17137605 -0.2358789 4.90322542 0.23587887 -0.17137603 4.90322542 0.27729222 -0.090097733
		 4.90322542 0.29156229 -3.7271587e-08 4.90322542 0.27729222 0.090097658 4.90322542 0.23587885 0.17137595
		 4.90322542 0.17137602 0.23587877 4.90322542 0.090097718 0.27729213 4.90322542 2.4847724e-08 0.2915622
		 4.90322542 -0.090097636 0.2772921 4.9032259 -0.17137592 0.23587874 4.90322542 -0.23587877 0.17137593
		 4.90322542 -0.2772921 0.090097643 4.90322542 -0.29156211 -3.7271587e-08 5.41935444 -0.26020566 -0.084545985
		 5.41935444 -0.22134413 -0.16081598 5.41935444 -0.16081592 -0.22134419 5.41935444 -0.084545925 -0.26020569
		 5.41935444 2.6989429e-08 -0.27359644 5.41935444 0.084545977 -0.26020569 5.41935444 0.16081594 -0.22134414
		 5.41935444 0.22134413 -0.16081594 5.41935444 0.2602056 -0.084545955 5.41935444 0.27359635 -4.0484142e-08
		 5.41935444 0.2602056 0.084545873 5.41935444 0.22134411 0.16081583 5.41935444 0.16081591 0.22134401
		 5.41935444 0.08454594 0.26020551 5.41935444 2.6989429e-08 0.27359626 5.41935444 -0.084545858 0.26020551
		 5.41935444 -0.16081582 0.22134399 5.41935444 -0.22134399 0.16081582 5.41935444 -0.26020548 0.084545851
		 5.41935444 -0.27359623 -4.0484142e-08 5.93548346 -0.24311902 -0.078994207 5.93548346 -0.20680939 -0.15025587
		 5.93548346 -0.1502558 -0.20680946 5.93548346 -0.07899414 -0.24311908 5.93548346 2.9131133e-08 -0.25563052
		 5.93548346 0.0789942 -0.24311906 5.93548346 0.15025583 -0.2068094 5.93548346 0.20680937 -0.15025583
		 5.93548346 0.243119 -0.078994177 5.93548346 0.25563043 -4.3696701e-08 5.93548346 0.243119 0.078994088
		 5.93548346 0.20680936 0.15025572 5.93548346 0.1502558 0.20680928 5.93548346 0.07899417 0.2431189
		 5.93548346 2.9131133e-08 0.25563034 5.93548346 -0.07899408 0.24311888 5.93548393 -0.15025572 0.20680925
		 5.93548346 -0.20680927 0.15025571 5.93548346 -0.2431189 0.078994073 5.93548346 -0.25563034 -4.3696701e-08
		 6.45161247 -0.22603242 -0.073442437 6.45161247 -0.19227467 -0.13969576 6.45161247 -0.13969572 -0.19227472
		 6.45161247 -0.073442355 -0.22603247 6.45161247 3.127284e-08 -0.23766458 6.45161247 0.073442414 -0.22603245
		 6.45161247 0.13969572 -0.19227467 6.45161247 0.19227463 -0.13969573 6.45161247 0.22603239 -0.073442407
		 6.45161247 0.23766452 -4.6909257e-08 6.45161247 0.22603239 0.07344231 6.45161247 0.19227463 0.13969561
		 6.45161247 0.13969569 0.19227454 6.45161247 0.073442385 0.22603229 6.45161247 3.127284e-08 0.2376644
		 6.45161247 -0.073442295 0.22603227 6.45161247 -0.1396956 0.19227453 6.45161247 -0.19227451 0.1396956
		 6.45161247 -0.22603226 0.073442295 6.45161247 -0.2376644 -4.6909257e-08 6.96774149 -0.20894575 -0.067890659
		 6.96774149 -0.1777399 -0.12913567 6.96774149 -0.12913558 -0.17773998 6.96774149 -0.067890547 -0.20894584
		 6.96774149 3.3414544e-08 -0.21969864 6.96774149 0.067890637 -0.20894581 6.96774149 0.12913561 -0.17773993
		 6.96774149 0.1777399 -0.12913562 6.96774149 0.20894578 -0.067890637 6.96774149 0.21969858 -5.0121816e-08
		 6.96774149 0.20894578 0.067890532 6.96774149 0.17773989 0.1291355 6.96774149 0.12913559 0.1777398
		 6.96774149 0.067890614 0.20894566 6.96774149 3.3414544e-08 0.21969846 6.96774149 -0.067890547 0.20894563
		 6.96774197 -0.12913546 0.17773977 6.96774149 -0.1777398 0.1291355 6.96774149 -0.20894566 0.067890517
		 6.96774149 -0.21969843 -5.0121816e-08 7.48387051 -0.19185919 -0.062338881 7.48387051 -0.16320513 -0.11857554
		 7.48387051 -0.11857544 -0.16320522 7.48387051 -0.062338792 -0.19185922 7.48387051 3.5556248e-08 -0.2017327
		 7.48387051 0.062338859 -0.19185922 7.48387051 0.11857551 -0.16320518 7.48387051 0.16320515 -0.11857551
		 7.48387051 0.19185916 -0.062338859 7.48387051 0.20173264 -5.3334375e-08 7.48387051 0.19185916 0.062338755
		 7.48387051 0.16320515 0.11857539 7.48387051 0.11857548 0.16320504 7.48387051 0.062338844 0.19185904
		 7.48387051 3.5556248e-08 0.20173252 7.48387051 -0.06233874 0.19185904 7.48387051 -0.11857539 0.16320503
		 7.48387051 -0.16320503 0.11857538 7.48387051 -0.19185901 0.06233874 7.48387051 -0.20173252 -5.3334375e-08
		 8 -0.17477253 -0.056787103 8 -0.14867038 -0.10801542 8 -0.10801536 -0.14867046 8 -0.056787007 -0.17477259
		 8 3.7697959e-08 -0.18376678 8 0.056787081 -0.17477256 8 0.10801539 -0.14867043 8 0.14867038 -0.10801539
		 8 0.1747725 -0.056787074 8 0.18376669 -5.6546934e-08 8 0.1747725 0.056786969 8 0.14867038 0.10801527
		 8 0.10801536 0.14867029 8 0.056787059 0.17477241 8 3.7697959e-08 0.1837666 8 -0.056786962 0.17477238
		 8 -0.10801527 0.14867026 8 -0.14867026 0.10801527 8 -0.17477238 0.056786954 8 -0.18376657 -5.6546934e-08
		 -8 -2.8694906e-08 4.3042359e-08 8 3.7697959e-08 -5.6546934e-08;
	setAttr -s 1300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 380 381 1 381 382 1 382 383 1
		 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 380 1 400 401 1
		 401 402 1 402 403 1 403 404 1 404 405 1 405 406 1 406 407 1 407 408 1 408 409 1 409 410 1
		 410 411 1 411 412 1 412 413 1 413 414 1 414 415 1 415 416 1 416 417 1 417 418 1 418 419 1
		 419 400 1 420 421 1 421 422 1 422 423 1 423 424 1 424 425 1 425 426 1 426 427 1 427 428 1
		 428 429 1 429 430 1 430 431 1 431 432 1 432 433 1 433 434 1 434 435 1 435 436 1 436 437 1
		 437 438 1 438 439 1 439 420 1 440 441 1 441 442 1 442 443 1 443 444 1 444 445 1 445 446 1
		 446 447 1 447 448 1 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1
		 455 456 1 456 457 1 457 458 1 458 459 1 459 440 1 460 461 1 461 462 1 462 463 1 463 464 1
		 464 465 1 465 466 1 466 467 1 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 472 473 1
		 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 479 1 479 460 1 480 481 1 481 482 1
		 482 483 1 483 484 1 484 485 1 485 486 1 486 487 1 487 488 1 488 489 1 489 490 1 490 491 1
		 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1 496 497 1 497 498 1;
	setAttr ".ed[498:663]" 498 499 1 499 480 1 500 501 1 501 502 1 502 503 1 503 504 1
		 504 505 1 505 506 1 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1
		 513 514 1 514 515 1 515 516 1 516 517 1 517 518 1 518 519 1 519 500 1 520 521 1 521 522 1
		 522 523 1 523 524 1 524 525 1 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1
		 531 532 1 532 533 1 533 534 1 534 535 1 535 536 1 536 537 1 537 538 1 538 539 1 539 520 1
		 540 541 1 541 542 1 542 543 1 543 544 1 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1
		 549 550 1 550 551 1 551 552 1 552 553 1 553 554 1 554 555 1 555 556 1 556 557 1 557 558 1
		 558 559 1 559 540 1 560 561 1 561 562 1 562 563 1 563 564 1 564 565 1 565 566 1 566 567 1
		 567 568 1 568 569 1 569 570 1 570 571 1 571 572 1 572 573 1 573 574 1 574 575 1 575 576 1
		 576 577 1 577 578 1 578 579 1 579 560 1 580 581 1 581 582 1 582 583 1 583 584 1 584 585 1
		 585 586 1 586 587 1 587 588 1 588 589 1 589 590 1 590 591 1 591 592 1 592 593 1 593 594 1
		 594 595 1 595 596 1 596 597 1 597 598 1 598 599 1 599 580 1 600 601 1 601 602 1 602 603 1
		 603 604 1 604 605 1 605 606 1 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1
		 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1 618 619 1 619 600 1 620 621 0
		 621 622 0 622 623 0 623 624 0 624 625 0 625 626 0 626 627 0 627 628 0 628 629 0 629 630 0
		 630 631 0 631 632 0 632 633 0 633 634 0 634 635 0 635 636 0 636 637 0 637 638 0 638 639 0
		 639 620 0 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1
		 11 31 1 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1
		 22 42 1 23 43 1;
	setAttr ".ed[664:829]" 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1
		 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1
		 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1
		 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1
		 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1
		 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1
		 85 105 1 86 106 1 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1
		 94 114 1 95 115 1 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1
		 103 123 1 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1
		 112 132 1 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1
		 121 141 1 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1
		 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1
		 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1
		 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1
		 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1
		 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1
		 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1
		 184 204 1 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1;
	setAttr ".ed[830:995]" 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1
		 286 306 1 287 307 1 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1
		 295 315 1 296 316 1 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1
		 304 324 1 305 325 1 306 326 1 307 327 1 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1
		 313 333 1 314 334 1 315 335 1 316 336 1 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1
		 322 342 1 323 343 1 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1
		 331 351 1 332 352 1 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1
		 340 360 1 341 361 1 342 362 1 343 363 1 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1
		 349 369 1 350 370 1 351 371 1 352 372 1 353 373 1 354 374 1 355 375 1;
	setAttr ".ed[996:1161]" 356 376 1 357 377 1 358 378 1 359 379 1 360 380 1 361 381 1
		 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1 369 389 1 370 390 1
		 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1 378 398 1 379 399 1
		 380 400 1 381 401 1 382 402 1 383 403 1 384 404 1 385 405 1 386 406 1 387 407 1 388 408 1
		 389 409 1 390 410 1 391 411 1 392 412 1 393 413 1 394 414 1 395 415 1 396 416 1 397 417 1
		 398 418 1 399 419 1 400 420 1 401 421 1 402 422 1 403 423 1 404 424 1 405 425 1 406 426 1
		 407 427 1 408 428 1 409 429 1 410 430 1 411 431 1 412 432 1 413 433 1 414 434 1 415 435 1
		 416 436 1 417 437 1 418 438 1 419 439 1 420 440 1 421 441 1 422 442 1 423 443 1 424 444 1
		 425 445 1 426 446 1 427 447 1 428 448 1 429 449 1 430 450 1 431 451 1 432 452 1 433 453 1
		 434 454 1 435 455 1 436 456 1 437 457 1 438 458 1 439 459 1 440 460 1 441 461 1 442 462 1
		 443 463 1 444 464 1 445 465 1 446 466 1 447 467 1 448 468 1 449 469 1 450 470 1 451 471 1
		 452 472 1 453 473 1 454 474 1 455 475 1 456 476 1 457 477 1 458 478 1 459 479 1 460 480 1
		 461 481 1 462 482 1 463 483 1 464 484 1 465 485 1 466 486 1 467 487 1 468 488 1 469 489 1
		 470 490 1 471 491 1 472 492 1 473 493 1 474 494 1 475 495 1 476 496 1 477 497 1 478 498 1
		 479 499 1 480 500 1 481 501 1 482 502 1 483 503 1 484 504 1 485 505 1 486 506 1 487 507 1
		 488 508 1 489 509 1 490 510 1 491 511 1 492 512 1 493 513 1 494 514 1 495 515 1 496 516 1
		 497 517 1 498 518 1 499 519 1 500 520 1 501 521 1 502 522 1 503 523 1 504 524 1 505 525 1
		 506 526 1 507 527 1 508 528 1 509 529 1 510 530 1 511 531 1 512 532 1 513 533 1 514 534 1
		 515 535 1 516 536 1 517 537 1 518 538 1 519 539 1 520 540 1 521 541 1;
	setAttr ".ed[1162:1299]" 522 542 1 523 543 1 524 544 1 525 545 1 526 546 1 527 547 1
		 528 548 1 529 549 1 530 550 1 531 551 1 532 552 1 533 553 1 534 554 1 535 555 1 536 556 1
		 537 557 1 538 558 1 539 559 1 540 560 1 541 561 1 542 562 1 543 563 1 544 564 1 545 565 1
		 546 566 1 547 567 1 548 568 1 549 569 1 550 570 1 551 571 1 552 572 1 553 573 1 554 574 1
		 555 575 1 556 576 1 557 577 1 558 578 1 559 579 1 560 580 1 561 581 1 562 582 1 563 583 1
		 564 584 1 565 585 1 566 586 1 567 587 1 568 588 1 569 589 1 570 590 1 571 591 1 572 592 1
		 573 593 1 574 594 1 575 595 1 576 596 1 577 597 1 578 598 1 579 599 1 580 600 1 581 601 1
		 582 602 1 583 603 1 584 604 1 585 605 1 586 606 1 587 607 1 588 608 1 589 609 1 590 610 1
		 591 611 1 592 612 1 593 613 1 594 614 1 595 615 1 596 616 1 597 617 1 598 618 1 599 619 1
		 600 620 1 601 621 1 602 622 1 603 623 1 604 624 1 605 625 1 606 626 1 607 627 1 608 628 1
		 609 629 1 610 630 1 611 631 1 612 632 1 613 633 1 614 634 1 615 635 1 616 636 1 617 637 1
		 618 638 1 619 639 1 640 0 1 640 1 1 640 2 1 640 3 1 640 4 1 640 5 1 640 6 1 640 7 1
		 640 8 1 640 9 1 640 10 1 640 11 1 640 12 1 640 13 1 640 14 1 640 15 1 640 16 1 640 17 1
		 640 18 1 640 19 1 620 641 1 621 641 1 622 641 1 623 641 1 624 641 1 625 641 1 626 641 1
		 627 641 1 628 641 1 629 641 1 630 641 1 631 641 1 632 641 1 633 641 1 634 641 1 635 641 1
		 636 641 1 637 641 1 638 641 1 639 641 1;
	setAttr -s 660 -ch 2600 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 641 -21 -641
		mu 0 4 20 21 42 41
		f 4 1 642 -22 -642
		mu 0 4 21 22 43 42
		f 4 2 643 -23 -643
		mu 0 4 22 23 44 43
		f 4 3 644 -24 -644
		mu 0 4 23 24 45 44
		f 4 4 645 -25 -645
		mu 0 4 24 25 46 45
		f 4 5 646 -26 -646
		mu 0 4 25 26 47 46
		f 4 6 647 -27 -647
		mu 0 4 26 27 48 47
		f 4 7 648 -28 -648
		mu 0 4 27 28 49 48
		f 4 8 649 -29 -649
		mu 0 4 28 29 50 49
		f 4 9 650 -30 -650
		mu 0 4 29 30 51 50
		f 4 10 651 -31 -651
		mu 0 4 30 31 52 51
		f 4 11 652 -32 -652
		mu 0 4 31 32 53 52
		f 4 12 653 -33 -653
		mu 0 4 32 33 54 53
		f 4 13 654 -34 -654
		mu 0 4 33 34 55 54
		f 4 14 655 -35 -655
		mu 0 4 34 35 56 55
		f 4 15 656 -36 -656
		mu 0 4 35 36 57 56
		f 4 16 657 -37 -657
		mu 0 4 36 37 58 57
		f 4 17 658 -38 -658
		mu 0 4 37 38 59 58
		f 4 18 659 -39 -659
		mu 0 4 38 39 60 59
		f 4 19 640 -40 -660
		mu 0 4 39 40 61 60
		f 4 20 661 -41 -661
		mu 0 4 41 42 63 62
		f 4 21 662 -42 -662
		mu 0 4 42 43 64 63
		f 4 22 663 -43 -663
		mu 0 4 43 44 65 64
		f 4 23 664 -44 -664
		mu 0 4 44 45 66 65
		f 4 24 665 -45 -665
		mu 0 4 45 46 67 66
		f 4 25 666 -46 -666
		mu 0 4 46 47 68 67
		f 4 26 667 -47 -667
		mu 0 4 47 48 69 68
		f 4 27 668 -48 -668
		mu 0 4 48 49 70 69
		f 4 28 669 -49 -669
		mu 0 4 49 50 71 70
		f 4 29 670 -50 -670
		mu 0 4 50 51 72 71
		f 4 30 671 -51 -671
		mu 0 4 51 52 73 72
		f 4 31 672 -52 -672
		mu 0 4 52 53 74 73
		f 4 32 673 -53 -673
		mu 0 4 53 54 75 74
		f 4 33 674 -54 -674
		mu 0 4 54 55 76 75
		f 4 34 675 -55 -675
		mu 0 4 55 56 77 76
		f 4 35 676 -56 -676
		mu 0 4 56 57 78 77
		f 4 36 677 -57 -677
		mu 0 4 57 58 79 78
		f 4 37 678 -58 -678
		mu 0 4 58 59 80 79
		f 4 38 679 -59 -679
		mu 0 4 59 60 81 80
		f 4 39 660 -60 -680
		mu 0 4 60 61 82 81
		f 4 40 681 -61 -681
		mu 0 4 62 63 84 83
		f 4 41 682 -62 -682
		mu 0 4 63 64 85 84
		f 4 42 683 -63 -683
		mu 0 4 64 65 86 85
		f 4 43 684 -64 -684
		mu 0 4 65 66 87 86
		f 4 44 685 -65 -685
		mu 0 4 66 67 88 87
		f 4 45 686 -66 -686
		mu 0 4 67 68 89 88
		f 4 46 687 -67 -687
		mu 0 4 68 69 90 89
		f 4 47 688 -68 -688
		mu 0 4 69 70 91 90
		f 4 48 689 -69 -689
		mu 0 4 70 71 92 91
		f 4 49 690 -70 -690
		mu 0 4 71 72 93 92
		f 4 50 691 -71 -691
		mu 0 4 72 73 94 93
		f 4 51 692 -72 -692
		mu 0 4 73 74 95 94
		f 4 52 693 -73 -693
		mu 0 4 74 75 96 95
		f 4 53 694 -74 -694
		mu 0 4 75 76 97 96
		f 4 54 695 -75 -695
		mu 0 4 76 77 98 97
		f 4 55 696 -76 -696
		mu 0 4 77 78 99 98
		f 4 56 697 -77 -697
		mu 0 4 78 79 100 99
		f 4 57 698 -78 -698
		mu 0 4 79 80 101 100
		f 4 58 699 -79 -699
		mu 0 4 80 81 102 101
		f 4 59 680 -80 -700
		mu 0 4 81 82 103 102
		f 4 60 701 -81 -701
		mu 0 4 83 84 105 104
		f 4 61 702 -82 -702
		mu 0 4 84 85 106 105
		f 4 62 703 -83 -703
		mu 0 4 85 86 107 106
		f 4 63 704 -84 -704
		mu 0 4 86 87 108 107
		f 4 64 705 -85 -705
		mu 0 4 87 88 109 108
		f 4 65 706 -86 -706
		mu 0 4 88 89 110 109
		f 4 66 707 -87 -707
		mu 0 4 89 90 111 110
		f 4 67 708 -88 -708
		mu 0 4 90 91 112 111
		f 4 68 709 -89 -709
		mu 0 4 91 92 113 112
		f 4 69 710 -90 -710
		mu 0 4 92 93 114 113
		f 4 70 711 -91 -711
		mu 0 4 93 94 115 114
		f 4 71 712 -92 -712
		mu 0 4 94 95 116 115
		f 4 72 713 -93 -713
		mu 0 4 95 96 117 116
		f 4 73 714 -94 -714
		mu 0 4 96 97 118 117
		f 4 74 715 -95 -715
		mu 0 4 97 98 119 118
		f 4 75 716 -96 -716
		mu 0 4 98 99 120 119
		f 4 76 717 -97 -717
		mu 0 4 99 100 121 120
		f 4 77 718 -98 -718
		mu 0 4 100 101 122 121
		f 4 78 719 -99 -719
		mu 0 4 101 102 123 122
		f 4 79 700 -100 -720
		mu 0 4 102 103 124 123
		f 4 80 721 -101 -721
		mu 0 4 104 105 126 125
		f 4 81 722 -102 -722
		mu 0 4 105 106 127 126
		f 4 82 723 -103 -723
		mu 0 4 106 107 128 127
		f 4 83 724 -104 -724
		mu 0 4 107 108 129 128
		f 4 84 725 -105 -725
		mu 0 4 108 109 130 129
		f 4 85 726 -106 -726
		mu 0 4 109 110 131 130
		f 4 86 727 -107 -727
		mu 0 4 110 111 132 131
		f 4 87 728 -108 -728
		mu 0 4 111 112 133 132
		f 4 88 729 -109 -729
		mu 0 4 112 113 134 133
		f 4 89 730 -110 -730
		mu 0 4 113 114 135 134
		f 4 90 731 -111 -731
		mu 0 4 114 115 136 135
		f 4 91 732 -112 -732
		mu 0 4 115 116 137 136
		f 4 92 733 -113 -733
		mu 0 4 116 117 138 137
		f 4 93 734 -114 -734
		mu 0 4 117 118 139 138
		f 4 94 735 -115 -735
		mu 0 4 118 119 140 139
		f 4 95 736 -116 -736
		mu 0 4 119 120 141 140
		f 4 96 737 -117 -737
		mu 0 4 120 121 142 141
		f 4 97 738 -118 -738
		mu 0 4 121 122 143 142
		f 4 98 739 -119 -739
		mu 0 4 122 123 144 143
		f 4 99 720 -120 -740
		mu 0 4 123 124 145 144
		f 4 100 741 -121 -741
		mu 0 4 125 126 147 146
		f 4 101 742 -122 -742
		mu 0 4 126 127 148 147
		f 4 102 743 -123 -743
		mu 0 4 127 128 149 148
		f 4 103 744 -124 -744
		mu 0 4 128 129 150 149
		f 4 104 745 -125 -745
		mu 0 4 129 130 151 150
		f 4 105 746 -126 -746
		mu 0 4 130 131 152 151
		f 4 106 747 -127 -747
		mu 0 4 131 132 153 152
		f 4 107 748 -128 -748
		mu 0 4 132 133 154 153
		f 4 108 749 -129 -749
		mu 0 4 133 134 155 154
		f 4 109 750 -130 -750
		mu 0 4 134 135 156 155
		f 4 110 751 -131 -751
		mu 0 4 135 136 157 156
		f 4 111 752 -132 -752
		mu 0 4 136 137 158 157
		f 4 112 753 -133 -753
		mu 0 4 137 138 159 158
		f 4 113 754 -134 -754
		mu 0 4 138 139 160 159
		f 4 114 755 -135 -755
		mu 0 4 139 140 161 160
		f 4 115 756 -136 -756
		mu 0 4 140 141 162 161
		f 4 116 757 -137 -757
		mu 0 4 141 142 163 162
		f 4 117 758 -138 -758
		mu 0 4 142 143 164 163
		f 4 118 759 -139 -759
		mu 0 4 143 144 165 164
		f 4 119 740 -140 -760
		mu 0 4 144 145 166 165
		f 4 120 761 -141 -761
		mu 0 4 146 147 168 167
		f 4 121 762 -142 -762
		mu 0 4 147 148 169 168
		f 4 122 763 -143 -763
		mu 0 4 148 149 170 169
		f 4 123 764 -144 -764
		mu 0 4 149 150 171 170
		f 4 124 765 -145 -765
		mu 0 4 150 151 172 171
		f 4 125 766 -146 -766
		mu 0 4 151 152 173 172
		f 4 126 767 -147 -767
		mu 0 4 152 153 174 173
		f 4 127 768 -148 -768
		mu 0 4 153 154 175 174
		f 4 128 769 -149 -769
		mu 0 4 154 155 176 175
		f 4 129 770 -150 -770
		mu 0 4 155 156 177 176
		f 4 130 771 -151 -771
		mu 0 4 156 157 178 177
		f 4 131 772 -152 -772
		mu 0 4 157 158 179 178
		f 4 132 773 -153 -773
		mu 0 4 158 159 180 179
		f 4 133 774 -154 -774
		mu 0 4 159 160 181 180
		f 4 134 775 -155 -775
		mu 0 4 160 161 182 181
		f 4 135 776 -156 -776
		mu 0 4 161 162 183 182
		f 4 136 777 -157 -777
		mu 0 4 162 163 184 183
		f 4 137 778 -158 -778
		mu 0 4 163 164 185 184
		f 4 138 779 -159 -779
		mu 0 4 164 165 186 185
		f 4 139 760 -160 -780
		mu 0 4 165 166 187 186
		f 4 140 781 -161 -781
		mu 0 4 167 168 189 188
		f 4 141 782 -162 -782
		mu 0 4 168 169 190 189
		f 4 142 783 -163 -783
		mu 0 4 169 170 191 190
		f 4 143 784 -164 -784
		mu 0 4 170 171 192 191
		f 4 144 785 -165 -785
		mu 0 4 171 172 193 192
		f 4 145 786 -166 -786
		mu 0 4 172 173 194 193
		f 4 146 787 -167 -787
		mu 0 4 173 174 195 194
		f 4 147 788 -168 -788
		mu 0 4 174 175 196 195
		f 4 148 789 -169 -789
		mu 0 4 175 176 197 196
		f 4 149 790 -170 -790
		mu 0 4 176 177 198 197
		f 4 150 791 -171 -791
		mu 0 4 177 178 199 198
		f 4 151 792 -172 -792
		mu 0 4 178 179 200 199
		f 4 152 793 -173 -793
		mu 0 4 179 180 201 200
		f 4 153 794 -174 -794
		mu 0 4 180 181 202 201
		f 4 154 795 -175 -795
		mu 0 4 181 182 203 202
		f 4 155 796 -176 -796
		mu 0 4 182 183 204 203
		f 4 156 797 -177 -797
		mu 0 4 183 184 205 204
		f 4 157 798 -178 -798
		mu 0 4 184 185 206 205
		f 4 158 799 -179 -799
		mu 0 4 185 186 207 206
		f 4 159 780 -180 -800
		mu 0 4 186 187 208 207
		f 4 160 801 -181 -801
		mu 0 4 188 189 210 209
		f 4 161 802 -182 -802
		mu 0 4 189 190 211 210
		f 4 162 803 -183 -803
		mu 0 4 190 191 212 211
		f 4 163 804 -184 -804
		mu 0 4 191 192 213 212
		f 4 164 805 -185 -805
		mu 0 4 192 193 214 213
		f 4 165 806 -186 -806
		mu 0 4 193 194 215 214
		f 4 166 807 -187 -807
		mu 0 4 194 195 216 215
		f 4 167 808 -188 -808
		mu 0 4 195 196 217 216
		f 4 168 809 -189 -809
		mu 0 4 196 197 218 217
		f 4 169 810 -190 -810
		mu 0 4 197 198 219 218
		f 4 170 811 -191 -811
		mu 0 4 198 199 220 219
		f 4 171 812 -192 -812
		mu 0 4 199 200 221 220
		f 4 172 813 -193 -813
		mu 0 4 200 201 222 221
		f 4 173 814 -194 -814
		mu 0 4 201 202 223 222
		f 4 174 815 -195 -815
		mu 0 4 202 203 224 223
		f 4 175 816 -196 -816
		mu 0 4 203 204 225 224
		f 4 176 817 -197 -817
		mu 0 4 204 205 226 225
		f 4 177 818 -198 -818
		mu 0 4 205 206 227 226
		f 4 178 819 -199 -819
		mu 0 4 206 207 228 227
		f 4 179 800 -200 -820
		mu 0 4 207 208 229 228
		f 4 180 821 -201 -821
		mu 0 4 209 210 231 230
		f 4 181 822 -202 -822
		mu 0 4 210 211 232 231
		f 4 182 823 -203 -823
		mu 0 4 211 212 233 232
		f 4 183 824 -204 -824
		mu 0 4 212 213 234 233
		f 4 184 825 -205 -825
		mu 0 4 213 214 235 234
		f 4 185 826 -206 -826
		mu 0 4 214 215 236 235
		f 4 186 827 -207 -827
		mu 0 4 215 216 237 236
		f 4 187 828 -208 -828
		mu 0 4 216 217 238 237
		f 4 188 829 -209 -829
		mu 0 4 217 218 239 238
		f 4 189 830 -210 -830
		mu 0 4 218 219 240 239
		f 4 190 831 -211 -831
		mu 0 4 219 220 241 240
		f 4 191 832 -212 -832
		mu 0 4 220 221 242 241
		f 4 192 833 -213 -833
		mu 0 4 221 222 243 242
		f 4 193 834 -214 -834
		mu 0 4 222 223 244 243
		f 4 194 835 -215 -835
		mu 0 4 223 224 245 244
		f 4 195 836 -216 -836
		mu 0 4 224 225 246 245
		f 4 196 837 -217 -837
		mu 0 4 225 226 247 246
		f 4 197 838 -218 -838
		mu 0 4 226 227 248 247
		f 4 198 839 -219 -839
		mu 0 4 227 228 249 248
		f 4 199 820 -220 -840
		mu 0 4 228 229 250 249
		f 4 200 841 -221 -841
		mu 0 4 230 231 252 251
		f 4 201 842 -222 -842
		mu 0 4 231 232 253 252
		f 4 202 843 -223 -843
		mu 0 4 232 233 254 253
		f 4 203 844 -224 -844
		mu 0 4 233 234 255 254
		f 4 204 845 -225 -845
		mu 0 4 234 235 256 255
		f 4 205 846 -226 -846
		mu 0 4 235 236 257 256
		f 4 206 847 -227 -847
		mu 0 4 236 237 258 257
		f 4 207 848 -228 -848
		mu 0 4 237 238 259 258
		f 4 208 849 -229 -849
		mu 0 4 238 239 260 259
		f 4 209 850 -230 -850
		mu 0 4 239 240 261 260
		f 4 210 851 -231 -851
		mu 0 4 240 241 262 261
		f 4 211 852 -232 -852
		mu 0 4 241 242 263 262
		f 4 212 853 -233 -853
		mu 0 4 242 243 264 263
		f 4 213 854 -234 -854
		mu 0 4 243 244 265 264
		f 4 214 855 -235 -855
		mu 0 4 244 245 266 265
		f 4 215 856 -236 -856
		mu 0 4 245 246 267 266
		f 4 216 857 -237 -857
		mu 0 4 246 247 268 267
		f 4 217 858 -238 -858
		mu 0 4 247 248 269 268
		f 4 218 859 -239 -859
		mu 0 4 248 249 270 269
		f 4 219 840 -240 -860
		mu 0 4 249 250 271 270
		f 4 220 861 -241 -861
		mu 0 4 251 252 273 272
		f 4 221 862 -242 -862
		mu 0 4 252 253 274 273
		f 4 222 863 -243 -863
		mu 0 4 253 254 275 274
		f 4 223 864 -244 -864
		mu 0 4 254 255 276 275
		f 4 224 865 -245 -865
		mu 0 4 255 256 277 276
		f 4 225 866 -246 -866
		mu 0 4 256 257 278 277
		f 4 226 867 -247 -867
		mu 0 4 257 258 279 278
		f 4 227 868 -248 -868
		mu 0 4 258 259 280 279
		f 4 228 869 -249 -869
		mu 0 4 259 260 281 280
		f 4 229 870 -250 -870
		mu 0 4 260 261 282 281
		f 4 230 871 -251 -871
		mu 0 4 261 262 283 282
		f 4 231 872 -252 -872
		mu 0 4 262 263 284 283
		f 4 232 873 -253 -873
		mu 0 4 263 264 285 284
		f 4 233 874 -254 -874
		mu 0 4 264 265 286 285
		f 4 234 875 -255 -875
		mu 0 4 265 266 287 286
		f 4 235 876 -256 -876
		mu 0 4 266 267 288 287
		f 4 236 877 -257 -877
		mu 0 4 267 268 289 288
		f 4 237 878 -258 -878
		mu 0 4 268 269 290 289
		f 4 238 879 -259 -879
		mu 0 4 269 270 291 290
		f 4 239 860 -260 -880
		mu 0 4 270 271 292 291
		f 4 240 881 -261 -881
		mu 0 4 272 273 294 293
		f 4 241 882 -262 -882
		mu 0 4 273 274 295 294
		f 4 242 883 -263 -883
		mu 0 4 274 275 296 295
		f 4 243 884 -264 -884
		mu 0 4 275 276 297 296
		f 4 244 885 -265 -885
		mu 0 4 276 277 298 297
		f 4 245 886 -266 -886
		mu 0 4 277 278 299 298
		f 4 246 887 -267 -887
		mu 0 4 278 279 300 299
		f 4 247 888 -268 -888
		mu 0 4 279 280 301 300
		f 4 248 889 -269 -889
		mu 0 4 280 281 302 301
		f 4 249 890 -270 -890
		mu 0 4 281 282 303 302
		f 4 250 891 -271 -891
		mu 0 4 282 283 304 303
		f 4 251 892 -272 -892
		mu 0 4 283 284 305 304
		f 4 252 893 -273 -893
		mu 0 4 284 285 306 305
		f 4 253 894 -274 -894
		mu 0 4 285 286 307 306
		f 4 254 895 -275 -895
		mu 0 4 286 287 308 307
		f 4 255 896 -276 -896
		mu 0 4 287 288 309 308
		f 4 256 897 -277 -897
		mu 0 4 288 289 310 309
		f 4 257 898 -278 -898
		mu 0 4 289 290 311 310
		f 4 258 899 -279 -899
		mu 0 4 290 291 312 311
		f 4 259 880 -280 -900
		mu 0 4 291 292 313 312
		f 4 260 901 -281 -901
		mu 0 4 293 294 315 314
		f 4 261 902 -282 -902
		mu 0 4 294 295 316 315
		f 4 262 903 -283 -903
		mu 0 4 295 296 317 316
		f 4 263 904 -284 -904
		mu 0 4 296 297 318 317
		f 4 264 905 -285 -905
		mu 0 4 297 298 319 318
		f 4 265 906 -286 -906
		mu 0 4 298 299 320 319
		f 4 266 907 -287 -907
		mu 0 4 299 300 321 320
		f 4 267 908 -288 -908
		mu 0 4 300 301 322 321
		f 4 268 909 -289 -909
		mu 0 4 301 302 323 322
		f 4 269 910 -290 -910
		mu 0 4 302 303 324 323
		f 4 270 911 -291 -911
		mu 0 4 303 304 325 324
		f 4 271 912 -292 -912
		mu 0 4 304 305 326 325
		f 4 272 913 -293 -913
		mu 0 4 305 306 327 326
		f 4 273 914 -294 -914
		mu 0 4 306 307 328 327
		f 4 274 915 -295 -915
		mu 0 4 307 308 329 328
		f 4 275 916 -296 -916
		mu 0 4 308 309 330 329
		f 4 276 917 -297 -917
		mu 0 4 309 310 331 330
		f 4 277 918 -298 -918
		mu 0 4 310 311 332 331
		f 4 278 919 -299 -919
		mu 0 4 311 312 333 332
		f 4 279 900 -300 -920
		mu 0 4 312 313 334 333
		f 4 280 921 -301 -921
		mu 0 4 314 315 336 335
		f 4 281 922 -302 -922
		mu 0 4 315 316 337 336
		f 4 282 923 -303 -923
		mu 0 4 316 317 338 337
		f 4 283 924 -304 -924
		mu 0 4 317 318 339 338
		f 4 284 925 -305 -925
		mu 0 4 318 319 340 339
		f 4 285 926 -306 -926
		mu 0 4 319 320 341 340
		f 4 286 927 -307 -927
		mu 0 4 320 321 342 341
		f 4 287 928 -308 -928
		mu 0 4 321 322 343 342
		f 4 288 929 -309 -929
		mu 0 4 322 323 344 343
		f 4 289 930 -310 -930
		mu 0 4 323 324 345 344
		f 4 290 931 -311 -931
		mu 0 4 324 325 346 345
		f 4 291 932 -312 -932
		mu 0 4 325 326 347 346
		f 4 292 933 -313 -933
		mu 0 4 326 327 348 347
		f 4 293 934 -314 -934
		mu 0 4 327 328 349 348
		f 4 294 935 -315 -935
		mu 0 4 328 329 350 349
		f 4 295 936 -316 -936
		mu 0 4 329 330 351 350
		f 4 296 937 -317 -937
		mu 0 4 330 331 352 351
		f 4 297 938 -318 -938
		mu 0 4 331 332 353 352
		f 4 298 939 -319 -939
		mu 0 4 332 333 354 353
		f 4 299 920 -320 -940
		mu 0 4 333 334 355 354
		f 4 300 941 -321 -941
		mu 0 4 335 336 357 356
		f 4 301 942 -322 -942
		mu 0 4 336 337 358 357
		f 4 302 943 -323 -943
		mu 0 4 337 338 359 358
		f 4 303 944 -324 -944
		mu 0 4 338 339 360 359
		f 4 304 945 -325 -945
		mu 0 4 339 340 361 360
		f 4 305 946 -326 -946
		mu 0 4 340 341 362 361
		f 4 306 947 -327 -947
		mu 0 4 341 342 363 362
		f 4 307 948 -328 -948
		mu 0 4 342 343 364 363
		f 4 308 949 -329 -949
		mu 0 4 343 344 365 364
		f 4 309 950 -330 -950
		mu 0 4 344 345 366 365
		f 4 310 951 -331 -951
		mu 0 4 345 346 367 366
		f 4 311 952 -332 -952
		mu 0 4 346 347 368 367
		f 4 312 953 -333 -953
		mu 0 4 347 348 369 368
		f 4 313 954 -334 -954
		mu 0 4 348 349 370 369
		f 4 314 955 -335 -955
		mu 0 4 349 350 371 370
		f 4 315 956 -336 -956
		mu 0 4 350 351 372 371
		f 4 316 957 -337 -957
		mu 0 4 351 352 373 372
		f 4 317 958 -338 -958
		mu 0 4 352 353 374 373
		f 4 318 959 -339 -959
		mu 0 4 353 354 375 374
		f 4 319 940 -340 -960
		mu 0 4 354 355 376 375
		f 4 320 961 -341 -961
		mu 0 4 356 357 378 377
		f 4 321 962 -342 -962
		mu 0 4 357 358 379 378
		f 4 322 963 -343 -963
		mu 0 4 358 359 380 379
		f 4 323 964 -344 -964
		mu 0 4 359 360 381 380
		f 4 324 965 -345 -965
		mu 0 4 360 361 382 381
		f 4 325 966 -346 -966
		mu 0 4 361 362 383 382
		f 4 326 967 -347 -967
		mu 0 4 362 363 384 383
		f 4 327 968 -348 -968
		mu 0 4 363 364 385 384
		f 4 328 969 -349 -969
		mu 0 4 364 365 386 385
		f 4 329 970 -350 -970
		mu 0 4 365 366 387 386
		f 4 330 971 -351 -971
		mu 0 4 366 367 388 387
		f 4 331 972 -352 -972
		mu 0 4 367 368 389 388
		f 4 332 973 -353 -973
		mu 0 4 368 369 390 389
		f 4 333 974 -354 -974
		mu 0 4 369 370 391 390
		f 4 334 975 -355 -975
		mu 0 4 370 371 392 391
		f 4 335 976 -356 -976
		mu 0 4 371 372 393 392
		f 4 336 977 -357 -977
		mu 0 4 372 373 394 393
		f 4 337 978 -358 -978
		mu 0 4 373 374 395 394
		f 4 338 979 -359 -979
		mu 0 4 374 375 396 395
		f 4 339 960 -360 -980
		mu 0 4 375 376 397 396
		f 4 340 981 -361 -981
		mu 0 4 377 378 399 398
		f 4 341 982 -362 -982
		mu 0 4 378 379 400 399
		f 4 342 983 -363 -983
		mu 0 4 379 380 401 400
		f 4 343 984 -364 -984
		mu 0 4 380 381 402 401
		f 4 344 985 -365 -985
		mu 0 4 381 382 403 402
		f 4 345 986 -366 -986
		mu 0 4 382 383 404 403
		f 4 346 987 -367 -987
		mu 0 4 383 384 405 404
		f 4 347 988 -368 -988
		mu 0 4 384 385 406 405
		f 4 348 989 -369 -989
		mu 0 4 385 386 407 406
		f 4 349 990 -370 -990
		mu 0 4 386 387 408 407
		f 4 350 991 -371 -991
		mu 0 4 387 388 409 408
		f 4 351 992 -372 -992
		mu 0 4 388 389 410 409
		f 4 352 993 -373 -993
		mu 0 4 389 390 411 410
		f 4 353 994 -374 -994
		mu 0 4 390 391 412 411
		f 4 354 995 -375 -995
		mu 0 4 391 392 413 412
		f 4 355 996 -376 -996
		mu 0 4 392 393 414 413
		f 4 356 997 -377 -997
		mu 0 4 393 394 415 414
		f 4 357 998 -378 -998
		mu 0 4 394 395 416 415
		f 4 358 999 -379 -999
		mu 0 4 395 396 417 416
		f 4 359 980 -380 -1000
		mu 0 4 396 397 418 417
		f 4 360 1001 -381 -1001
		mu 0 4 398 399 420 419
		f 4 361 1002 -382 -1002
		mu 0 4 399 400 421 420
		f 4 362 1003 -383 -1003
		mu 0 4 400 401 422 421
		f 4 363 1004 -384 -1004
		mu 0 4 401 402 423 422
		f 4 364 1005 -385 -1005
		mu 0 4 402 403 424 423
		f 4 365 1006 -386 -1006
		mu 0 4 403 404 425 424
		f 4 366 1007 -387 -1007
		mu 0 4 404 405 426 425
		f 4 367 1008 -388 -1008
		mu 0 4 405 406 427 426
		f 4 368 1009 -389 -1009
		mu 0 4 406 407 428 427
		f 4 369 1010 -390 -1010
		mu 0 4 407 408 429 428
		f 4 370 1011 -391 -1011
		mu 0 4 408 409 430 429
		f 4 371 1012 -392 -1012
		mu 0 4 409 410 431 430
		f 4 372 1013 -393 -1013
		mu 0 4 410 411 432 431
		f 4 373 1014 -394 -1014
		mu 0 4 411 412 433 432
		f 4 374 1015 -395 -1015
		mu 0 4 412 413 434 433
		f 4 375 1016 -396 -1016
		mu 0 4 413 414 435 434
		f 4 376 1017 -397 -1017
		mu 0 4 414 415 436 435
		f 4 377 1018 -398 -1018
		mu 0 4 415 416 437 436
		f 4 378 1019 -399 -1019
		mu 0 4 416 417 438 437
		f 4 379 1000 -400 -1020
		mu 0 4 417 418 439 438
		f 4 380 1021 -401 -1021
		mu 0 4 419 420 441 440
		f 4 381 1022 -402 -1022
		mu 0 4 420 421 442 441
		f 4 382 1023 -403 -1023
		mu 0 4 421 422 443 442
		f 4 383 1024 -404 -1024
		mu 0 4 422 423 444 443
		f 4 384 1025 -405 -1025
		mu 0 4 423 424 445 444
		f 4 385 1026 -406 -1026
		mu 0 4 424 425 446 445
		f 4 386 1027 -407 -1027
		mu 0 4 425 426 447 446
		f 4 387 1028 -408 -1028
		mu 0 4 426 427 448 447
		f 4 388 1029 -409 -1029
		mu 0 4 427 428 449 448
		f 4 389 1030 -410 -1030
		mu 0 4 428 429 450 449
		f 4 390 1031 -411 -1031
		mu 0 4 429 430 451 450
		f 4 391 1032 -412 -1032
		mu 0 4 430 431 452 451
		f 4 392 1033 -413 -1033
		mu 0 4 431 432 453 452
		f 4 393 1034 -414 -1034
		mu 0 4 432 433 454 453
		f 4 394 1035 -415 -1035
		mu 0 4 433 434 455 454
		f 4 395 1036 -416 -1036
		mu 0 4 434 435 456 455
		f 4 396 1037 -417 -1037
		mu 0 4 435 436 457 456
		f 4 397 1038 -418 -1038
		mu 0 4 436 437 458 457
		f 4 398 1039 -419 -1039
		mu 0 4 437 438 459 458
		f 4 399 1020 -420 -1040
		mu 0 4 438 439 460 459
		f 4 400 1041 -421 -1041
		mu 0 4 440 441 462 461
		f 4 401 1042 -422 -1042
		mu 0 4 441 442 463 462
		f 4 402 1043 -423 -1043
		mu 0 4 442 443 464 463
		f 4 403 1044 -424 -1044
		mu 0 4 443 444 465 464
		f 4 404 1045 -425 -1045
		mu 0 4 444 445 466 465
		f 4 405 1046 -426 -1046
		mu 0 4 445 446 467 466
		f 4 406 1047 -427 -1047
		mu 0 4 446 447 468 467
		f 4 407 1048 -428 -1048
		mu 0 4 447 448 469 468
		f 4 408 1049 -429 -1049
		mu 0 4 448 449 470 469
		f 4 409 1050 -430 -1050
		mu 0 4 449 450 471 470
		f 4 410 1051 -431 -1051
		mu 0 4 450 451 472 471
		f 4 411 1052 -432 -1052
		mu 0 4 451 452 473 472
		f 4 412 1053 -433 -1053
		mu 0 4 452 453 474 473
		f 4 413 1054 -434 -1054
		mu 0 4 453 454 475 474
		f 4 414 1055 -435 -1055
		mu 0 4 454 455 476 475
		f 4 415 1056 -436 -1056
		mu 0 4 455 456 477 476
		f 4 416 1057 -437 -1057
		mu 0 4 456 457 478 477
		f 4 417 1058 -438 -1058
		mu 0 4 457 458 479 478
		f 4 418 1059 -439 -1059
		mu 0 4 458 459 480 479
		f 4 419 1040 -440 -1060
		mu 0 4 459 460 481 480
		f 4 420 1061 -441 -1061
		mu 0 4 461 462 483 482
		f 4 421 1062 -442 -1062
		mu 0 4 462 463 484 483
		f 4 422 1063 -443 -1063
		mu 0 4 463 464 485 484
		f 4 423 1064 -444 -1064
		mu 0 4 464 465 486 485
		f 4 424 1065 -445 -1065
		mu 0 4 465 466 487 486
		f 4 425 1066 -446 -1066
		mu 0 4 466 467 488 487
		f 4 426 1067 -447 -1067
		mu 0 4 467 468 489 488
		f 4 427 1068 -448 -1068
		mu 0 4 468 469 490 489
		f 4 428 1069 -449 -1069
		mu 0 4 469 470 491 490
		f 4 429 1070 -450 -1070
		mu 0 4 470 471 492 491
		f 4 430 1071 -451 -1071
		mu 0 4 471 472 493 492
		f 4 431 1072 -452 -1072
		mu 0 4 472 473 494 493
		f 4 432 1073 -453 -1073
		mu 0 4 473 474 495 494
		f 4 433 1074 -454 -1074
		mu 0 4 474 475 496 495
		f 4 434 1075 -455 -1075
		mu 0 4 475 476 497 496
		f 4 435 1076 -456 -1076
		mu 0 4 476 477 498 497
		f 4 436 1077 -457 -1077
		mu 0 4 477 478 499 498
		f 4 437 1078 -458 -1078
		mu 0 4 478 479 500 499
		f 4 438 1079 -459 -1079
		mu 0 4 479 480 501 500
		f 4 439 1060 -460 -1080
		mu 0 4 480 481 502 501
		f 4 440 1081 -461 -1081
		mu 0 4 482 483 504 503
		f 4 441 1082 -462 -1082
		mu 0 4 483 484 505 504
		f 4 442 1083 -463 -1083
		mu 0 4 484 485 506 505
		f 4 443 1084 -464 -1084
		mu 0 4 485 486 507 506
		f 4 444 1085 -465 -1085
		mu 0 4 486 487 508 507
		f 4 445 1086 -466 -1086
		mu 0 4 487 488 509 508
		f 4 446 1087 -467 -1087
		mu 0 4 488 489 510 509
		f 4 447 1088 -468 -1088
		mu 0 4 489 490 511 510
		f 4 448 1089 -469 -1089
		mu 0 4 490 491 512 511
		f 4 449 1090 -470 -1090
		mu 0 4 491 492 513 512
		f 4 450 1091 -471 -1091
		mu 0 4 492 493 514 513
		f 4 451 1092 -472 -1092
		mu 0 4 493 494 515 514
		f 4 452 1093 -473 -1093
		mu 0 4 494 495 516 515
		f 4 453 1094 -474 -1094
		mu 0 4 495 496 517 516
		f 4 454 1095 -475 -1095
		mu 0 4 496 497 518 517
		f 4 455 1096 -476 -1096
		mu 0 4 497 498 519 518
		f 4 456 1097 -477 -1097
		mu 0 4 498 499 520 519
		f 4 457 1098 -478 -1098
		mu 0 4 499 500 521 520
		f 4 458 1099 -479 -1099
		mu 0 4 500 501 522 521
		f 4 459 1080 -480 -1100
		mu 0 4 501 502 523 522
		f 4 460 1101 -481 -1101
		mu 0 4 503 504 525 524
		f 4 461 1102 -482 -1102
		mu 0 4 504 505 526 525
		f 4 462 1103 -483 -1103
		mu 0 4 505 506 527 526
		f 4 463 1104 -484 -1104
		mu 0 4 506 507 528 527
		f 4 464 1105 -485 -1105
		mu 0 4 507 508 529 528
		f 4 465 1106 -486 -1106
		mu 0 4 508 509 530 529
		f 4 466 1107 -487 -1107
		mu 0 4 509 510 531 530
		f 4 467 1108 -488 -1108
		mu 0 4 510 511 532 531
		f 4 468 1109 -489 -1109
		mu 0 4 511 512 533 532
		f 4 469 1110 -490 -1110
		mu 0 4 512 513 534 533
		f 4 470 1111 -491 -1111
		mu 0 4 513 514 535 534
		f 4 471 1112 -492 -1112
		mu 0 4 514 515 536 535
		f 4 472 1113 -493 -1113
		mu 0 4 515 516 537 536
		f 4 473 1114 -494 -1114
		mu 0 4 516 517 538 537
		f 4 474 1115 -495 -1115
		mu 0 4 517 518 539 538
		f 4 475 1116 -496 -1116
		mu 0 4 518 519 540 539
		f 4 476 1117 -497 -1117
		mu 0 4 519 520 541 540
		f 4 477 1118 -498 -1118
		mu 0 4 520 521 542 541
		f 4 478 1119 -499 -1119
		mu 0 4 521 522 543 542
		f 4 479 1100 -500 -1120
		mu 0 4 522 523 544 543
		f 4 480 1121 -501 -1121
		mu 0 4 524 525 546 545
		f 4 481 1122 -502 -1122
		mu 0 4 525 526 547 546
		f 4 482 1123 -503 -1123
		mu 0 4 526 527 548 547
		f 4 483 1124 -504 -1124
		mu 0 4 527 528 549 548
		f 4 484 1125 -505 -1125
		mu 0 4 528 529 550 549
		f 4 485 1126 -506 -1126
		mu 0 4 529 530 551 550
		f 4 486 1127 -507 -1127
		mu 0 4 530 531 552 551
		f 4 487 1128 -508 -1128
		mu 0 4 531 532 553 552
		f 4 488 1129 -509 -1129
		mu 0 4 532 533 554 553
		f 4 489 1130 -510 -1130
		mu 0 4 533 534 555 554
		f 4 490 1131 -511 -1131
		mu 0 4 534 535 556 555
		f 4 491 1132 -512 -1132
		mu 0 4 535 536 557 556
		f 4 492 1133 -513 -1133
		mu 0 4 536 537 558 557
		f 4 493 1134 -514 -1134
		mu 0 4 537 538 559 558
		f 4 494 1135 -515 -1135
		mu 0 4 538 539 560 559
		f 4 495 1136 -516 -1136
		mu 0 4 539 540 561 560
		f 4 496 1137 -517 -1137
		mu 0 4 540 541 562 561
		f 4 497 1138 -518 -1138
		mu 0 4 541 542 563 562
		f 4 498 1139 -519 -1139
		mu 0 4 542 543 564 563
		f 4 499 1120 -520 -1140
		mu 0 4 543 544 565 564;
	setAttr ".fc[500:659]"
		f 4 500 1141 -521 -1141
		mu 0 4 545 546 567 566
		f 4 501 1142 -522 -1142
		mu 0 4 546 547 568 567
		f 4 502 1143 -523 -1143
		mu 0 4 547 548 569 568
		f 4 503 1144 -524 -1144
		mu 0 4 548 549 570 569
		f 4 504 1145 -525 -1145
		mu 0 4 549 550 571 570
		f 4 505 1146 -526 -1146
		mu 0 4 550 551 572 571
		f 4 506 1147 -527 -1147
		mu 0 4 551 552 573 572
		f 4 507 1148 -528 -1148
		mu 0 4 552 553 574 573
		f 4 508 1149 -529 -1149
		mu 0 4 553 554 575 574
		f 4 509 1150 -530 -1150
		mu 0 4 554 555 576 575
		f 4 510 1151 -531 -1151
		mu 0 4 555 556 577 576
		f 4 511 1152 -532 -1152
		mu 0 4 556 557 578 577
		f 4 512 1153 -533 -1153
		mu 0 4 557 558 579 578
		f 4 513 1154 -534 -1154
		mu 0 4 558 559 580 579
		f 4 514 1155 -535 -1155
		mu 0 4 559 560 581 580
		f 4 515 1156 -536 -1156
		mu 0 4 560 561 582 581
		f 4 516 1157 -537 -1157
		mu 0 4 561 562 583 582
		f 4 517 1158 -538 -1158
		mu 0 4 562 563 584 583
		f 4 518 1159 -539 -1159
		mu 0 4 563 564 585 584
		f 4 519 1140 -540 -1160
		mu 0 4 564 565 586 585
		f 4 520 1161 -541 -1161
		mu 0 4 566 567 588 587
		f 4 521 1162 -542 -1162
		mu 0 4 567 568 589 588
		f 4 522 1163 -543 -1163
		mu 0 4 568 569 590 589
		f 4 523 1164 -544 -1164
		mu 0 4 569 570 591 590
		f 4 524 1165 -545 -1165
		mu 0 4 570 571 592 591
		f 4 525 1166 -546 -1166
		mu 0 4 571 572 593 592
		f 4 526 1167 -547 -1167
		mu 0 4 572 573 594 593
		f 4 527 1168 -548 -1168
		mu 0 4 573 574 595 594
		f 4 528 1169 -549 -1169
		mu 0 4 574 575 596 595
		f 4 529 1170 -550 -1170
		mu 0 4 575 576 597 596
		f 4 530 1171 -551 -1171
		mu 0 4 576 577 598 597
		f 4 531 1172 -552 -1172
		mu 0 4 577 578 599 598
		f 4 532 1173 -553 -1173
		mu 0 4 578 579 600 599
		f 4 533 1174 -554 -1174
		mu 0 4 579 580 601 600
		f 4 534 1175 -555 -1175
		mu 0 4 580 581 602 601
		f 4 535 1176 -556 -1176
		mu 0 4 581 582 603 602
		f 4 536 1177 -557 -1177
		mu 0 4 582 583 604 603
		f 4 537 1178 -558 -1178
		mu 0 4 583 584 605 604
		f 4 538 1179 -559 -1179
		mu 0 4 584 585 606 605
		f 4 539 1160 -560 -1180
		mu 0 4 585 586 607 606
		f 4 540 1181 -561 -1181
		mu 0 4 587 588 609 608
		f 4 541 1182 -562 -1182
		mu 0 4 588 589 610 609
		f 4 542 1183 -563 -1183
		mu 0 4 589 590 611 610
		f 4 543 1184 -564 -1184
		mu 0 4 590 591 612 611
		f 4 544 1185 -565 -1185
		mu 0 4 591 592 613 612
		f 4 545 1186 -566 -1186
		mu 0 4 592 593 614 613
		f 4 546 1187 -567 -1187
		mu 0 4 593 594 615 614
		f 4 547 1188 -568 -1188
		mu 0 4 594 595 616 615
		f 4 548 1189 -569 -1189
		mu 0 4 595 596 617 616
		f 4 549 1190 -570 -1190
		mu 0 4 596 597 618 617
		f 4 550 1191 -571 -1191
		mu 0 4 597 598 619 618
		f 4 551 1192 -572 -1192
		mu 0 4 598 599 620 619
		f 4 552 1193 -573 -1193
		mu 0 4 599 600 621 620
		f 4 553 1194 -574 -1194
		mu 0 4 600 601 622 621
		f 4 554 1195 -575 -1195
		mu 0 4 601 602 623 622
		f 4 555 1196 -576 -1196
		mu 0 4 602 603 624 623
		f 4 556 1197 -577 -1197
		mu 0 4 603 604 625 624
		f 4 557 1198 -578 -1198
		mu 0 4 604 605 626 625
		f 4 558 1199 -579 -1199
		mu 0 4 605 606 627 626
		f 4 559 1180 -580 -1200
		mu 0 4 606 607 628 627
		f 4 560 1201 -581 -1201
		mu 0 4 608 609 630 629
		f 4 561 1202 -582 -1202
		mu 0 4 609 610 631 630
		f 4 562 1203 -583 -1203
		mu 0 4 610 611 632 631
		f 4 563 1204 -584 -1204
		mu 0 4 611 612 633 632
		f 4 564 1205 -585 -1205
		mu 0 4 612 613 634 633
		f 4 565 1206 -586 -1206
		mu 0 4 613 614 635 634
		f 4 566 1207 -587 -1207
		mu 0 4 614 615 636 635
		f 4 567 1208 -588 -1208
		mu 0 4 615 616 637 636
		f 4 568 1209 -589 -1209
		mu 0 4 616 617 638 637
		f 4 569 1210 -590 -1210
		mu 0 4 617 618 639 638
		f 4 570 1211 -591 -1211
		mu 0 4 618 619 640 639
		f 4 571 1212 -592 -1212
		mu 0 4 619 620 641 640
		f 4 572 1213 -593 -1213
		mu 0 4 620 621 642 641
		f 4 573 1214 -594 -1214
		mu 0 4 621 622 643 642
		f 4 574 1215 -595 -1215
		mu 0 4 622 623 644 643
		f 4 575 1216 -596 -1216
		mu 0 4 623 624 645 644
		f 4 576 1217 -597 -1217
		mu 0 4 624 625 646 645
		f 4 577 1218 -598 -1218
		mu 0 4 625 626 647 646
		f 4 578 1219 -599 -1219
		mu 0 4 626 627 648 647
		f 4 579 1200 -600 -1220
		mu 0 4 627 628 649 648
		f 4 580 1221 -601 -1221
		mu 0 4 629 630 651 650
		f 4 581 1222 -602 -1222
		mu 0 4 630 631 652 651
		f 4 582 1223 -603 -1223
		mu 0 4 631 632 653 652
		f 4 583 1224 -604 -1224
		mu 0 4 632 633 654 653
		f 4 584 1225 -605 -1225
		mu 0 4 633 634 655 654
		f 4 585 1226 -606 -1226
		mu 0 4 634 635 656 655
		f 4 586 1227 -607 -1227
		mu 0 4 635 636 657 656
		f 4 587 1228 -608 -1228
		mu 0 4 636 637 658 657
		f 4 588 1229 -609 -1229
		mu 0 4 637 638 659 658
		f 4 589 1230 -610 -1230
		mu 0 4 638 639 660 659
		f 4 590 1231 -611 -1231
		mu 0 4 639 640 661 660
		f 4 591 1232 -612 -1232
		mu 0 4 640 641 662 661
		f 4 592 1233 -613 -1233
		mu 0 4 641 642 663 662
		f 4 593 1234 -614 -1234
		mu 0 4 642 643 664 663
		f 4 594 1235 -615 -1235
		mu 0 4 643 644 665 664
		f 4 595 1236 -616 -1236
		mu 0 4 644 645 666 665
		f 4 596 1237 -617 -1237
		mu 0 4 645 646 667 666
		f 4 597 1238 -618 -1238
		mu 0 4 646 647 668 667
		f 4 598 1239 -619 -1239
		mu 0 4 647 648 669 668
		f 4 599 1220 -620 -1240
		mu 0 4 648 649 670 669
		f 4 600 1241 -621 -1241
		mu 0 4 650 651 672 671
		f 4 601 1242 -622 -1242
		mu 0 4 651 652 673 672
		f 4 602 1243 -623 -1243
		mu 0 4 652 653 674 673
		f 4 603 1244 -624 -1244
		mu 0 4 653 654 675 674
		f 4 604 1245 -625 -1245
		mu 0 4 654 655 676 675
		f 4 605 1246 -626 -1246
		mu 0 4 655 656 677 676
		f 4 606 1247 -627 -1247
		mu 0 4 656 657 678 677
		f 4 607 1248 -628 -1248
		mu 0 4 657 658 679 678
		f 4 608 1249 -629 -1249
		mu 0 4 658 659 680 679
		f 4 609 1250 -630 -1250
		mu 0 4 659 660 681 680
		f 4 610 1251 -631 -1251
		mu 0 4 660 661 682 681
		f 4 611 1252 -632 -1252
		mu 0 4 661 662 683 682
		f 4 612 1253 -633 -1253
		mu 0 4 662 663 684 683
		f 4 613 1254 -634 -1254
		mu 0 4 663 664 685 684
		f 4 614 1255 -635 -1255
		mu 0 4 664 665 686 685
		f 4 615 1256 -636 -1256
		mu 0 4 665 666 687 686
		f 4 616 1257 -637 -1257
		mu 0 4 666 667 688 687
		f 4 617 1258 -638 -1258
		mu 0 4 667 668 689 688
		f 4 618 1259 -639 -1259
		mu 0 4 668 669 690 689
		f 4 619 1240 -640 -1260
		mu 0 4 669 670 691 690
		f 3 -1 -1261 1261
		mu 0 3 1 0 712
		f 3 -2 -1262 1262
		mu 0 3 2 1 712
		f 3 -3 -1263 1263
		mu 0 3 3 2 712
		f 3 -4 -1264 1264
		mu 0 3 4 3 712
		f 3 -5 -1265 1265
		mu 0 3 5 4 712
		f 3 -6 -1266 1266
		mu 0 3 6 5 712
		f 3 -7 -1267 1267
		mu 0 3 7 6 712
		f 3 -8 -1268 1268
		mu 0 3 8 7 712
		f 3 -9 -1269 1269
		mu 0 3 9 8 712
		f 3 -10 -1270 1270
		mu 0 3 10 9 712
		f 3 -11 -1271 1271
		mu 0 3 11 10 712
		f 3 -12 -1272 1272
		mu 0 3 12 11 712
		f 3 -13 -1273 1273
		mu 0 3 13 12 712
		f 3 -14 -1274 1274
		mu 0 3 14 13 712
		f 3 -15 -1275 1275
		mu 0 3 15 14 712
		f 3 -16 -1276 1276
		mu 0 3 16 15 712
		f 3 -17 -1277 1277
		mu 0 3 17 16 712
		f 3 -18 -1278 1278
		mu 0 3 18 17 712
		f 3 -19 -1279 1279
		mu 0 3 19 18 712
		f 3 -20 -1280 1260
		mu 0 3 0 19 712
		f 3 620 1281 -1281
		mu 0 3 710 709 713
		f 3 621 1282 -1282
		mu 0 3 709 708 713
		f 3 622 1283 -1283
		mu 0 3 708 707 713
		f 3 623 1284 -1284
		mu 0 3 707 706 713
		f 3 624 1285 -1285
		mu 0 3 706 705 713
		f 3 625 1286 -1286
		mu 0 3 705 704 713
		f 3 626 1287 -1287
		mu 0 3 704 703 713
		f 3 627 1288 -1288
		mu 0 3 703 702 713
		f 3 628 1289 -1289
		mu 0 3 702 701 713
		f 3 629 1290 -1290
		mu 0 3 701 700 713
		f 3 630 1291 -1291
		mu 0 3 700 699 713
		f 3 631 1292 -1292
		mu 0 3 699 698 713
		f 3 632 1293 -1293
		mu 0 3 698 697 713
		f 3 633 1294 -1294
		mu 0 3 697 696 713
		f 3 634 1295 -1295
		mu 0 3 696 695 713
		f 3 635 1296 -1296
		mu 0 3 695 694 713
		f 3 636 1297 -1297
		mu 0 3 694 693 713
		f 3 637 1298 -1298
		mu 0 3 693 692 713
		f 3 638 1299 -1299
		mu 0 3 692 711 713
		f 3 639 1280 -1300
		mu 0 3 711 710 713;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "main_control_group" -p "rig";
	rename -uid "882C1D7D-4F84-C266-DBCC-48B0539D7D8B";
	setAttr ".t" -type "double3" -8 0 0 ;
createNode transform -n "main_control" -p "main_control_group";
	rename -uid "1CAE2338-4B73-D3EE-D4A9-509E3778EB36";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "main_controlShape" -p "main_control";
	rename -uid "6EC28D7E-4BFB-D798-D146-9594DA460C5A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.016346165558392522 -1.744132404291022 -1.7442090014750082
		1.4961869573108628e-16 -1.5244970794338997e-16 -2.4666840254991897
		0.016346165558392522 1.744132404291022 -1.7442090014750073
		0.02311696902547733 2.4665757007227613 -5.7616415744092341e-16
		0.016346165558392522 1.744132404291022 1.7442090014750073
		-1.4871855923953707e-16 2.4849408101591615e-16 2.4666840254991911
		-0.016346165558392522 -1.744132404291022 1.7442090014750073
		-0.02311696902547733 -2.4665757007227613 -1.1190999234939983e-16
		-0.016346165558392522 -1.744132404291022 -1.7442090014750082
		1.4961869573108628e-16 -1.5244970794338997e-16 -2.4666840254991897
		0.016346165558392522 1.744132404291022 -1.7442090014750073
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "74CD9070-4A9D-B082-A5ED-1CB6006942D7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "768E437E-40C0-F640-8DEB-91B887F80659";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E5B313F8-4AFD-9984-F238-E5898FA42A82";
createNode displayLayerManager -n "layerManager";
	rename -uid "531D13B7-4C8F-1D74-A317-C58E6A6E9840";
createNode displayLayer -n "defaultLayer";
	rename -uid "972D3B5B-4BBE-E4F2-E87D-E686CCF55B74";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7140953E-4F0C-588A-FE81-099381AA1000";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "67B213AD-4C4B-7478-D8B5-BDBEAC57CD21";
	setAttr ".g" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "B47644D6-4DC4-718C-0731-02AB73455E0D";
	setAttr -s 642 ".wl";
	setAttr ".wl[0:159].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		3 0 0.59143111702367668 1 0.38488006151792203 2 0.023688821458401361
		3 0 0.59143111396974324 1 0.38488006082906256 2 0.023688825201194173
		3 0 0.59143111206265819 1 0.38488006086166443 2 0.02368882707567747
		3 0 0.59143111330497844 1 0.38488006149440523 2 0.02368882520061635
		3 0 0.59143111407331173 1 0.38488006073236325 2 0.023688825194325067
		3 0 0.59143111519785807 1 0.38488006147588855 2 0.023688823326253321
		3 0 0.59143111784360747 1 0.38488006070477221 2 0.023688821451620427
		3 0 0.59143111958531858 1 0.38488006083635073 2 0.023688819578330703
		3 0 0.59143112038301671 1 0.38488006004522662 2 0.023688819571756586
		3 0 0.59143112151471755 1 0.38488006078167192 2 0.023688817703610442
		3 0 0.59143112151482036 1 0.38488006078157017 2 0.023688817703609449
		3 0 0.59143112263928699 1 0.38488006152519055 2 0.023688815835522466
		3 0 0.59143112220170435 1 0.38488006009431508 2 0.023688817703980618
		3 0 0.59143112343482118 1 0.3848800607361858 2 0.023688815828993005
		3 0 0.59143112274057663 1 0.38488006143072523 2 0.023688815828698237
		3 0 0.59143112243020868 1 0.38488005987971524 2 0.02368881769007606
		3 0 0.5914311216308431 1 0.38488006067367875 2 0.023688817695478107
		3 0 0.59143112240665341 1 0.38488005990306112 2 0.023688817690285517
		3 0 0.59143112160900135 1 0.38488006069415376 2 0.023688817696844972
		3 0 0.59143111976574814 1 0.38488006065727626 2 0.023688819576975568
		3 0 0.44833635580995757 1 0.49050293506219117 2 0.06116070912785132
		3 0 0.44833634911768055 1 0.49050293795745126 2 0.061160712924868174
		3 0 0.44833634562389707 1 0.49050293770113024 2 0.061160716674972672
		3 0 0.44833631781112382 1 0.49050296554201434 2 0.061160716646861811
		3 0 0.44833634757124574 1 0.49050293952320378 2 0.06116071290555055
		3 0 0.44833634948749868 1 0.4905029376241114 2 0.061160712888389965
		3 0 0.44833632793999556 1 0.49050296296305657 2 0.061160709096947923
		3 0 0.44833633023185332 1 0.49050296813740163 2 0.061160701630745128
		3 0 0.44833633036709364 1 0.49050296801994914 2 0.061160701612957308
		3 0 0.44833636130352944 1 0.49050293709504683 2 0.061160701601423721
		3 0 0.4483363630353423 1 0.49050293910415971 2 0.061160697860497854
		3 0 0.44833633679712648 1 0.49050296535473648 2 0.061160697848137054
		3 0 0.44833633199567891 1 0.49050296639272012 2 0.061160701611601032
		3 0 0.44833630394734464 1 0.49050299448392148 2 0.061160701568733926
		3 0 0.44833630402618063 1 0.49050299440569695 2 0.061160701568122471
		3 0 0.44833633318212979 1 0.49050296526186238 2 0.061160701556007828
		3 0 0.44833632907892135 1 0.4905029693497075 2 0.061160701571371115
		3 0 0.44833633152454949 1 0.49050296318587405 2 0.061160705289576359
		3 0 0.44833633197433631 1 0.49050296644721714 2 0.061160701578446539
		3 0 0.44833632844716415 1 0.4905029661840552 2 0.061160705368780599
		3 0 0.29010046496349001 1 0.5613667731343509 2 0.14853276190215911
		3 0 0.29010046508264492 1 0.56136677286559844 2 0.14853276205175675
		3 0 0.2901004653452538 1 0.5613667725974848 2 0.14853276205726143
		3 0 0.29010045629858394 1 0.56136678161755316 2 0.14853276208386285
		3 0 0.29010046559964592 1 0.56136677242992228 2 0.14853276197043186
		3 0 0.29010046554725305 1 0.56136677255733425 2 0.14853276189541265
		3 0 0.29010047713229009 1 0.5613667760170179 2 0.14853274685069204
		3 0 0.29010043070704578 1 0.5613668226621209 2 0.14853274663083327
		3 0 0.29010043585921097 1 0.56136683249578734 2 0.14853273164500166
		3 0 0.29010043583557305 1 0.56136683251913311 2 0.14853273164529374
		3 0 0.29010043585970596 1 0.56136683249529262 2 0.1485327316450015
		3 0 0.29010043589458728 1 0.5613668324687906 2 0.1485327316366222
		3 0 0.29010042173795653 1 0.56136683162229284 2 0.14853274663975069
		3 0 0.29010042602455244 1 0.56136682745074096 2 0.14853274652470672
		3 0 0.29010042632994471 1 0.5613668271571316 2 0.14853274651292367
		3 0 0.29010042244853562 1 0.5613668310711748 2 0.14853274648028958
		3 0 0.29010042569616656 1 0.56136682787383996 2 0.14853274642999351
		3 0 0.29010042248287615 1 0.56136683103682361 2 0.14853274648030024
		3 0 0.29010042603671854 1 0.56136682744667299 2 0.14853274651660836
		3 0 0.2901004217121822 1 0.56136683163099654 2 0.14853274665682129
		4 0 0.14751173215254554 1 0.55605363906167105 2 0.28319311497321142 
		3 0.013241513812571956
		4 0 0.14751173037716706 1 0.55605363886250581 2 0.28319311507799072 
		3 0.013241515682336518
		4 0 0.14751173990294758 1 0.55605362953402993 2 0.28319311488168619 
		3 0.013241515681336373
		4 0 0.14751173995031114 1 0.55605362948460524 2 0.28319311488373689 
		3 0.013241515681346778
		4 0 0.14751174034309017 1 0.55605363005444541 2 0.28319311485517745 
		3 0.013241514747287011
		4 0 0.14751173169275741 1 0.55605363947784225 2 0.28319311501520916 
		3 0.013241513814191159
		4 0 0.14751171276874006 1 0.5560536897117031 2 0.28319308464377485 
		3 0.013241512875782045
		4 0 0.14751171320907255 1 0.55605369023187368 2 0.28319308461731901 
		3 0.013241511941734811
		4 0 0.14751172073545379 1 0.55605368254397836 2 0.2831930847794108 
		3 0.013241511941157027
		4 0 0.14751172076390484 1 0.55605368251618148 2 0.28319308477876004 
		3 0.013241511941153665
		4 0 0.14751172090075224 1 0.55605368304416836 2 0.28319308504644564 
		3 0.013241511008633756
		4 0 0.1475117211626305 1 0.55605368304707248 2 0.28319308478163846 
		3 0.013241511008658658
		4 0 0.14751172120590214 1 0.55605368303475577 2 0.28319308475223781 
		3 0.013241511007104257
		4 0 0.14751171170303434 1 0.55605369234082969 2 0.28319308494803247 
		3 0.013241511008103595
		4 0 0.14751170459156684 1 0.55605369968950547 2 0.2831930847134238 
		3 0.013241511005504003
		4 0 0.14751170540632338 1 0.55605369951854811 2 0.28319308500063911 
		3 0.013241510074489479
		4 0 0.14751170339447942 1 0.55605370178425961 2 0.28319308474809279 
		3 0.013241510073168155
		4 0 0.14751170571518252 1 0.556053699505481 2 0.28319308470637505 
		3 0.013241510072961524
		4 0 0.14751171256272066 1 0.55605369245126868 2 0.28319308491200545 
		3 0.013241510074005156
		4 0 0.14751171278030104 1 0.55605369065090871 2 0.28319308462700543 
		3 0.013241511941784729
		4 0 0.058102232969923784 1 0.47597184643749429 2 0.42890347522613975 
		3 0.037022445366442107
		4 0 0.058102241954737378 1 0.47597186580394191 2 0.42890344685988729 
		3 0.0370224453814334
		4 0 0.058102244857183252 1 0.4759718622520131 2 0.42890344750618553 
		3 0.03702244538461822
		4 0 0.058102244866117606 1 0.4759718622926013 2 0.42890344746102305 
		3 0.037022445380258111
		4 0 0.058102245130983179 1 0.47597186283406889 2 0.4289034466587146 
		3 0.037022445376233316
		4 0 0.058102242054027538 1 0.47597186578649564 2 0.4289034467866471 
		3 0.037022445372829581
		4 0 0.058102236202886133 1 0.47597187420096887 2 0.42890344796200786 
		3 0.037022441634137114
		4 0 0.058102233569848664 1 0.47597187829009407 2 0.4289034465131234 
		3 0.037022441626933945
		4 0 0.058102233925505842 1 0.47597187797663931 2 0.42890344647522083 
		3 0.037022441622634052
		4 0 0.058102233931394333 1 0.47597187801972751 2 0.42890344643060113 
		3 0.037022441618277085
		4 0 0.05810222788951877 1 0.4759718854442046 2 0.42890344505548428 
		3 0.037022441610792413
		4 0 0.058102227889524023 1 0.47597188544419972 2 0.42890344505548378 
		3 0.037022441610792399
		4 0 0.05810222790872531 1 0.47597188547532737 2 0.42890344500951155 
		3 0.03702244160643578
		4 0 0.058102227914303063 1 0.47597188551870068 2 0.42890344496491734 
		3 0.037022441602078938
		4 0 0.058102227529892754 1 0.47597185462726888 2 0.42890347623209063 
		3 0.037022441610747539
		4 0 0.058102224901036642 1 0.47597185868140846 2 0.42890347481010654 
		3 0.037022441607448296
		4 0 0.058102228154435741 1 0.475971855598817 2 0.42890347464020806 
		3 0.037022441606539239
		4 0 0.058102221831712951 1 0.47597186160976873 2 0.42890347495438502 
		3 0.037022441604133434
		4 0 0.058102227970226711 1 0.47597185576733886 2 0.42890347465547729 
		3 0.03702244160695714
		4 0 0.058102233502893605 1 0.47597184892425615 2 0.42890347595540734 
		3 0.037022441617442989
		4 0 0.019873151594258346 1 0.34403855641632114 2 0.53554371548679247 
		3 0.10054457650262795
		4 0 0.019873151385510129 1 0.34403855334432765 2 0.53554371124668487 
		3 0.10054458402347737
		4 0 0.019873153188976634 1 0.34403855177913195 2 0.53554371098711595 
		3 0.1005445840447755
		4 0 0.019873153108173031 1 0.34403855219960489 2 0.53554371067279705 
		3 0.10054458401942495
		4 0 0.019873153197219325 1 0.34403855188789056 2 0.53554371089383745 
		3 0.10054458402105258
		4 0 0.019873151410624235 1 0.34403855345002787 2 0.53554371113961596 
		3 0.1005445839997319
		4 0 0.019873149897174858 1 0.34403855831685887 2 0.53554370782666816 
		3 0.10054458395929813
		4 0 0.019873150323557041 1 0.3440385605450253 2 0.535543712665558 
		3 0.10054457646585971
		4 0 0.019873148531672876 1 0.34403856220944223 2 0.5355437128379994 
		3 0.10054457642088543
		4 0 0.019873146733474373 1 0.34403856367191682 2 0.53554371317136462 
		3 0.10054457642324431
		4 0 0.019873146746894679 1 0.34403856367056673 2 0.53554371315938276 
		3 0.10054457642315587
		4 0 0.019873146746894658 1 0.34403856367056662 2 0.53554371315938287 
		3 0.10054457642315585
		4 0 0.019873146745075683 1 0.34403856377158865 2 0.53554371308377102 
		3 0.10054457639956468
		4 0 0.019873146761805321 1 0.3440385637694095 2 0.53554371306924864 
		3 0.10054457639953661
		4 0 0.019873146615909984 1 0.34403856429677482 2 0.53554371271355672 
		3 0.10054457637375848
		4 0 0.019873146634374714 1 0.3440385641938053 2 0.53554371277449953 
		3 0.10054457639732048
		4 0 0.019873144667463118 1 0.34403856280669687 2 0.5355437086529663 
		3 0.10054458387287374
		4 0 0.019873144834447388 1 0.34403856575721309 2 0.53554371303225112 
		3 0.10054457637608841
		4 0 0.019873147305610978 1 0.34403856961006229 2 0.53554371417555113 
		3 0.10054456890877569
		4 0 0.019873148380969229 1 0.34403856263583643 2 0.53554371256429023 
		3 0.10054457641890419
		3 1 0.20184903871585816 2 0.57678359696939174 3 0.2213673643147501
		3 1 0.20184903216381622 2 0.57678360308328847 3 0.22136736475289526
		3 1 0.20184903270143167 2 0.57678360255894656 3 0.22136736473962171
		3 1 0.20184902874040028 2 0.57678359146587332 3 0.22136737979372634
		3 1 0.20184902881487457 2 0.5767835913919459 3 0.22136737979317958
		3 1 0.20184903323865933 2 0.57678360232987991 3 0.22136736443146074
		3 1 0.2018490328992435 2 0.57678360275745666 3 0.22136736434329982
		3 1 0.20184903858082084 2 0.57678359739458429 3 0.22136736402459489
		3 1 0.20184903876605934 2 0.57678359731032736 3 0.22136736392361328
		3 1 0.20184903909106158 2 0.57678359719039496 3 0.22136736371854354
		3 1 0.20184903405275159 2 0.57678360231930448 3 0.22136736362794399
		3 1 0.20184903405061569 2 0.57678360232138426 3 0.22136736362799997
		3 1 0.20184903405093105 2 0.57678360232107717 3 0.22136736362799178
		3 1 0.20184903942905763 2 0.57678359705641835 3 0.22136736351452402
		3 1 0.20184903577959787 2 0.57678360061481304 3 0.22136736360558909
		3 1 0.20184903671296686 2 0.57678359990249128 3 0.22136736338454185
		3 1 0.20184902923085954 2 0.57678360730533862 3 0.22136736346380181
		3 1 0.20184903689934636 2 0.57678359981778637 3 0.22136736328286727
		3 1 0.20184899943950887 2 0.57678363780737452 3 0.22136736275311658
		3 1 0.20184903526514275 2 0.57678360082298508 3 0.22136736391187214;
	setAttr ".wl[160:286].w"
		4 1 0.08739964601638836 2 0.52193545930803298 3 0.36893728466166642 
		4 0.021727610013912265
		4 1 0.087399645390739342 2 0.52193545801872643 3 0.36893728470422227 
		4 0.021727611886311983
		4 1 0.087399640942886089 2 0.52193546275735092 3 0.36893728441145129 
		4 0.021727611888311699
		4 1 0.087399653257140775 2 0.5219354195888749 3 0.36893731525637152 
		4 0.021727611897612825
		4 1 0.087399653720312942 2 0.52193542096841128 3 0.36893731528107493 
		4 0.021727610030200951
		4 1 0.087399637302701644 2 0.52193543893429428 3 0.36893731374999073 
		4 0.021727610013013418
		4 1 0.087399646457038987 2 0.52193546070938213 3 0.36893728468708442 
		4 0.021727608146494475
		4 1 0.08739964657970925 2 0.52193546066379704 3 0.36893728461502695 
		4 0.021727608141466872
		4 1 0.087399646902916142 2 0.52193546101472743 3 0.36893728394064695 
		4 0.021727608141709563
		4 1 0.087399647149326284 2 0.52193546201361185 3 0.36893728456804353 
		4 0.021727606269018408
		4 1 0.087399647589382373 2 0.52193546341553054 3 0.36893728459348635 
		4 0.02172760440160083
		4 1 0.087399647589388674 2 0.52193546341552455 3 0.36893728459348601 
		4 0.021727604401600827
		4 1 0.087399647589388604 2 0.52193546341552466 3 0.36893728459348601 
		4 0.021727604401600827
		4 1 0.087399647634333791 2 0.52193546345772213 3 0.36893728451146579 
		4 0.021727604396478358
		4 1 0.087399636186103011 2 0.52193547460096568 3 0.36893728481832178 
		4 0.021727604394609582
		4 1 0.087399627807497868 2 0.52193545283448983 3 0.36893731310194444 
		4 0.021727606256067854
		4 1 0.087399627996346319 2 0.52193545389534934 3 0.36893731372497596 
		4 0.021727604383328436
		4 1 0.087399628004680638 2 0.5219354538871982 3 0.36893731372478239 
		4 0.021727604383338796
		4 1 0.087399636239448672 2 0.52193547454311462 3 0.36893728482277827 
		4 0.021727604394658477
		4 1 0.087399641434246333 2 0.52193546646912958 3 0.36893728396359055 
		4 0.021727608133033604
		4 1 0.030311535971117975 2 0.40652478480837889 3 0.49950299532096376 
		4 0.063660683899539341
		4 1 0.030311536759738397 2 0.40652477738804377 3 0.49950299449386265 
		4 0.063660691358355198
		4 1 0.030311536845102613 2 0.40652477723138014 3 0.49950299456507857 
		4 0.063660691358438659
		4 1 0.030311540530917457 2 0.40652477555819938 3 0.49950299254695119 
		4 0.063660691363931959
		4 1 0.030311540927511805 2 0.40652478038784118 3 0.4995029947764133 
		4 0.063660683908233692
		4 1 0.030311537636400238 2 0.40652478329336617 3 0.49950299516900959 
		4 0.063660683901223994
		4 1 0.030311536488058084 2 0.40652478944115406 3 0.49950299762498668 
		4 0.063660676445801201
		4 1 0.030311536241654259 2 0.40652478622674226 3 0.49950299363365569 
		4 0.063660683897947767
		4 1 0.030311536606279197 2 0.40652478930753844 3 0.49950299764596739 
		4 0.063660676440215003
		4 1 0.030311535048739686 2 0.40652479242300155 3 0.49950299608760934 
		4 0.063660676440649391
		4 1 0.030311531743962613 2 0.40652479859418128 3 0.49950299322465769 
		4 0.063660676437198416
		4 1 0.030311531743959969 2 0.4065247985941805 3 0.49950299322466113 
		4 0.063660676437198416
		4 1 0.030311536804175244 2 0.40652479085390542 3 0.49950299590149422 
		4 0.063660676440425043
		4 1 0.030311531698766287 2 0.40652479862962365 3 0.49950299323439973 
		4 0.06366067643721024
		4 1 0.030311531546002884 2 0.40652479534053165 3 0.49950298922413156 
		4 0.063660683889333824
		4 1 0.030311531583495251 2 0.40652479556887172 3 0.49950299641220558 
		4 0.063660676435427471
		4 1 0.030311528276689412 2 0.40652480171458838 3 0.49950299357297268 
		4 0.063660676435749589
		4 1 0.030311528356890452 2 0.40652480158991861 3 0.49950299362112799 
		4 0.06366067643206301
		4 1 0.030311531748764827 2 0.40652479863251789 3 0.49950299318717534 
		4 0.063660676431541996
		4 1 0.03031153477650558 2 0.40652479103568473 3 0.49950299774934132 
		4 0.063660676438468386
		4 1 0.010347894820448508 2 0.2612696595035236 3 0.57074485757309856 
		4 0.15763758810292935
		4 1 0.010347898319801886 2 0.26126968652722815 3 0.57074481194381088 
		4 0.15763760320915909
		4 1 0.010347898260752865 2 0.26126968693450198 3 0.57074481159782564 
		4 0.1576376032069195
		4 1 0.010347898793875196 2 0.26126969022975532 3 0.57074480779275638 
		4 0.15763760318361306
		4 1 0.01034789666920673 2 0.26126965834187144 3 0.57074485689022703 
		4 0.15763758809869485
		4 1 0.010347895749942481 2 0.2612696591599773 3 0.57074485706430933 
		4 0.15763758802577085
		4 1 0.010347895158118544 2 0.26126966556632708 3 0.57074485123095808 
		4 0.15763758804459632
		4 1 0.010347894882741961 2 0.26126965953194026 3 0.5707448575929408 
		4 0.15763758799237704
		4 1 0.010347893954277584 2 0.26126966027657594 3 0.5707448578122899 
		4 0.15763758795685653
		4 1 0.0103478939909219 2 0.26126965996364776 3 0.5707448580868959 
		4 0.15763758795853447
		4 1 0.010347895518389223 2 0.26126969852678283 3 0.57074480296771424 
		4 0.15763760298711377
		4 1 0.010347895518382577 2 0.26126969852683796 3 0.57074480296766605 
		4 0.15763760298711343
		4 1 0.010347893811832855 2 0.26126965542195812 3 0.57074484790336444 
		4 0.15763760286284456
		4 1 0.01034789552450377 2 0.26126969862438898 3 0.57074480290128404 
		4 0.15763760294982324
		4 1 0.010347894563907804 2 0.26126969966448171 3 0.57074480285902607 
		4 0.15763760291258452
		4 1 0.010347893074901512 2 0.26126966079066988 3 0.57074485824864762 
		4 0.15763758788578094
		4 1 0.010347893414189936 2 0.26126966661712414 3 0.57074485210313186 
		4 0.15763758786555399
		4 1 0.010347893594617146 2 0.26126967127661038 3 0.57074486220504328 
		4 0.15763757292372926
		4 1 0.010347894519992509 2 0.26126967052111749 3 0.57074486199955021 
		4 0.15763757295933975
		4 1 0.010347894290275363 2 0.2612696659833732 3 0.57074485175230738 
		4 0.15763758797404395
		4 2 0.12869608973102245 3 0.5596305967352575 4 0.29978614541561049 
		5 0.011887168118109642
		4 2 0.1286960922865619 3 0.55963059291831097 4 0.29978614480681787 
		5 0.011887169988309269
		4 2 0.12869609214635491 3 0.55963059328985409 4 0.29978614550520688 
		5 0.011887169058584163
		4 2 0.12869608912274424 3 0.55963059562079687 4 0.29978614526237835 
		5 0.011887169994080529
		4 2 0.12869608651495901 3 0.55963059830224937 4 0.29978614519342162 
		5 0.011887169989369903
		4 2 0.12869608700212778 3 0.5596305988850635 4 0.2997861450641659 
		5 0.011887169048642827
		4 2 0.12869609169180016 3 0.55963059430169859 4 0.29978614495917755 
		5 0.011887169047323679
		4 2 0.12869608347065209 3 0.55963060379038121 4 0.2997861446348658 
		5 0.011887168104100947
		4 2 0.12869608390135656 3 0.55963060466395487 4 0.29978614520108038 
		5 0.011887166233608219
		4 2 0.12869608888116871 3 0.55963059914962354 4 0.29978614480181986 
		5 0.011887167167387917
		4 2 0.12869608920805237 3 0.55963059975308616 4 0.29978614480663235 
		5 0.01188716623222914
		4 2 0.12869608935369822 3 0.55963060025767952 4 0.29978614509162183 
		5 0.011887165297000398
		4 2 0.12869608936672605 3 0.55963060024468037 4 0.29978614509158552 
		5 0.011887165297008142
		4 2 0.12869608936667262 3 0.55963060024474842 4 0.29978614509157109 
		5 0.011887165297007894
		4 2 0.12869608413391187 3 0.55963060470692982 4 0.29978614492541494 
		5 0.011887166233743456
		4 2 0.12869608492995582 3 0.55963060434209777 4 0.29978614449984903 
		5 0.011887166228097316
		4 2 0.12869609318130154 3 0.55963059653140867 4 0.29978614499177503 
		5 0.011887165295514758
		4 2 0.12869607392756618 3 0.55963064717644684 4 0.29978611454333509 
		5 0.011887164352651899
		4 2 0.1286960684984593 3 0.55963065156035585 4 0.29978611465194432 
		5 0.011887165289240512
		4 2 0.12869609233163251 3 0.55963059538413173 4 0.2997861451128937 
		5 0.011887167171342094
		4 2 0.047624336591115722 3 0.46843484007378616 4 0.44639775354899097 
		5 0.037543069786107199
		4 2 0.047624341902278121 3 0.46843480379385971 4 0.44639778450688461 
		5 0.03754306979697758
		4 2 0.047624341799778945 3 0.46843480469840237 4 0.44639778370461852 
		5 0.037543069797200145
		4 2 0.047624339503513781 3 0.46843483638698963 4 0.44639775431123174 
		5 0.037543069798264939
		4 2 0.047624329816752332 3 0.46843484382724093 4 0.44639775284171085 
		5 0.037543073514295852
		4 2 0.047624330112132594 3 0.46843484440168376 4 0.44639775197614862 
		5 0.037543073510035073
		4 2 0.047624335565160526 3 0.46843484034817295 4 0.44639775430536699 
		5 0.037543069781299496
		4 2 0.047624336953958062 3 0.46843484258996265 4 0.44639775440987289 
		5 0.037543066046206289
		4 2 0.047624334445791325 3 0.46843481708252743 4 0.44639778242885164 
		5 0.037543066042829643
		4 2 0.047624337105815498 3 0.46843484324523871 4 0.4463977536025302 
		5 0.03754306604641558
		4 2 0.047624337299897034 3 0.46843484510332517 4 0.44639775528620801 
		5 0.037543062310569739
		4 2 0.047624334855333426 3 0.4684348195134122 4 0.44639778332396535 
		5 0.037543062307288981
		4 2 0.047624334855252574 3 0.46843481951348243 4 0.44639778332397606 
		5 0.03754306230728903
		4 2 0.047624334851616802 3 0.46843481951701887 4 0.44639778332407487 
		5 0.03754306230728946
		4 2 0.047624337651187322 3 0.46843484560262416 4 0.44639775443978919 
		5 0.037543062306399359
		4 2 0.047624333998878977 3 0.46843484705133348 4 0.44639775291099854 
		5 0.037543066038789
		4 2 0.047624336417217951 3 0.46843484401593211 4 0.44639775352932642 
		5 0.037543066037523574
		4 2 0.047624331550379942 3 0.46843485232391135 4 0.44639775382641106 
		5 0.037543062299297707
		4 2 0.047624331140416698 3 0.46843484989359502 4 0.44639775293115069 
		5 0.037543066034837612
		4 2 0.047624335970993831 3 0.46843484278265496 4 0.44639775520059188 
		5 0.037543066045759313
		4 2 0.015346801238824769 3 0.33072845881475693 4 0.54815294850421381 
		5 0.10577179144220447
		4 2 0.015346802142355693 3 0.33072845805439699 4 0.54815294835485784 
		5 0.10577179144838958
		4 2 0.015346804089364053 3 0.33072845615268576 4 0.5481529483064479 
		5 0.10577179145150228
		4 2 0.015346803087656399 3 0.33072845722614486 4 0.54815294823788574 
		5 0.10577179144831302
		4 2 0.015346804358340375 3 0.33072850618083111 4 0.5481528980128143 
		5 0.10577179144801437
		4 2 0.015346803453263008 3 0.33072850692929434 4 0.54815289817246482 
		5 0.10577179144497786
		4 2 0.015346801793428844 3 0.33072851521147367 4 0.54815289155484148 
		5 0.10577179144025607
		4 2 0.015346801357377872 3 0.33072845843342635 4 0.54815294876995702 
		5 0.10577179143923868
		4 2 0.015346800853053767 3 0.33072846492690289 4 0.54815295023272803 
		5 0.10577178398731542
		4 2 0.015346800861080236 3 0.33072846493848568 4 0.54815295021313182 
		5 0.10577178398730236
		4 2 0.015346800861138063 3 0.33072846493827807 4 0.54815295021328148 
		5 0.10577178398730244
		4 2 0.015346800861954231 3 0.33072846495126307 4 0.54815295020263122 
		5 0.10577178398415157
		4 2 0.015346800862011031 3 0.33072846495104624 4 0.54815295020279109 
		5 0.1057717839841517
		4 2 0.015346800862010934 3 0.3307284649510468 4 0.54815295020279065 
		5 0.10577178398415171
		4 2 0.015346798199530481 3 0.33072847321203397 4 0.54815294460800823 
		5 0.10577178398042733
		4 2 0.01534680138892801 3 0.33072852144257936 4 0.5481528931863322 
		5 0.10577178398216035
		4 2 0.015346800469762362 3 0.3307285221846813 4 0.54815289336327822 
		5 0.10577178398227813
		4 2 0.015346800480396995 3 0.33072852218660093 4 0.54815289335073236 
		5 0.10577178398226972
		4 2 0.015346800187017886 3 0.33072851915767565 4 0.54815289667050859 
		5 0.10577178398479788
		4 2 0.015346800370275665 3 0.33072845947692903 4 0.5481529487135951 
		5 0.10577179143920028
		3 3 0.18661541465251014 4 0.58083258426610362 5 0.23255200108138618
		3 3 0.18661541504951476 4 0.58083258366602197 5 0.23255200128446324
		3 3 0.18661541430942916 4 0.5808325843929727 5 0.23255200129759815
		3 3 0.18661541457895633 4 0.5808325841278702 5 0.23255200129317352
		3 3 0.18661542241853271 4 0.58083257642332975 5 0.23255200115813757
		3 3 0.18661542258491445 4 0.58083257636528551 5 0.23255200104980006
		2 3 0.1866154148973066 4 0.58083258402636606;
	setAttr ".wl[286:419].w"
		1 5 0.23255200107632742
		3 3 0.18661541478983223 4 0.58083258423717155 5 0.23255200097299625
		3 3 0.18661542254218502 4 0.58083257672400412 5 0.23255200073381083
		3 3 0.18661542284287805 4 0.58083257664041532 5 0.23255200051670669
		3 3 0.18661542292439831 4 0.5808325765598179 5 0.23255200051578387
		3 3 0.18661542293394823 4 0.58083257654990217 5 0.23255200051614963
		3 3 0.18661542294109434 4 0.58083257654234199 5 0.23255200051656369
		3 3 0.18661542308854437 4 0.58083257650386699 5 0.23255200040758858
		3 3 0.18661542303760478 4 0.58083257655331544 5 0.23255200040907978
		3 3 0.18661542326750483 4 0.58083257643292874 5 0.23255200029956649
		3 3 0.1866154232713966 4 0.58083257642856745 5 0.23255200030003598
		3 3 0.18661542253288946 4 0.58083257715396674 5 0.23255200031314377
		3 3 0.18661542321304131 4 0.5808325764869543 5 0.23255200030000439
		3 3 0.18661541552592878 4 0.58083258383132441 5 0.23255200064274684
		4 3 0.076619599818387757 4 0.51796224792247569 5 0.383811139999226 
		6 0.021607012259910643
		4 3 0.076619593438341058 4 0.51796225289103615 5 0.3838111395380171 
		6 0.021607014132605826
		4 3 0.076619599433051605 4 0.51796224673849356 5 0.38381113969719244 
		6 0.021607014131262342
		4 3 0.076619599328703727 4 0.51796224831722182 5 0.38381114008904488 
		6 0.021607012265029694
		4 3 0.076619599230501115 4 0.51796224727664419 5 0.38381113936139799 
		6 0.021607014131456728
		4 3 0.07661959898705234 4 0.51796224681186698 5 0.38381114006977013 
		6 0.021607014131310602
		4 3 0.07661959894383652 4 0.51796224685975412 5 0.38381114006512873 
		6 0.021607014131280605
		4 3 0.076619599643426711 4 0.51796224696832904 5 0.38381113926196858 
		6 0.021607014126275532
		4 3 0.076619599771238667 4 0.51796224831728577 5 0.3838111396514447 
		6 0.021607012260030915
		4 3 0.076619599928388418 4 0.5179622485092843 5 0.3838111393021868 
		6 0.021607012260140473
		4 3 0.076619599847523395 4 0.51796224832669158 5 0.38381113957081597 
		6 0.021607012254969107
		4 3 0.076619599847698311 4 0.51796224832652293 5 0.38381113957080976 
		6 0.021607012254969075
		4 3 0.076619600112199676 4 0.51796224955030523 5 0.3838111399488458 
		6 0.021607010388649241
		4 3 0.076619600161397391 4 0.5179622494965701 5 0.38381113995334959 
		6 0.021607010388683002
		4 3 0.076619600150653194 4 0.51796224950693337 5 0.38381113995372795 
		6 0.021607010388685486
		4 3 0.076619600186511247 4 0.51796224956147463 5 0.38381113986842069 
		6 0.0216070103835935
		4 3 0.076619600191808981 4 0.51796224955628534 5 0.38381113986830828 
		6 0.021607010383597417
		4 3 0.076619600322870213 4 0.51796224977969896 5 0.38381113951376283 
		6 0.021607010383668097
		4 3 0.076619600394513057 4 0.517962251093808 5 0.38381113998916866 
		6 0.021607008522510279
		4 3 0.07661959988683488 4 0.51796224967806603 5 0.38381114004131017 
		6 0.021607010393788831
		4 3 0.024608950281435567 4 0.39505256618304219 5 0.5120866892062359 
		6 0.068251794329286436
		4 3 0.024608950625383211 4 0.39505262230962074 5 0.51208663273535149 
		6 0.068251794329644538
		4 3 0.024608950624321654 4 0.39505262229679677 5 0.51208663274721278 
		6 0.06825179433166878
		4 3 0.024608952573385561 4 0.39505262233072747 5 0.512086630764228 
		6 0.068251794331659066
		4 3 0.024608952408807724 4 0.39505262071770808 5 0.5120866325419986 
		6 0.068251794331485649
		4 3 0.024608952045730045 4 0.39505261948039544 5 0.51208663414272193 
		6 0.068251794331152651
		4 3 0.024608952047469695 4 0.3950526194773788 5 0.51208663414399769 
		6 0.068251794331153803
		4 3 0.024608950627476568 4 0.395052622321864 5 0.51208663272303878 
		6 0.068251794327620657
		4 3 0.024608950788293699 4 0.39505262394070911 5 0.51208663094320428 
		6 0.06825179432779295
		4 3 0.024608950853697496 4 0.39505262380988276 5 0.51208663101058072 
		6 0.068251794325838888
		4 3 0.024608950789372086 4 0.39505262395349883 5 0.51208663093136042 
		6 0.068251794325768736
		4 3 0.024608950789578098 4 0.39505262395345636 5 0.512086630931197 
		6 0.068251794325768583
		4 3 0.024608950789603089 4 0.39505262395342011 5 0.51208663093120821 
		6 0.068251794325768583
		4 3 0.024608950789389107 4 0.39505262395346274 5 0.51208663093137941 
		6 0.068251794325768736
		4 3 0.024608950825549203 4 0.395052623928626 5 0.51208663092006546 
		6 0.068251794325759313
		4 3 0.024608949043035226 4 0.39505262551978115 5 0.51208663111326402 
		6 0.068251794323919562
		4 3 0.024608946012656254 4 0.3950525768556028 5 0.51208669026641518 
		6 0.068251786865325764
		4 3 0.024608946738493048 4 0.39505257528614252 5 0.51208669110928484 
		6 0.068251786866079661
		4 3 0.024608948619088217 4 0.39505257351178497 5 0.51208669099911719 
		6 0.068251786870009643
		4 3 0.024608948287735539 4 0.39505257053081722 5 0.51208668685627934 
		6 0.06825179432516798
		3 4 0.24797038795572079 5 0.58089189497461691 6 0.17113771706966227
		3 4 0.24797038769430077 5 0.58089189511674655 6 0.1711377171889526
		3 4 0.24797038749539504 5 0.58089189523586804 6 0.17113771726873692
		3 4 0.24797039199047313 5 0.58089190576587046 6 0.17113770224365646
		3 4 0.24797038769234417 5 0.58089189511866501 6 0.17113771718899087
		3 4 0.24797038244655434 5 0.58089190027001636 6 0.17113771728342933
		3 4 0.24797038247043973 5 0.58089190024561432 6 0.17113771728394592
		3 4 0.24797038796268112 5 0.58089189496739191 6 0.171137717069927
		3 4 0.24797038800006221 5 0.58089189493015736 6 0.17113771706978045
		3 4 0.24797038800052154 5 0.58089189492971305 6 0.17113771706976544
		3 4 0.24797038817846845 5 0.58089189483073533 6 0.1711377169907963
		3 4 0.2479703882626885 5 0.5808918947868511 6 0.17113771695046046
		3 4 0.24797038826977316 5 0.58089189477949865 6 0.17113771695072827
		3 4 0.24797038828260096 5 0.58089189476634429 6 0.17113771695105479
		3 4 0.24797038865074034 5 0.58089189455835022 6 0.17113771679090947
		3 4 0.24797038875659813 5 0.58089189449226153 6 0.17113771675114028
		3 4 0.24797038876132202 5 0.58089189448723255 6 0.17113771675144543
		3 4 0.24797038297725224 5 0.580891900167261 6 0.17113771685548682
		3 4 0.2479703834389059 5 0.58089189971515875 6 0.1711377168459354
		3 4 0.24797038228948495 5 0.58089190057601692 6 0.17113771713449807
		4 4 0.11530988543387577 5 0.5556164242737881 6 0.31758017957461743 
		7 0.011493510717718737
		4 4 0.11530988535507335 5 0.55561642427984359 6 0.31758017964467228 
		7 0.011493510720410844
		4 4 0.11530988468726922 5 0.55561642456671734 6 0.31758018002286498 
		7 0.011493510723148507
		4 4 0.11530988457789323 5 0.55561642404247125 6 0.31758017972295666 
		7 0.011493511656678805
		4 4 0.11530988511109878 5 0.5556164241514906 6 0.31758018001433236 
		7 0.011493510723078403
		4 4 0.11530988502744439 5 0.55561642367638853 6 0.31758017964226731 
		7 0.011493511653899779
		4 4 0.11530988507116036 5 0.5556164237080965 6 0.31758017956956186 
		7 0.011493511651181194
		4 4 0.11530988543788172 5 0.55561642427146973 6 0.31758017957294338 
		7 0.011493510717705196
		4 4 0.11530988546168966 5 0.55561642424655344 6 0.317580179574043 
		7 0.011493510717713984
		4 4 0.11530989058446085 5 0.55561644882742944 6 0.31758014987189098 
		7 0.01149351071621877
		4 4 0.11530989055676107 5 0.55561644885618111 6 0.31758014987084737 
		7 0.011493510716210376
		4 4 0.11530989075234088 5 0.55561644936870536 6 0.31758015009897966 
		7 0.011493509779974083
		4 4 0.11530989075024062 5 0.55561644937077348 6 0.31758015009901147 
		7 0.011493509779974324
		4 4 0.11530989077551404 5 0.55561644934441023 6 0.31758015010009277 
		7 0.011493509779982997
		4 4 0.11530989095847474 5 0.55561644945820354 6 0.31758014980329163 
		7 0.011493509780030114
		4 4 0.11530989102947302 5 0.55561644946156941 6 0.31758014973163762 
		7 0.011493509777319975
		4 4 0.11530989103982137 5 0.55561644945126165 6 0.31758014973159215 
		7 0.011493509777324702
		4 4 0.11530988594684119 5 0.55561642491553054 6 0.31758017936151783 
		7 0.011493509776110442
		4 4 0.11530989098035155 5 0.55561644943517841 6 0.31758014980443083 
		7 0.011493509780039239
		4 4 0.11530989089883421 5 0.55561644944228727 6 0.3175801498761337 
		7 0.011493509782744677
		4 4 0.040190268692331631 5 0.45678095723548023 6 0.46416636768876829 
		7 0.038862406383419916
		4 4 0.04019026431067161 5 0.45678093160770433 6 0.46416639397197956 
		7 0.038862410109644405
		4 4 0.040190267663477088 5 0.456780928444603 6 0.46416639378023256 
		7 0.038862410111687416
		4 4 0.0401902695125229 5 0.456780925935797 6 0.46416639443921648 
		7 0.038862410112463573
		4 4 0.040190264196061934 5 0.45678093171071354 6 0.46416639398129966 
		7 0.03886241011192472
		4 4 0.040190264131113283 5 0.45678093096554306 6 0.46416639479377636 
		7 0.038862410109567334
		4 4 0.04019026400167635 5 0.45678093025296984 6 0.46416639563583967 
		7 0.038862410109514127
		4 4 0.040190264127618447 5 0.45678093098234646 6 0.46416639478161675 
		7 0.038862410108418378
		4 4 0.040190266029807721 5 0.45678092842540369 6 0.46416639543559945 
		7 0.038862410109189081
		4 4 0.04019026446451246 5 0.45678096103725152 6 0.46416636439206216 
		7 0.03886241010617391
		4 4 0.040190264507299865 5 0.4567809618440723 6 0.46416636354240903 
		7 0.038862410106218825
		4 4 0.040190264509313067 5 0.45678096185543476 6 0.46416636353018242 
		7 0.038862410105069793
		4 4 0.040190264508047004 5 0.4567809618568206 6 0.46416636353006269 
		7 0.038862410105069647
		4 4 0.040190264508060895 5 0.45678096185680683 6 0.46416636353006258 
		7 0.038862410105069647
		4 4 0.0401902647169625 5 0.45678096355491221 6 0.46416636534981653 
		7 0.03886240637830863
		4 4 0.040190264562008984 5 0.45678096178294442 6 0.46416636354995316 
		7 0.038862410105093524
		4 4 0.040190264722818024 5 0.45678096357595654 6 0.46416636532521416 
		7 0.038862406376011328
		4 4 0.040190264668458681 5 0.45678096365042103 6 0.46416636530513261 
		7 0.038862406375987701
		4 4 0.040190264562035644 5 0.45678096178291927 6 0.46416636354995156 
		7 0.038862410105093524
		4 4 0.040190264462023277 5 0.45678096103998234 6 0.4641663643918208 
		7 0.038862410106173612
		4 4 0.012241906093230111 5 0.31461144947362174 6 0.561226669151763 
		7 0.11191997528138499
		4 4 0.012241907491513163 5 0.31461144148022396 6 0.5612266756978842 
		7 0.11191997533037867
		4 4 0.01224190737912461 5 0.31461143883080689 6 0.56122667099778778 
		7 0.11191998279228073
		4 4 0.012241908304537325 5 0.31461143810980918 6 0.56122667079407929 
		7 0.11191998279157427
		4 4 0.01224190830559106 5 0.31461143811039904 6 0.56122667079241861 
		7 0.11191998279159132
		4 4 0.012241908212747132 5 0.31461143855969226 6 0.56122667043723595 
		7 0.11191998279032467
		4 4 0.012241907982884903 5 0.31461143550756415 6 0.56122667372290391 
		7 0.11191998278664708
		4 4 0.012241907163491002 5 0.31461143582714729 6 0.56122667423406403 
		7 0.11191998277529766
		4 4 0.012241907342834998 5 0.31461143912409317 6 0.56122667075478705 
		7 0.11191998277828488
		4 4 0.012241906815298456 5 0.31461149327901905 6 0.56122660965711624 
		7 0.11191999024856626
		4 4 0.01224190688505126 5 0.31461149301528407 6 0.56122660986349837 
		7 0.11191999023616625
		4 4 0.012241905960209562 5 0.31461149379888276 6 0.56122661001736529 
		7 0.11191999022354239
		4 4 0.012241905964033357 5 0.31461149385128079 6 0.56122660997442619 
		7 0.11191999021025968
		4 4 0.01224190596508307 5 0.31461149385189108 6 0.56122660997274909 
		7 0.11191999021027671
		4 4 0.01224190596778566 5 0.31461149390381665 6 0.56122660993142082 
		7 0.11191999019697677
		4 4 0.012241905967779194 5 0.31461149390390664 6 0.56122660993133766 
		7 0.11191999019697649
		4 4 0.012241905964007984 5 0.31461149385120046 6 0.56122660997453155 
		7 0.11191999021026007
		4 4 0.012241905966085669 5 0.31461149384112636 6 0.56122660998249951 
		7 0.11191999021028848
		4 4 0.012241906886752208 5 0.31461149307785602 6 0.5612266098125368 
		7 0.11191999022285487
		4 4 0.012241906240938301 5 0.31461150295495427 6 0.56122661551605713 
		7 0.11191997528805032;
	setAttr ".wl[420:554].w"
		3 5 0.17123107767853241 6 0.58474829160714403 7 0.24402063071432359
		3 5 0.17123107411536437 6 0.58474828006147617 7 0.24402064582315958
		3 5 0.17123107382931549 6 0.58474828011906665 7 0.24402064605161788
		3 5 0.17123107397827236 6 0.58474828008440671 7 0.24402064593732087
		3 5 0.17123106936888349 6 0.58474828476216378 7 0.24402064586895281
		3 5 0.17123107015091638 6 0.5847482839925594 7 0.24402064585652425
		3 5 0.17123106200613619 6 0.58474829200990153 7 0.24402064598396223
		3 5 0.17123107068321947 6 0.58474828358010345 7 0.2440206457366772
		3 5 0.17123106938055241 6 0.58474828475016594 7 0.24402064586928171
		3 5 0.17123110672994535 6 0.58474824716613727 7 0.24402064610391741
		3 5 0.17123110809195044 6 0.58474823102355478 7 0.24402066088449487
		3 5 0.17123109597285993 6 0.58474822812322635 7 0.24402067590391374
		3 5 0.17123109614405757 6 0.58474822806592563 7 0.24402067579001682
		3 5 0.17123109226474789 6 0.5847482320256987 7 0.24402067570955344
		3 5 0.17123109228774797 6 0.58474823200230786 7 0.24402067570994404
		3 5 0.17123110455357612 6 0.58474821967477209 7 0.24402067577165182
		3 5 0.17123110748719517 6 0.58474823172935841 7 0.24402066078344645
		3 5 0.17123111210112391 6 0.58474822704714002 7 0.24402066085173607
		3 5 0.17123110706902966 6 0.58474824705609252 7 0.24402064587487787
		3 5 0.17123107749218278 6 0.58474827698699439 7 0.24402064552082289
		4 5 0.06717864333908509 6 0.51310335927340911 7 0.39668863560697354 
		8 0.02302936178053229
		4 5 0.067178643089420925 6 0.51310335879590918 7 0.39668863633428952 
		8 0.023029361780380474
		4 5 0.067178642962320179 6 0.51310335781486338 7 0.39668863557672573 
		8 0.023029363646090668
		4 5 0.067178642961133725 6 0.51310335781603811 7 0.39668863557673739 
		8 0.023029363646090709
		4 5 0.067178643089463877 6 0.51310335879586755 7 0.39668863633428803 
		8 0.023029361780380456
		4 5 0.06717864324578432 6 0.51310335859947442 7 0.39668863637167989 
		8 0.02302936178306126
		4 5 0.067178643104987112 6 0.51310335763169868 7 0.39668863561454465 
		8 0.023029363648769646
		4 5 0.067178643232283189 6 0.51310335861255685 7 0.39668863637210061 
		8 0.023029361783059411
		4 5 0.067178643320332868 6 0.51310335924537087 7 0.39668863565105034 
		8 0.023029361783246001
		4 5 0.0671786559244031 6 0.51310334700578197 7 0.39668863528606302 
		8 0.023029361783751926
		4 5 0.067178645415620977 6 0.51310335695678466 7 0.39668863584492275 
		8 0.023029361782671554
		4 5 0.067178662607248085 6 0.51310330991508746 7 0.39668866568983552 
		8 0.023029361787828984
		4 5 0.067178653331048624 6 0.51310329157495227 7 0.39668869517526029 
		8 0.023029359918738689
		4 5 0.067178650078552254 6 0.5131032952210397 7 0.39668869478378804 
		8 0.023029359916620033
		4 5 0.067178653329902804 6 0.51310329157608803 7 0.3966886951752705 
		8 0.02302935991873872
		4 5 0.067178662449740231 6 0.5131033101126562 7 0.39668866565245536 
		8 0.023029361785148233
		4 5 0.067178652080064766 6 0.51310335238506044 7 0.39668863562161216 
		8 0.023029359913262566
		4 5 0.067178649810294852 6 0.51310335411073893 7 0.39668863616522182 
		8 0.023029359913744333
		4 5 0.067178649804433402 6 0.5131033540702401 7 0.39668863620886669 
		8 0.02302935991645982
		4 5 0.067178649772098004 6 0.51310335415411923 7 0.39668863616007055 
		8 0.023029359913712268
		4 5 0.02060585908608693 6 0.38396014683930646 7 0.5210761174471864 
		8 0.074357876627420216
		4 5 0.02060585894824344 6 0.38396014519970911 7 0.52107611922699448 
		8 0.074357876625052957
		4 5 0.020605858949724755 6 0.38396014519662502 7 0.52107611922859609 
		8 0.074357876625054123
		4 5 0.020605858948243475 6 0.38396014519970767 7 0.52107611922699593 
		8 0.074357876625052957
		4 5 0.020605858948243329 6 0.383960145199708 7 0.5210761192269957 
		8 0.074357876625052957
		4 5 0.020605858948263972 6 0.38396014519966776 7 0.52107611922701536 
		8 0.074357876625052971
		4 5 0.020605858961865144 6 0.38396014517800287 7 0.521076119232876 
		8 0.074357876627256028
		4 5 0.020605858961418921 6 0.38396014517824467 7 0.52107611923308095 
		8 0.074357876627255487
		4 5 0.020605859083539312 6 0.38396014682932733 7 0.52107611745750615 
		8 0.074357876629627229
		4 5 0.020605859237923799 6 0.38396014995267091 7 0.52107612163692596 
		8 0.074357869172479329
		4 5 0.020605860904141144 6 0.38396014524461297 7 0.52107611722179037 
		8 0.074357876629455477
		4 5 0.020605863151897878 6 0.38396013935126949 7 0.52107612086471466 
		8 0.074357876632117959
		4 5 0.020605861767350197 6 0.38396014504997206 7 0.52107611655443964 
		8 0.074357876628238201
		4 5 0.020605862510862306 6 0.38396014559921399 7 0.52107612271371628 
		8 0.074357869176207458
		4 5 0.020605861767370434 6 0.38396014504993276 7 0.52107611655445851 
		8 0.074357876628238215
		4 5 0.020605863097742448 6 0.38396013949291985 7 0.52107612077728371 
		8 0.074357876632054065
		4 5 0.020605860890311523 6 0.38396014525043876 7 0.52107611722978842 
		8 0.074357876629461361
		4 5 0.02060585926663475 6 0.3839601499379014 7 0.52107612162299477 
		8 0.074357869172469074
		4 5 0.020605859086194469 6 0.38396014685509794 7 0.52107611743349624 
		8 0.0743578766252114
		4 5 0.020605859069974773 6 0.38396014685091273 7 0.52107611745168825 
		8 0.074357876627424213
		3 6 0.23389302084531782 7 0.58157777465457272 8 0.18452920450010943
		3 6 0.2338930256617828 7 0.58157778480971112 8 0.18452918952850614
		3 6 0.2338930255656255 7 0.58157778486276412 8 0.18452918957161041
		3 6 0.23389302556631594 7 0.581577784862083 8 0.18452918957160105
		3 6 0.23389302556631533 7 0.58157778486208367 8 0.18452918957160108
		3 6 0.23389302556564753 7 0.58157778486274248 8 0.18452918957160999
		3 6 0.2338930256617813 7 0.58157778480971256 8 0.18452918952850617
		3 6 0.2338930257497602 7 0.58157778476508526 8 0.18452918948515454
		3 6 0.23389302517993835 7 0.58157778532559001 8 0.1845291894944717
		3 6 0.23389302069353418 7 0.58157777472015815 8 0.18452920458630764
		3 6 0.23389306169314703 7 0.58157773351707653 8 0.18452920478977633
		3 6 0.23389302073287807 7 0.58157777459689208 8 0.18452920467022982
		3 6 0.23389300856155579 7 0.58157778678795402 8 0.18452920465049014
		3 6 0.23389301872924384 7 0.5815777767772794 8 0.18452920449347679
		3 6 0.23389300873797003 7 0.58157778669814808 8 0.18452920456388197
		3 6 0.23389302100158904 7 0.58157777445692338 8 0.18452920454148766
		3 6 0.23389302541722976 7 0.58157778521637149 8 0.18452918936639878
		3 6 0.23389302116003521 7 0.58157777446844938 8 0.18452920437151546
		3 6 0.23389306189065601 7 0.58157773340624952 8 0.1845292047030945
		3 6 0.23389306162684376 7 0.58157773354011155 8 0.18452920483304466
		4 6 0.10423787492492076 7 0.54785774305917456 8 0.33588776024636191 
		9 0.012016621769542725
		4 6 0.10423787494032202 7 0.54785774304771928 8 0.33588776024245459 
		9 0.012016621769504172
		4 6 0.10423787489859673 7 0.54785774300975332 8 0.33588776031930634 
		9 0.012016621772343682
		4 6 0.10423787489859666 7 0.54785774300975343 8 0.33588776031930623 
		9 0.01201662177234368
		4 6 0.10423787489848838 7 0.54785774300985945 8 0.33588776031930856 
		9 0.012016621772343699
		4 6 0.10423787489859675 7 0.54785774300975343 8 0.33588776031930623 
		9 0.01201662177234368
		4 6 0.10423787494032201 7 0.54785774304771928 8 0.33588776024245459 
		9 0.012016621769504172
		4 6 0.10423787514318164 7 0.54785774315741587 8 0.33588775992983078 
		9 0.012016621769571691
		4 6 0.10423787521438244 7 0.54785774370021956 8 0.33588776024950223 
		9 0.012016620835895872
		4 6 0.10423787522579983 7 0.54785774368922679 8 0.33588776024908013 
		9 0.01201662083589307
		4 6 0.10423787522388735 7 0.54785774369111051 8 0.33588776024910882 
		9 0.012016620835893293
		4 6 0.10423787561443275 7 0.54785774330873704 8 0.33588776024100647 
		9 0.012016620835823761
		4 6 0.10423787571371719 7 0.54785774382573282 8 0.3358877605584209 
		9 0.012016619902128952
		4 6 0.10423787575506571 7 0.54785774354218819 8 0.33588776080077287 
		9 0.012016619901973178
		4 6 0.10423787601348695 7 0.54785774238073237 8 0.3358877598391613 
		9 0.012016621766619349
		4 6 0.10423787542470746 7 0.54785774272730425 8 0.33588776008418531 
		9 0.012016621763802986
		4 6 0.10423788605556802 7 0.54785773136823646 8 0.33588775987776659 
		9 0.012016622698428936
		4 6 0.10423788606198321 7 0.54785773136045413 8 0.33588775987912789 
		9 0.012016622698434646
		4 6 0.10423788062267436 7 0.54785773754712397 8 0.33588776006438076 
		9 0.012016621765820851
		4 6 0.1042378807229095 7 0.54785773768212798 8 0.33588775982625996 
		9 0.012016621768702626
		4 6 0.034453354344820566 7 0.44178011967311787 8 0.48114720674683809 
		9 0.042619319235223566
		4 6 0.034453354188760082 7 0.4417801197860925 8 0.48114720678494172 
		9 0.042619319240205657
		4 6 0.034453354185701952 7 0.44178011978889015 8 0.48114720678520789 
		9 0.042619319240200043
		4 6 0.034453354178686883 7 0.44178011974087589 8 0.48114720683520673 
		9 0.042619319245230547
		4 6 0.034453354233147548 7 0.44178011971784081 8 0.48114720680872652 
		9 0.0426193192402851
		4 6 0.034453354236275539 7 0.44178011971498266 8 0.48114720680845113 
		9 0.042619319240290693
		4 6 0.034453354285702252 7 0.441780119671278 8 0.48114720680275025 
		9 0.04261931924026946
		4 6 0.034453354332626362 7 0.4417801196006777 8 0.48114720682634121 
		9 0.042619319240354794
		4 6 0.034453354640957279 7 0.4417801220760304 8 0.48114720777766323 
		9 0.042619315505349156
		4 6 0.034453354639361188 7 0.44178012207772699 8 0.48114720777756309 
		9 0.042619315505348747
		4 6 0.03445335117103631 7 0.44178012531678579 8 0.48114720800600064 
		9 0.042619315506177216
		4 6 0.034453351221596679 7 0.44178012527178412 8 0.48114720800046262 
		9 0.042619315506156642
		4 6 0.03445334758620619 7 0.44178013152465906 8 0.48114720538910949 
		9 0.042619315500025283
		4 6 0.034453347585302656 7 0.44178013071297206 8 0.48114720620691465 
		9 0.042619315494810649
		4 6 0.034453349636706675 7 0.44178015253586794 8 0.48114717859209494 
		9 0.04261931923533048
		4 6 0.034453348881806789 7 0.44178014990875658 8 0.4811471745264681 
		9 0.042619326682968479
		4 6 0.03445334866919899 7 0.44178015111923985 8 0.48114717725897943 
		9 0.042619322952581758
		4 6 0.034453352129243983 7 0.44178014595720005 8 0.48114717522653755 
		9 0.042619326687018379
		4 6 0.034453350720470018 7 0.44178012227983821 8 0.48114720776894954 
		9 0.042619319230742199
		4 6 0.034453350828578061 7 0.44178012298394193 8 0.48114720695151397 
		9 0.042619319235966034
		4 6 0.010191623815202637 7 0.29679253533007943 8 0.57018221689313697 
		9 0.12283362396158098
		4 6 0.010191624743824573 7 0.29679253461355859 8 0.57018221668140501 
		9 0.12283362396121178
		4 6 0.010191624743760234 7 0.29679253461396304 8 0.5701822166810655 
		9 0.12283362396121121
		4 6 0.010191624744305062 7 0.29679253461384048 8 0.57018221668063751 
		9 0.12283362396121686
		4 6 0.0101916247446275 7 0.29679253459827398 8 0.57018221669586289 
		9 0.12283362396123561
		4 6 0.010191624744628279 7 0.2967925345982691 8 0.57018221669586699 
		9 0.12283362396123562
		4 6 0.010191623813625702 7 0.2967925352998203 8 0.57018221692492554 
		9 0.12283362396162849
		4 6 0.010191624743535296 7 0.29679253457204147 8 0.570182216715864 
		9 0.12283362396855922
		4 6 0.010191623855158856 7 0.29679253499491148 8 0.57018221718785178 
		9 0.12283362396207788
		4 6 0.010191624004740321 7 0.29679253835531105 8 0.5701822136762974 
		9 0.12283362396365131
		4 6 0.010191624091375593 7 0.29679254087807871 8 0.57018221852304907 
		9 0.12283361650749668
		4 6 0.010191624327584218 7 0.29679254676135147 8 0.5701822198581491 
		9 0.12283360905291534
		4 6 0.010191624173384903 7 0.29679254031838825 8 0.57018221899263111 
		9 0.12283361651559557
		4 6 0.010191623074882658 7 0.29679253908650705 8 0.5701822138746182 
		9 0.12283362396399208
		4 6 0.010191622654513441 7 0.29679253013063839 8 0.57018221579827988 
		9 0.12283363141656832;
	setAttr ".wl[555:641].w"
		4 6 0.010191623704693042 7 0.29679257089471467 8 0.57018217396271742 
		9 0.12283363143787483
		4 6 0.010191624247891962 7 0.29679257575008111 8 0.57018216111441855 
		9 0.12283363888760841
		4 6 0.010191624550229985 7 0.29679256769597245 8 0.57018216886748363 
		9 0.12283363888631395
		4 6 0.010191623539246139 7 0.29679252974076403 8 0.57018221530426094 
		9 0.12283363141572888
		4 6 0.010191623816244735 7 0.29679253532959576 8 0.57018221689985571 
		9 0.12283362395430379
		3 7 0.15524058920768868 8 0.58018162548989116 9 0.2645777853024201
		3 7 0.15524058920766792 8 0.58018162548991181 9 0.26457778530242027
		3 7 0.15524058917353736 8 0.58018162552376196 9 0.26457778530270065
		3 7 0.1552405891953432 8 0.58018162550238184 9 0.26457778530227499
		3 7 0.15524058914839187 8 0.58018162548658103 9 0.26457778536502713
		3 7 0.1552405892087701 8 0.5801816254888178 9 0.26457778530241211
		3 7 0.15524058914557232 8 0.58018162548944852 9 0.26457778536497922
		3 7 0.15524059542117105 8 0.58018164908752157 9 0.26457775549130741
		3 7 0.15524059972205687 8 0.58018164475015854 9 0.26457775552778462
		3 7 0.15524060192356826 8 0.58018164256554317 9 0.26457775551088858
		3 7 0.15524060626852551 8 0.58018163824627356 9 0.26457775548520096
		3 7 0.15524057195529714 8 0.58018167276493693 9 0.26457775527976596
		3 7 0.15524059941667567 8 0.5801816451153563 9 0.26457775546796797
		3 7 0.15524060367155487 8 0.5801816409019066 9 0.26457775542653855
		3 7 0.155240595045498 8 0.58018164952220819 9 0.26457775543229384
		3 7 0.15524059826080022 8 0.58018161635316157 9 0.26457778538603827
		3 7 0.15524059399261778 8 0.58018162072070234 9 0.26457778528667986
		3 7 0.15524059439586971 8 0.58018162025787023 9 0.26457778534626009
		3 7 0.15524059564429146 8 0.58018164894381064 9 0.26457775541189787
		3 7 0.15524058877269412 8 0.5801816259212923 9 0.26457778530601356
		3 7 0.054250813753022986 8 0.46611099716959964 9 0.47963818907737732
		3 7 0.054250813757777773 8 0.46611099716484494 9 0.47963818907737732
		3 7 0.054250813753379402 8 0.46611099716924331 9 0.47963818907737732
		3 7 0.054250813598458958 8 0.46611099732416367 9 0.47963818907737732
		3 7 0.054250813600048353 8 0.46611099732257427 9 0.47963818907737732
		3 7 0.054250813593915273 8 0.46611099732870737 9 0.47963818907737732
		3 7 0.054250813591220005 8 0.46611099733140271 9 0.47963818907737732
		3 7 0.054250813589627786 8 0.46611099733299494 9 0.47963818907737732
		3 7 0.054250816554981811 8 0.46611099436764092 9 0.47963818907737732
		3 7 0.054250813316344272 8 0.46611099760627839 9 0.47963818907737732
		3 7 0.054250819092844557 8 0.46611099182977817 9 0.47963818907737732
		3 7 0.054250816120278239 8 0.46611099480234441 9 0.47963818907737732
		3 7 0.054250816284756039 8 0.46611099463786659 9 0.47963818907737732
		3 7 0.054250816559446489 8 0.46611099436317621 9 0.47963818907737732
		3 7 0.054250816567059455 8 0.46611099435556319 9 0.47963818907737732
		3 7 0.054250813261584228 8 0.46611096785871609 9 0.47963821887969971
		3 7 0.054250821707736922 8 0.46611095941256342 9 0.47963821887969971
		3 7 0.054250821562512715 8 0.46611095955778759 9 0.47963821887969971
		3 7 0.054250816536048109 8 0.46611099438657455 9 0.47963818907737732
		3 7 0.054250813752582346 8 0.46611099717004034 9 0.47963818907737732
		3 7 0.011748347970802934 8 0.26382442882363066 9 0.72442722320556641
		3 7 0.011748347960669097 8 0.2638244288337645 9 0.72442722320556641
		3 7 0.011748347959560177 8 0.26382442883487339 9 0.72442722320556641
		3 7 0.011748347959559775 8 0.26382442883487384 9 0.72442722320556641
		3 7 0.011748347959171962 8 0.26382442883526164 9 0.72442722320556641
		3 7 0.011748347959171962 8 0.26382442883526164 9 0.72442722320556641
		3 7 0.011748347959464804 8 0.26382442883496882 9 0.72442722320556641
		3 7 0.011748347959364584 8 0.26382442883506901 9 0.72442722320556641
		3 7 0.011748347948784049 8 0.26382442884564955 9 0.72442722320556641
		3 7 0.011748349178452388 8 0.26382442761598118 9 0.72442722320556641
		3 7 0.011748349177967616 8 0.26382442761646596 9 0.72442722320556641
		3 7 0.011748349177818121 8 0.26382442761661545 9 0.72442722320556641
		3 7 0.011748349178460005 8 0.26382442761597358 9 0.72442722320556641
		3 7 0.011748347960034352 8 0.26382442883439922 9 0.72442722320556641
		3 7 0.011748347959266192 8 0.26382442883516738 9 0.72442722320556641
		3 7 0.011748348067092133 8 0.26382436912269669 9 0.72442728281021118
		3 7 0.011748347028996207 8 0.26382437016079263 9 0.72442728281021118
		3 7 0.011748347041734702 8 0.2638243701480541 9 0.72442728281021118
		3 7 0.011748349379447335 8 0.26382442741498624 9 0.72442722320556641
		3 7 0.011748347971522929 8 0.26382442882291068 9 0.72442722320556641
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 0 1
		1 9 1;
	setAttr -s 10 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.2222218507871823 0 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.444442679836424 0 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6666656315560138 0 0 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.88888671382897044 0 0 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.88888957495879595 0 0 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.6666675395407036 0 0 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4444433948010191 0 0 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.2222213867076901 0 0 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.9840160141010577 0 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".ma";
	setAttr -s 10 ".dpf[0:9]"  4 4 4 4 4 4 4 4 4 4;
	setAttr -s 10 ".lw";
	setAttr -s 10 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 10 ".ifcl";
	setAttr -s 10 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "E692C4E6-4495-B53B-4758-D2943183B328";
	setAttr -s 22 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.2222218507871823 0 0 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.444442679836424 0 0 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.6666656315560138 0 0 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.88888671382897044 0 0 1;
	setAttr ".wm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.88888957495879595 0 0 1;
	setAttr ".wm[12]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6666675395407036 0 0 1;
	setAttr ".wm[14]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4444433948010191 0 0 1;
	setAttr ".wm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.2222213867076901 0 0 1;
	setAttr ".wm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[19]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[20]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.9840160141010577 0 0 1;
	setAttr -s 22 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 22 ".m";
	setAttr -s 22 ".p";
	setAttr -s 22 ".g[0:21]" yes no yes no yes no yes no yes no yes no 
		yes no yes no yes no yes yes yes no;
	setAttr ".bp" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3CB3F993-4EB2-3D84-5213-48BD985AE8D9";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "transform_parentConstraint1.ctx" "transform.tx";
connectAttr "transform_parentConstraint1.cty" "transform.ty";
connectAttr "transform_parentConstraint1.ctz" "transform.tz";
connectAttr "transform_parentConstraint1.crx" "transform.rx";
connectAttr "transform_parentConstraint1.cry" "transform.ry";
connectAttr "transform_parentConstraint1.crz" "transform.rz";
connectAttr "main_control.s" "transform.s";
connectAttr "transform.ro" "transform_parentConstraint1.cro";
connectAttr "transform.pim" "transform_parentConstraint1.cpim";
connectAttr "transform.rp" "transform_parentConstraint1.crp";
connectAttr "transform.rpt" "transform_parentConstraint1.crt";
connectAttr "main_control.t" "transform_parentConstraint1.tg[0].tt";
connectAttr "main_control.rp" "transform_parentConstraint1.tg[0].trp";
connectAttr "main_control.rpt" "transform_parentConstraint1.tg[0].trt";
connectAttr "main_control.r" "transform_parentConstraint1.tg[0].tr";
connectAttr "main_control.ro" "transform_parentConstraint1.tg[0].tro";
connectAttr "main_control.s" "transform_parentConstraint1.tg[0].ts";
connectAttr "main_control.pm" "transform_parentConstraint1.tg[0].tpm";
connectAttr "transform_parentConstraint1.w0" "transform_parentConstraint1.tg[0].tw"
		;
connectAttr "tentacle.outExec" "rigppTransform1.inExec";
connectAttr "tentacle.outExec" "rigppTransform2.inExec";
connectAttr "tentacle.outExec" "rigppTransform3.inExec";
connectAttr "tentacle.outExec" "rigppTransform4.inExec";
connectAttr "tentacle.outExec" "rigppTransform5.inExec";
connectAttr "tentacle.outExec" "rigppTransform6.inExec";
connectAttr "tentacle.outExec" "rigppTransform7.inExec";
connectAttr "tentacle.outExec" "rigppTransform8.inExec";
connectAttr "tentacle.outExec" "rigppTransform9.inExec";
connectAttr "tentacle.outExec" "rigppTransform10.inExec";
connectAttr "tentacle_5_control.msg" "tentacle.hierarchy[0].transformLink";
connectAttr "tentacle_5_control.m" "tentacle.hierarchy[0].transformMatrix";
connectAttr "tentacle_4_control.msg" "tentacle.hierarchy[1].transformLink";
connectAttr "tentacle_4_control.m" "tentacle.hierarchy[1].transformMatrix";
connectAttr "tentacle_3_control.msg" "tentacle.hierarchy[2].transformLink";
connectAttr "tentacle_3_control.m" "tentacle.hierarchy[2].transformMatrix";
connectAttr "tentacle_2_control.msg" "tentacle.hierarchy[3].transformLink";
connectAttr "tentacle_2_control.m" "tentacle.hierarchy[3].transformMatrix";
connectAttr "tentacle_1_control.msg" "tentacle.hierarchy[4].transformLink";
connectAttr "tentacle_1_control.m" "tentacle.hierarchy[4].transformMatrix";
connectAttr "tentacle_1_control_group.msg" "tentacle.hierarchy[5].transformLink"
		;
connectAttr "tentacle_2_control_group.msg" "tentacle.hierarchy[6].transformLink"
		;
connectAttr "tentacle_3_control_group.msg" "tentacle.hierarchy[7].transformLink"
		;
connectAttr "tentacle_4_control_group.msg" "tentacle.hierarchy[8].transformLink"
		;
connectAttr "tentacle_5_control_group.msg" "tentacle.hierarchy[9].transformLink"
		;
connectAttr "tentacle_1_control.autoTangent" "tentacle.autoTangents[0]";
connectAttr "tentacle_2_control.autoTangent" "tentacle.autoTangents[1]";
connectAttr "tentacle_3_control.autoTangent" "tentacle.autoTangents[2]";
connectAttr "tentacle_4_control.autoTangent" "tentacle.autoTangents[3]";
connectAttr "tentacle_5_control.autoTangent" "tentacle.autoTangents[4]";
connectAttr "tentacle_1_control.pin" "tentacle.pins[0]";
connectAttr "tentacle_2_control.pin" "tentacle.pins[1]";
connectAttr "tentacle_3_control.pin" "tentacle.pins[2]";
connectAttr "tentacle_4_control.pin" "tentacle.pins[3]";
connectAttr "tentacle_5_control.pin" "tentacle.pins[4]";
connectAttr "tentacle_1_control.twist" "tentacle.twists[0]";
connectAttr "tentacle_2_control.twist" "tentacle.twists[1]";
connectAttr "tentacle_3_control.twist" "tentacle.twists[2]";
connectAttr "tentacle_4_control.twist" "tentacle.twists[3]";
connectAttr "tentacle_5_control.twist" "tentacle.twists[4]";
connectAttr "tentacle_1_control.wave" "tentacle.wave";
connectAttr "tentacle_1_control.waveAmp" "tentacle.waveAmp";
connectAttr "tentacle_1_control.waveFreq" "tentacle.waveFreq";
connectAttr "tentacle_1_control.squash" "tentacle.squash";
connectAttr "skinCluster1.og[0]" "meshShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "meshShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "meshShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint5.wm" "skinCluster1.ma[4]";
connectAttr "joint6.wm" "skinCluster1.ma[5]";
connectAttr "joint7.wm" "skinCluster1.ma[6]";
connectAttr "joint8.wm" "skinCluster1.ma[7]";
connectAttr "joint9.wm" "skinCluster1.ma[8]";
connectAttr "joint10.wm" "skinCluster1.ma[9]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "joint6.liw" "skinCluster1.lw[5]";
connectAttr "joint7.liw" "skinCluster1.lw[6]";
connectAttr "joint8.liw" "skinCluster1.lw[7]";
connectAttr "joint9.liw" "skinCluster1.lw[8]";
connectAttr "joint10.liw" "skinCluster1.lw[9]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint10.obcc" "skinCluster1.ifcl[9]";
connectAttr "joint10.msg" "skinCluster1.ptt";
connectAttr "rigppTransform1.msg" "bindPose1.m[0]";
connectAttr "joint1.msg" "bindPose1.m[1]";
connectAttr "rigppTransform2.msg" "bindPose1.m[2]";
connectAttr "joint2.msg" "bindPose1.m[3]";
connectAttr "rigppTransform3.msg" "bindPose1.m[4]";
connectAttr "joint3.msg" "bindPose1.m[5]";
connectAttr "rigppTransform4.msg" "bindPose1.m[6]";
connectAttr "joint4.msg" "bindPose1.m[7]";
connectAttr "rigppTransform5.msg" "bindPose1.m[8]";
connectAttr "joint5.msg" "bindPose1.m[9]";
connectAttr "rigppTransform6.msg" "bindPose1.m[10]";
connectAttr "joint6.msg" "bindPose1.m[11]";
connectAttr "rigppTransform7.msg" "bindPose1.m[12]";
connectAttr "joint7.msg" "bindPose1.m[13]";
connectAttr "rigppTransform8.msg" "bindPose1.m[14]";
connectAttr "joint8.msg" "bindPose1.m[15]";
connectAttr "rigppTransform9.msg" "bindPose1.m[16]";
connectAttr "joint9.msg" "bindPose1.m[17]";
connectAttr "rig.msg" "bindPose1.m[18]";
connectAttr "transforms.msg" "bindPose1.m[19]";
connectAttr "rigppTransform10.msg" "bindPose1.m[20]";
connectAttr "joint10.msg" "bindPose1.m[21]";
connectAttr "bindPose1.m[19]" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.w" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.w" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.w" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.w" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.w" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.w" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.w" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.w" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.w" "bindPose1.p[18]";
connectAttr "rig.msg" "bindPose1.p[19]";
connectAttr "transforms.msg" "bindPose1.p[20]";
connectAttr "rigppTransform10.msg" "bindPose1.p[21]";
connectAttr "joint1.bps" "bindPose1.wm[1]";
connectAttr "joint2.bps" "bindPose1.wm[3]";
connectAttr "joint3.bps" "bindPose1.wm[5]";
connectAttr "joint4.bps" "bindPose1.wm[7]";
connectAttr "joint5.bps" "bindPose1.wm[9]";
connectAttr "joint6.bps" "bindPose1.wm[11]";
connectAttr "joint7.bps" "bindPose1.wm[13]";
connectAttr "joint8.bps" "bindPose1.wm[15]";
connectAttr "joint9.bps" "bindPose1.wm[17]";
connectAttr "joint10.bps" "bindPose1.wm[21]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "meshShape.iog" ":initialShadingGroup.dsm" -na;
// End of rigpp_tentacle.ma
