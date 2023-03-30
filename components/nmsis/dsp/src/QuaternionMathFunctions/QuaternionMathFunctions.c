/* ----------------------------------------------------------------------
 * Project:      NMSIS DSP Library
 * Title:        QuaternionMathFunctions.c
 * Description:  Combination of all quaternion math function source files.
 *
 *
 * Target Processor: RISC-V Cores
 * -------------------------------------------------------------------- */
/*
 * Copyright (C) 2019-2021 ARM Limited or its affiliates. All rights reserved.
 * Copyright (c) 2019 Nuclei Limited. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the License); you may
 * not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an AS IS BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "riscv_quaternion_norm_f32.c"
#include "riscv_quaternion_inverse_f32.c"
#include "riscv_quaternion_conjugate_f32.c"
#include "riscv_quaternion_normalize_f32.c"
#include "riscv_quaternion_product_single_f32.c"
#include "riscv_quaternion_product_f32.c"
#include "riscv_quaternion2rotation_f32.c"
#include "riscv_rotation2quaternion_f32.c"
