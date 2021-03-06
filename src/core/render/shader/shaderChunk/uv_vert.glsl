#if defined(USE_DIFFUSE_MAP) || defined(USE_ALPHA_MAP) || defined(USE_NORMAL_MAP) || defined(USE_BUMPMAP) || defined(USE_SPECULARMAP) || defined(USE_EMISSIVEMAP) || defined(USE_ROUGHNESSMAP) || defined(USE_METALNESSMAP) || defined(USE_GLOSSINESSMAP) || defined(USE_AOMAP)
    v_Uv = (uvTransform * vec3(a_Uv, 1.)).xy;
#endif

#ifdef USE_UV2
    v_Uv2 = a_Uv2;
#endif

#ifdef USE_ALPHA_MAP_UV_TRANSFORM
    #if (USE_ALPHA_MAP == 1)
        vAlphaMapUV = (alphaMapUVTransform * vec3(a_Uv, 1.)).xy;
    #elif (USE_ALPHA_MAP == 2)
        vAlphaMapUV = (alphaMapUVTransform * vec3(a_Uv2, 1.)).xy;
    #else
        vAlphaMapUV = (alphaMapUVTransform * vec3(a_Uv, 1.)).xy;
    #endif
#endif 