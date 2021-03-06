#if defined(USE_DIFFUSE_MAP) || defined(USE_ALPHA_MAP) || defined(USE_NORMAL_MAP) || defined(USE_BUMPMAP) || defined(USE_SPECULARMAP) || defined(USE_EMISSIVEMAP) || defined(USE_ROUGHNESSMAP) || defined(USE_METALNESSMAP) || defined(USE_GLOSSINESSMAP) || defined(USE_AOMAP)
    varying vec2 v_Uv;
#endif

#ifdef USE_UV2
    varying vec2 v_Uv2;
#endif

#ifdef USE_ALPHA_MAP_UV_TRANSFORM
    varying vec2 vAlphaMapUV;
#endif 