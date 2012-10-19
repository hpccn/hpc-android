#ifndef _HPC_DEBUG_H
#define _HPC_DEBUG_H


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif // __cplusplus 

#ifdef _DEBUG
//#define DEBUGMSG(msg) printf(msg);printf(“%d%d%d\n”, date, _LINE_ ,_FILE_, )
#define DEBUGMSG(msg) printf(msg);printf("\n[File:%s Line:%d] Fun:%s\n", __FILE__, __LINE__, __FUNCTION__)
#else
//#define DEBUGMSG(msg,date) 
#define DEBUGMSG(msg) 
#endif


#ifdef _DEBUG

#define _DEBUG_POINT()   printf("\n\n[File:%s Line:%d] Fun:%s\n\n", __FILE__, __LINE__, __FUNCTION__)
#define dbg_printf(arg...)   printf(arg);

#define _ASSERT(expr)  \
	do{                \
		if (!(expr)) { \
			printf("\nASSERT failed at:\n  >File name: %s\n  >Function : %s\n  >Line No. : %d\n  >Condition: %s\n", \
					__FILE__,__FUNCTION__, __LINE__, #expr);\
		} \
	}while(0);

//调试宏, 用于暂停
#define _DEBUG_PAUSE() \
	do                 \
{                      \
	_DEBUG_POINT();    \
	printf("pause for debug, press 'q' to exit!\n");  \
	char c;             \
	while( ( c = getchar() ) )        \
	{             \
		if('q' == c)         \
		{           \
			getchar();        \
			break;         \
		}           \
	}             \
}while(0);
#define _DEBUG_PAUSE_ARG(arg...)          \
	do               \
{               \
	printf(arg);           \
	_DEBUG_PAUSE()          \
}while(0);


#define _DEBUG_ASSERT(expression)      \
	if(!(expression))                        \
{                                  \
	printf("[ASSERT],%s,%s:%d\n", __FILE__,  __FUNCTION__, __LINE__);\
	exit(-1);             \
}
#else
#define _ASSERT(expr)
#define _DEBUG_PAUSE()
#define _DEBUG_PAUSE_ARG(arg...) 
#define _DEBUG_POINT()
#define dbg_printf(arg...)
#define _DEBUG_ASSERT(expression)

#endif

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif // __cplusplus 


#endif // #ifndef _HPC_DEBUG_H
