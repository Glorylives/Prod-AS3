// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.0Li

package BG{
    import 0UV.Lq;
    import com.company.assembleegameclient.game.0ix;

    public class 0Li {

        [Inject]
        public var 1fz:Lq;
        [Inject]
        public var view:GiftStatusDisplay;
        [Inject]
        public var 1Gw:0ix;


        public function initialize():void{
            this.1fz.add(this.0MO);
            if (this.1Gw.0ZP)
            {
                this.view.25w();
            } else
            {
                this.view.1By();
            };
        }

        private function 0MO():void{
            if (this.1Gw.0ZP)
            {
                this.view.25w();
            } else
            {
                this.view.1By();
            };
        }


    }
}//package BG

