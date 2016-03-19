// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.0tK

package _5z{
import _1yZ._1go;

import _Jy._1HZ;

import com.company.assembleegameclient.util._0s0;
import com.company.assembleegameclient.util._BJ;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.util._V4;

    public class _0tK {

        public const _1iq:_1HZ = new _1HZ();

        private var _1uQ:XML;
        private var id:int;
        private var type:int;
        private var rarity:String;
        private var name:String;
        private var JC:int;
        public var _0S1:Array;
        private var skinID:int;
        private var skin:_BJ;

        public function _0tK(_arg1:int=undefined){
            this._0S1 = [new _25U(), new _25U(), new _25U()];
            super();
            this.id = _arg1;
            this._1uQ = <data/>;
            this._0V();
        }

        private static function _0uC(_arg1:int):String{
            return (ObjectLibrary._0sm(_arg1).Description);
        }

        private static function _1Pb(_arg1:int):String{
            return (ObjectLibrary._0sm(_arg1).DisplayId);
        }

        public static function clone(_arg1:_0tK):_0tK{
            var _local2:_0tK = new _0tK(_arg1.id);
            return (_local2);
        }


        private function _0V():void{
            var _local1:_25U;
            for each (_local1 in this._0S1)
            {
                _local1._1iq.add(this._0ZX);
            }
        }

        public function _21t():Boolean{
            var _local2:_25U;
            var _local1:int;
            for each (_local2 in this._0S1)
            {
                if (_local2.level == 100)
                {
                    _local1++;
                }
            }
            return ((_local1 == this._0S1.length));
        }

        private function _0ZX(_arg1:_25U):void{
            this._1iq.dispatch();
        }

        public function apply(_arg1:XML):void{
            this.IU(_arg1);
            this._00q(_arg1);
        }

        private function IU(_arg1:XML):void{
            ((_arg1.@instanceId) && (this.setID(_arg1.@instanceId)));
            ((_arg1.@type) && (this.setType(_arg1.@type)));
            ((_arg1.@name) && (this.setName(_arg1.@name)));
            ((_arg1.@skin) && (this._1es(_arg1.@skin)));
            ((_arg1.@rarity) && (this._0xL(_arg1.@rarity)));
        }

        public function _00q(_arg1:XML):void{
            var _local2:uint;
            var _local4:_25U;
            var _local5:int;
            var _local3:uint = this._0S1.length;
            _local2 = 0;
            while (_local2 < _local3)
            {
                _local4 = this._0S1[_local2];
                _local5 = _arg1.Abilities.Ability[_local2].@type;
                _local4.name = _1Pb(_local5);
                _local4.description = _0uC(_local5);
                _local4.level = _arg1.Abilities.Ability[_local2].@power;
                _local4.points = _arg1.Abilities.Ability[_local2].@points;
                _local2++;
            }
        }

        public function _1m7():String{
            return (this._1uQ.Family);
        }

        public function setID(_arg1:int):void{
            this.id = _arg1;
        }

        public function _try ():int{
            return (this.id);
        }

        public function setType(_arg1:int):void{
            this.type = _arg1;
            this._1uQ = ObjectLibrary.GD[this.type];
        }

        public function getType():int{
            return (this.type);
        }

        public function _0xL(_arg1:uint):void{
            this.rarity = _1dH._1tV(_arg1).value;
            this._1MY(_arg1);
            this._1iq.dispatch();
        }

        private function _1MY(_arg1:uint):void{
            this._0S1[0].setUnlocked(true);
            this._0S1[1].setUnlocked((_arg1 >= _1dH.gt._17h));
            this._0S1[2].setUnlocked((_arg1 >= _1dH.z._17h));
        }

        public function _1qz():String{
            return (this.rarity);
        }

        public function setName(_arg1:String):void{
            this.name = _arg1;
            this._1iq.dispatch();
        }

        public function getName():String{
            return (this.name);
        }

        public function _1cx(_arg1:int):void{
            this.JC = _arg1;
            this._1iq.dispatch();
        }

        public function _087():int{
            return (this.JC);
        }

        public function _1es(_arg1:int):void{
            this.skinID = _arg1;
            this._1iq.dispatch();
        }

        public function u5():int{
            return (this.skinID);
        }

        public function _15c():Bitmap{
            this.qd();
            var _local1:_0s0 = this.skin.imageFromAngle(0, _BJ._1OS, 0);
            var _local2:int = (((this.rarity == _1dH.cn.value)) ? 40 : 80);
            var _local3:BitmapData = TextureRedrawer.resize(_local1.image_, _local1.mask_, _local2, true, 0, 0);
            _local3 = _1go._0Lr(_local3, 0);
            return (new Bitmap(_local3));
        }

        public function _09F():_0s0{
            this.qd();
            return (((this.skin) ? this.skin.imageFromAngle(0, _BJ._1OS, 0) : null));
        }

        private function qd():void{
            var _local1:XML = ObjectLibrary._0vY(ObjectLibrary.Uq(this.skinID));
            var _local2:String = _local1.AnimatedTexture.File;
            var _local3:int = _local1.AnimatedTexture.Index;
            this.skin = _V4._1Q2(_local2, _local3);
        }


    }
}//package 5z

