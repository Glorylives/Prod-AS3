// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.B7

package _1zp{
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;
    import com.company.util.MoreColorUtil;

    public class B7 extends 0vQ {

        private var 3l:KeyCodeBox;
        private var 1wr:Boolean;

        public function B7(_arg1:String, _arg2:String, _arg3:String, _arg4:Boolean=false){
            super(_arg1, _arg2, _arg3);
            this.3l = new KeyCodeBox(Parameters.data_[1aN]);
            this.3l.addEventListener(Event.CHANGE, this.1c0);
            addChild(this.3l);
            this.r3(_arg4);
        }

        public function r3(_arg1:Boolean):void{
            this.1wr = _arg1;
            transform.colorTransform = ((this.1wr) ? MoreColorUtil.1lu : MoreColorUtil.identity);
            mouseEnabled = !(this.1wr);
            mouseChildren = !(this.1wr);
        }

        override public function refresh():void{
            this.3l.0MM(Parameters.data_[1aN]);
        }

        private function 1c0(_arg1:Event):void{
            Parameters.setKey(1aN, this.3l.value());
            Parameters.save();
        }


    }
}//package _1zp

