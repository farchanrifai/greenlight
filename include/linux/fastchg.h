/*
 * based on work from:
 *	Chad Froebel <chadfroebel@gmail.com> &
 *	Jean-Pierre Rasquin <yank555.lu@gmail.com>
 * for backwards compatibility
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */

#ifndef _LINUX_FASTCHG_H
#define _LINUX_FASTCHG_H

extern int force_fast_charge;
extern int fast_charge_level;

#define FAST_CHARGE_DISABLED		0	/* default */
#define FAST_CHARGE_FORCE_AC		1
#define FAST_CHARGE_FORCE_CUSTOM_MA	2

#define FAST_CHARGE_700		700
#define FAST_CHARGE_1000	1000
#define FAST_CHARGE_1400	1400
#define FAST_CHARGE_1800	1800
#define FAST_CHARGE_2100	2100
#define FAST_CHARGE_2200	2200

#define FAST_CHARGE_LEVELS	"700 1000 1400 1800 2100 2200"

#endif


