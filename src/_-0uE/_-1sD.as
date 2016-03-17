// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1sD

package 0uE{
    import flash.display.Sprite;
    import com.company.assembleegameclient.ui.1nN;
    import XF.1eq;
    import flash.events.MouseEvent;
    import 1PB.cO;
    import 0IN.h;

    public class 1sD extends Sprite {

        public var buttonOne:1nN;
        public var buttonTwo:1nN;
        public var JG:1eq;
        public var 1nu:1eq;

        public function 1sD(){
            this.buttonOne = new 1nN(14, "buttonOne", 70);
            this.buttonTwo = new 1nN(14, "buttonTwo", 70);
            this.JG = new 1eq(this.buttonOne, MouseEvent.CLICK);
            this.1nu = new 1eq(this.buttonTwo, MouseEvent.CLICK);
            super();
            this.18t();
            this.PM();
        }

        private function PM():void{
            addChild(this.buttonOne);
            addChild(this.buttonTwo);
        }

        private function 18t():void{
            var _local3:1nN;
            var _local1:Array = [this.buttonOne, this.buttonTwo];
            var _local2:cO = new cO();
            for each (_local3 in _local1)
            {
                _local2.push(_local3.textChanged);
            };
            _local2.complete.addOnce(this.2W);
        }

        private function 2W():void{
            this.buttonOne.x = h.1k5;
            this.buttonTwo.x = ((h.1h9 - this.buttonTwo.width) - h.1k5);
        }


    }
}//package 0uE

