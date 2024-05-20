/*
OpenCL RandomForestClassifier
classifier_class_name = TableRowClassifier
feature_specification = number_of_pixels elongation
num_ground_truth_dimensions = 1
num_classes = 3
num_features = 2
max_depth = 2
num_trees = 10
feature_importances = 0.2905557390481565,0.7094442609518434
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
 float s2=0;
if(i0<555.5){
 s2+=1.0;
} else {
 if(i1<1.2759019136428833){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<1.6950408220291138){
 if(i1<1.2075169086456299){
  s1+=0.8571428571428571;
  s2+=0.14285714285714285;
 } else {
  s2+=1.0;
 }
} else {
 s0+=1.0;
}
if(i1<2.005537509918213){
 if(i1<1.0637614727020264){
  s1+=1.0;
 } else {
  s1+=0.42857142857142855;
  s2+=0.5714285714285714;
 }
} else {
 s0+=1.0;
}
if(i0<553.0){
 if(i1<1.0637614727020264){
  s1+=1.0;
 } else {
  s1+=0.125;
  s2+=0.875;
 }
} else {
 if(i1<1.7941346168518066){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<1.3456357717514038){
 if(i0<246.5){
  s1+=1.0;
 } else {
  s2+=1.0;
 }
} else {
 s0+=1.0;
}
if(i1<1.7146263122558594){
 if(i1<1.2075169086456299){
  s1+=0.8333333333333334;
  s2+=0.16666666666666666;
 } else {
  s1+=0.3333333333333333;
  s2+=0.6666666666666666;
 }
} else {
 s0+=1.0;
}
if(i1<1.7146263122558594){
 if(i1<1.0716631412506104){
  s1+=1.0;
 } else {
  s1+=0.3333333333333333;
  s2+=0.6666666666666666;
 }
} else {
 s0+=1.0;
}
if(i0<253.0){
 s1+=1.0;
} else {
 if(i0<555.5){
  s2+=1.0;
 } else {
  s0+=0.8;
  s1+=0.2;
 }
}
if(i1<1.7146263122558594){
 if(i0<253.0){
  s1+=1.0;
 } else {
  s1+=0.6;
  s2+=0.4;
 }
} else {
 s0+=1.0;
}
if(i0<246.5){
 s1+=1.0;
} else {
 if(i1<1.6950408220291138){
  s1+=0.14285714285714285;
  s2+=0.8571428571428571;
 } else {
  s0+=1.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 if (max_s < s2) {
  max_s = s2;
  cls=3;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
