// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.0FC

package 1UB{
    import 1uF.1Mf;
    import 1qg.11S;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.BitmapData;
    import flash.events.Event;

    public class 0FC extends 1Mf {

        [Inject]
        public var view:0eW;
        [Inject]
        public var closeDialogs:11S;


        override public function initialize():void{
            this.view.mM(this.TK());
            this.view.14x.add(this.1XA);
        }

        private function TK():BitmapData{
            return (ObjectLibrary.getRedrawnTextureFromType(6546, 80, true));
        }

        private function 1XA(_arg1:Event):void{
            this.closeDialogs.dispatch();
        }


    }
}//package 1UB

