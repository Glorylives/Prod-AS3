// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ux.0tu

package 0Ux{
    import TN.xz;
    import _Jy._1HZ;
    import _CU._13j;
    import flash.display.DisplayObject;
    import flash.display.Sprite;
    import bD.0A-;
    import XF.lY;
    import flash.events.MouseEvent;
    import flash.filters.DropShadowFilter;
    import 1n4.1WS;

    public class 0tu extends xz {

        private static const VJ:int = 16;

        public var clicked:_1HZ;
        private var 1Dl:_13j;
        private var 07G:DisplayObject;
        private var 7U:int = -1;
        private var 3Q:Sprite;

        public function 0tu(){
            this.3Q = 0A-.gU();
            this.clicked = new lY(this, MouseEvent.CLICK);
            tabChildren = false;
            tabEnabled = false;
            this.0nT();
        }

        public function fK(_arg1:int):void{
            if (this.7U != _arg1)
            {
                this.7U = _arg1;
                this.0Dd();
            };
        }

        public function destroy():void{
            parent.removeChild(this);
        }

        private function 0nT():void{
            addChild(this.3Q);
            this.07G = makeIcon();
            addChild(this.07G);
            this.15b();
            this.fK(0);
        }

        private function 15b():void{
            this.1Dl = new _13j().setSize(VJ).setColor(0xFFFFFF);
            this.1Dl.filters = [new DropShadowFilter(0, 0, 0)];
            this.0Dd();
            addChild(this.1Dl);
        }

        private function 0Dd():void{
            this.1Dl.textChanged.addOnce(this.onTextChanged);
            this.1Dl.setStringBuilder(new 1WS(((this.7U.toString() + " day") + (((this.7U)>1) ? "s" : ""))));
        }

        private function onTextChanged():void{
            positionText(this.07G, this.1Dl);
        }


    }
}//package 0Ux

