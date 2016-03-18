// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//h0.1mR

package h0{
    import _ZE.Panel;
    import _Jy._1HZ;
    import 0qj.1ae;
    import com.company.assembleegameclient.objects.GameObject;
    import 0DE.k;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.objects.Container;
    import flash.events.MouseEvent;
    import 0qj.EquipmentToolTip;
    import 0DE.1f;
    import 0Px.0J9;
    import AO.du;
    import 0qj.6P;
    import 1jB.1Ha;
    import __AS3__.vec.Vector;

    public class 1mR extends Panel {

        private static const 1BE:Array = [0, 0, 0, 0];
        private static const 02R:Object = {
            1:[[1, 0, 0, 1], 1BE, 1BE, [0, 1, 1, 0]],
            2:[[1, 0, 0, 0], 1BE, 1BE, [0, 1, 0, 0], [0, 0, 0, 1], 1BE, 1BE, [0, 0, 1, 0]],
            3:[[1, 0, 0, 1], 1BE, 1BE, [0, 1, 1, 0], [1, 0, 0, 0], 1BE, 1BE, [0, 1, 0, 0], [0, 0, 0, 1], 1BE, 1BE, [0, 0, 1, 0]]
        };

        private const padding:uint = 4;
        private const 0eQ:uint = 4;
        public const 1z6:_1HZ = new _1HZ(1ae);

        public var owner:GameObject;
        private var tooltip:1ae;
        private var 1y8:k;
        public var curPlayer:Player;
        protected var 1st:int;
        public var 16t:Boolean;

        public function 1mR(_arg1:GameObject, _arg2:Player, _arg3:int){
            super(null);
            this.owner = _arg1;
            this.curPlayer = _arg2;
            this.1st = _arg3;
            var _local4:Container = (_arg1 as Container);
            if ((((_arg1 == _arg2)) || (_local4)))
            {
                this.16t = true;
            };
        }

        public function hideTooltip():void{
            if (this.tooltip)
            {
                this.tooltip.1QR();
                this.tooltip = null;
                this.1y8 = null;
            };
        }

        public function 20x():void{
            if (((((!(stage)) || (!(this.tooltip)))) || (!(this.tooltip.stage))))
            {
                return;
            };
            if (this.1y8)
            {
                this.tooltip.1QR();
                this.tooltip = null;
                this.Sw(this.1y8);
            };
        }

        private function 0ow(_arg1:MouseEvent):void{
            if (!stage)
            {
                return;
            };
            var _local2:k = (_arg1.currentTarget as k);
            this.Sw(_local2);
            this.1y8 = _local2;
        }

        private function Sw(_arg1:k):void{
            var _local2:String;
            if (_arg1.0ep.itemId > 0)
            {
                this.tooltip = new EquipmentToolTip(_arg1.0ep.itemId, this.curPlayer, ((this.owner) ? this.owner.objectType_ : -1), this.FQ());
            } else
            {
                if ((_arg1 is 1f))
                {
                    _local2 = 0J9.SA((_arg1 as 1f).itemType);
                } else
                {
                    _local2 = du.Mj;
                };
                this.tooltip = new 6P(0x363636, 0x9B9B9B, null, du.Ci, 200, {itemType:du.0y4(_local2)});
            };
            this.tooltip.0tW(_arg1);
            this.1z6.dispatch(this.tooltip);
        }

        private function FQ():String{
            if (this.owner == this.curPlayer)
            {
                return (1Ha._CURRENT_PLAYER);
            };
            if ((this.owner is Player))
            {
                return (1Ha.OTHER_PLAYER);
            };
            return (1Ha.NPC);
        }

        protected function 1b7(_arg1:k, _arg2:uint, _arg3:uint):void{
            _arg1.0aJ(02R[_arg2][_arg3]);
            _arg1.addEventListener(MouseEvent.ROLL_OVER, this.0ow);
            _arg1.x = (int((_arg3 % this.0eQ)) * (k.WIDTH + this.padding));
            _arg1.y = (int((_arg3 / this.0eQ)) * (k.HEIGHT + this.padding));
            addChild(_arg1);
        }

        public function setItems(_arg1:Vector.<int>, _arg2:int=0):void{
        }

        public function 1WF(_arg1:Boolean):void{
            mouseEnabled = _arg1;
        }

        override public function draw():void{
            this.setItems(this.owner.1Wz, this.1st);
        }


    }
}//package h0

