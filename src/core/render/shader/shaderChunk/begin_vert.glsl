vec3 transformed = vec3(a_Position);
#if defined(USE_NORMAL) || defined(USE_ENV_MAP)
    vec3 objectNormal = vec3(a_Normal);
#endif
#ifdef USE_TANGENT
    vec3 objectTangent = vec3(a_Tangent.xyz);
#endif