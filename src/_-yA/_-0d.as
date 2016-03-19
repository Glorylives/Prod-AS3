// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yA.0d

package yA{
    import 1uF.1Mf;
    import 1qg.0io;
    import 1qg.11S;
    import _0OG._22M;
    import 0xo.lZ;
    import N.08e;
    import N.1dw;
    import 0xk.09v;
    import OZ.08g;
    import 1r4.1T2;
    import 0gd.GTween;
    import 0pT.1qk;
    import flash.events.TimerEvent;
    import 1zG.1lm;
    import flash.events.MouseEvent;
    import 1zG.1fI;

    public class 0d extends 1Mf {

        public static var 1E0:Number = -1;

        [Inject]
        public var container:1MN;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var kf:_22M;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var Fn:08e;
        [Inject]
        public var 1HQ:1dw;
        public var 0pM:int = -1;
        public var 1w5:09v;
        public var WB:08g;
        public var 0iP:1T2;
        private var view:Ch;
        private var iH:Ch;
        private var 1qG:Boolean = false;


        override public function initialize():void{
            if (this.container.parent == null)
            {
                return;
            }
            var _local1:Number = 0.2;
            if (((!((this.view == null))) && (!((this.view.parent == null)))))
            {
                this.93();
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
            if (((((!((this.11u == null))) && (!((this.11u.ja == null))))) && (!((this.11u.ja.gsc_ == null)))))
            {
                this.0iP = this.11u.ja.gsc_;
                this.0iP.questFetch();
                this.view.Jl(true);
            } else
            {
                this.D2();
                return;
            }
            this.Fn.add(this.1xm);
            this.1HQ.add(this.CP);
            Ch.closed.add(this.D2);
        }

        private function 1bY():void{
            this.93();
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
            this.93();
            this.closeDialogs.dispatch();
        }

        private function 2-k(_arg1:TimerEvent):void{
            if (Math.random() < 0.5)
            {
                this.view.init(1, 3205, "AAAAAAHHH we are in need _of this {goal} now. Help help help.", "http://i.imgur.com/ceobPxd.png");
            } else
            {
                this.view.init(1, 1793, "WOAAH we are in need _of this {goal} now. Help help.", "https://www.google.com/images/srpr/logo11w.png");
            }
        }

        private function 1xm(_arg1:1lm):void{
            this.0pM = int(_arg1.goal);
            var _local2:int = _arg1.tier;
            if (_local2 > 0)
            {
                this.view.init(int(_arg1.tier), this.0pM, _arg1.description, _arg1.image);
                this.1Ag();
            } else
            {
                if (_local2 == -1)
                {
                    if (((!((this.iH == null))) || (((!((1E0 == -1))) && ((1E0 == new Date().dayUTC))))))
                    {
                        this.view.0EZ();
                        1E0 = new Date().dayUTC;
                    } else
                    {
                        this.D2();
                    }
                } else
                {
                    this.view.0xR(_arg1.description);
                }
            }
        }

        private function CP(_arg1:1fI):void{
            var _local2:Boolean = Boolean(_arg1.ok);
            var _local3:String = String(_arg1.message);
            this.1qG = false;
            if (this.WB != null)
            {
                this.WB.addEventListener(MouseEvent.CLICK, this.2-5);
                this.WB.1gl();
                this.WB.1wG("OK");
                this.WB.05w(0x545454);
                this.WB.draw();
                this.1w5.11I();
                this.view.Sb();
            }
        }

        private function 1Ag():void{
            this.1w5 = this.view.BN();
            this.WB = this.view.1ew();
            this.1w5.Ma.remove(this.0yV);
            this.1w5.Ma.add(this.0yV);
            this.1w5.1F3.remove(this.TZ);
            this.1w5.1F3.add(this.TZ);
            this.WB.removeEventListener(MouseEvent.CLICK, this.ok);
            this.WB.removeEventListener(MouseEvent.CLICK, this.2-5);
        }

        private function 93():void{
            this.Fn.remove(this.1xm);
            this.1HQ.remove(this.1xm);
            if (this.1w5 != null)
            {
                this.1w5.Ma.remove(this.0yV);
                this.1w5.1F3.remove(this.TZ);
            }
            if (this.WB != null)
            {
                this.WB.removeEventListener(MouseEvent.CLICK, this.ok);
                this.WB.removeEventListener(MouseEvent.CLICK, this.2-5);
            }
        }

        private function resetVars():void{
            this.0pM = -1;
            this.1w5 = null;
            this.WB = null;
            this.0pM = -1;
            this.1w5 = null;
            this.WB = null;
            this.0iP = null;
        }

        override public function destroy():void{
            this.93();
        }

        private function 0yV(_arg1:int):void{
            if (((!((this.1w5 == null))) && (!(this.1qG))))
            {
                if (_arg1 == this.0pM)
                {
                    this.WB.addEventListener(MouseEvent.CLICK, this.ok);
                    this.1w5.0LZ(false);
                    this.1w5.1Qj = false;
                    this.1w5.updateTitle();
                } else
                {
                    this.1w5.0Ve();
                    this.1w5.1T0();
                    this.1w5.0LZ(true);
                }
            }
        }

        private function TZ():void{
        }

        private function ok(_arg1:MouseEvent):void{
            if (this.0iP != null)
            {
                this.WB.removeEventListener(MouseEvent.CLICK, this.ok);
                this.WB.1wG("Tinkering");
                this.WB.05w(0x545454);
                this.WB.draw();
                this.1qG = true;
                this.0iP.questRedeem(this.1w5.objectId, this.1w5.w, this.1w5.itemId);
                this.view.ok();
            }
        }

        private function 2-5(_arg1:MouseEvent):void{
            this.initialize();
        }


    }
}//package yA

