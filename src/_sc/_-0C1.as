// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sC.0C1

package sC{
    import 1uF.1Mf;
    import h0.1mR;
    import WZ._NV;
    import WZ.0Te;
    import gx.1z1;
    import 0xo.lZ;
    import 0xo.1Js;
    import 1Bg.1hy;
    import 5z.0TC;
    import 21k.1Xb;
    import 5z.0OH;
    import 5z.zL;
    import 0UV.0rh;
    import 0DE.WE;
    import 0qj.1ae;
    import 0DE.14l;
    import eC.WK;
    import 0Z-.0YK;
    import com.company.assembleegameclient.util.Yj;
    import yA.Ch;
    import com.company.assembleegameclient.map.Map;
    import 1r4.1T2;
    import 0Px.0J9;
    import com.company.assembleegameclient.objects.OneWayContainer;
    import com.company.assembleegameclient.objects.Container;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import 0DE.k;
    import h0.1cg;
    import h0.0t7;
    import com.company.assembleegameclient.parameters.Parameters;
    import 1u-.1Ys;
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.objects.Player;

    public class 0C1 extends 1Mf {

        [Inject]
        public var view:1mR;
        [Inject]
        public var 8e:_NV;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 12J:1z1;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 1UT:1Js;
        [Inject]
        public var showToolTip:1hy;
        [Inject]
        public var 1UK:0TC;
        [Inject]
        public var 0lQ:1Xb;
        [Inject]
        public var PG:0OH;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var 12K:0rh;


        override public function initialize():void{
            this.view.addEventListener(WE.ITEM_MOVE, this.lC);
            this.view.addEventListener(WE.ITEM_SHIFT_CLICK, this.1R4);
            this.view.addEventListener(WE.ITEM_DOUBLE_CLICK, this.Go);
            this.view.addEventListener(WE.ITEM_CTRL_CLICK, this.0UQ);
            this.view.1z6.add(this.0xJ);
        }

        private function 0xJ(_arg1:1ae):void{
            this.showToolTip.dispatch(_arg1);
        }

        override public function destroy():void{
            super.destroy();
        }

        private function lC(_arg1:WE):void{
            var _local4:14l;
            var _local5:WK;
            var _local6:int;
            var _local7:0YK;
            var _local8:int;
            var _local2:14l = _arg1.tile;
            var _local3:* = Yj.0j4(_local2.0dV(), WK, 14l, 0YK, Ch, Map);
            if ((((_local2.mh() == 1z1.0Rl)) || ((((_local2.mh() == 1z1.Ww)) && (!(Boolean((_local3 as 0YK))))))))
            {
                this.1lW(_arg1);
                return;
            };
            if ((_local3 is 14l))
            {
                _local4 = (_local3 as 14l);
                if (this.16Q(_local2, _local4))
                {
                    this.ui(_local2, _local4);
                };
            } else
            {
                if ((_local3 is WK))
                {
                    _local5 = (_local3 as WK);
                    _local6 = _local2.0ZD.curPlayer.nextAvailableInventorySlot();
                    if (_local6 != -1)
                    {
                        1T2.1hP.invSwap(this.view.curPlayer, _local2.0ZD.owner, _local2.1eu, _local2.0ep.itemId, this.view.curPlayer, _local6, 0J9.1Qx);
                        _local2.setItem(0J9.1Qx);
                        _local2.0bZ(this.view.curPlayer);
                    };
                } else
                {
                    if ((_local3 is 0YK))
                    {
                        _local7 = (_local3 as 0YK);
                        if (!_local7.25g)
                        {
                            this.1UK.26l = _local2.1eu;
                            this.1UK.n- = _local2.0ZD.owner.objectId_;
                            _local8 = _local2.mh();
                            _local7.setItem(_local8, _local2.1eu, _local2.0ZD.owner.objectId_, this.0kb(_local2));
                            _local2.setItem(0J9.1Qx);
                            _local2.blockingItemUpdates = true;
                            _local2.0bZ(this.view.curPlayer);
                            _local7.15s(_local8);
                        };
                    } else
                    {
                        if ((((_local3 is Map)) || ((this.11u.ja.map.mouseX < 300))))
                        {
                            this.d1(_local2);
                        };
                    };
                };
            };
            _local2.u0();
        }

        private function 0kb(_arg1:14l):Function{
            var itemSlot:14l = _arg1;
            return (function ():void{
                itemSlot.blockingItemUpdates = false;
            });
        }

        private function 1lW(_arg1:WE):void{
            var _local2:14l = _arg1.tile;
            var _local3:* = Yj.0j4(_local2.0dV(), WK, Map);
            if ((_local3 is WK))
            {
                this.0I6(_local2);
            } else
            {
                if ((((_local3 is Map)) || ((this.11u.ja.map.mouseX < 300))))
                {
                    this.d1(_local2);
                };
            };
            _local2.u0();
        }

        private function 0I6(_arg1:14l):void{
            if (((((((!(1T2.1hP)) || (!(this.view.16t)))) || (!(_arg1)))) || ((this.12J.08L(_arg1.mh()).0kC <= this.11u.ja.map.player_.getPotionCount(_arg1.mh())))))
            {
                return;
            };
            1T2.1hP.invSwapPotion(this.view.curPlayer, this.view.owner, _arg1.1eu, _arg1.0ep.itemId, this.view.curPlayer, 1z1.gp(_arg1.mh()), 0J9.1Qx);
            _arg1.setItem(0J9.1Qx);
            _arg1.0bZ(this.view.curPlayer);
        }

        private function 16Q(_arg1:14l, _arg2:14l):Boolean{
            if (!_arg1.canHoldItem(_arg2.mh()))
            {
                return (false);
            };
            if (!_arg2.canHoldItem(_arg1.mh()))
            {
                return (false);
            };
            if ((1mR(_arg2.parent).owner is OneWayContainer))
            {
                return (false);
            };
            if (((_arg1.blockingItemUpdates) || (_arg2.blockingItemUpdates)))
            {
                return (false);
            };
            return (true);
        }

        private function d1(_arg1:14l):void{
            var _local4:Container;
            var _local5:Vector.<int>;
            var _local6:int;
            var _local7:int;
            var _local2:Boolean = ObjectLibrary.1JM(_arg1.0ep.itemId);
            var _local3:Container = (this.view.owner as Container);
            if ((((this.view.owner == this.view.curPlayer)) || (((((_local3) && ((_local3.ownerId_ == this.view.curPlayer.accountId_)))) && (!(_local2))))))
            {
                _local4 = (this.8e.25S as Container);
                if (_local4)
                {
                    _local5 = _local4.1Wz;
                    _local6 = _local5.length;
                    _local7 = 0;
                    while (_local7 < _local6)
                    {
                        if (_local5[_local7] < 0)
                        {
                            break;
                        };
                        _local7++;
                    };
                    if (_local7 < _local6)
                    {
                        this.015(_arg1, _local4, _local7);
                    } else
                    {
                        1T2.1hP.invDrop(this.view.owner, _arg1.1eu, _arg1.mh());
                    };
                } else
                {
                    1T2.1hP.invDrop(this.view.owner, _arg1.1eu, _arg1.mh());
                };
            };
            _arg1.setItem(-1);
        }

        private function ui(_arg1:k, _arg2:k):Boolean{
            if (((((((!(1T2.1hP)) || (!(this.view.16t)))) || (!(_arg1)))) || (!(_arg2))))
            {
                return (false);
            };
            1T2.1hP.invSwap(this.view.curPlayer, this.view.owner, _arg1.1eu, _arg1.0ep.itemId, _arg2.0ZD.owner, _arg2.1eu, _arg2.0ep.itemId);
            var _local3:int = _arg1.mh();
            _arg1.setItem(_arg2.mh());
            _arg2.setItem(_local3);
            _arg1.0bZ(this.view.curPlayer);
            _arg2.0bZ(this.view.curPlayer);
            return (true);
        }

        private function 015(_arg1:k, _arg2:Container, _arg3:int):void{
            if (((((((!(1T2.1hP)) || (!(this.view.16t)))) || (!(_arg1)))) || (!(_arg2))))
            {
                return;
            };
            1T2.1hP.invSwap(this.view.curPlayer, this.view.owner, _arg1.1eu, _arg1.0ep.itemId, _arg2, _arg3, -1);
            _arg1.setItem(0J9.1Qx);
        }

        private function 1R4(_arg1:WE):void{
            var _local2:14l = _arg1.tile;
            if ((((_local2.0ZD is 1cg)) || ((_local2.0ZD is 0t7))))
            {
                1T2.1hP.useItem_new(_local2.0ZD.owner, _local2.1eu);
            };
        }

        private function 0UQ(_arg1:WE):void{
            var _local2:14l;
            var _local3:int;
            if (Parameters.data_.inventorySwap)
            {
                _local2 = _arg1.tile;
                if ((_local2.0ZD is 1cg))
                {
                    _local3 = _local2.0ZD.curPlayer.swapInventoryIndex(this.1UT.1Ee);
                    if (_local3 != -1)
                    {
                        1T2.1hP.invSwap(this.view.curPlayer, _local2.0ZD.owner, _local2.1eu, _local2.0ep.itemId, this.view.curPlayer, _local3, 0J9.1Qx);
                        _local2.setItem(0J9.1Qx);
                        _local2.0bZ(this.view.curPlayer);
                    };
                };
            };
        }

        private function Go(_arg1:WE):void{
            var _local2:14l = _arg1.tile;
            if (this.tA(_local2))
            {
                this.0a8(_local2);
            } else
            {
                if (this.0M0(_local2))
                {
                    this.0I6(_local2);
                } else
                {
                    if ((_local2.0ZD is 0t7))
                    {
                        this.068(_local2);
                    } else
                    {
                        this.1G4(_local2);
                    };
                };
            };
            this.view.20x();
        }

        private function 0a8(_arg1:14l):void{
            if ((_arg1.0ZD is 0t7))
            {
                this.0AV(_arg1);
            } else
            {
                if (this.1G5.1Pk(this.11u.ja.map))
                {
                    this.PG.DS(_arg1);
                    this.0lQ.dispatch();
                } else
                {
                    this.12K.dispatch(1Ys.make(Parameters.1Wj, "server.use_in_petyard"));
                };
            };
        }

        private function tA(_arg1:14l):Boolean{
            return ((_arg1.mh() == 3321));
        }

        private function 0M0(_arg1:14l):Boolean{
            return ((((_arg1.mh() == 1z1.0Rl)) || ((_arg1.mh() == 1z1.Ww))));
        }

        private function 0AV(_arg1:14l):void{
            var _local2:int = this.view.curPlayer.nextAvailableInventorySlot();
            if (_local2 != -1)
            {
                1T2.1hP.invSwap(this.view.curPlayer, this.view.owner, _arg1.1eu, _arg1.0ep.itemId, this.view.curPlayer, _local2, 0J9.1Qx);
            };
        }

        private function 068(_arg1:14l):void{
            var _local2:GameObject = _arg1.0ZD.owner;
            var _local3:Player = this.view.curPlayer;
            var _local4:int = this.view.curPlayer.nextAvailableInventorySlot();
            if (_local4 != -1)
            {
                1T2.1hP.invSwap(_local3, this.view.owner, _arg1.1eu, _arg1.0ep.itemId, this.view.curPlayer, _local4, 0J9.1Qx);
            } else
            {
                1T2.1hP.useItem_new(_local2, _arg1.1eu);
            };
        }

        private function 1G4(_arg1:14l):void{
            var _local2:GameObject = _arg1.0ZD.owner;
            var _local3:Player = this.view.curPlayer;
            var _local4:int = ObjectLibrary.Hq(_arg1.mh(), _local3);
            if (_local4 != -1)
            {
                1T2.1hP.invSwap(_local3, _local2, _arg1.1eu, _arg1.mh(), _local3, _local4, _local3.1Wz[_local4]);
            } else
            {
                1T2.1hP.useItem_new(_local2, _arg1.1eu);
            };
        }


    }
}//package sC

