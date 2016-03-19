// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.0NW

package _5z{
    public class _0NW {

        private static const zK:Object = {
            Humanoid:"Pets.humanoid",
            Feline:"Pets.feline",
            Canine:"Pets.canine",
            Avian:"Pets.avian",
            Exotic:"Pets.exotic",
            Farm:"pets.Farm",
            Woodland:"Pets.woodland",
            Reptile:"Pets.reptile",
            Insect:"pets.Insect",
            Penguin:"pets.Penguin",
            Aquatic:"Pets.aquatic",
            Spooky:"Pets.spooky",
            Automaton:"Pets.automaton"
        };


        public static function _1So(_arg1:String):String{
            var _local2:String = zK[_arg1];
            _local2 = ((_local2) || ((((_arg1 == "? ? ? ?")) ? "Pets.miscellaneous" : "")));
            return (_local2);
        }


    }
}//package 5z

