// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.0H3

package 1oP{
    import 1uF.1Mf;
    import flash.utils.Timer;
    import tn.0ec;
    import WZ.0Te;
    import IN.uP;
    import kabam.rotmg.assets.services.0Vx;
    import tn.0dE;
    import tn.1iY;
    import flash.events.TimerEvent;
    import com.company.assembleegameclient.util.09g;
    import kabam.rotmg.assets.model.Animation;

    public class 0H3 extends 1Mf {

        private const 0sP:Object = new Object();
        private const 12g:Timer = new Timer(250, 1);

        [Inject]
        public var view:ClassDetailView;
        [Inject]
        public var 1z8:0ec;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var eo:uP;
        [Inject]
        public var factory:0Vx;
        private var character:0dE;
        private var 7Z:1iY;


        override public function initialize():void{
            this.character = this.1z8.0NO();
            this.12g.addEventListener(TimerEvent.TIMER, this.0e9);
            this.eo.add(this.1RH);
            this.0O9();
            this.1RH();
        }

        override public function destroy():void{
            this.eo.remove(this.1RH);
            this.12g.removeEventListener(TimerEvent.TIMER, this.0e9);
            this.view.06k(null);
            this.1dU();
        }

        private function 0O9():void{
            var _local1:int = this.SP.1ka.ho(this.character.id);
            var _local2:int = 09g.numStars(_local1);
            this.view.Va(this.character.name, this.character.description, _local2, this.SP.1ka.bestLevel(this.character.id), _local1);
            var _local3:int = 09g.nextStarFame(_local1, 0);
            this.view.iW(this.character.name, _local3);
        }

        private function 1RH(_arg1:1iY=null):void{
            _arg1 = ((_arg1) || (this.character.0sP.05i()));
            this.7Z = _arg1;
            this.12g.start();
        }

        private function 0e9(_arg1:TimerEvent):void{
            var _local2:Animation = (this.0sP[this.7Z.id] = ((this.0sP[this.7Z.id]) || (this.factory.0QF(this.7Z.26-, 200))));
            this.view.06k(_local2);
        }

        private function 1dU():void{
            var _local1:String;
            var _local2:Animation;
            for (_local1 in this.0sP)
            {
                _local2 = this.0sP[_local1];
                _local2.dispose();
                delete this.0sP[_local1];
            };
        }


    }
}//package 1oP

