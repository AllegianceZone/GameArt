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

Frame frm-bounding_model {
  FrameTransformMatrix {
-0.183326,0.000000,-0.000000,0.000000,
-0.000000,0.000000,0.183326,0.000000,
0.000000,0.183326,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bounding_model {
 4;
 -0.009428;0.000000;-0.003333;,
 0.000000;-0.000000;0.010000;,
 0.004714;-0.008165;-0.003333;,
 0.004714;0.008165;-0.003333;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshNormals {
  4;
  -0.942809;0.000000;-0.333333;,
  0.000000;0.000000;1.000000;,
  0.471404;-0.816497;-0.333334;,
  0.471404;0.816497;-0.333333;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
}
Frame frm-bound01 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
58.884979,-0.000005,-0.000000,1.000000;;
 }
Mesh bound01 {
 16;
 -61.590382;16.099878;43.241180;,
 -61.590382;21.910023;43.241188;,
 -54.647358;16.099880;43.105106;,
 -54.647358;21.910025;43.105099;,
 -66.913139;15.552448;48.666039;,
 -66.913139;26.460318;48.666039;,
 -48.984394;26.460318;48.802120;,
 -48.984394;15.552448;48.802120;,
 -61.098118;16.675585;22.049810;,
 -61.098118;21.334322;22.049849;,
 -54.657345;21.334322;22.082464;,
 -54.657345;16.675585;22.082502;,
 -48.984394;26.460318;60.363865;,
 -48.984394;15.552447;60.363865;,
 -66.913139;26.460318;60.227779;,
 -66.913139;15.552447;60.227779;;

 14;
 4;13,12,14,15;,
 4;3,6,7,2;,
 4;1,5,6,3;,
 4;7,13,15,4;,
 4;4,15,14,5;,
 4;2,7,4,0;,
 4;5,14,12,6;,
 4;0,4,5,1;,
 4;2,11,10,3;,
 4;6,12,13,7;,
 4;0,8,11,2;,
 4;1,9,8,0;,
 4;3,10,9,1;,
 4;11,8,9,10;;

 MeshNormals {
  16;
  -0.643655;-0.697238;-0.315543;,
  -0.611281;0.621746;-0.489661;,
  0.645904;-0.697464;-0.310406;,
  0.613973;0.622519;-0.485290;,
  -0.648571;-0.699794;-0.299407;,
  -0.616526;0.627250;-0.475871;,
  0.615428;0.626968;-0.477660;,
  0.647659;-0.699744;-0.301492;,
  -0.565731;-0.568436;-0.597352;,
  -0.565731;0.568436;-0.597352;,
  0.573950;0.570962;-0.587013;,
  0.573950;-0.570962;-0.587013;,
  0.574423;0.578817;0.578800;,
  0.574423;-0.578817;0.578800;,
  -0.580266;0.575895;0.575878;,
  -0.580266;-0.575895;0.575878;;

  14;
  4;13,12,14,15;,
  4;3,6,7,2;,
  4;1,5,6,3;,
  4;7,13,15,4;,
  4;4,15,14,5;,
  4;2,7,4,0;,
  4;5,14,12,6;,
  4;0,4,5,1;,
  4;2,11,10,3;,
  4;6,12,13,7;,
  4;0,8,11,2;,
  4;1,9,8,0;,
  4;3,10,9,1;,
  4;11,8,9,10;;
 }
}
}
Frame frm-bound02 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound02 {
 8;
 7.437640;-7.906650;-21.691116;,
 11.265598;-22.127010;-21.691118;,
 7.437640;-7.906649;-44.591225;,
 11.265598;-22.127010;-44.591228;,
 -7.228930;-7.906650;-21.691116;,
 -11.056887;-22.127010;-21.691118;,
 -7.228930;-7.906649;-44.591225;,
 -11.056887;-22.127010;-44.591228;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  0.514690;0.671560;0.533012;,
  0.613157;-0.469929;0.634984;,
  0.514690;0.671560;-0.533012;,
  0.613157;-0.469929;-0.634984;,
  -0.514690;0.671560;0.533012;,
  -0.613157;-0.469929;0.634984;,
  -0.514690;0.671560;-0.533012;,
  -0.613157;-0.469929;-0.634984;;

  6;
  4;5,4,6,7;,
  4;4,0,2,6;,
  4;0,1,3,2;,
  4;1,5,7,3;,
  4;7,6,2,3;,
  4;1,0,4,5;;
 }
}
}
Frame frm-bound03 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound03 {
 8;
 63.853210;22.265055;23.633083;,
 63.853210;-18.465849;23.633081;,
 63.853210;22.265057;-23.003283;,
 63.853210;-18.465847;-23.003284;,
 -59.989285;22.265055;23.633083;,
 -59.989285;-18.465849;23.633081;,
 -59.989285;22.265057;-23.003283;,
 -59.989285;-18.465847;-23.003284;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;-0.577350;-0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;-0.577350;0.577350;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;-0.577350;-0.577350;;

  6;
  4;5,4,6,7;,
  4;4,0,2,6;,
  4;0,1,3,2;,
  4;1,5,7,3;,
  4;7,6,2,3;,
  4;1,0,4,5;;
 }
}
}
}
AnimationSet {
 Animation anim-bounding_model {
  {frm-bounding_model}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  25; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
  AnimationKey {
  1;
  2;
  1; 3; 0.183326, 0.183326, 0.183326;;,
  25; 3; 0.183326, 0.183326, 0.183326;;;
  }
 }
 Animation anim-bound01 {
  {frm-bound01}
  AnimationKey {
  2;
  2;
  1; 3; 58.884979, -0.000005, -0.000000;;,
  25; 3; 58.884979, -0.000005, -0.000000;;;
  }
 }
}
