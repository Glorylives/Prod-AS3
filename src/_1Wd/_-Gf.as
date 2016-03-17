// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Wd.Gf

package 1Wd{
    import 04m.1S-;
    import __AS3__.vec.Vector;
    import 04m.0so;
    import _0OG._22M;
    import flash.utils.Dictionary;
    import __AS3__.vec.*;
    import zr.*;

    public class Gf implements 1yq {

        private static const 1fv:int = 6;

        private var 1ck:1S-;

        public function Gf(_arg1:0so):void{
            var _local2:Vector.<uint> = Vector.<uint>([0, 1, 2, 2, 1, 3]);
            if (_arg1 != null)
            {
                this.1ck = _arg1.createIndexBuffer(1fv);
                this.1ck.uploadFromVector(_local2, 0, 1fv);
            };
        }

        public function apply(_arg1:Class, _arg2:_22M, _arg3:Dictionary):Object{
            return (this.1ck);
        }

        public function destroy():void{
        }


    }
}//package 1Wd

