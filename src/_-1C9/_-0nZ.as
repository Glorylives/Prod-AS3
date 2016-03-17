// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1C9.0nZ

package 1C9{
    import flash.display.DisplayObjectContainer;
    import qG.0bJ;
    import 1fx.wr;

    public class 0nZ {

        [Inject]
        public var 0X0:DisplayObjectContainer;
        [Inject]
        public var setup:0bJ;
        [Inject]
        public var analytics:wr;


        public function execute():void{
            this.analytics.init(this.0X0.stage, this.setup.0Rc());
        }


    }
}//package 1C9

