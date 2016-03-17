// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.05S

package 0QW{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import com.company.util.IntPoint;
    import flash.display.Shape;
    import flash.display.Graphics;
    import flash.events.Event;

    public class 05S extends Sprite {

        public var tiles_:Vector.<IntPoint>;
        private var PD:Shape;
        private var 0PM:0kx;

        public function 05S(_arg1:Vector.<IntPoint>, _arg2:String){
            this.tiles_ = _arg1;
            this.PD = new Shape();
            var _local3:Graphics = this.PD.graphics;
            _local3.clear();
            _local3.beginFill(0, 0.8);
            _local3.drawRect(0, 0, 800, 600);
            _local3.endFill();
            addChild(this.PD);
            this.0PM = new 0kx(_arg2);
            this.0PM.addEventListener(Event.COMPLETE, this.onComplete);
            this.0PM.addEventListener(Event.CANCEL, this.onCancel);
            addChild(this.0PM);
        }

        public function 1sb():String{
            if (this.0PM.s.text() == "")
            {
                return (null);
            };
            return (this.0PM.s.text());
        }

        public function onComplete(_arg1:Event):void{
            dispatchEvent(new Event(Event.COMPLETE));
            parent.removeChild(this);
        }

        public function onCancel(_arg1:Event):void{
            parent.removeChild(this);
        }


    }
}//package 0QW

