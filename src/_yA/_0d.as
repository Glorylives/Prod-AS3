// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yA.0d

package _yA{
    import _1uF._1Mf;
    import _1qg._0io;
    import _1qg._11S;
    import _0OG._22M;
    import _0xo._lZ;
    import _N._08e;
    import _0gd.GTween;

import _OZ._08g;

import flash.events.TimerEvent;
    import _1zG._1lm;
    import flash.events.MouseEvent;

    public class _0d extends _1Mf {

        public static var _1E0:Number = -1;

        [Inject]
        public var container:_1MN;
        [Inject]
        public var _0n2:_0io;
        [Inject]
        public var closeDialogs:_11S;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var _11u:_lZ;
        [Inject]
        public var Fn:_08e;
        [Inject]
        public var _1HQ:_1dw;
        public var _0pM:int = -1;
        public var _1w5:_09v;
        public var WB:_08g;
        public var _0iP:_1T2;
        private var view:Ch;
        private var iH:Ch;
        private var _1qG:Boolean = false;


        override public function initialize():void{
            if (this.container.parent == null)
            {
                return;
            }
            var _local1:Number = 0.2;
            if (((!((this.view == null))) && (!((this.view.parent == null)))))
            {
                this._93();
                this.iH = this.view;
                this.resetVars();
                new GTween(this.iH, 0.4, {alpha:0});
                new 1qk(0.4, this.SC);
                _local1 = 0.4;
            }
            this.view = new Ch();
            this.container.addChild(this.view);
            this.view.alpha = 0;
            new GTween(this.view, _local1, {alpha:1});
            if (((((!((this._11u == null))) && (!((this._11u.ja == null))))) && (!((this._11u.ja.gsc_ == null)))))
            {
                this._0iP = this._11u.ja.gsc_;
                this._0iP.questFetch();
                this.view.Jl(true);
            } else
            {
                this.D2();
                return;
            }
            this.Fn.add(this._1xm);
            this._1HQ.add(this.CP);
            Ch.closed.add(this.D2);
        }

        private function _1bY():void{
            this._93();
            this.initialize();
        }

        private function SC():void{
            if (((!((this.iH == null))) && (!((this.iH.parent == null)))))
            {
                this.container.removeChild(this.iH);
            }
        }

        private function D2():void{
            Ch.closed.removeAll();
            this._93();
            this.closeDialogs.dispatch();
        }

        private function _2k(_arg1:TimerEvent):void{
            if (Math.random() < 0.5)
            {
                this.view.init(1, 3205, "AAAAAAHHH we are in need _of this {goal} now. Help help help.", "http://i.imgur.com/ceobPxd.png");
            } else
            {
                this.view.init(1, 1793, "WOAAH we are in need _of this {goal} now. Help help.", "https://www.google.com/images/srpr/logo11w.png");
            }
        }

        private function _1xm(_arg1:_1lm):void{
            this._0pM = int(_arg1.goal);
            var _local2:int = _arg1.tier;
            if (_local2 > 0)
            {
                this.view.init(int(_arg1.tier), this._0pM, _arg1.description, _arg1.image);
                this._1Ag();
            } else
            {
                if (_local2 == -1)
                {
                    if (((!((this.iH == null))) || (((!((1E0 == -1))) && ((1E0 == new Date().dayUTC))))))
                    {
                        this.view._0EZ();
                        _1E0 = new Date().dayUTC;
                    } else
                    {
                        this.D2();
                    }
                } else
                {
                    this.view._0xR(_arg1.description);
                }
            }
        }

        private function CP(_arg1:_1fI):void{
            var _local2:Boolean = Boolean(_arg1.ok);
            var _local3:String = String(_arg1.message);
            this._1qG = false;
            if (this.WB != null)
            {
                this.WB.addEventListener(MouseEvent.CLICK, this._25);
                this.WB._1gl();
                this.WB._1wG("OK");
                this.WB._05w(0x545454);
                this.WB.draw();
                this._1w5._11I();
                this.view.Sb();
            }
        }

        private function _1Ag():void{
            this._1w5 = this.view.BN();
            this.WB = this.view._1ew();
            this._1w5.Ma.remove(this._0yV);
            this._1w5.Ma.add(this._0yV);
            this._1w5._1F3.remove(this.TZ);
            this._1w5._1F3.add(this.TZ);
            this.WB.removeEventListener(MouseEvent.CLICK, this.ok);
            this.WB.removeEventListener(MouseEvent.CLICK, this._25);
        }

        private function _93():void{
            this.Fn.remove(this._1xm);
            this._1HQ.remove(this._1xm);
            if (this._1w5 != null)
            {
                this._1w5.Ma.remove(this._0yV);
                this._1w5._1F3.remove(this.TZ);
            }
            if (this.WB != null)
            {
                this.WB.removeEventListener(MouseEvent.CLICK, this.ok);
                this.WB.removeEventListener(MouseEvent.CLICK, this.2-5);
            }
        }

        private function resetVars():void{
            this._0pM = -1;
            this._1w5 = null;
            this.WB = null;
            this._0pM = -1;
            this._1w5 = null;
            this.WB = null;
            this._0iP = null;
        }

        override public function destroy():void{
            this._93();
        }

        private function _0yV(_arg1:int):void{
            if (((!((this._1w5 == null))) && (!(this._1qG))))
            {
                if (_arg1 == this._0pM)
                {
                    this.WB.addEventListener(MouseEvent.CLICK, this.ok);
                    this._1w5._0LZ(false);
                    this._1w5._1Qj = false;
                    this._1w5.updateTitle();
                } else
                {
                    this._1w5._0Ve();
                    this._1w5._1T0();
                    this._1w5._0LZ(true);
                }
            }
        }

        private function TZ():void{
        }

        private function ok(_arg1:MouseEvent):void{
            if (this._0iP != null)
            {
                this.WB.removeEventListener(MouseEvent.CLICK, this.ok);
                this.WB._1wG("Tinkering");
                this.WB._05w(0x545454);
                this.WB.draw();
                this._1qG = true;
                this._0iP.questRedeem(this._1w5.objectId, this._1w5.w, this._1w5.itemId);
                this.view.ok();
            }
        }

        private function _25(_arg1:MouseEvent):void{
            this.initialize();
        }


    }
}//package yA

