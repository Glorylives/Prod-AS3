// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1WX

package 0uE{
    import 1uF.1Mf;
    import 5z.zL;
    import 5z.0TC;
    import 5z.TS;

    public class 1WX extends 1Mf {

        [Inject]
        public var view:FusionStrength;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var 1UK:0TC;


        override public function initialize():void{
            if (!this.1UK.06h)
            {
                this.1UK.06h = this.1G5.1tI();
            }
            if (this.1UK.0fw())
            {
                this.view.1dO(TS.1uP(this.1UK.06h, this.1UK.1lT));
            } else
            {
                this.view.reset();
            }
        }


    }
}//package 0uE

