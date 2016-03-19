// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Cr.0lP

package 1Cr{
    import 1uF.1Mf;
    import 0-O.0E8;
    import 1qg.0io;
    import 1qg.11S;
    import c9.0B2;
    import 0N9.0hf;
    import 1ay.0U6;
    import WZ.0Te;
    import 0UV.Xq;
    import 1t6.ErrorDialog;
    import 0-O.21H;
    import 0-O.O6;
    import AO.du;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import gx.1KE;

    public class 0lP extends 1Mf {

        [Inject]
        public var view:L9;
        [Inject]
        public var model:0E8;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var WY:0B2;
        [Inject]
        public var 23C:0hf;
        [Inject]
        public var 8I:0U6;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 7V:Xq;


        override public function initialize():void{
            this.view.WY.add(this.22h);
            this.view.15G.add(this.0UK);
            this.model.jz.add(this.21f);
            this.model.1KP();
        }

        override public function destroy():void{
            this.view.WY.removeAll();
            this.view.15G.removeAll();
        }

        private function 21f(_arg1:Boolean=false){
            if (_arg1)
            {
                this.view.init(this.model.0X5(), this.model.0X2(), this.model.Xm());
            } else
            {
                this.reportError(this.model.MB);
            }
        }

        private function reportError(_arg1:String):void{
            this.0n2.dispatch(new ErrorDialog(_arg1));
        }

        private function 0UK(_arg1:String):void{
            switch (_arg1)
            {
                case 21H.5A:
                    this.view.00y(this.model.0X5(), this.model.Xm());
                    return;
                case 21H.0XG:
                    this.view.279(this.model.0X2());
                    return;
            }
        }

        private function 22h(_arg1:String, _arg2:String):void{
            var _local4:String;
            var _local5:String;
            var _local3:O6 = new O6(_arg1, _arg2);
            switch (_arg1)
            {
                case 21H.0Tm:
                    if (((!((_arg2 == null))) && (!((_arg2 == "")))))
                    {
                        this.view.00y(this.model.UW(_arg2), this.model.Xm());
                    } else
                    {
                        if (_arg2 == "")
                        {
                            this.view.00y(this.model.0X5(), this.model.Xm());
                        }
                    }
                    return;
                case 21H.o-:
                    if (this.model.hF())
                    {
                        this.view.0p7(du.ZD);
                        return;
                    }
                    _local3.callback = this.163;
                    break;
                case 21H.0x7:
                    _local3.callback = this.SN;
                    _local4 = du.1Sz;
                    _local5 = du.Eu;
                    this.0n2.dispatch(new 1j5(_local4, _local5, du.04x, du.1q5, _local3, {name:_local3.target}));
                    return;
                case 21H.1Hb:
                    _local3.callback = this.1s8;
                    break;
                case 21H.1U5:
                    _local3.callback = this.1Si;
                    break;
                case 21H.0iv:
                    _local3.callback = this.1RP;
                    _local4 = du.Uw;
                    _local5 = du.23u;
                    this.0n2.dispatch(new 1j5(_local4, _local5, du.04x, du.1oU, _local3, {name:_local3.target}));
                    return;
                case 21H.1qY:
                    this.Zo(_arg2);
                    return;
                case 21H.qD:
                    this.18l(_arg2);
                    return;
            }
            this.WY.dispatch(_local3);
        }

        private function 163(_arg1:Boolean, _arg2:String, _arg3:String):void{
            if (_arg1)
            {
                this.view.0p7(du.1ho, {name:_arg3});
            } else
            {
                if (_arg2 == "Blocked")
                {
                    this.view.0p7(du.1ho, {name:_arg3});
                } else
                {
                    this.view.0p7(_arg2);
                }
            }
        }

        private function SN(_arg1:Boolean, _arg2:String, _arg3:String):void{
            if (_arg1)
            {
                this.model.1Md(_arg3);
            } else
            {
                this.reportError(_arg2);
            }
        }

        private function 1s8(_arg1:Boolean, _arg2:String, _arg3:String):void{
            if (_arg1)
            {
                this.model.1ej(XML(_arg2));
                if (this.model.0D(_arg3))
                {
                    this.view.279(this.model.0X2());
                }
            } else
            {
                this.reportError(_arg2);
            }
        }

        private function 1Si(_arg1:Boolean, _arg2:String, _arg3:String):void{
            if (_arg1)
            {
                if (this.model.0D(_arg3))
                {
                    this.view.279(this.model.0X2());
                }
            } else
            {
                this.reportError(_arg2);
            }
        }

        private function 1RP(_arg1:String):void{
            this.model.0D(_arg1);
        }

        private function Zo(_arg1:String):void{
            this.23C.dispatch(true, (("/tell " + _arg1) + " "));
            this.view.PC().dispatch();
        }

        private function 18l(_arg1:String):void{
            Parameters.data_.preferredServer = _arg1;
            Parameters.save();
            this.8I.dispatch();
            var _local2:SavedCharacter = this.SP.zO(this.SP.1IA);
            var _local3:1KE = new 1KE();
            _local3.19j = false;
            _local3.charId = _local2.charId();
            _local3.0iT = true;
            this.7V.dispatch(_local3);
            this.KW.dispatch();
        }


    }
}//package 1Cr

