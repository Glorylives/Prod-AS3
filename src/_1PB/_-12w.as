// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.12w

package 1PB{
    import 1uF.1Mf;
    import 0xo.lZ;
    import 1ay.0SL;
    import com.company.assembleegameclient.objects.Player;

    public class 12w extends 1Mf {

        [Inject]
        public var view:1dr;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var II:0SL;


        override public function initialize():void{
            this.II.add(this.0G0);
        }

        override public function destroy():void{
            this.II.add(this.0G0);
        }

        private function 0G0(_arg1:Player):void{
            this.view.update(_arg1);
        }


    }
}//package 1PB

