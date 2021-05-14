using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Anagrama;

namespace UnitTestAnagrama
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void IsAnagram_1()
        {
            bool anagrama = Program.IsAnagram("amor","roma");
            Assert.AreEqual(true, anagrama);
        }
        [TestMethod]
        public void IsAnagram_2()
        {
            bool anagrama = Program.IsAnagram("Fresa", "Frase");
            Assert.AreEqual(true, anagrama);
        }
        [TestMethod]
        public void IsAnagram_3()
        {
            bool anagrama = Program.IsAnagram("Sapo", "Sopa");
            Assert.AreEqual(true, anagrama);
        }
        [TestMethod]
        public void IsAnagram_4()
        {
            bool anagrama = Program.IsAnagram("America", "Europa");
            Assert.AreEqual(false, anagrama);
        }
        [TestMethod]
        public void IsAnagram_5()
        {
            bool anagrama = Program.IsAnagram("amar", "roma");
            Assert.AreEqual(false, anagrama);
        }
    }
}
