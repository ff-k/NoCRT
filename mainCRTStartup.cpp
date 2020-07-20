#ifdef __cplusplus
    #define EXTERN_C extern "C"
#else
    #define EXTERN_C extern
#endif

EXTERN_C int mainCRTStartup(){
    return 0;
}
