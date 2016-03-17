// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0W4.Zv

package _0W4{
    public class _Zv {

        public var _1fL:Vector.<_C>;

        public function _Zv(_arg1:XML){
            var _local2:XML;
            this._1fL = new Vector.<_C>();
            super();
            for each (_local2 in _arg1.Animation)
            {
                this._1fL.push(new _C(_local2));
            };
        }

    }
}//package 0W4

