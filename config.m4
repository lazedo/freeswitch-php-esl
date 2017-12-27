PHP_ARG_ENABLE(ESL,           
        [Whether to enable the "freeswitch-esl" extension],
        [--enable-ESL  Enable FreeSWITCH ESL extension support], yes)              
if test $PHP_ESL != "no"; then           
        PHP_SUBST(ESL_SHARED_LIBADD)           
        PHP_ADD_INCLUDE(./esl/include)
        PHP_REQUIRE_CXX
        AC_LANG_CPLUSPLUS
        PHP_ADD_LIBRARY(stdc++,,FREESWITCH_ESL_SHARED_LIBADD)
        ESL_SOURCES="esl/cJSON.c  esl/esl_buffer.c  esl/esl_json.c esl/cJSON_Utils.c esl/esl_config.c esl/esl_oop.cpp esl/esl.c esl/esl_event.c esl/esl_threadmutex.c"
        PHP_NEW_EXTENSION(ESL,esl_wrap.cpp $ESL_SOURCES,$ext_shared)                
fi
