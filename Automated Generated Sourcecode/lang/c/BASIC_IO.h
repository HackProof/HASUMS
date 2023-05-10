#ifndef _BASIC_IO_h
#define _BASIC_IO_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void BASIC_IO__INITIALISATION(void);

/* Clause OPERATIONS */

extern void BASIC_IO__INTERVAL_READ(int32_t mm, int32_t nn, int32_t *bb);
extern void BASIC_IO__INT_WRITE(int32_t vv);
extern void BASIC_IO__STRING_WRITE(const char* ss);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _BASIC_IO_h */
