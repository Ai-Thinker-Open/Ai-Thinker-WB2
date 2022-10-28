#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static int params_filter(char** params,uint32_t *r)
{	
	char *p ;
	uint32_t result=0;
	uint8_t base=0;
	
	p = *params;
	
    if((*p == '0') && ((*(p+1) == 'x') || (*(p+1) == 'X')) ){
		p = p + 2;
		base = 16;
		
	}else{
		base = 10;
	}
	
	while(*p){
		result *= base;
	    if(*p >= '0' && *p<='9')
			result += *p-'0';
		else if(base==10)
			return -1;
			
		if(base==16){
			if(*p >= 'a' && *p<='f')
				result += *p-'a' + 10;
			else if(*p >= 'A' && *p<='F')
				result += *p-'A' + 10;
		
		}
		p++;
	}
		
	*r = result;
	return 0;
	
}


void get_bytearray_from_string(char** params, uint8_t *result,int array_size)
{
    
    int i = 0;
    char rand[3];

    for(i=0; i < array_size; i++){
        strncpy(rand, (const char*)*params, 2);
        rand[2]='\0';
        result[i] = strtol(rand, NULL, 16);
        *params = *params + 2;
    }
}

void get_uint8_from_string(char** params, uint8_t *result)
{
	uint32_t p = 0;
	int state=0;
	
	state = params_filter(params,&p);
	if(!state){
		*result = p & 0xff;
	}else
		*result = 0;
}

void get_uint16_from_string(char** params, uint16_t *result)
{
	uint32_t p = 0;
	int state=0;
	
	state = params_filter(params,&p);
	if(!state){
		*result = p & 0xffff;
	}else
		*result = 0;
}

void get_uint32_from_string(char** params, uint32_t *result)
{
    uint32_t p = 0;
	int state=0;
	
	state = params_filter(params,&p);
	if(!state){
		*result = p;
	}else
		*result = 0;
}

void utils_parse_number(const char *str, char sep, uint8_t *buf, int buflen, int base)
{
  int i;
  for (i = 0; i < buflen; i++) {
    buf[i] = (uint8_t)strtol(str, NULL, base);
    str = strchr(str, sep);
    if (str == NULL || *str == '\0') {
      break;
    }
    str++;
  }
}

void utils_parse_number_adv(const char *str, char sep, uint8_t *buf, int buflen, int base, int *count)
{
  int i;

  for (i = 0; i < buflen; i++) {
    buf[i] = (uint8_t)strtol(str, NULL, base);
    str = strchr(str, sep);
    if (str == NULL || *str == '\0') {
      break;
    }
    str++;
  }
  *count = (i + 1);
}


unsigned long long convert_arrayToU64(uint8_t* inputArray)
{
    unsigned long long result = 0;
    for(uint8_t i = 0; i < 8; i++)
    {
        result <<= 8;
        result |= (unsigned long long)inputArray[7-i];
    }

    return result;
}

void convert_u64ToArray(unsigned long long inputU64, uint8_t result[8])
{
    for(int i = 0; i < 8; i++)
    {
        result[i] = inputU64>>(i*8);
    }
}

