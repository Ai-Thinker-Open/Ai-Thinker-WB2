#!/usr/bin/env perl
#
# Based on NIST CTR_DRBG.rsp validation file
# Only uses AES-256-CTR cases that use a Derivation function
# and concats nonce and personalization for initialization.
#
# Copyright The Mbed TLS Contributors
# SPDX-License-Identifier: Apache-2.0 OR GPL-2.0-or-later
#
# This file is provided under the Apache License 2.0, or the
# GNU General Public License v2.0 or later.
#
# **********
# Apache License 2.0:
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# **********
#
# **********
# GNU General Public License v2.0 or later:
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
# **********

use strict;

my $file = shift;

open(TEST_DATA, "$file") or die "Opening test cases '$file': $!";

sub get_suite_val($)
{
    my $name = shift;
    my $val = "";

    my $line = <TEST_DATA>;
    ($val) = ($line =~ /\[$name\s\=\s(\w+)\]/);

    return $val;
}

sub get_val($)
{
    my $name = shift;
    my $val = "";
    my $line;

    while($line = <TEST_DATA>)
    {
        next if($line !~ /=/);
        last;
    }

    ($val) = ($line =~ /^$name = (\w+)/);

    return $val;
}

my $cnt = 1;;
while (my $line = <TEST_DATA>)
{
    next if ($line !~ /^\[AES-256 use df/);

    my $PredictionResistanceStr = get_suite_val("PredictionResistance");
    my $PredictionResistance = 0;
    $PredictionResistance = 1 if ($PredictionResistanceStr eq 'True');
    my $EntropyInputLen = get_suite_val("EntropyInputLen");
    my $NonceLen = get_suite_val("NonceLen");
    my $PersonalizationStringLen = get_suite_val("PersonalizationStringLen");
    my $AdditionalInputLen = get_suite_val("AdditionalInputLen");

    for ($cnt = 0; $cnt < 15; $cnt++)
    {
        my $Count = get_val("COUNT");
        my $EntropyInput = get_val("EntropyInput");
        my $Nonce = get_val("Nonce");
        my $PersonalizationString = get_val("PersonalizationString");
        my $AdditionalInput1 = get_val("AdditionalInput");
        my $EntropyInputPR1 = get_val("EntropyInputPR") if ($PredictionResistance == 1);
        my $EntropyInputReseed = get_val("EntropyInputReseed") if ($PredictionResistance == 0);
        my $AdditionalInputReseed = get_val("AdditionalInputReseed") if ($PredictionResistance == 0);
        my $AdditionalInput2 = get_val("AdditionalInput");
        my $EntropyInputPR2 = get_val("EntropyInputPR") if ($PredictionResistance == 1);
        my $ReturnedBits = get_val("ReturnedBits");

        if ($PredictionResistance == 1)
        {
            print("CTR_DRBG NIST Validation (AES-256 use df,$PredictionResistanceStr,$EntropyInputLen,$NonceLen,$PersonalizationStringLen,$AdditionalInputLen) #$Count\n");
            print("ctr_drbg_validate_pr");
            print(":\"$Nonce$PersonalizationString\"");
            print(":\"$EntropyInput$EntropyInputPR1$EntropyInputPR2\"");
            print(":\"$AdditionalInput1\"");
            print(":\"$AdditionalInput2\"");
            print(":\"$ReturnedBits\"");
            print("\n\n");
        }
        else
        {
            print("CTR_DRBG NIST Validation (AES-256 use df,$PredictionResistanceStr,$EntropyInputLen,$NonceLen,$PersonalizationStringLen,$AdditionalInputLen) #$Count\n");
            print("ctr_drbg_validate_nopr");
            print(":\"$Nonce$PersonalizationString\"");
            print(":\"$EntropyInput$EntropyInputReseed\"");
            print(":\"$AdditionalInput1\"");
            print(":\"$AdditionalInputReseed\"");
            print(":\"$AdditionalInput2\"");
            print(":\"$ReturnedBits\"");
            print("\n\n");
        }
    }
}
close(TEST_DATA);
