// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.1jH

package 1Np{
    import com.company.assembleegameclient.util.0Ep;

    public class 1jH extends Particle {

        private const 05B:Number = 0.0025;

        public var startTime:int;
        public var speed:Number;
        public var spread:Number;
        public var 0F2:Number;
        public var life:Number;
        public var lifeVariance:Number;
        public var speedVariance:Number;
        public var ru:Number;
        public var 1HB:Number;
        public var UX:Number;

        public function 1jH(_arg1:uint, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:Number, _arg6:Number){
            super(_arg1, 0, (75 + (Math.random() * 50)));
            this.0F2 = _arg2;
            this.life = (_arg3 * 1000);
            this.lifeVariance = _arg4;
            this.speedVariance = _arg5;
            this.spread = _arg6;
            this.1HB = 0;
            this.UX = 0;
        }

        public static function create(_arg1, _arg2:uint, _arg3:Number, _arg4:Number, _arg5:Number, _arg6:Number, _arg7:Number):1jH{
            var _local8:1jH = (0Ep.getObject(_arg1) as 1jH);
            if (!_local8)
            {
                _local8 = new 1jH(_arg2, _arg3, _arg4, _arg5, _arg6, _arg7);
            }
            return (_local8);
        }


        public function restart(_arg1:int, _arg2:int):void{
            this.startTime = _arg1;
            var _local3:Number = Math.random();
            this.speed = ((this.0F2 - (this.0F2 * (_local3 * (1 - this.speedVariance)))) * 10);
            if (this.spread > 0)
            {
                this.1HB = ((Math.random() * this.spread) - 0.1);
                this.UX = ((Math.random() * this.spread) - 0.1);
            }
            var _local4:Number = ((_arg2 - _arg1) / 1000);
            this.ru = (this.life - (this.life * (_local3 * (1 - this.lifeVariance))));
            z_ = (this.speed * _local4);
        }

        override public function removeFromMap():void{
            super.removeFromMap();
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local3:Number = ((_arg1 - this.startTime) / 1000);
            this.ru = (this.ru - _arg2);
            if (this.ru <= 0)
            {
                return (false);
            }
            z_ = (this.speed * _local3);
            if (this.spread > 0)
            {
                moveTo((x_ + ((this.1HB * _arg2) * this.05B)), (y_ + ((this.UX * _arg2) * this.05B)));
            }
            return (true);
        }


    }
}//package 1Np

