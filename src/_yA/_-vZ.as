// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yA.vZ

package yA{
    import 1uF.1Mf;
    import 1qg.0An;
    import 1qg.0io;
    import flash.events.MouseEvent;
    import flash.events.KeyboardEvent;
    import com.company.assembleegameclient.parameters.Parameters;

    public class vZ extends 1Mf {

        [Inject]
        public var view:_oF;
        [Inject]
        public var d:0An;
        [Inject]
        public var 0n2:0io;


        override public function initialize():void{
            this.view.init();
            if (_oF.08Y())
            {
                if (!1MN.1Bx)
                {
                    this.view.1kJ.addEventListener(MouseEvent.CLICK, this.oq);
                    WebMain._0Kr.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
                } else
                {
                    _Ch.closed.add(this.0FO);
                }
            }
        }

        override public function destroy():void{
            _Ch.closed.remove(this.0FO);
            this.view.1kJ.removeEventListener(MouseEvent.CLICK, this.oq);
            WebMain._0Kr.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            super.destroy();
        }

        protected function oq(_arg1:MouseEvent):void{
            if (!1MN.1Bx)
            {
                this.d.dispatch(new 1MN());
                this.view.1kJ.removeEventListener(MouseEvent.CLICK, this.oq);
                WebMain._0Kr.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
                _Ch.closed.add(this.0FO);
            }
        }

        private function 0FO():void{
            Ch.closed.remove(this.0FO);
            this.view.1kJ.addEventListener(MouseEvent.CLICK, this.oq);
            WebMain._0Kr.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((_arg1.keyCode == Parameters.data_.interact)) && ((WebMain._0Kr.focus == null))))
            {
                this.oq(null);
            }
        }


    }
}//package yA

