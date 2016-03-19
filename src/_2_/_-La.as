// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.La

package 2--{
    import 1uF.1Mf;
    import 5z.zL;
    import 0uE.0Gd;
    import 5z.0TC;
    import 1qg.0An;
    import 5z.0tK;

    public class La extends 1Mf {

        [Inject]
        public var view:PetPicker;
        [Inject]
        public var model:zL;
        [Inject]
        public var sB:0Gd;
        [Inject]
        public var 1UK:0TC;
        [Inject]
        public var 0n2:0An;


        override public function initialize():void{
            this.view.v(this.model.1O5());
            var _local1:0tK = (((this.1UK.selected)==0TC.LEFT) ? this.1UK.1lT : this.1UK.06h);
            if (_local1)
            {
                this.view.EZ(_local1);
            }
            if (((this.1UK.1lT) && (this.view.1EI)))
            {
                this.view.rx(this.1UK.1lT);
            }
            if (((this.1UK.06h) && (this.view.1EI)))
            {
                this.view.rx(this.1UK.06h);
            }
            this.view.0wT.addOnce(this.0L3);
        }

        private function 0L3(_arg1:0tK):void{
            if (this.1UK.selected == 0TC.LEFT)
            {
                this.1UK.06h = _arg1;
            } else
            {
                this.1UK.1lT = _arg1;
            }
            if (this.1UK.caller)
            {
                this.0n2.dispatch(new this.1UK.caller());
            }
        }


    }
}//package 2--

