// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//h0.1cg

package h0{

    import 0DE.0WY;
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.objects.Player;


    public class 1cg extends 1mR {

        private const 1c7:uint = 8;

        private var 0Hv:Vector.<0WY>;
        private var gq:Boolean;

        public function 1cg(_arg1:GameObject, _arg2:Player, _arg3:int=0, _arg4:Boolean=false){
            var _local6:0WY;
            super(_arg1, _arg2, _arg3);
            this.0Hv = new Vector.<0WY>(this.1c7);
            this.gq = _arg4;
            var _local5:int;
            while (_local5 < this.1c7)
            {
                _local6 = new 0WY((_local5 + 1st), this, 16t);
                _local6.15A((_local5 + 1));
                1b7(_local6, 2, _local5);
                this.0Hv[_local5] = _local6;
                _local5++;
            }
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
                        }
                    } else
                    {
                        if (this.0Hv[_local5].setItem(-1))
                        {
                            _local3 = true;
                        }
                    }
                    _local5++;
                }
                if (_local3)
                {
                    20x();
                }
            }
        }


    }
}//package h0

