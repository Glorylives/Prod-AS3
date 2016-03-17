// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0W4.Zv

package 0W4{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class Zv {

        public var 1fL:Vector.<C->;

        public function Zv(_arg1:XML){
            var _local2:XML;
            this.1fL = new Vector.<C->();
            super();
            for each (_local2 in _arg1.Animation)
            {
                this.1fL.push(new C-(_local2));
            };
        }

    }
}//package 0W4

