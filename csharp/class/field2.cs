/*
 * field2.cs - Test volatile field accesses.
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
	volatile int x;

	int m1()
	{
		return x;
	}

	static int m2(Test t)
	{
		return t.x;
	}

	int m3(Test t)
	{
		return t.x;
	}

	void m4(int value)
	{
		x = value;
	}

	static void m5(Test t, int value)
	{
		t.x = value;
	}

	void m6(Test t, int value)
	{
		t.x = value;
	}
}
