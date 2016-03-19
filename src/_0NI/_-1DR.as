// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.1DR

package 0NI{
    import __AS3__.vec.Vector;
    import 0Fr.0d8;
    import 0Fr.1da;
    import __AS3__.vec.*;
    import 0Fr.*;

    public class 1DR implements 0d8 {

        private const 0lf:Vector.<0d8> = new Vector.<0d8>();

        private var 1B2:uint = 16;


        public function get 0ZO():uint{
            return (this.1B2);
        }

        public function set 0ZO(_arg1:uint):void{
            this.1B2 = _arg1;
        }

        public function 1uk(_arg1:Object):1da{
            return (new ka(_arg1, this));
        }

        public function uu(_arg1:0d8):void{
            this.0lf.push(_arg1);
        }

        public function log(_arg1:Object, _arg2:uint, _arg3:int, _arg4:String, _arg5:Array=null):void{
            var _local6:0d8;
            if (_arg2 > this.1B2)
            {
                return;
            }
            for each (_local6 in this.0lf)
            {
                _local6.log(_arg1, _arg2, _arg3, _arg4, _arg5);
            }
        }


    }
}//package 0NI

