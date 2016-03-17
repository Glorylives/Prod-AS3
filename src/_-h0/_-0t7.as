// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//h0.0t7

package h0{
    import __AS3__.vec.Vector;
    import 0DE.14l;
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.objects.Player;
    import __AS3__.vec.*;

    public class 0t7 extends 1mR {

        private const 1c7:uint = 8;

        private var 0Hv:Vector.<14l>;

        public function 0t7(_arg1:GameObject, _arg2:Player){
            var _local4:14l;
            super(_arg1, _arg2, 0);
            this.0Hv = new Vector.<14l>(this.1c7);
            var _local3:int;
            while (_local3 < this.1c7)
            {
                _local4 = new 14l((_local3 + 1st), this, 16t);
                1b7(_local4, 2, _local3);
                this.0Hv[_local3] = _local4;
                _local3++;
            };
        }

        override public function setItems(_arg1:Vector.<int>, _arg2:int=0):void{
            var _local3:Boolean;
            var _local4:int;
            var _local5:int;
            if (_arg1)
            {
                _local3 = false;
                _local4 = _arg1.length;
                _local5 = 0;
                while (_local5 < this.1c7)
                {
                    if ((_local5 + 1st) < _local4)
                    {
                        if (this.0Hv[_local5].setItem(_arg1[(_local5 + 1st)]))
                        {
                            _local3 = true;
                        };
                    } else
                    {
                        if (this.0Hv[_local5].setItem(-1))
                        {
                            _local3 = true;
                        };
                    };
                    _local5++;
                };
                if (_local3)
                {
                    20x();
                };
            };
        }


    }
}//package h0

