using System;
using System.Collections.Generic;
using System.Text;

namespace UnitTestRange
{
    class Range
    {
        public string range;
        public int NumLeft, NumRight;
        public bool OpenLeft, OpenRight;

        public Range(string Range)
        {
            range = Range;
            OpenLeft = range.Contains('(');
            OpenRight = range.Contains(')');
            string[] split = range.Split(',');
            int.TryParse(split[0][1..], out NumLeft);
            int.TryParse(split[1][0..^1], out NumRight);
            if (OpenLeft)
            {
                NumLeft++;
            }
            if (OpenRight)
            {
                NumRight--;
            }
        }

        public bool notEquals(Range r)
        {
            return r.NumLeft != NumLeft && r.NumRight != NumRight;
        }
    }
}
