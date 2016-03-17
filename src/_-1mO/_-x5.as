// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.x5

package 1mO{
    import flash.display.Sprite;
    import flash.text.TextField;
    import _04_._1JZ;
    import AO.nz;
    import flash.filters.DropShadowFilter;
    import _CU._13j;

    public class x5 extends Sprite {

        public static const 1yz:int = 22;
        public static const 1Mz:int = 26;

        public function x5(_arg1:String, _arg2:String){
            var _local3:TextField;
            super();
            this.doubleClickEnabled = false;
            this.mouseEnabled = false;
            _local3 = new TextField();
            var _local4:nz = _1JZ.0JF().getInstance(nz);
            _local4.apply(_local3, 16, 15792127, false, true);
            _local3.width = (1fd.jO - (1Mz * 2));
            _local3.height = (1fd.1YC - 101);
            _local3.multiline = true;
            _local3.wordWrap = true;
            _local3.htmlText = _arg2;
            _local3.x = 1Mz;
            _local3.y = 53;
            _local3.filters = [new DropShadowFilter(0, 0, 0)];
            06G(_local3);
            addChild(_local3);
            var _local5:_13j = 1fd.1UU(_arg1, 1yz, 6, true);
            addChild(_local5);
        }

        private static function 06G(_arg1:TextField):void{
            _arg1.mouseWheelEnabled = false;
        }


    }
}//package 1mO

