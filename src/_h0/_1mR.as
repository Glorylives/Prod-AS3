// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//h0.1mR

package _h0{
import _0DE._1f;
import _0DE._k;

import _0Px._0J9;

import _0qj.EquipmentToolTip;

import _0qj._1ae;
import _0qj._6P;

import _1jB._1Ha;

import _AO._du;

import _Jy._1HZ;

import _ZE.Panel;

import com.company.assembleegameclient.objects.Container;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;

import flash.events.MouseEvent;

public class _1mR extends Panel {

        private static const _1BE:Array = [0, 0, 0, 0];
        private static const _02R:Object = {
            1:[[1, 0, 0, 1], _1BE, _1BE, [0, 1, 1, 0]],
            2:[[1, 0, 0, 0], _1BE, _1BE, [0, 1, 0, 0], [0, 0, 0, 1], _1BE, _1BE, [0, 0, 1, 0]],
            3:[[1, 0, 0, 1], _1BE, _1BE, [0, 1, 1, 0], [1, 0, 0, 0], _1BE, _1BE, [0, 1, 0, 0], [0, 0, 0, 1], _1BE, _1BE, [0, 0, 1, 0]]
        }

        private const padding:uint = 4;
        private const _0eQ:uint = 4;
        public const _1z6:_1HZ = new _1HZ(_1ae);

        public var owner:GameObject;
        private var tooltip:_1ae;
        private var _1y8:_k;
        public var curPlayer:Player;
        protected var _1st:int;
        public var _16t:Boolean;

        public function _1mR(_arg1:GameObject, _arg2:Player, _arg3:int){
            super(null);
            this.owner = _arg1;
            this.curPlayer = _arg2;
            this._1st = _arg3;
            var _local4:Container = (_arg1 as Container);
            if ((((_arg1 == _arg2)) || (_local4)))
            {
                this._16t = true;
            }
        }

        public function hideTooltip():void{
            if (this.tooltip)
            {
                this.tooltip._1QR();
                this.tooltip = null;
                this._1y8 = null;
            }
        }

        public function _20x():void{
            if (((((!(stage)) || (!(this.tooltip)))) || (!(this.tooltip.stage))))
            {
                return;
            }
            if (this._1y8)
            {
                this.tooltip._1QR();
                this.tooltip = null;
                this.Sw(this._1y8);
            }
        }

        private function _0ow(_arg1:MouseEvent):void{
            if (!stage)
            {
                return;
            }
            var _local2:_k = (_arg1.currentTarget as _k);
            this.Sw(_local2);
            this._1y8 = _local2;
        }

        private function Sw(_arg1:_k):void{
            var _local2:String;
            if (_arg1._0ep.itemId > 0)
            {
                this.tooltip = new EquipmentToolTip(_arg1._0ep.itemId, this.curPlayer, ((this.owner) ? this.owner.objectType_ : -1), this.FQ());
            } else
            {
                if ((_arg1 is _1f))
                {
                    _local2 = _0J9.SA((_arg1 as _1f).itemType);
                } else
                {
                    _local2 = _du._Mj;
                }
                this.tooltip = new _6P(0x363636, 0x9B9B9B, null, _du._Ci, 200, {itemType:_du._0y4(_local2)});
            }
            this.tooltip._0tW(_arg1);
            this._1z6.dispatch(this.tooltip);
        }

        private function FQ():String{
            if (this.owner == this.curPlayer)
            {
                return (_1Ha._CURRENT_PLAYER);
            }
            if ((this.owner is Player))
            {
                return (_1Ha.OTHER_PLAYER);
            }
            return (_1Ha.NPC);
        }

        protected function _1b7(_arg1:_k, _arg2:uint, _arg3:uint):void{
            _arg1._0aJ(_02R[_arg2][_arg3]);
            _arg1.addEventListener(MouseEvent.ROLL_OVER, this._0ow);
            _arg1.x = (int((_arg3 % this._0eQ)) * (_k.WIDTH + this.padding));
            _arg1.y = (int((_arg3 / this._0eQ)) * (_k.HEIGHT + this.padding));
            addChild(_arg1);
        }

        public function setItems(_arg1:Vector.<int>, _arg2:int=0):void{
        }

        public function _1WF(_arg1:Boolean):void{
            mouseEnabled = _arg1;
        }

        override public function draw():void{
            this.setItems(this.owner._1Wz, this._1st);
        }


    }
}//package h0

