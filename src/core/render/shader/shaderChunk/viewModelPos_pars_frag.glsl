#if defined(USE_POINT_LIGHT) || defined(USE_SPOT_LIGHT) || defined(USE_NORMAL_MAP) || defined(USE_BUMPMAP) || defined(FLAT_SHADED) || (defined(USE_PHONG) && defined(USE_DIRECT_LIGHT)) || (defined(USE_PBR) && defined(USE_DIRECT_LIGHT)) || defined(NUM_CLIPPING_PLANES) 
    varying vec3 v_ViewModelPos;
#endif