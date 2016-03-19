// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.Fc

package eC{
    import 1uF.1Mf;
    import 1ay.0SL;
    import 1PB.bu;
    import com.company.assembleegameclient.objects.Player;
    import flash.events.MouseEvent;

    public class Fc extends 1Mf {

        [Inject]
        public var view:1HE;
        [Inject]
        public var II:0SL;
        [Inject]
        public var uk:0a9;
        [Inject]
        public var yF:bu;


        override public function initialize():void{
            this.view.0gA.add(this.1Hf);
            this.II.add(this.0G0);
            this.yF.add(this.1VP);
        }

        override public function destroy():void{
            this.view.0gA.remove(this.1Hf);
            this.II.remove(this.0G0);
        }

        private function 0G0(_arg1:Player):void{
            this.view.draw(_arg1);
        }

        private function 1Hf(_arg1:MouseEvent):void{
            if (this.view.07p == 1HE.jx)
            {
                this.view.nY();
                this.uk.dispatch(this.view);
            }
        }

        private function 1VP():void{
            this.view.3w();
        }


    }
}//package eC

