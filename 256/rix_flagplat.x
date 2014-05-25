xof 0302txt 0032
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Header {
 1;
 0;
 1;
}

Frame frm-fuselg6 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh fuselg6 {
 262;
 -0.236632;-2.997678;0.233184;,
 -0.236632;-2.997678;0.233184;,
 -0.236632;-2.997678;0.233184;,
 -0.236632;-2.997678;0.233184;,
 -0.000000;-3.931937;-0.000000;,
 -0.000000;-3.931937;-0.000000;,
 -0.000000;-3.931937;-0.000000;,
 -0.000000;-3.931937;-0.000000;,
 -0.000000;-3.931937;-0.000000;,
 -0.000000;-3.931937;-0.000000;,
 -0.000000;-3.931937;-0.000000;,
 -1.496238;-0.237158;1.496238;,
 -1.496238;-0.237158;1.496238;,
 -1.496238;-0.237158;1.496238;,
 -1.496238;-0.237158;1.496238;,
 0.001575;-1.192114;0.364724;,
 0.001575;-1.192114;0.364724;,
 0.001575;-1.192114;0.364724;,
 0.001575;-1.192114;0.364724;,
 0.001232;-1.855899;0.285225;,
 0.001232;-1.855899;0.285225;,
 0.001232;-1.855899;0.285225;,
 0.001232;-1.855899;0.285225;,
 0.001232;-1.855899;0.285225;,
 0.001232;-1.855899;0.285225;,
 -0.361050;-1.192114;-0.001573;,
 -0.361050;-1.192114;-0.001573;,
 -0.361050;-1.192114;-0.001573;,
 -0.000000;-2.905646;0.189082;,
 -0.000000;-2.905646;0.189082;,
 -0.000000;-2.905646;0.189082;,
 -0.000000;-2.905646;0.189082;,
 -0.000000;-2.905646;0.189082;,
 -0.000000;-2.905646;0.189082;,
 -0.000000;-3.057842;0.134044;,
 -0.000000;-3.057842;0.134044;,
 -0.000000;-3.057842;0.134044;,
 -0.000000;-3.057842;0.134044;,
 -0.234224;-2.905646;-0.234564;,
 -0.234224;-2.905646;-0.234564;,
 -0.234224;-2.905646;-0.234564;,
 -0.234224;-2.905646;-0.234564;,
 -0.133850;-3.057842;-0.000000;,
 -0.133850;-3.057842;-0.000000;,
 -0.133850;-3.057842;-0.000000;,
 -0.133850;-3.057842;-0.000000;,
 -1.496238;-0.237158;-1.496238;,
 -1.496238;-0.237158;-1.496238;,
 -1.496238;-0.237158;-1.496238;,
 -1.496238;-0.237158;-1.496238;,
 0.159834;-2.582228;0.162531;,
 0.159834;-2.582228;0.162531;,
 0.159834;-2.582228;0.162531;,
 0.159834;-2.582228;0.162531;,
 0.234224;-2.905646;0.234563;,
 0.234224;-2.905646;0.234563;,
 0.234224;-2.905646;0.234563;,
 0.234224;-2.905646;0.234563;,
 0.232843;-2.997678;0.233184;,
 0.232843;-2.997678;0.233184;,
 0.232843;-2.997678;0.233184;,
 0.232843;-2.997678;0.233184;,
 1.496238;-0.237158;1.496238;,
 1.496238;-0.237158;1.496238;,
 1.496238;-0.237158;1.496238;,
 1.496238;-0.237158;1.496238;,
 0.361050;-1.192114;0.001573;,
 0.361050;-1.192114;0.001573;,
 0.361050;-1.192114;0.001573;,
 0.361050;-1.192114;0.001573;,
 0.282352;-1.855899;0.001230;,
 0.282352;-1.855899;0.001230;,
 0.282352;-1.855899;0.001230;,
 0.282352;-1.855899;0.001230;,
 0.282352;-1.855899;0.001230;,
 0.282352;-1.855899;0.001230;,
 -0.282352;-1.855899;-0.001230;,
 -0.282352;-1.855899;-0.001230;,
 -0.282352;-1.855899;-0.001230;,
 -0.282352;-1.855899;-0.001230;,
 -0.282352;-1.855899;-0.001230;,
 -0.282352;-1.855899;-0.001230;,
 -0.282352;-1.855899;-0.001230;,
 0.188808;-2.905646;0.000000;,
 0.188808;-2.905646;0.000000;,
 0.188808;-2.905646;0.000000;,
 0.188808;-2.905646;0.000000;,
 0.188808;-2.905646;0.000000;,
 0.188808;-2.905646;0.000000;,
 0.133850;-3.057842;0.000000;,
 0.133850;-3.057842;0.000000;,
 0.133850;-3.057842;0.000000;,
 0.133850;-3.057842;0.000000;,
 -0.234224;-2.905646;0.234564;,
 -0.234224;-2.905646;0.234564;,
 -0.234224;-2.905646;0.234564;,
 -0.234224;-2.905646;0.234564;,
 -0.188809;-2.905646;-0.000000;,
 -0.188809;-2.905646;-0.000000;,
 -0.188809;-2.905646;-0.000000;,
 -0.188809;-2.905646;-0.000000;,
 -0.188809;-2.905646;-0.000000;,
 -0.188809;-2.905646;-0.000000;,
 -0.159834;-2.582228;-0.162531;,
 -0.159834;-2.582228;-0.162531;,
 -0.159834;-2.582228;-0.162531;,
 -0.159834;-2.582228;-0.162531;,
 0.157364;-2.582228;-0.160066;,
 0.157364;-2.582228;-0.160066;,
 0.157364;-2.582228;-0.160066;,
 0.157364;-2.582228;-0.160066;,
 0.234224;-2.905646;-0.234564;,
 0.234224;-2.905646;-0.234564;,
 0.234224;-2.905646;-0.234564;,
 0.234224;-2.905646;-0.234564;,
 0.232843;-2.997678;-0.236972;,
 0.232843;-2.997678;-0.236972;,
 0.232843;-2.997678;-0.236972;,
 0.232843;-2.997678;-0.236972;,
 1.496238;-0.237158;-1.496238;,
 1.496238;-0.237158;-1.496238;,
 1.496238;-0.237158;-1.496238;,
 1.496238;-0.237158;-1.496238;,
 -0.001575;-1.192114;-0.364724;,
 -0.001575;-1.192114;-0.364724;,
 -0.001575;-1.192114;-0.364724;,
 -0.001575;-1.192114;-0.364724;,
 -0.001575;-1.192114;-0.364724;,
 -0.001232;-1.855899;-0.285225;,
 -0.001232;-1.855899;-0.285225;,
 -0.001232;-1.855899;-0.285225;,
 -0.001232;-1.855899;-0.285225;,
 -0.001232;-1.855899;-0.285225;,
 -0.236632;-2.997678;-0.236972;,
 -0.236632;-2.997678;-0.236972;,
 -0.236632;-2.997678;-0.236972;,
 -0.236632;-2.997678;-0.236972;,
 -0.000000;-2.905646;-0.189082;,
 -0.000000;-2.905646;-0.189082;,
 -0.000000;-2.905646;-0.189082;,
 -0.000000;-2.905646;-0.189082;,
 -0.000000;-2.905646;-0.189082;,
 -0.000000;-2.905646;-0.189082;,
 -0.000000;-3.057842;-0.134044;,
 -0.000000;-3.057842;-0.134044;,
 -0.000000;-3.057842;-0.134044;,
 -0.000000;-3.057842;-0.134044;,
 -0.157365;-2.582228;0.160066;,
 -0.157365;-2.582228;0.160066;,
 -0.157365;-2.582228;0.160066;,
 -0.157365;-2.582228;0.160066;,
 0.004504;-0.573975;0.801871;,
 0.004504;-0.573975;0.801871;,
 0.004504;-0.573975;0.801871;,
 0.004504;-0.573975;0.801871;,
 0.004504;-0.573975;0.801871;,
 -0.800735;-0.573975;-0.004503;,
 -0.800735;-0.573975;-0.004503;,
 -0.800735;-0.573975;-0.004503;,
 -0.800735;-0.573975;-0.004503;,
 -0.800735;-0.573975;-0.004503;,
 0.800735;-0.573975;0.004503;,
 0.800735;-0.573975;0.004503;,
 0.800735;-0.573975;0.004503;,
 -0.004504;-0.573975;-0.801871;,
 -0.004504;-0.573975;-0.801871;,
 -0.004504;-0.573975;-0.801871;,
 -0.004504;-0.573975;-0.801871;,
 -0.004504;-0.573975;-0.801871;,
 -2.116000;-0.237158;0.000000;,
 -2.116000;-0.237158;0.000000;,
 -2.116000;-0.237158;0.000000;,
 0.000000;-0.237158;2.116000;,
 0.000000;-0.237158;2.116000;,
 0.000000;-0.237158;2.116000;,
 0.000000;-0.237158;-2.116000;,
 0.000000;-0.237158;-2.116000;,
 0.000000;-0.237158;-2.116000;,
 2.116000;-0.237158;0.000000;,
 2.116000;-0.237158;0.000000;,
 2.116000;-0.237158;0.000000;,
 0.000000;-0.104894;0.000000;,
 0.000000;-0.104894;0.000000;,
 0.000000;-0.104894;0.000000;,
 0.000000;-0.104894;0.000000;,
 0.000000;-0.104894;0.000000;,
 0.000000;-0.104894;0.000000;,
 0.000000;-0.104894;0.000000;,
 2.116000;-0.104894;0.000000;,
 2.116000;-0.104894;0.000000;,
 2.116000;-0.104894;0.000000;,
 1.496238;-0.104894;-1.496238;,
 1.496238;-0.104894;-1.496238;,
 1.496238;-0.104894;-1.496238;,
 0.000000;-0.104894;-2.116000;,
 0.000000;-0.104894;-2.116000;,
 0.000000;-0.104894;-2.116000;,
 -1.496238;-0.104894;-1.496238;,
 -1.496238;-0.104894;-1.496238;,
 -1.496238;-0.104894;-1.496238;,
 -2.116000;-0.104894;0.000000;,
 -2.116000;-0.104894;0.000000;,
 -2.116000;-0.104894;0.000000;,
 -1.496238;-0.104894;1.496238;,
 -1.496238;-0.104894;1.496238;,
 -1.496238;-0.104894;1.496238;,
 0.000000;-0.104894;2.116000;,
 0.000000;-0.104894;2.116000;,
 0.000000;-0.104894;2.116000;,
 1.496238;-0.104894;1.496238;,
 1.496238;-0.104894;1.496238;,
 1.496238;-0.104894;1.496238;,
 1.496238;-0.104894;1.496238;,
 0.000000;-0.104894;2.116000;,
 -1.496238;-0.104894;1.496238;,
 -2.116000;-0.104894;0.000000;,
 -1.496238;-0.104894;-1.496238;,
 0.000000;-0.104894;-2.116000;,
 1.496238;-0.104894;-1.496238;,
 2.116000;-0.104894;0.000000;,
 0.000000;-0.104894;0.000000;,
 2.116000;-0.237158;0.000000;,
 0.000000;-0.237158;-2.116000;,
 0.000000;-0.237158;2.116000;,
 -2.116000;-0.237158;0.000000;,
 -0.004504;-0.573975;-0.801871;,
 0.800735;-0.573975;0.004503;,
 -0.800735;-0.573975;-0.004503;,
 0.004504;-0.573975;0.801871;,
 -0.157365;-2.582228;0.160066;,
 -0.000000;-3.057842;-0.134044;,
 -0.000000;-2.905646;-0.189082;,
 -0.236632;-2.997678;-0.236972;,
 -0.001232;-1.855899;-0.285225;,
 -0.001575;-1.192114;-0.364724;,
 1.496238;-0.237158;-1.496238;,
 0.232843;-2.997678;-0.236972;,
 0.234224;-2.905646;-0.234564;,
 0.157364;-2.582228;-0.160066;,
 -0.159834;-2.582228;-0.162531;,
 -0.188809;-2.905646;-0.000000;,
 -0.234224;-2.905646;0.234564;,
 0.133850;-3.057842;0.000000;,
 0.188808;-2.905646;0.000000;,
 -0.282352;-1.855899;-0.001230;,
 0.282352;-1.855899;0.001230;,
 0.361050;-1.192114;0.001573;,
 1.496238;-0.237158;1.496238;,
 0.232843;-2.997678;0.233184;,
 0.234224;-2.905646;0.234563;,
 0.159834;-2.582228;0.162531;,
 -1.496238;-0.237158;-1.496238;,
 -0.133850;-3.057842;-0.000000;,
 -0.234224;-2.905646;-0.234564;,
 -0.000000;-3.057842;0.134044;,
 -0.000000;-2.905646;0.189082;,
 -0.361050;-1.192114;-0.001573;,
 0.001232;-1.855899;0.285225;,
 0.001575;-1.192114;0.364724;,
 -1.496238;-0.237158;1.496238;,
 -0.000000;-3.931937;-0.000000;,
 -0.236632;-2.997678;0.233184;;

 84;
 3;37,33,96;,
 3;3,36,95;,
 4;155,18,69,163;,
 3;24,75,68;,
 3;74,23,53;,
 3;32,57,52;,
 3;61,56,31;,
 3;35,60,30;,
 3;10,59,34;,
 3;132,73,110;,
 3;88,114,109;,
 3;92,87,55;,
 3;58,91,54;,
 3;9,90,248;,
 4;162,67,127,168;,
 3;118,113,86;,
 3;89,117,85;,
 3;8,116,242;,
 3;82,22,17;,
 3;81,131,106;,
 3;142,41,105;,
 3;146,141,112;,
 3;115,145,111;,
 3;7,144,236;,
 3;171,49,160;,
 4;167,126,27,159;,
 3;136,40,140;,
 3;143,135,139;,
 3;6,134,230;,
 3;5,254,2;,
 3;102,94,150;,
 3;45,101,39;,
 3;133,44,38;,
 3;4,43,232;,
 3;260,1,42;,
 3;0,93,100;,
 3;252,261,99;,
 3;80,26,125;,
 3;72,130,124;,
 3;149,21,79;,
 3;29,51,20;,
 3;50,249,84;,
 3;83,108,71;,
 3;148,241,28;,
 3;104,253,98;,
 3;97,147,78;,
 3;107,237,138;,
 3;137,103,129;,
 3;123,66,70;,
 3;246,16,19;,
 3;15,25,77;,
 3;234,128,76;,
 3;244,239,240;,
 3;233,238,231;,
 3;245,250,243;,
 3;257,229,255;,
 3;177,122,166;,
 4;158,256,258,154;,
 3;174,14,153;,
 3;180,65,161;,
 3;165,157,48;,
 3;156,152,13;,
 3;226,164,121;,
 3;151,226,64;,
 3;202,187,199;,
 3;190,186,211;,
 4;196,176,47,198;,
 4;208,173,63,210;,
 4;205,12,172,207;,
 3;193,185,189;,
 3;195,184,192;,
 4;201,170,11,204;,
 4;209,62,179,188;,
 4;219,178,120,191;,
 4;218,119,175,194;,
 3;197,183,217;,
 4;216,46,169,200;,
 3;203,182,215;,
 3;206,181,214;,
 3;212,220,213;,
 3;227,259,224;,
 3;225,251,222;,
 3;226,235,221;,
 3;228,247,223;;

 MeshMaterialList {
  6;
  84;
  0,
  0,
  1,
  1,
  1,
  0,
  0,
  0,
  0,
  2,
  3,
  3,
  3,
  3,
  2,
  3,
  3,
  3,
  2,
  1,
  0,
  0,
  0,
  0,
  4,
  1,
  0,
  0,
  0,
  0,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  1,
  2,
  2,
  1,
  3,
  2,
  0,
  3,
  2,
  0,
  1,
  2,
  1,
  2,
  1,
  1,
  2,
  1,
  2,
  4,
  2,
  4,
  4,
  4,
  4,
  4,
  4,
  5,
  5,
  1,
  1,
  2,
  5,
  5,
  2,
  1,
  2,
  2,
  5,
  1,
  5,
  5,
  5,
  4,
  4,
  4,
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ss94.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ss94.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ss94.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ss94.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ss94.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ss94.ppm";
 }
 }
}
 MeshNormals {
  262;
  -0.877827;-0.253878;0.406160;,
  -0.877827;-0.253878;0.406160;,
  -0.877827;-0.253878;0.406160;,
  -0.877827;-0.253878;0.406160;,
  -0.000231;-1.000000;-0.000176;,
  -0.000231;-1.000000;-0.000176;,
  -0.000231;-1.000000;-0.000176;,
  -0.000231;-1.000000;-0.000176;,
  -0.000231;-1.000000;-0.000176;,
  -0.000231;-1.000000;-0.000176;,
  -0.000231;-1.000000;-0.000176;,
  -0.466113;-0.751997;0.466088;,
  -0.466113;-0.751997;0.466088;,
  -0.466113;-0.751997;0.466088;,
  -0.466113;-0.751997;0.466088;,
  -0.194736;-0.316809;0.928283;,
  -0.194736;-0.316809;0.928283;,
  -0.194736;-0.316809;0.928283;,
  -0.194736;-0.316809;0.928283;,
  0.126448;-0.065010;0.989841;,
  0.126448;-0.065010;0.989841;,
  0.126448;-0.065010;0.989841;,
  0.126448;-0.065010;0.989841;,
  0.126448;-0.065010;0.989841;,
  0.126448;-0.065010;0.989841;,
  -0.929515;-0.368784;0.000413;,
  -0.929515;-0.368784;0.000413;,
  -0.929515;-0.368784;0.000413;,
  -0.049621;-0.073957;0.996026;,
  -0.049621;-0.073957;0.996026;,
  -0.049621;-0.073957;0.996026;,
  -0.049621;-0.073957;0.996026;,
  -0.049621;-0.073957;0.996026;,
  -0.049621;-0.073957;0.996026;,
  0.054746;-0.205489;0.977127;,
  0.054746;-0.205489;0.977127;,
  0.054746;-0.205489;0.977127;,
  0.054746;-0.205489;0.977127;,
  -0.907069;0.017728;-0.420609;,
  -0.907069;0.017728;-0.420609;,
  -0.907069;0.017728;-0.420609;,
  -0.907069;0.017728;-0.420609;,
  -0.978595;-0.197895;0.056480;,
  -0.978595;-0.197895;0.056480;,
  -0.978595;-0.197895;0.056480;,
  -0.978595;-0.197895;0.056480;,
  -0.466383;-0.751663;-0.466357;,
  -0.466383;-0.751663;-0.466357;,
  -0.466383;-0.751663;-0.466357;,
  -0.466383;-0.751663;-0.466357;,
  0.706269;0.050928;0.706110;,
  0.706269;0.050928;0.706110;,
  0.706269;0.050928;0.706110;,
  0.706269;0.050928;0.706110;,
  0.905150;-0.001904;0.425087;,
  0.905150;-0.001904;0.425087;,
  0.905150;-0.001904;0.425087;,
  0.905150;-0.001904;0.425087;,
  0.414642;-0.264115;0.870813;,
  0.414642;-0.264115;0.870813;,
  0.414642;-0.264115;0.870813;,
  0.414642;-0.264115;0.870813;,
  0.466383;-0.751663;0.466357;,
  0.466383;-0.751663;0.466357;,
  0.466383;-0.751663;0.466357;,
  0.466383;-0.751663;0.466357;,
  0.929690;-0.314979;0.190960;,
  0.929690;-0.314979;0.190960;,
  0.929690;-0.314979;0.190960;,
  0.929690;-0.314979;0.190960;,
  0.989592;-0.063565;-0.129103;,
  0.989592;-0.063565;-0.129103;,
  0.989592;-0.063565;-0.129103;,
  0.989592;-0.063565;-0.129103;,
  0.989592;-0.063565;-0.129103;,
  0.989592;-0.063565;-0.129103;,
  -0.997516;-0.070415;0.002054;,
  -0.997516;-0.070415;0.002054;,
  -0.997516;-0.070415;0.002054;,
  -0.997516;-0.070415;0.002054;,
  -0.997516;-0.070415;0.002054;,
  -0.997516;-0.070415;0.002054;,
  -0.997516;-0.070415;0.002054;,
  0.996431;-0.071941;0.044157;,
  0.996431;-0.071941;0.044157;,
  0.996431;-0.071941;0.044157;,
  0.996431;-0.071941;0.044157;,
  0.996431;-0.071941;0.044157;,
  0.996431;-0.071941;0.044157;,
  0.977551;-0.202105;-0.059554;,
  0.977551;-0.202105;-0.059554;,
  0.977551;-0.202105;-0.059554;,
  0.977551;-0.202105;-0.059554;,
  -0.425473;0.010775;0.904907;,
  -0.425473;0.010775;0.904907;,
  -0.425473;0.010775;0.904907;,
  -0.425473;0.010775;0.904907;,
  -0.996824;-0.064347;-0.046916;,
  -0.996824;-0.064347;-0.046916;,
  -0.996824;-0.064347;-0.046916;,
  -0.996824;-0.064347;-0.046916;,
  -0.996824;-0.064347;-0.046916;,
  -0.996824;-0.064347;-0.046916;,
  -0.706269;0.050928;-0.706110;,
  -0.706269;0.050928;-0.706110;,
  -0.706269;0.050928;-0.706110;,
  -0.706269;0.050928;-0.706110;,
  0.706179;0.053977;-0.705973;,
  0.706179;0.053977;-0.705973;,
  0.706179;0.053977;-0.705973;,
  0.706179;0.053977;-0.705973;,
  0.418129;0.013375;-0.908289;,
  0.418129;0.013375;-0.908289;,
  0.418129;0.013375;-0.908289;,
  0.418129;0.013375;-0.908289;,
  0.870271;-0.255405;-0.421184;,
  0.870271;-0.255405;-0.421184;,
  0.870271;-0.255405;-0.421184;,
  0.870271;-0.255405;-0.421184;,
  0.466113;-0.751997;-0.466088;,
  0.466113;-0.751997;-0.466088;,
  0.466113;-0.751997;-0.466088;,
  0.466113;-0.751997;-0.466088;,
  0.000210;-0.290097;-0.956997;,
  0.000210;-0.290097;-0.956997;,
  0.000210;-0.290097;-0.956997;,
  0.000210;-0.290097;-0.956997;,
  0.000210;-0.290097;-0.956997;,
  0.002775;-0.057414;-0.998347;,
  0.002775;-0.057414;-0.998347;,
  0.002775;-0.057414;-0.998347;,
  0.002775;-0.057414;-0.998347;,
  0.002775;-0.057414;-0.998347;,
  -0.411412;-0.245379;-0.877798;,
  -0.411412;-0.245379;-0.877798;,
  -0.411412;-0.245379;-0.877798;,
  -0.411412;-0.245379;-0.877798;,
  0.050993;-0.068885;-0.996321;,
  0.050993;-0.068885;-0.996321;,
  0.050993;-0.068885;-0.996321;,
  0.050993;-0.068885;-0.996321;,
  0.050993;-0.068885;-0.996321;,
  0.050993;-0.068885;-0.996321;,
  -0.061761;-0.194942;-0.978868;,
  -0.061761;-0.194942;-0.978868;,
  -0.061761;-0.194942;-0.978868;,
  -0.061761;-0.194942;-0.978868;,
  -0.706179;0.053977;0.705973;,
  -0.706179;0.053977;0.705973;,
  -0.706179;0.053977;0.705973;,
  -0.706179;0.053977;0.705973;,
  -0.000156;-0.919176;0.393848;,
  -0.000156;-0.919176;0.393848;,
  -0.000156;-0.919176;0.393848;,
  -0.000156;-0.919176;0.393848;,
  -0.000156;-0.919176;0.393848;,
  -0.394691;-0.918814;0.000161;,
  -0.394691;-0.918814;0.000161;,
  -0.394691;-0.918814;0.000161;,
  -0.394691;-0.918814;0.000161;,
  -0.394691;-0.918814;0.000161;,
  0.394691;-0.918814;-0.000161;,
  0.394691;-0.918814;-0.000161;,
  0.394691;-0.918814;-0.000161;,
  0.000156;-0.919176;-0.393848;,
  0.000156;-0.919176;-0.393848;,
  0.000156;-0.919176;-0.393848;,
  0.000156;-0.919176;-0.393848;,
  0.000156;-0.919176;-0.393848;,
  -0.770768;-0.637116;-0.000089;,
  -0.770768;-0.637116;-0.000089;,
  -0.770768;-0.637116;-0.000089;,
  0.000089;-0.637031;0.770838;,
  0.000089;-0.637031;0.770838;,
  0.000089;-0.637031;0.770838;,
  -0.000089;-0.637031;-0.770838;,
  -0.000089;-0.637031;-0.770838;,
  -0.000089;-0.637031;-0.770838;,
  0.770768;-0.637116;0.000089;,
  0.770768;-0.637116;0.000089;,
  0.770768;-0.637116;0.000089;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.678598;0.734510;-0.000000;,
  0.678598;0.734510;-0.000000;,
  0.678598;0.734510;-0.000000;,
  0.479841;0.734510;-0.479841;,
  0.479841;0.734510;-0.479841;,
  0.479841;0.734510;-0.479841;,
  0.000000;0.734510;-0.678598;,
  0.000000;0.734510;-0.678598;,
  0.000000;0.734510;-0.678598;,
  -0.479841;0.734510;-0.479841;,
  -0.479841;0.734510;-0.479841;,
  -0.479841;0.734510;-0.479841;,
  -0.678598;0.734510;0.000000;,
  -0.678598;0.734510;0.000000;,
  -0.678598;0.734510;0.000000;,
  -0.479842;0.734510;0.479841;,
  -0.479842;0.734510;0.479841;,
  -0.479842;0.734510;0.479841;,
  -0.000000;0.734510;0.678598;,
  -0.000000;0.734510;0.678598;,
  -0.000000;0.734510;0.678598;,
  0.479841;0.734510;0.479841;,
  0.479841;0.734510;0.479841;,
  0.479841;0.734510;0.479841;,
  0.479841;0.734510;0.479841;,
  -0.000000;0.734510;0.678598;,
  -0.479842;0.734510;0.479841;,
  -0.678598;0.734510;0.000000;,
  -0.479841;0.734510;-0.479841;,
  0.000000;0.734510;-0.678598;,
  0.479841;0.734510;-0.479841;,
  0.678598;0.734510;-0.000000;,
  0.000000;1.000000;0.000000;,
  0.770768;-0.637116;0.000089;,
  -0.000089;-0.637031;-0.770838;,
  0.000089;-0.637031;0.770838;,
  -0.770768;-0.637116;-0.000089;,
  0.000156;-0.919176;-0.393848;,
  0.394691;-0.918814;-0.000161;,
  -0.394691;-0.918814;0.000161;,
  -0.000156;-0.919176;0.393848;,
  -0.706179;0.053977;0.705973;,
  -0.061761;-0.194942;-0.978868;,
  0.050993;-0.068885;-0.996321;,
  -0.411412;-0.245379;-0.877798;,
  0.002775;-0.057414;-0.998347;,
  0.000210;-0.290097;-0.956997;,
  0.466113;-0.751997;-0.466088;,
  0.870271;-0.255405;-0.421184;,
  0.418129;0.013375;-0.908289;,
  0.706179;0.053977;-0.705973;,
  -0.706269;0.050928;-0.706110;,
  -0.996824;-0.064347;-0.046916;,
  -0.425473;0.010775;0.904907;,
  0.977551;-0.202105;-0.059554;,
  0.996431;-0.071941;0.044157;,
  -0.997516;-0.070415;0.002054;,
  0.989592;-0.063565;-0.129103;,
  0.929690;-0.314979;0.190960;,
  0.466383;-0.751663;0.466357;,
  0.414642;-0.264115;0.870813;,
  0.905150;-0.001904;0.425087;,
  0.706269;0.050928;0.706110;,
  -0.466383;-0.751663;-0.466357;,
  -0.978595;-0.197895;0.056480;,
  -0.907069;0.017728;-0.420609;,
  0.054746;-0.205489;0.977127;,
  -0.049621;-0.073957;0.996026;,
  -0.929515;-0.368784;0.000413;,
  0.126448;-0.065010;0.989841;,
  -0.194736;-0.316809;0.928283;,
  -0.466113;-0.751997;0.466088;,
  -0.000231;-1.000000;-0.000176;,
  -0.877827;-0.253878;0.406160;;

  84;
  3;37,33,96;,
  3;3,36,95;,
  4;155,18,69,163;,
  3;24,75,68;,
  3;74,23,53;,
  3;32,57,52;,
  3;61,56,31;,
  3;35,60,30;,
  3;10,59,34;,
  3;132,73,110;,
  3;88,114,109;,
  3;92,87,55;,
  3;58,91,54;,
  3;9,90,248;,
  4;162,67,127,168;,
  3;118,113,86;,
  3;89,117,85;,
  3;8,116,242;,
  3;82,22,17;,
  3;81,131,106;,
  3;142,41,105;,
  3;146,141,112;,
  3;115,145,111;,
  3;7,144,236;,
  3;171,49,160;,
  4;167,126,27,159;,
  3;136,40,140;,
  3;143,135,139;,
  3;6,134,230;,
  3;5,254,2;,
  3;102,94,150;,
  3;45,101,39;,
  3;133,44,38;,
  3;4,43,232;,
  3;260,1,42;,
  3;0,93,100;,
  3;252,261,99;,
  3;80,26,125;,
  3;72,130,124;,
  3;149,21,79;,
  3;29,51,20;,
  3;50,249,84;,
  3;83,108,71;,
  3;148,241,28;,
  3;104,253,98;,
  3;97,147,78;,
  3;107,237,138;,
  3;137,103,129;,
  3;123,66,70;,
  3;246,16,19;,
  3;15,25,77;,
  3;234,128,76;,
  3;244,239,240;,
  3;233,238,231;,
  3;245,250,243;,
  3;257,229,255;,
  3;177,122,166;,
  4;158,256,258,154;,
  3;174,14,153;,
  3;180,65,161;,
  3;165,157,48;,
  3;156,152,13;,
  3;226,164,121;,
  3;151,226,64;,
  3;202,187,199;,
  3;190,186,211;,
  4;196,176,47,198;,
  4;208,173,63,210;,
  4;205,12,172,207;,
  3;193,185,189;,
  3;195,184,192;,
  4;201,170,11,204;,
  4;209,62,179,188;,
  4;219,178,120,191;,
  4;218,119,175,194;,
  3;197,183,217;,
  4;216,46,169,200;,
  3;203,182,215;,
  3;206,181,214;,
  3;212,220,213;,
  3;227,259,224;,
  3;225,251,222;,
  3;226,235,221;,
  3;228,247,223;;
 }
 MeshTextureCoords { 
 262;
 0.068084;0.765622;,
 0.068084;0.765622;,
 0.071292;0.917021;,
 0.071292;0.917021;,
 0.222150;0.837255;,
 0.229513;0.841093;,
 0.229513;0.841093;,
 0.229513;0.841093;,
 0.222150;0.837255;,
 0.222150;0.837255;,
 0.229513;0.841093;,
 0.762695;0.142019;,
 0.762695;0.142019;,
 0.761719;0.126483;,
 0.761719;0.126483;,
 0.791265;0.293101;,
 0.734371;0.293101;,
 0.791265;0.293101;,
 0.734371;0.293101;,
 0.740545;0.398117;,
 0.740545;0.398117;,
 0.785038;0.398117;,
 0.785038;0.398117;,
 0.740545;0.398117;,
 0.740545;0.398117;,
 0.734412;0.293101;,
 0.734658;0.293101;,
 0.734658;0.293101;,
 0.047634;0.840848;,
 0.747948;0.564195;,
 0.047634;0.840848;,
 0.047634;0.840848;,
 0.047634;0.840848;,
 0.047634;0.840848;,
 0.081481;0.841093;,
 0.081481;0.841093;,
 0.081481;0.841093;,
 0.081481;0.841093;,
 0.052907;0.909311;,
 0.052907;0.909311;,
 0.055705;0.916249;,
 0.055705;0.916249;,
 0.078005;0.837255;,
 0.078005;0.837255;,
 0.078005;0.837255;,
 0.078005;0.837255;,
 0.762695;0.142019;,
 0.762695;0.142019;,
 0.761719;0.126483;,
 0.761719;0.126483;,
 0.009325;0.778477;,
 0.762485;0.513028;,
 0.003603;0.785956;,
 0.762485;0.513028;,
 0.052907;0.765198;,
 0.052907;0.765198;,
 0.055705;0.765936;,
 0.055705;0.765936;,
 0.068084;0.765622;,
 0.071292;0.766379;,
 0.071292;0.766379;,
 0.071292;0.766379;,
 0.762695;0.142019;,
 0.762695;0.142019;,
 0.761719;0.126483;,
 0.761719;0.126483;,
 0.790978;0.293101;,
 0.790978;0.293101;,
 0.790733;0.293101;,
 0.790733;0.293101;,
 0.784813;0.398117;,
 0.784813;0.398117;,
 0.784813;0.398117;,
 0.784813;0.398117;,
 0.784621;0.398117;,
 0.784621;0.398117;,
 0.740769;0.398117;,
 0.740577;0.398117;,
 0.740577;0.398117;,
 0.740577;0.398117;,
 0.740769;0.398117;,
 0.740769;0.398117;,
 0.740577;0.398117;,
 0.777421;0.564195;,
 0.052907;0.837255;,
 0.052907;0.837255;,
 0.052907;0.837255;,
 0.052907;0.837255;,
 0.052907;0.837255;,
 0.078005;0.837255;,
 0.078005;0.837255;,
 0.078005;0.837255;,
 0.078005;0.837255;,
 0.052907;0.765198;,
 0.052907;0.765198;,
 0.055705;0.916249;,
 0.055705;0.916249;,
 0.747969;0.564195;,
 0.052907;0.837255;,
 0.052907;0.837255;,
 0.052907;0.837255;,
 0.052907;0.837255;,
 0.052907;0.837255;,
 0.762906;0.513028;,
 0.009731;0.889395;,
 0.001976;0.893938;,
 0.762906;0.513028;,
 0.003603;0.786748;,
 0.762485;0.513028;,
 0.009731;0.888638;,
 0.762485;0.513028;,
 0.055705;0.765936;,
 0.055705;0.765936;,
 0.052907;0.909311;,
 0.052907;0.909311;,
 0.071292;0.766379;,
 0.068084;0.910051;,
 0.068084;0.910051;,
 0.068084;0.910051;,
 0.762695;0.142019;,
 0.762695;0.142019;,
 0.761719;0.126483;,
 0.761719;0.126483;,
 0.734126;0.293101;,
 0.734126;0.293101;,
 0.791019;0.293101;,
 0.791019;0.293101;,
 0.734126;0.293101;,
 0.784845;0.398117;,
 0.784845;0.398117;,
 0.740353;0.398117;,
 0.784845;0.398117;,
 0.740353;0.398117;,
 0.068084;0.910051;,
 0.071292;0.917021;,
 0.071292;0.917021;,
 0.071292;0.917021;,
 0.777443;0.564195;,
 0.047634;0.840848;,
 0.047634;0.840848;,
 0.047634;0.840848;,
 0.047634;0.840848;,
 0.047634;0.840848;,
 0.081481;0.841093;,
 0.081481;0.841093;,
 0.081481;0.841093;,
 0.081481;0.841093;,
 0.762906;0.513028;,
 0.001976;0.893145;,
 0.762906;0.513028;,
 0.009324;0.779235;,
 0.704309;0.350441;,
 0.819129;0.350441;,
 0.819129;0.350441;,
 0.825589;0.195306;,
 0.700505;0.195306;,
 0.704390;0.350441;,
 0.704309;0.350441;,
 0.699891;0.195306;,
 0.700593;0.195306;,
 0.704309;0.350441;,
 0.704309;0.350441;,
 0.825500;0.195306;,
 0.824797;0.195306;,
 0.704309;0.350441;,
 0.819048;0.350441;,
 0.704309;0.350441;,
 0.824886;0.195306;,
 0.699802;0.195306;,
 0.597658;0.142019;,
 0.597658;0.142019;,
 0.611069;0.126483;,
 0.927733;0.142019;,
 0.597658;0.142019;,
 0.912368;0.126483;,
 0.597658;0.142019;,
 0.927733;0.142019;,
 0.611069;0.126483;,
 0.927733;0.142019;,
 0.927733;0.142019;,
 0.611069;0.126483;,
 0.201172;0.404297;,
 0.201172;0.404297;,
 0.201172;0.404297;,
 0.201172;0.404297;,
 0.201172;0.404297;,
 0.201172;0.404297;,
 0.201172;0.404297;,
 0.927733;0.121094;,
 0.339279;0.132227;,
 0.339279;0.132227;,
 0.762695;0.121094;,
 0.201172;0.019531;,
 0.201172;0.019531;,
 0.597658;0.121094;,
 0.063065;0.132226;,
 0.927733;0.121094;,
 0.005859;0.404297;,
 0.762695;0.121094;,
 0.005859;0.404297;,
 0.597658;0.121094;,
 0.597658;0.121094;,
 0.063065;0.676367;,
 0.201172;0.789063;,
 0.762695;0.121094;,
 0.762695;0.121094;,
 0.339279;0.676367;,
 0.927733;0.121094;,
 0.597658;0.121094;,
 0.762695;0.121094;,
 0.762695;0.121094;,
 0.396484;0.404297;,
 0.396484;0.404297;,
 0.339279;0.676367;,
 0.201172;0.789063;,
 0.063065;0.676367;,
 0.762695;0.121094;,
 0.063065;0.132226;,
 0.762695;0.121094;,
 0.927733;0.121094;,
 0.201172;0.404297;,
 0.912368;0.126483;,
 0.912368;0.126483;,
 0.912368;0.126483;,
 0.912368;0.126483;,
 0.819048;0.350441;,
 0.819048;0.350441;,
 0.819048;0.350441;,
 0.819048;0.350441;,
 0.762906;0.513028;,
 0.081481;0.841093;,
 0.747948;0.564195;,
 0.068084;0.910051;,
 0.740353;0.398117;,
 0.791019;0.293101;,
 0.761719;0.126483;,
 0.071292;0.766379;,
 0.055705;0.765936;,
 0.762485;0.513028;,
 0.762906;0.513028;,
 0.747969;0.564195;,
 0.055705;0.916249;,
 0.078005;0.837255;,
 0.777421;0.564195;,
 0.740769;0.398117;,
 0.784621;0.398117;,
 0.790733;0.293101;,
 0.761719;0.126483;,
 0.068084;0.765622;,
 0.052907;0.765198;,
 0.762485;0.513028;,
 0.761719;0.126483;,
 0.078005;0.837255;,
 0.052907;0.909311;,
 0.081481;0.841093;,
 0.777443;0.564195;,
 0.734412;0.293101;,
 0.785038;0.398117;,
 0.791265;0.293101;,
 0.761719;0.126483;,
 0.222150;0.837255;,
 0.068084;0.765622;;
 }
}
Frame frm-ss01 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
1.511227,-0.181843,1.506247,1.000000;;
 }
