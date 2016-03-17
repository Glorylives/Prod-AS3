// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.0xA

package 2--{
    import 0uE.KC;
    import 0IN.1qO;
    import 0q4.Size;
    import com.company.assembleegameclient.ui.1-p;

    public class 0xA extends 1Xr {

        private static const padding:int = 12;
        private static const 9H:int = 217;

        public var 0Vh:PetPicker;
        public var 1tf:KC;

        public function 0xA(_arg1:PetPicker){
            super("PetPicker.title", "PetPicker.text", null, null, null);
            this.0Vh = _arg1;
            this.1Lp();
            this.1tf = 1qO.19W(203);
            box_.addChild(this.1tf);
        }

        override protected function setDialogWidth():int{
            return (330);
        }

        private function 1Lp():void{
            this.0Vh.setSize(new Size((203 - (padding * 2)), 9H));
            this.0Vh.1Xp(8);
            this.0Vh.eB(48);
        }

        override protected function drawAdditionalUI():void{
            super.drawAdditionalUI();
            this.0Dq();
            this.1sP();
        }

        private function 1sP():void{
            this.0Vh.x = padding;
            this.0Vh.y = this.274();
            box_.addChild(this.0Vh);
        }

        private function 0Dq():void{
            var _local1:1-p;
            _local1 = new 1-p((203 - (padding * 2)), 0);
            _local1.x = padding;
            _local1.y = this.274();
            box_.addChild(_local1);
        }

        private function 274():Number{
            return ((box_.getBounds(this).bottom + padding));
        }

        override protected function getBoxHeight():Number{
            return ((super.getBoxHeight() - (this.0Vh.height - 9H)));
        }


    }
}//package 2--

