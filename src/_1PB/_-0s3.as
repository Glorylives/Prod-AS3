// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.0s3

package 1PB{
    import 1uF.1Mf;
    import 0eZ.ER;
    import 1qg.11S;

    public class 0s3 extends 1Mf {

        [Inject]
        public var view:AgeVerificationDialog;
        [Inject]
        public var R7:ER;
        [Inject]
        public var closeDialogs:11S;


        override public function initialize():void{
            this.view.Ti.add(this.1Tz);
        }

        override public function destroy():void{
            this.view.Ti.remove(this.1Tz);
        }

        private function 1Tz(_arg1:Boolean):void{
            if (_arg1)
            {
                this.1Pt();
            } else
            {
                this.iu();
            }
        }

        private function 1Pt():void{
            this.R7.dispatch();
            this.closeDialogs.dispatch();
        }

        private function iu():void{
            this.closeDialogs.dispatch();
        }


    }
}//package 1PB

