// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//04m.1MZ

package _04m{
    import flash.display3D.Program3D;
    import flash.utils.ByteArray;

    public class _1MZ {

        private var Ik:Program3D;

        public function _1MZ(_arg1:Program3D){
            this.Ik = _arg1;
        }

        public function upload(_arg1:ByteArray, _arg2:ByteArray):void{
            this.Ik.upload(_arg1, _arg2);
        }

        public function _0PJ():Program3D{
            return (this.Ik);
        }


    }
}//package 04m

