// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0D5.04v

package 0D5{
    import lq.1r8;
    import flash.external.ExternalInterface;

    public class 04v {

        [Inject]
        public var 7X:1r8;


        public function 0A2():void{
            if (ExternalInterface.available)
            {
                ExternalInterface.addCallback("updatePlayerCredits", this.updatePlayerCredits);
            }
        }

        private function updatePlayerCredits():void{
            this.7X.dispatch();
        }


    }
}//package 0D5

