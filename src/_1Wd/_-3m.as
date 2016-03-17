// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Wd.3m

package 1Wd{
    import 04m.0eX;
    import __AS3__.vec.Vector;
    import 04m.0so;
    import _0OG._22M;
    import flash.utils.Dictionary;
    import __AS3__.vec.*;
    import zr.*;

    public class 3m implements 1yq {

        private var fg:0eX;

        public function 3m(_arg1:0so){
            var _local2:Vector.<Number> = Vector.<Number>([-0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 1, 0, -0.5, -0.5, 0, 0, 1, 0.5, -0.5, 0, 1, 1]);
            this.fg = _arg1.createVertexBuffer(4, 5);
            this.fg.uploadFromVector(_local2, 0, 4);
        }

        public function apply(_arg1:Class, _arg2:_22M, _arg3:Dictionary):Object{
            return (this.fg);
        }

        public function destroy():void{
        }


    }
}//package 1Wd

