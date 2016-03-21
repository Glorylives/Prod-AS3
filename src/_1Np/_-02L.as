// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.02L

package 1Np{

    import com.company.assembleegameclient.objects.GameObject;
    import flash.display.BitmapData;
    import com.company.util.AssetLibrary;
    import com.company.assembleegameclient.util.TextureRedrawer;


    public class 02L extends 0F- {

        private var eS:Vector.<1uO>;
        private var 0zk:Vector.<1uO>;
        private var 7x:GameObject;
        private var PV:Number = 0;
        private var 0cn:Number = 0;
        private var 1k7:lW;
        private var bitmapData:BitmapData;
        private var y5:Number;

        public function 02L(_arg1:lW, _arg2:GameObject){
            this.7x = _arg2;
            this.eS = new Vector.<1uO>();
            this.0zk = new Vector.<1uO>();
            this.1k7 = _arg1;
            if (this.1k7.bitmapFile)
            {
                this.bitmapData = AssetLibrary.1JR(this.1k7.bitmapFile, this.1k7.bitmapIndex);
                this.bitmapData = TextureRedrawer.redraw(this.bitmapData, this.1k7.size, true, 0);
            } else
            {
                this.bitmapData = TextureRedrawer.redrawSolidSquare(this.1k7.color, this.1k7.size);
            }
        }

        public static function 1WJ(_arg1:lW, _arg2:GameObject):02L{
            return (new 02L(_arg1, _arg2));
        }


        override public function update(_arg1:int, _arg2:int):Boolean{
            var _local4:Number;
            var _local9:1uO;
            var _local10:1uO;
            var _local3:Number = (_arg1 / 1000);
            _local4 = (_arg2 / 1000);
            if (this.7x.map_ == null)
            {
                return (false);
            }
            x_ = this.7x.x_;
            y_ = this.7x.y_;
            z_ = (this.7x.z_ + this.1k7.zOffset);
            this.0cn = (this.0cn + _local4);
            var _local5:Number = (this.1k7.rate * this.0cn);
            var _local6:int = (_local5 - this.PV);
            var _local7:int;
            while (_local7 < _local6)
            {
                if (this.eS.length)
                {
                    _local9 = this.eS.pop();
                } else
                {
                    _local9 = new 1uO(this.bitmapData);
                }
                _local9.initialize((this.1k7.life + (this.1k7.lifeVariance * ((2 * Math.random()) - 1))), (this.1k7.speed + (this.1k7.speedVariance * ((2 * Math.random()) - 1))), (this.1k7.speed + (this.1k7.speedVariance * ((2 * Math.random()) - 1))), (this.1k7.rise + (this.1k7.riseVariance * ((2 * Math.random()) - 1))), z_);
                map_.addObj(_local9, (x_ + (this.1k7.rangeX * ((2 * Math.random()) - 1))), (y_ + (this.1k7.rangeY * ((2 * Math.random()) - 1))));
                this.0zk.push(_local9);
                _local7++;
            }
            this.PV = (this.PV + _local6);
            var _local8:int;
            while (_local8 < this.0zk.length)
            {
                _local10 = this.0zk[_local8];
                _local10.ru = (_local10.ru - _local4);
                if (_local10.ru <= 0)
                {
                    this.0zk.splice(_local8, 1);
                    map_.removeObj(_local10.objectId_);
                    _local8--;
                    this.eS.push(_local10);
                } else
                {
                    _local10.1gp = (_local10.1gp + (this.1k7.riseAcc * _local4));
                    _local10.x_ = (_local10.x_ + (_local10.0Ti * _local4));
                    _local10.y_ = (_local10.y_ + (_local10.22y * _local4));
                    _local10.z_ = (_local10.z_ + (_local10.1gp * _local4));
                }
                _local8++;
            }
            return (true);
        }

        override public function removeFromMap():void{
            var _local1:1uO;
            for each (_local1 in this.0zk)
            {
                map_.removeObj(_local1.objectId_);
            }
            this.0zk = null;
            this.eS = null;
            super.removeFromMap();
        }


    }
}//package 1Np

