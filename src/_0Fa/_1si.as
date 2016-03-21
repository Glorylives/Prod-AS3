// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Fa.1si

package _0Fa{
    import flash.display.Sprite;
    import flash.display.DisplayObject;
    import flash.utils.getTimer;
    import flash.events.MouseEvent;
    import _0xo._lZ;
    import com.company.assembleegameclient.objects.Player;
    import _04_._1JZ;
    import flash.geom.Rectangle;

    public class _1si extends Sprite {

        private static const CG:uint = 20000;

        private var _1yU:int;
        private var list:Vector.<DisplayObject>;
        private var count:uint;
        private var _1US:uint;
        private var _1P2:uint;
        private var _0X:Boolean;
        public var playerObjectId:int;
        public var playerName:String = "";
        public var _0GY:Boolean = false;
        public var _17n:Boolean = false;

        public function _1si(_arg1:Vector.<DisplayObject>, _arg2:int, _arg3:int, _arg4:Boolean, _arg5:int, _arg6:String, _arg7:Boolean, _arg8:Boolean){
            mouseEnabled = true;
            this._1yU = _arg2;
            this._1US = _arg3;
            this.list = _arg1;
            this.count = _arg1.length;
            this._1P2 = getTimer();
            this._0X = _arg4;
            this.playerObjectId = _arg5;
            this.playerName = _arg6;
            this._0GY = _arg7;
            this._17n = _arg8;
            this._1GS();
            this.Mb();
            addEventListener(MouseEvent.RIGHT_MOUSE_DOWN, this._03E);
        }

        public function _03E(_arg1:MouseEvent):void{
            var hmod:_lZ;
            var aPlayer:Player;
            var e:MouseEvent = _arg1;
            try
            {
                hmod = _1JZ._0JF().getInstance(_lZ);
                if (((((!((hmod.ja.map.goDict_[this.playerObjectId] == null))) && ((hmod.ja.map.goDict_[this.playerObjectId] is Player)))) && (!((hmod.ja.map.player_.objectId_ == this.playerObjectId)))))
                {
                    aPlayer = (hmod.ja.map.goDict_[this.playerObjectId] as Player);
                    hmod.ja.FP(aPlayer, e.stageX, e.stageY);
                } else
                {
                    if (((((((!(this._17n)) && (!((this.playerName == null))))) && (!((this.playerName == ""))))) && (!((hmod.ja.map.player_.name_ == this.playerName)))))
                    {
                        hmod.ja.FP(null, e.stageX, e.stageY, this.playerName, this._0GY);
                    } else
                    {
                        if (((((((this._17n) && (!((this.playerName == null))))) && (!((this.playerName == ""))))) && (!((hmod.ja.map.player_.name_ == this.playerName)))))
                        {
                            hmod.ja.FP(null, e.stageX, e.stageY, this.playerName, false, true);
                        }
                    }
                }
            } catch(e:Error)
            {
            }
        }

        public function ik():Boolean{
            return ((((getTimer() > (this._1P2 + CG))) || (this._0X)));
        }

        private function _1GS():void{
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
                _local3.y = (((this._1US - _local4.height) * 0.5) - this._1US);
                if ((_local1 + _local4.width) > this._1yU)
                {
                    _local3.x = 0;
                    _local1 = 0;
                    _local5 = 0;
                    while (_local5 < _local2)
                    {
                        this.list[_local5].y = (this.list[_local5].y - this._1US);
                        _local5++;
                    }
                }
                _local1 = (_local1 + _local4.width);
                _local2++;
            }
        }

        private function Mb():void{
            var _local1:DisplayObject;
            for each (_local1 in this.list)
            {
                addChild(_local1);
            }
        }


    }
}//package _0Fa

