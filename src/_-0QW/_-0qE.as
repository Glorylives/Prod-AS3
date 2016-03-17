// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.0qE

package 0QW{
    import 0QW.0VH;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.BitmapData;
    import 0QW.1CW;
    import 0qj.1ae;
    import 0QW.*;

    class 0qE extends 0VH {

        public var Ss:XML;

        public function 0qE(_arg1:XML){
            var _local3:Bitmap;
            super(int(_arg1.@type));
            this.Ss = _arg1;
            var _local2:BitmapData = ObjectLibrary.getRedrawnTextureFromType(type_, 100, true, false);
            _local3 = new Bitmap(_local2);
            var _local4:Number = ((WIDTH - 4) / Math.max(_local3.width, _local3.height));
            _local3.scaleX = (_local3.scaleY = _local4);
            _local3.x = ((WIDTH / 2) - (_local3.width / 2));
            _local3.y = ((HEIGHT / 2) - (_local3.height / 2));
            addChild(_local3);
        }

        override protected function getToolTip():1ae{
            return (new 1CW(this.Ss));
        }


    }
}//package 0QW

