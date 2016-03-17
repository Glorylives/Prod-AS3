// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.25h

package _1zp{
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;

    public class 25h extends 0vQ {

        private var 2x:0Uj;
        private var 1wr:Boolean;
        private var 1F0:Function;

        public function 25h(_arg1:String, _arg2:Function=null, _arg3:Boolean=false){
            super(_arg1, "", "");
            this.2x = new 0Uj(Parameters.data_[1aN]);
            this.2x.addEventListener(Event.CHANGE, this.1c0);
            this.1F0 = _arg2;
            addChild(this.2x);
            this.r3(_arg3);
        }

        public function r3(_arg1:Boolean):void{
            this.1wr = _arg1;
            mouseEnabled = !(this.1wr);
            mouseChildren = !(this.1wr);
        }

        override public function refresh():void{
            this.2x.1nh = Parameters.data_[1aN];
        }

        private function 1c0(_arg1:Event):void{
            Parameters.data_[1aN] = this.2x.1nh;
            if (this.1F0 != null)
            {
                this.1F0(this.2x.1nh);
            };
            Parameters.save();
        }


    }
}//package _1zp

