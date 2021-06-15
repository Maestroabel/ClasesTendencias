using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace UnitTestRange
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void Test_1()
        {
            Range a = new Range("[3,5)");
            Range b = new Range("[3,5)");
            bool res = a.notEquals(b);
            Assert.AreEqual(res, false);
        }
        [TestMethod]
        public void Test_2_1()
        {
            Range a = new Range("[2,10)");
            Range b = new Range("[3,5)");
            bool res = a.notEquals(b);
            Assert.AreEqual(res, true);
        }
        [TestMethod]
        public void Test_2_2()
        {
            Range a = new Range("[2,5)");
            Range b = new Range("[3,10)");
            bool res = a.notEquals(b);
            Assert.AreEqual(res, true);
        }
        [TestMethod]
        public void Test_2_3()
        {
            Range a = new Range("[3,5)");
            Range b = new Range("[2,10)");
            bool res = a.notEquals(b);
            Assert.AreEqual(res, true);
        }
        [TestMethod]
        public void Test_3()
        {
            Assert.ThrowsException<NullReferenceException>(() => new Range(null));
        }
        [TestMethod]
        public void Test_4()
        {
            Assert.ThrowsException<ArgumentOutOfRangeException>(() => new Range(""));
        }
        [TestMethod]
        public void Test_5()
        {
            Range a = new Range("[3,hola)");
            Range b = new Range("[2,10)");
            bool res = a.notEquals(b);
            Assert.AreEqual(res, true);
        }
        [TestMethod]
        public void Test_6()
        {
            Range a = new Range(" , ");
            Range b = new Range("[2,10)");
            bool res = a.notEquals(b);
            Assert.AreEqual(res, true);
        }
    }
}
