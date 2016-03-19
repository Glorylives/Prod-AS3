// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.0Gd

package _0uE{
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import _5z._0tK;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import _1yZ._1go;

    public class _0Gd {

        public var _0YD:Number = 1.4;


        public function create(_arg1:_0tK, _arg2:int):_Py{
            var _local3:BitmapData = this._1ZW(_arg1, _arg2);
            var _local4:Bitmap = new Bitmap(_local3);
            var _local5:_Py = new _Py(_arg1);
            _local5._2t(_local4);
            return (_local5);
        }

        public function _1ZW(_arg1:_0tK, _arg2:int):BitmapData{
            var _local4:Number;
            var _local5:BitmapData;
            var _local3:BitmapData = ((_arg1._09F()) ? _arg1._09F().image_ : null);
            if (_local3)
            {
                _local4 = ((_arg2 - TextureRedrawer._1hO) / _local3.width);
                _local5 = TextureRedrawer.resize(_local3, _arg1._09F().mask_, 100, true, 0, 0, _local4);
                _local5 = _1go._0Lr(_local5, 0, this._0YD);
                return (_local5);
            }
            return (new HL(_arg2, _arg2));
        }


    }
}//package 0uE

