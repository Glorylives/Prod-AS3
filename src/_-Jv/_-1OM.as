// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//JV.1OM

package JV{
    import flash.display.Sprite;
    import flash.display.DisplayObjectContainer;
    import 0xM.0YR;
    import 111.0qL;

    public class 1OM extends Sprite {

        private var menu:yf;
        public var 0sw:DisplayObjectContainer;
        private var tooltips:0YR;
        public var top:DisplayObjectContainer;
        public var 1Nd:DisplayObjectContainer;
        private var dialogs:0qL;
        public var  each:DisplayObjectContainer;
        public var console:DisplayObjectContainer;

        public function 1OM(){
            addChild((this.menu = new yf()));
            addChild((this.0sw = new Sprite()));
            addChild((this.top = new Sprite()));
            addChild((this.1Nd = new Sprite()));
            this.1Nd.mouseEnabled = false;
            addChild((this.dialogs = new 0qL()));
            addChild((this.tooltips = new 0YR()));
            addChild((this. each = new Sprite()));
            addChild((this.console = new Sprite()));
        }

    }
}//package JV

