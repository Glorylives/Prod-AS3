// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.0kx

package 0QW{
    import 0hd.Frame;
    import 0hd.pv;
    import flash.events.MouseEvent;
    import flash.events.Event;

    public class 0kx extends Frame {

        public var s:pv;

        public function 0kx(_arg1:String){
            super("Tile properties", "Cancel", "Save", null);
            this.s = new pv("Object Name", false);
            if (_arg1 != null)
            {
                this.s.inputText_.text = _arg1;
            }
            I2(this.s);
            0er.addEventListener(MouseEvent.CLICK, this.onCancel);
            9u.addEventListener(MouseEvent.CLICK, this.0-p);
        }

        private function onCancel(_arg1:MouseEvent):void{
            dispatchEvent(new Event(Event.CANCEL));
        }

        private function 0-p(_arg1:MouseEvent):void{
            dispatchEvent(new Event(Event.COMPLETE));
        }


    }
}//package 0QW

