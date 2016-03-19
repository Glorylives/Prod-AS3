// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.06j

package OZ{
    import flash.display.Sprite;
    import 0uE.IJ;
    import flash.display.DisplayObject;

    public class 06j extends Sprite {


        public static function make(_arg1:DisplayObject):Sprite{
            var _local4:IJ;
            if (_arg1 == null)
            {
                return (null);
            }
            var _local2:Sprite = new Sprite();
            var _local3:int = 8;
            _arg1.width = (291 - _local3);
            _arg1.height = ((598 - (_local3 * 2)) - 2);
            _local2.addChild(_arg1);
            _local4 = new IJ();
            _local4.draw(_arg1.width, (_arg1.height + 2), IJ.0qG);
            _local4.x = _arg1.x;
            _local4.y = (_arg1.y - 1);
            _local2.addChild(_local4);
            return (_local2);
        }


    }
}//package OZ

