// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.1Rt

package eC{
    import 1uF.1Mf;
    import 0xo.lZ;
    import 0xo.1Js;
    import 1ay.0SL;
    import 1ay.0vu;
    import 0YY.125;
    import kabam.rotmg.assets.services.02W;
    import com.company.assembleegameclient.objects.1F9;
    import D5.1c8;
    import 1PB.bu;
    import 5z.zL;
    import 1qg.0io;
    import flash.events.MouseEvent;
    import 1Cr.L9;
    import 0uE.12q;
    import com.company.assembleegameclient.objects.Player;

    public class 1Rt extends 1Mf {

        [Inject]
        public var view:WK;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 1UT:1Js;
        [Inject]
        public var II:0SL;
        [Inject]
        public var 13E:0vu;
        [Inject]
        public var 0Bk:125;
        [Inject]
        public var Pp:02W;
        [Inject]
        public var xt:1F9;
        [Inject]
        public var 22k:1c8;
        [Inject]
        public var uk:0a9;
        [Inject]
        public var yF:bu;
        [Inject]
        public var 1Cm:0bp;
        [Inject]
        public var vM:zL;
        [Inject]
        public var 0n2:0io;
        private var Cr:Boolean = true;


        override public function initialize():void{
            this.view.xt = this.xt;
            this.view.22k = this.22k;
            this.view.0IV.add(this.0fF);
            this.II.addOnce(this.1Y8);
            this.uk.add(this.1y1);
            this.yF.add(this.06s);
            this.1Cm.add(this.5-);
            this.0Bk.add(this.1z5);
            this.view.DB(this.xt, this.22k, this.1Rh);
        }

        private function 1y1(_arg1:1HE):void{
            this.Cr = false;
            this.df();
            this.1Y8(this.11u.ja.map.player_);
        }

        private function 06s():void{
            this.Cr = true;
            this.df();
            this.1Y8(this.11u.ja.map.player_);
            this.view.0ik(1);
        }

        private function 5-():void{
            var _local1:int = (this.view.ce + 1);
            _local1 = (_local1 % this.view.ug.length);
            this.view.0ik(_local1);
        }

        override public function destroy():void{
            this.view.0IV.remove(this.0fF);
            this.13E.remove(this.bS);
            this.view.1pp.removeEventListener(MouseEvent.CLICK, this.1Rh);
        }

        private function 1Rh(_arg1:MouseEvent):void{
            this.0n2.dispatch(new L9());
        }

        private function 1Y8(_arg1:Player):void{
            if (!_arg1)
            {
                return;
            };
            this.view.Mg(this.Pp.cR(16w.0Jx), new 1xA(_arg1));
            if (this.Cr)
            {
                this.view.Mg(this.Pp.cR(16w.1Ju), new 1e8(this.view.HEIGHT));
            };
            if (_arg1.0Th)
            {
                this.view.Mg(this.Pp.cR(16w.ch), new GF(_arg1));
            } else
            {
                this.13E.add(this.bS);
            };
            if (this.vM.1tI())
            {
                this.view.Mg(this.Pp.cR(16w.0aN), new 12q());
            };
        }

        private function df():void{
            this.view.df();
        }

        private function 0fF(_arg1:String):void{
            this.1UT.1Ee = _arg1;
        }

        private function bS(_arg1:Boolean):void{
            var _local2:Player;
            if (_arg1)
            {
                _local2 = this.11u.ja.map.player_;
                this.view.Mg(this.Pp.cR(16w.ch), new GF(_local2));
                this.13E.remove(this.bS);
            };
        }

        private function 1z5():void{
            this.df();
            this.1Y8(this.11u.ja.map.player_);
        }


    }
}//package eC

