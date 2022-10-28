/**
 * @file lv_extra.h
 *
 */

#ifndef LV_EXTRA_H
#define LV_EXTRA_H

#ifdef __cplusplus
extern "C" {
#endif

    /*********************
     *      INCLUDES
     *********************/

#include "extra_layouts/lv_layouts.h"
#include "extra_libs/lv_libs.h"
#include "extra_others/lv_others.h"
#include "extra_themes/lv_themes.h"
#include "extra_widgets/lv_widgets.h"

     /*********************
      *      DEFINES
      *********************/

      /**********************
       *      TYPEDEFS
       **********************/

       /**********************
        * GLOBAL PROTOTYPES
        **********************/

        /**
         * Initialize the extra components
         */
    void lv_extra_init(void);

    /**********************
     *      MACROS
     **********************/

#ifdef __cplusplus
} /*extern "C"*/
#endif

#endif /*LV_EXTRA_H*/
