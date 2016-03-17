// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//04m.1S-

package _04m{
    import flash.display3D.IndexBuffer3D;

    public class _1S {

        private var _1ck:IndexBuffer3D;

        public function _1S(_arg1:IndexBuffer3D){
            this._1ck = _arg1;
        }

        public function uploadFromVector(_arg1:Vector.<uint>, _arg2:int, _arg3:int):void{
            this._1ck.uploadFromVector(_arg1, _arg2, _arg3);
        }

        public function _0VS():IndexBuffer3D{
            return (this._1ck);
        }


    }
}//package 04m

