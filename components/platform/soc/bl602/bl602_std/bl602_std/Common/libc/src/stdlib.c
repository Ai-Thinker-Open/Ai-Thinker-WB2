/*
 *  Derived from:
 *  http://www.kernel.org/pub/linux/libs/klibc/
 *
 * This functions implement WMSDK specific memory allocator routines.
 */

#include <sys/types.h>
#include <stdlib.h>

void *malloc(size_t size)
{
	return NULL;
}

void free(void *ptr)
{
}

void *calloc(size_t nmemb, size_t size)
{
	return NULL;
}

void *realloc(void *ptr, size_t size)
{
	return NULL;
}
