﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//RV.1Ii

package RV{
    import flash.display.DisplayObject;
    import __AS3__.vec.Vector;
    import 0q4.*;

    public class 1Ii implements Layout {

        private var padding:int = 0;


        public function 04W():int{
            return (this.padding);
        }

        public function 1Xp(_arg1:int):void{
            this.padding = _arg1;
        }

        public function layout(_arg1:Vector.<DisplayObject>, _arg2:int=0):void{
            var _local6:DisplayObject;
            var _local3:int = _arg2;
            var _local4:int = _arg1.length;
            var _local5:int;
            while (_local5 < _local4)
            {
                _local6 = _arg1[_local5];
                _local6.y = _local3;
                _local3 = (_local3 + (_local6.height + this.padding));
                _local5++;
            }
        }


    }
}//package RV

