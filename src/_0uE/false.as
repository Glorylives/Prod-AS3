// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.false

package 0uE{
    import 1uF.1Mf;
    import 5z.zL;
    import 1qg.0io;
    import 5z.0TC;

    public class false extends 1Mf {

        [Inject]
        public var view:PetFuser;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 1UK:0TC;


        override public function initialize():void{
            if (!this.1UK.06h)
            {
                this.1UK.06h = this.1G5.1tI();
            }
            this.view.initialize(this.1UK);
        }


    }
}//package 0uE

