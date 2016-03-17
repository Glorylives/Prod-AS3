// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.1dr

package 1PB{
    import flash.display.Sprite;
    import com.company.assembleegameclient.ui.StatusBar;
    import com.company.assembleegameclient.ui.GE;
    import AO.du;
    import com.company.assembleegameclient.objects.Player;
    import flash.events.Event;

    public class 1dr extends Sprite {

        private var oO:StatusBar;
        private var 00O:StatusBar;
        private var 0Mt:StatusBar;
        private var uV:StatusBar;
        private var 1Ut:Boolean;
        private var 1mw:int;
        private var y2:GE;

        public function 1dr(){
            this.oO = new StatusBar(176, 16, 5931045, 0x545454, du.05o);
            this.00O = new StatusBar(176, 16, 0xE25F00, 0x545454, du.1nj);
            this.0Mt = new StatusBar(176, 16, 14693428, 0x545454, du.10h);
            this.uV = new StatusBar(176, 16, 6325472, 0x545454, du.0b-);
            this.0Mt.y = 24;
            this.uV.y = 48;
            this.oO.visible = true;
            this.00O.visible = false;
            addChild(this.oO);
            addChild(this.00O);
            addChild(this.0Mt);
            addChild(this.uV);
        }

        public function update(_arg1:Player):void{
            this.oO.bM(du.05o, {level:_arg1.0Sj});
            if (_arg1.0Sj != 20)
            {
                if (this.y2)
                {
                    this.y2.update(_arg1.0bF);
                };
                if (!this.oO.visible)
                {
                    this.oO.visible = true;
                    this.00O.visible = false;
                };
                this.oO.draw(_arg1.exp_, _arg1.0Iq, 0);
                if (this.1mw != _arg1.1lt)
                {
                    this.1mw = _arg1.1lt;
                    if (this.1mw)
                    {
                        this.oO.01S();
                    } else
                    {
                        this.oO.0zD();
                    };
                };
                if (_arg1.0bF)
                {
                    if (!this.1Ut)
                    {
                        this.oO.addEventListener("MULTIPLIER_OVER", this.1fi);
                        this.oO.addEventListener("MULTIPLIER_OUT", this.rp);
                        this.1Ut = true;
                    };
                } else
                {
                    if (this.1Ut)
                    {
                        this.oO.removeEventListener("MULTIPLIER_OVER", this.1fi);
                        this.oO.removeEventListener("MULTIPLIER_OUT", this.rp);
                        this.1Ut = false;
                    };
                    if (((this.y2) && (this.y2.parent)))
                    {
                        removeChild(this.y2);
                        this.y2 = null;
                    };
                };
            } else
            {
                if (!this.00O.visible)
                {
                    this.00O.visible = true;
                    this.oO.visible = false;
                };
                this.00O.draw(_arg1.0fz, _arg1.0m2, 0);
            };
            this.0Mt.draw(_arg1.1VZ, _arg1.ba, _arg1.1j8, _arg1.1w7);
            this.uV.draw(_arg1.12a, _arg1.1nC, _arg1.24q, _arg1.0NB);
        }

        private function 1fi(_arg1:Event):void{
            addChild((this.y2 = new GE()));
        }

        private function rp(_arg1:Event):void{
            if (((this.y2) && (this.y2.parent)))
            {
                removeChild(this.y2);
                this.y2 = null;
            };
        }


    }
}//package 1PB

