/*
 * array2.cs - Test the invalid cases of array indexing.
 *
 * Copyright (C) 2002  Southern Storm Software, Pty Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

class Test
{
	void m1(int[] x, int y)
	{
		int i1;

		// First operand to array indexing must be an array or indexed type.
		i1 = 3[y];
		i1 = Int32[y];

		// All arguments must be coercable to int, uint, long, or ulong.
		i1 = x["Hello World"];

		// Array accesses must have the correct number of indices.
		i1 = x[1, 2];
	}
}
