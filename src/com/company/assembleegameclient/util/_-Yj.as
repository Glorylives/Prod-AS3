// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.Yj

package com.company.assembleegameclient.util{
    import flash.display.DisplayObject;

    public class Yj {


        public static function oH(_arg1:DisplayObject, _arg2:Class):DisplayObject{
            while (((_arg1) && (!((_arg1 is _arg2)))))
            {
                _arg1 = _arg1.parent;
            };
            return (_arg1);
        }

        public static function 0j4(_arg1:DisplayObject, ... _args):DisplayObject{
            var _local3:Class;
            while (_arg1)
            {
                for each (_local3 in _args)
                {
                    if ((_arg1 is _local3))
                    {
                        return (_arg1);
                    };
                };
                _arg1 = _arg1.parent;
            };
            return (_arg1);
        }


    }
}//package com.company.assembleegameclient.util

