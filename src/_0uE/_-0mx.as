// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.0mx

package 0uE{
    import 1uF.1Mf;
    import 0nG.PetPanel;
    import 5z.zL;
    import 0YY.1WB;
    import 1Bg.1hy;
    import 0YY.8Z;
    import 0YY. null;
    import 0YY.125;
    import 1qg.0io;
    import _0OG._22M;
    import flash.events.MouseEvent;
    import 5z.0tK;
    import 0nG.0w7;
    import 0IN.h;
    import 0qj.1ae;

    public class 0mx extends 1Mf {

        [Inject]
        public var view:PetPanel;
        [Inject]
        public var vM:zL;
        [Inject]
        public var XG:1WB;
        [Inject]
        public var showToolTip:1hy;
        [Inject]
        public var 1iA:8Z;
        [Inject]
        public var XR: null;
        [Inject]
        public var 0Bk:125;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var kf:_22M;


        override public function initialize():void{
            this.view.setState(this.0en());
            this.view.1z6.add(this.0xJ);
            this.view.0RB.addEventListener(MouseEvent.CLICK, this.onButtonClick);
            this.view.089.addEventListener(MouseEvent.CLICK, this.0Ks);
            this.view.6g.addEventListener(MouseEvent.CLICK, this.onButtonClick);
            this.0Bk.add(this.1z5);
        }

        override public function destroy():void{
            this.view.089.removeEventListener(MouseEvent.CLICK, this.0Ks);
        }

        private function 0Ks(_arg1:MouseEvent):void{
            this.kf.map(0tK).1eo(this.view.petVO);
            this.0n2.dispatch(this.kf.getInstance(0w7));
        }

        private function 1z5():void{
            var _local1:0tK = this.vM.1tI();
            this.view.kz(!(_local1));
        }

        private function 0en():uint{
            if (this.0rf())
            {
                return (h.qE);
            };
            return (h.YE);
        }

        protected function onButtonClick(_arg1:MouseEvent):void{
            if (this.0rf())
            {
                this.1iA.dispatch(this.view.petVO.try ());
            } else
            {
                this.XR.dispatch(this.view.petVO.try ());
            };
        }

        private function 0xJ(_arg1:1ae):void{
            this.showToolTip.dispatch(_arg1);
        }

        private function 0rf():Boolean{
            return (((this.vM.1tI()) ? (this.vM.1tI().try () == this.view.petVO.try ()) : false));
        }


    }
}//package 0uE

