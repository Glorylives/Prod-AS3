// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp._B7

package _1zp{
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;
    import com.company.util.MoreColorUtil;

    public class _B7 extends _0vQ {

        private var _3l:KeyCodeBox;
        private var _1wr:Boolean;

        public function _B7(_arg1:String, _arg2:String, _arg3:String, _arg4:Boolean=false){
            super(_arg1, _arg2, _arg3);
            this._3l = new KeyCodeBox(Parameters.data_[_1aN]);
            this._3l.addEventListener(Event.CHANGE, this._1c0);
            addChild(this._3l);
            this.r3(_arg4);
        }

        public function r3(_arg1:Boolean):void{
            this._1wr = _arg1;
            transform.colorTransform = ((this._1wr) ? MoreColorUtil._1lu : MoreColorUtil.identity);
            mouseEnabled = !(this._1wr);
            mouseChildren = !(this._1wr);
        }

        override public function refresh():void{
            this._3l._0MM(Parameters.data_[_1aN]);
        }

        private function _1c0(_arg1:Event):void{
            Parameters.setKey(_1aN, this._3l.value());
            Parameters.save();
        }


    }
}//package _1zp

