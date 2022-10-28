/**
 * @file lvgl.h
 * Include all LVGL related headers
 */

#ifndef LVGL_H
#define LVGL_H

#ifdef __cplusplus
extern "C" {
#endif

    /***************************
     * CURRENT VERSION OF LVGL
     ***************************/
#define LVGL_VERSION_MAJOR 8
#define LVGL_VERSION_MINOR 3
#define LVGL_VERSION_PATCH 4
#define LVGL_VERSION_INFO "dev"

     /*********************
      *      INCLUDES
      *********************/

#include "lv_srcs/misc/lv_log.h"
#include "lv_srcs/misc/lv_timer.h"
#include "lv_srcs/misc/lv_math.h"
#include "lv_srcs/misc/lv_mem.h"
#include "lv_srcs/misc/lv_async.h"
#include "lv_srcs/misc/lv_anim_timeline.h"
#include "lv_srcs/misc/lv_printf.h"

#include "lv_srcs/hal/lv_hal.h"

#include "lv_srcs/core/lv_obj.h"
#include "lv_srcs/core/lv_group.h"
#include "lv_srcs/core/lv_indev.h"
#include "lv_srcs/core/lv_refr.h"
#include "lv_srcs/core/lv_disp.h"
#include "lv_srcs/core/lv_theme.h"

#include "lv_srcs/font/lv_font.h"
#include "lv_srcs/font/lv_font_loader.h"
#include "lv_srcs/font/lv_font_fmt_txt.h"

#include "lv_srcs/widgets/lv_arc.h"
#include "lv_srcs/widgets/lv_btn.h"
#include "lv_srcs/widgets/lv_img.h"
#include "lv_srcs/widgets/lv_label.h"
#include "lv_srcs/widgets/lv_line.h"
#include "lv_srcs/widgets/lv_table.h"
#include "lv_srcs/widgets/lv_checkbox.h"
#include "lv_srcs/widgets/lv_bar.h"
#include "lv_srcs/widgets/lv_slider.h"
#include "lv_srcs/widgets/lv_btnmatrix.h"
#include "lv_srcs/widgets/lv_dropdown.h"
#include "lv_srcs/widgets/lv_roller.h"
#include "lv_srcs/widgets/lv_textarea.h"
#include "lv_srcs/widgets/lv_canvas.h"
#include "lv_srcs/widgets/lv_switch.h"

#include "lv_srcs/draw/lv_draw.h"

#include "lv_srcs/lv_api_map.h"

      /*-----------------
       * EXTRAS
       *----------------*/
#include "lv_srcs//extra/lv_extra.h"

       /*********************
        *      DEFINES
        *********************/

        /**********************
         *      TYPEDEFS
         **********************/

         /**********************
          * GLOBAL PROTOTYPES
          **********************/

          /**********************
           *      MACROS
           **********************/

           /** Gives 1 if the x.y.z version is supported in the current version
            * Usage:
            *
            * - Require v6
            * #if LV_VERSION_CHECK(6,0,0)
            *   new_func_in_v6();
            * #endif
            *
            *
            * - Require at least v5.3
            * #if LV_VERSION_CHECK(5,3,0)
            *   new_feature_from_v5_3();
            * #endif
            *
            *
            * - Require v5.3.2 bugfixes
            * #if LV_VERSION_CHECK(5,3,2)
            *   bugfix_in_v5_3_2();
            * #endif
            *
            */
#define LV_VERSION_CHECK(x,y,z) (x == LVGL_VERSION_MAJOR && (y < LVGL_VERSION_MINOR || (y == LVGL_VERSION_MINOR && z <= LVGL_VERSION_PATCH)))

            /**
             * Wrapper functions for VERSION macros
             */

    static inline int lv_version_major(void)
    {
        return LVGL_VERSION_MAJOR;
    }

    static inline int lv_version_minor(void)
    {
        return LVGL_VERSION_MINOR;
    }

    static inline int lv_version_patch(void)
    {
        return LVGL_VERSION_PATCH;
    }

    static inline const char* lv_version_info(void)
    {
        return LVGL_VERSION_INFO;
    }

#ifdef __cplusplus
} /*extern "C"*/
#endif

#endif /*LVGL_H*/
