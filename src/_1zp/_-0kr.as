// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.0kr

package _1zp{
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;
    import __AS3__.vec.Vector;
    import 1n4.1Jo;

    public class 0kr extends 0vQ {

        private var callback_:Function;
        private var 98:0GF;

        public function 0kr(_arg1:String, _arg2:Vector.<1Jo>, _arg3:Array, _arg4:String, _arg5:String, _arg6:Function, _arg7:Number=0xFFFFFF){
            super(_arg1, _arg4, _arg5);
            1WU.setColor(_arg7);
            0Xr.tipText_.setColor(_arg7);
            this.callback_ = _arg6;
            this.98 = new 0GF(_arg2, _arg3, Parameters.data_[1aN], _arg7);
            this.98.addEventListener(Event.CHANGE, this.1c0);
            addChild(this.98);
        }

        override public function refresh():void{
            this.98.setValue(Parameters.data_[1aN]);
        }

        public function 1JE():void{
            this.98.setValue(Parameters.data_[1aN], false);
        }

        private function 1c0(_arg1:Event):void{
            Parameters.data_[1aN] = this.98.value();
            if (this.callback_ != null)
            {
                this.callback_();
            };
            Parameters.save();
        }


    }
}//package _1zp

