// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Wd.Gf

package _1Wd{
import _04m._0so;
import _04m._1S;

import _0OG._22M;
    import flash.utils.Dictionary;
    import zr.*;

    public class _Gf implements _1yq {

        private static const _1fv:int = 6;

        private var _1ck:_1S;

        public function Gf(_arg1:_0so):void{
            var _local2:Vector.<uint> = Vector.<uint>([0, 1, 2, 2, 1, 3]);
            if (_arg1 != null)
            {
                this._1ck = _arg1.createIndexBuffer(_1fv);
                this._1ck.uploadFromVector(_local2, 0, _1fv);
            }
        }

        public function apply(_arg1:Class, _arg2:_22M, _arg3:Dictionary):Object{
            return (this._1ck);
        }

        public function destroy():void{
        }


    }
}//package 1Wd

