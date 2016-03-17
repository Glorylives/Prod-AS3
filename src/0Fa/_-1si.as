// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.1si

package 0Fa{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.DisplayObject;
    import flash.utils.getTimer;
    import flash.events.MouseEvent;
    import 0xo.lZ;
    import com.company.assembleegameclient.objects.Player;
    import _04_._1JZ;
    import flash.geom.Rectangle;

    public class 1si extends Sprite {

        private static const CG:uint = 20000;

        private var 1yU:int;
        private var list:Vector.<DisplayObject>;
        private var count:uint;
        private var 1US:uint;
        private var 1P2:uint;
        private var 0X-:Boolean;
        public var playerObjectId:int;
        public var playerName:String = "";
        public var 0GY:Boolean = false;
        public var 17n:Boolean = false;

        public function 1si(_arg1:Vector.<DisplayObject>, _arg2:int, _arg3:int, _arg4:Boolean, _arg5:int, _arg6:String, _arg7:Boolean, _arg8:Boolean){
            mouseEnabled = true;
            this.1yU = _arg2;
            this.1US = _arg3;
            this.list = _arg1;
            this.count = _arg1.length;
            this.1P2 = getTimer();
            this.0X- = _arg4;
            this.playerObjectId = _arg5;
            this.playerName = _arg6;
            this.0GY = _arg7;
            this.17n = _arg8;
            this.1GS();
            this.Mb();
            addEventListener(MouseEvent.RIGHT_MOUSE_DOWN, this.03E);
        }

        public function 03E(_arg1:MouseEvent):void{
            var hmod:lZ;
            var aPlayer:Player;
            var e:MouseEvent = _arg1;
            try
            {
                hmod = _1JZ.0JF().getInstance(lZ);
                if (((((!((hmod.ja.map.goDict_[this.playerObjectId] == null))) && ((hmod.ja.map.goDict_[this.playerObjectId] is Player)))) && (!((hmod.ja.map.player_.objectId_ == this.playerObjectId)))))
                {
                    aPlayer = (hmod.ja.map.goDict_[this.playerObjectId] as Player);
                    hmod.ja.FP(aPlayer, e.stageX, e.stageY);
                } else
                {
                    if (((((((!(this.17n)) && (!((this.playerName == null))))) && (!((this.playerName == ""))))) && (!((hmod.ja.map.player_.name_ == this.playerName)))))
                    {
                        hmod.ja.FP(null, e.stageX, e.stageY, this.playerName, this.0GY);
                    } else
                    {
                        if (((((((this.17n) && (!((this.playerName == null))))) && (!((this.playerName == ""))))) && (!((hmod.ja.map.player_.name_ == this.playerName)))))
                        {
                            hmod.ja.FP(null, e.stageX, e.stageY, this.playerName, false, true);
                        };
                    };
                };
            } catch(e:Error)
            {
            };
        }

        public function ik():Boolean{
            return ((((getTimer() > (this.1P2 + CG))) || (this.0X-)));
        }

        private function 1GS():void{
            var _local1:int;
            var _local3:DisplayObject;
            var _local4:Rectangle;
            var _local5:int;
            _local1 = 0;
            var _local2:int;
            while (_local2 < this.count)
            {
                _local3 = this.list[_local2];
                _local4 = _local3.getRect(_local3);
                _local3.x = _local1;
                _local3.y = (((this.1US - _local4.height) * 0.5) - this.1US);
                if ((_local1 + _local4.width) > this.1yU)
                {
                    _local3.x = 0;
                    _local1 = 0;
                    _local5 = 0;
                    while (_local5 < _local2)
                    {
                        this.list[_local5].y = (this.list[_local5].y - this.1US);
                        _local5++;
                    };
                };
                _local1 = (_local1 + _local4.width);
                _local2++;
            };
        }

        private function Mb():void{
            var _local1:DisplayObject;
            for each (_local1 in this.list)
            {
                addChild(_local1);
            };
        }


    }
}//package 0Fa

