// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//23a.1xa

package 23a{
    import 1uF.1Mf;
    import WZ.0Te;
    import tn.0ec;
    import 0Mo.db;
    import 1qg.11S;
    import tn.0a0;

    public class 1xa extends 1Mf {

        [Inject]
        public var view:ReskinCharacterView;
        [Inject]
        public var player:0Te;
        [Inject]
        public var model:0ec;
        [Inject]
        public var 0N4:db;
        [Inject]
        public var closeDialogs:11S;
        private var 0sP:0a0;


        override public function initialize():void{
            this.0sP = this.0DZ();
            this.view.selected.add(this.14J);
            this.view.zu.add(this.Vw);
        }

        private function 0DZ():0a0{
            return (this.model.0NO().0sP);
        }

        override public function destroy():void{
            this.view.selected.remove(this.14J);
            this.view.zu.remove(this.Vw);
        }

        private function 14J():void{
            this.closeDialogs.dispatch();
            this.0N4.dispatch(this.0sP.05i());
        }

        private function Vw():void{
            this.closeDialogs.dispatch();
        }


    }
}//package 23a

