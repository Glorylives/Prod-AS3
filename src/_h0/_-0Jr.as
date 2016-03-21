// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//h0.0Jr

package h0{

    import 0DE.1f;
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.objects.Player;
    import com.company.util.Vb;
    import 1aj.1rh;
    import com.company.util.0Rw;


    public class 0Jr extends 1mR {

        public static const 1c7:uint = 4;

        private var 0Hv:Vector.<1f>;

        public function 0Jr(_arg1:GameObject, _arg2:Vector.<int>, _arg3:Player, _arg4:int=0){
            var _local6:1f;
            super(_arg1, _arg3, _arg4);
            this.0Hv = new Vector.<1f>(1c7);
            var _local5:int;
            while (_local5 < 1c7)
            {
                _local6 = new 1f(_local5, this, 16t);
                1b7(_local6, 1, _local5);
                _local6.setType(_arg2[_local5]);
                this.0Hv[_local5] = _local6;
                _local5++;
            }
        }

        public function Pr():0Rw{
            return (new Vb(1rh.toArray(this.0Hv)));
        }

        override public function setItems(_arg1:Vector.<int>, _arg2:int=0):void{
            var _local3:int;
            var _local4:int;
            if (_arg1)
            {
                _local3 = _arg1.length;
                _local4 = 0;
                while (_local4 < this.0Hv.length)
                {
                    if ((_local4 + _arg2) < _local3)
                    {
                        this.0Hv[_local4].setItem(_arg1[(_local4 + _arg2)]);
                    } else
                    {
                        this.0Hv[_local4].setItem(-1);
                    }
                    this.0Hv[_local4].updateDim(curPlayer);
                    _local4++;
                }
            }
        }


    }
}//package h0

