// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//051.1JW

package _051{
    public class _1JW {


        public function _2J(_arg1:String, _arg2:Array):String{
            var _local3:int;
            var _local4:int;
            if (_arg2)
            {
                _local3 = _arg2.length;
                _local4 = 0;
                while (_local4 < _local3)
                {
                    _arg1 = _arg1.split((("{" + _local4) + "}")).join(_arg2[_local4]);
                    _local4++;
                };
            };
            return (_arg1);
        }


    }
}//package 051

