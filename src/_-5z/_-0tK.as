// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.0tK

package 5z{
    import _Jy._1HZ;
    import com.company.assembleegameclient.util._BJ;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.util.0s0;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.display.BitmapData;
    import 1yZ.1go;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.util._V4;

    public class 0tK {

        public const 1iq:_1HZ = new _1HZ();

        private var 1uQ:XML;
        private var id:int;
        private var type:int;
        private var rarity:String;
        private var name:String;
        private var JC:int;
        public var 0S1:Array;
        private var skinID:int;
        private var skin:_BJ;

        public function 0tK(_arg1:int=undefined){
            this.0S1 = [new 25U(), new 25U(), new 25U()];
            super();
            this.id = _arg1;
            this.1uQ = <data/>
            ;
            this.0-V();
        }

        private static function 0uC(_arg1:int):String{
            return (ObjectLibrary.0sm(_arg1).Description);
        }

        private static function 1Pb(_arg1:int):String{
            return (ObjectLibrary.0sm(_arg1).DisplayId);
        }

        public static function clone(_arg1:0tK):0tK{
            var _local2:0tK = new 0tK(_arg1.id);
            return (_local2);
        }


        private function 0-V():void{
            var _local1:25U;
            for each (_local1 in this.0S1)
            {
                _local1.1iq.add(this.0ZX);
            };
        }

        public function 21t():Boolean{
            var _local2:25U;
            var _local1:int;
            for each (_local2 in this.0S1)
            {
                if (_local2.level == 100)
                {
                    _local1++;
                };
            };
            return ((_local1 == this.0S1.length));
        }

        private function 0ZX(_arg1:25U):void{
            this.1iq.dispatch();
        }

        public function apply(_arg1:XML):void{
            this.IU(_arg1);
            this.00q(_arg1);
        }

        private function IU(_arg1:XML):void{
            ((_arg1.@instanceId) && (this.setID(_arg1.@instanceId)));
            ((_arg1.@type) && (this.setType(_arg1.@type)));
            ((_arg1.@name) && (this.setName(_arg1.@name)));
            ((_arg1.@skin) && (this.1es(_arg1.@skin)));
            ((_arg1.@rarity) && (this.0xL(_arg1.@rarity)));
        }

        public function 00q(_arg1:XML):void{
            var _local2:uint;
            var _local4:25U;
            var _local5:int;
            var _local3:uint = this.0S1.length;
            _local2 = 0;
            while (_local2 < _local3)
            {
                _local4 = this.0S1[_local2];
                _local5 = _arg1.Abilities.Ability[_local2].@type;
                _local4.name = 1Pb(_local5);
                _local4.description = 0uC(_local5);
                _local4.level = _arg1.Abilities.Ability[_local2].@power;
                _local4.points = _arg1.Abilities.Ability[_local2].@points;
                _local2++;
            };
        }

        public function 1m7():String{
            return (this.1uQ.Family);
        }

        public function setID(_arg1:int):void{
            this.id = _arg1;
        }

        public function try ():int{
            return (this.id);
        }

        public function setType(_arg1:int):void{
            this.type = _arg1;
            this.1uQ = ObjectLibrary.GD[this.type];
        }

        public function getType():int{
            return (this.type);
        }

        public function 0xL(_arg1:uint):void{
            this.rarity = 1dH.1tV(_arg1).value;
            this.1MY(_arg1);
            this.1iq.dispatch();
        }

        private function 1MY(_arg1:uint):void{
            this.0S1[0].setUnlocked(true);
            this.0S1[1].setUnlocked((_arg1 >= 1dH.gt.17h));
            this.0S1[2].setUnlocked((_arg1 >= 1dH.z.17h));
        }

        public function 1qz():String{
            return (this.rarity);
        }

        public function setName(_arg1:String):void{
            this.name = _arg1;
            this.1iq.dispatch();
        }

        public function getName():String{
            return (this.name);
        }

        public function 1cx(_arg1:int):void{
            this.JC = _arg1;
            this.1iq.dispatch();
        }

        public function 087():int{
            return (this.JC);
        }

        public function 1es(_arg1:int):void{
            this.skinID = _arg1;
            this.1iq.dispatch();
        }

        public function u5():int{
            return (this.skinID);
        }

        public function 15c():Bitmap{
            this.qd();
            var _local1:0s0 = this.skin.imageFromAngle(0, _BJ.1OS, 0);
            var _local2:int = (((this.rarity == 1dH.cn.value)) ? 40 : 80);
            var _local3:BitmapData = TextureRedrawer.resize(_local1.image_, _local1.mask_, _local2, true, 0, 0);
            _local3 = 1go.0Lr(_local3, 0);
            return (new Bitmap(_local3));
        }

        public function 09F():0s0{
            this.qd();
            return (((this.skin) ? this.skin.imageFromAngle(0, _BJ.1OS, 0) : null));
        }

        private function qd():void{
            var _local1:XML = ObjectLibrary.0vY(ObjectLibrary.Uq(this.skinID));
            var _local2:String = _local1.AnimatedTexture.File;
            var _local3:int = _local1.AnimatedTexture.Index;
            this.skin = _V4.1Q2(_local2, _local3);
        }


    }
}//package 5z