Mesh ss01 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-ss4 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
1.538901,-0.181843,-1.520165,1.000000;;
 }
Mesh ss4 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-ss3 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.007589,-0.181843,-2.129417,1.000000;;
 }
Mesh ss3 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-ss2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-1.512034,-0.181844,1.509510,1.000000;;
 }
Mesh ss2 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-ss5 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000001,-3.951118,-0.000000,1.000000;;
 }
Mesh ss5 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-flang_mount {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,-0.133197,0.000000,1.000000;;
 }
}
Frame frm-ss7 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-1.508120,-0.211635,-1.508120,1.000000;;
 }
Mesh ss7 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-ss6 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-2.141073,-0.211635,-0.006597,1.000000;;
 }
Mesh ss6 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-ss8 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000000,-0.211634,2.119904,1.000000;;
 }
Mesh ss8 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-ss9 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
2.141418,-0.211634,0.000344,1.000000;;
 }
Mesh ss9 {
 4;
 -0.000943;-0.000333;0.000000;,
 0.000000;0.001000;0.000000;,
 0.000471;-0.000333;0.000816;,
 0.000471;-0.000333;-0.000816;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
}
AnimationSet {
 Animation anim-fuselg6 {
  {frm-fuselg6}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  15; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
 Animation anim-ss01 {
  {frm-ss01}
  AnimationKey {
  2;
  2;
  1; 3; 1.511227, -0.181843, 1.506247;;,
  15; 3; 1.511227, -0.181843, 1.506247;;;
  }
 }
 Animation anim-ss4 {
  {frm-ss4}
  AnimationKey {
  2;
  2;
  1; 3; 1.538901, -0.181843, -1.520165;;,
  15; 3; 1.538901, -0.181843, -1.520165;;;
  }
 }
 Animation anim-ss3 {
  {frm-ss3}
  AnimationKey {
  2;
  2;
  1; 3; 0.007589, -0.181843, -2.129417;;,
  15; 3; 0.007589, -0.181843, -2.129417;;;
  }
 }
 Animation anim-ss2 {
  {frm-ss2}
  AnimationKey {
  2;
  2;
  1; 3; -1.512034, -0.181844, 1.509510;;,
  15; 3; -1.512034, -0.181844, 1.509510;;;
  }
 }
 Animation anim-ss5 {
  {frm-ss5}
  AnimationKey {
  2;
  2;
  1; 3; 0.000001, -3.951118, -0.000000;;,
  15; 3; 0.000001, -3.951118, -0.000000;;;
  }
 }
 Animation anim-flang_mount {
  {frm-flang_mount}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,
  15; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.133197, 0.000000;;,
  15; 3; 0.000000, -0.133197, 0.000000;;;
  }
 }
 Animation anim-ss7 {
  {frm-ss7}
  AnimationKey {
  2;
  2;
  1; 3; -1.508120, -0.211635, -1.508120;;,
  15; 3; -1.508120, -0.211635, -1.508120;;;
  }
 }
 Animation anim-ss6 {
  {frm-ss6}
  AnimationKey {
  2;
  2;
  1; 3; -2.141073, -0.211635, -0.006597;;,
  15; 3; -2.141073, -0.211635, -0.006597;;;
  }
 }
 Animation anim-ss8 {
  {frm-ss8}
  AnimationKey {
  2;
  2;
  1; 3; -0.000000, -0.211634, 2.119904;;,
  15; 3; -0.000000, -0.211634, 2.119904;;;
  }
 }
 Animation anim-ss9 {
  {frm-ss9}
  AnimationKey {
  2;
  2;
  1; 3; 2.141418, -0.211634, 0.000344;;,
  15; 3; 2.141418, -0.211634, 0.000344;;;
  }
 }
}