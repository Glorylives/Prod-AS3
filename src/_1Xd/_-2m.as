// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Xd.2m

package 1Xd{
    import 1i-.0lM;
    import 1i-.Description;

    public class 2m extends 0lM {

        private var _value:Object;

        public function 2m(_arg1:Object){
            _value = _arg1;
        }

        private function 1zq(_arg1:Object, _arg2:Object):Boolean{
            if (isNaN((_arg1 as Number)))
            {
                return (isNaN((_arg2 as Number)));
            }
            if (_arg1 == null)
            {
                return ((_arg2 == null));
            }
            if ((_arg1 is Array))
            {
                return ((((_arg2 is Array)) && (20N((_arg1 as Array), (_arg2 as Array)))));
            }
            return ((_arg1 == _arg2));
        }

        private function 20N(_arg1:Array, _arg2:Array):Boolean{
            return (((24O(_arg1, _arg2)) && (0kl(_arg1, _arg2))));
        }

        override public function describeTo(_arg1:Description):void{
            _arg1.1VJ(_value);
        }

        private function 0kl(_arg1:Array, _arg2:Array):Boolean{
            var _local3:int;
            var _local4:int = _arg1.length;
            while (_local3 < _local4)
            {
                if (!1zq(_arg1[_local3], _arg2[_local3]))
                {
                    return (false);
                }
                _local3++;
            }
            return (true);
        }

        override public function matches(_arg1:Object):Boolean{
            return (1zq(_arg1, _value));
        }

        private function 24O(_arg1:Array, _arg2:Array):Boolean{
            return ((_arg1.length == _arg2.length));
        }


    }
}//package 1Xd

