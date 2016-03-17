// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sC.3s

package sC{
    import 1uF.1Mf;
    import h0.1cg;
    import 1ay.0SL;
    import com.company.assembleegameclient.objects.Player;

    public class 3s extends 1Mf {

        [Inject]
        public var view:1cg;
        [Inject]
        public var II:0SL;


        override public function initialize():void{
            this.II.add(this.0G0);
        }

        override public function destroy():void{
            this.II.remove(this.0G0);
        }

        private function 0G0(_arg1:Player):void{
            this.view.draw();
        }


    }
}//package sC

