// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.1Im

package 0hd{
    import 1uF.1Mf;
    import 1qg.11S;
    import 1Bg.fQ;
    import 1ay.tG;
    import com.company.assembleegameclient.game.nx;
    import F7.0N7;
    import 1fx.1Zh;
    import com.company.assembleegameclient.parameters.Parameters;

    public class 1Im extends 1Mf {

        [Inject]
        public var view:0pS;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var trackEvent:fQ;
        [Inject]
        public var 057:tG;
        private var ja:nx;
        private var name:String;


        override public function initialize():void{
            this.ja = this.view.ja;
            this.view.choose.add(this.21F);
            this.view.cancel.add(this.onCancel);
        }

        override public function destroy():void{
            this.view.choose.remove(this.21F);
            this.view.cancel.remove(this.onCancel);
        }

        private function 21F(_arg1:String):void{
            this.name = _arg1;
            this.ja.addEventListener(0N7.NAMERESULTEVENT, this.1Yv);
            this.ja.gsc_.chooseName(_arg1);
            this.view.disable();
        }

        public function 1Yv(_arg1:0N7):void{
            this.ja.removeEventListener(0N7.NAMERESULTEVENT, this.1Yv);
            var _local2:Boolean = _arg1.1wA.success_;
            if (_local2)
            {
                this.xg();
            } else
            {
                this.1OI(_arg1.1wA.errorText_);
            }
        }

        private function xg():void{
            if (this.view.0wm)
            {
                this.fG();
            }
            this.ja.model.setName(this.name);
            this.ja.map.player_.name_ = this.name;
            this.closeDialogs.dispatch();
            this.057.dispatch(this.name);
        }

        private function fG():void{
            var _local1:1Zh = new 1Zh();
            _local1.category = "credits";
            _local1.1D9 = ((this.ja.model.getConverted()) ? "buyConverted" : "buy");
            _local1.label = "Name Change";
            _local1.value = Parameters.ZO;
            this.trackEvent.dispatch(_local1);
        }

        private function 1OI(_arg1:String):void{
            this.view.07n(_arg1);
            this.view.0Eb();
        }

        private function onCancel():void{
            this.closeDialogs.dispatch();
        }


    }
}//package 0hd

