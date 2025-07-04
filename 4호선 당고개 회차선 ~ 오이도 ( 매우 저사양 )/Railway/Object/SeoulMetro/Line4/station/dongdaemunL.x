xof 0302txt 0064
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

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
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

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
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

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 22;
 -3.10000;0.10500;25.00000;,
 -2.60000;-0.55000;25.00000;,
 -2.60000;-0.55000;0.00000;,
 -3.10000;0.10500;0.00000;,
 -3.90000;3.38000;25.00000;,
 -4.00000;2.72500;25.00000;,
 -4.00000;2.72500;0.00000;,
 -3.90000;3.38000;0.00000;,
 -3.80000;4.03500;0.00000;,
 -3.80000;4.03500;25.00000;,
 -3.90000;2.07000;0.00000;,
 -3.90000;2.07000;25.00000;,
 -3.80000;1.41500;25.00000;,
 -3.80000;1.41500;0.00000;,
 -3.50000;0.76000;25.00000;,
 -3.50000;0.76000;0.00000;,
 -3.50000;4.69000;0.00000;,
 -3.50000;4.69000;25.00000;,
 -3.10000;5.34500;25.00000;,
 -3.10000;5.34500;0.00000;,
 -2.60000;6.00000;0.00000;,
 -2.60000;6.00000;25.00000;;
 
 10;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;4,7,8,9;,
 4;10,6,5,11;,
 4;10,11,12,13;,
 4;14,0,3,15;,
 4;14,15,13,12;,
 4;16,17,9,8;,
 4;18,17,16,19;,
 4;18,19,20,21;;
 
 MeshMaterialList {
  1;
  10;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "dongdaemun.bmp";
   }
  }
 }
 MeshTextureCoords {
  22;
  1.000000;0.900000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.900000;,
  1.000000;0.400000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  0.000000;0.400000;,
  0.000000;0.300000;,
  1.000000;0.300000;,
  0.000000;0.600000;,
  1.000000;0.600000;,
  1.000000;0.700000;,
  0.000000;0.700000;,
  1.000000;0.800000;,
  0.000000;0.800000;,
  0.000000;0.200000;,
  1.000000;0.200000;,
  1.000000;0.100000;,
  0.000000;0.100000;,
  0.000000;0.000000;,
  1.000000;0.000000;;
 }
 MeshVertexColors {
  22;
  0;1.000000;1.000000;1.000000;1.000000;,
  1;1.000000;1.000000;1.000000;1.000000;,
  2;1.000000;1.000000;1.000000;1.000000;,
  3;1.000000;1.000000;1.000000;1.000000;,
  4;1.000000;1.000000;1.000000;1.000000;,
  5;1.000000;1.000000;1.000000;1.000000;,
  6;1.000000;1.000000;1.000000;1.000000;,
  7;1.000000;1.000000;1.000000;1.000000;,
  8;1.000000;1.000000;1.000000;1.000000;,
  9;1.000000;1.000000;1.000000;1.000000;,
  10;1.000000;1.000000;1.000000;1.000000;,
  11;1.000000;1.000000;1.000000;1.000000;,
  12;1.000000;1.000000;1.000000;1.000000;,
  13;1.000000;1.000000;1.000000;1.000000;,
  14;1.000000;1.000000;1.000000;1.000000;,
  15;1.000000;1.000000;1.000000;1.000000;,
  16;1.000000;1.000000;1.000000;1.000000;,
  17;1.000000;1.000000;1.000000;1.000000;,
  18;1.000000;1.000000;1.000000;1.000000;,
  19;1.000000;1.000000;1.000000;1.000000;,
  20;1.000000;1.000000;1.000000;1.000000;,
  21;1.000000;1.000000;1.000000;1.000000;;
 }
}
