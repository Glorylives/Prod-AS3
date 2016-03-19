// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Zz.0r0

package 1Zz{
    import 1PB.xh;
    import flash.display.DisplayObjectContainer;

    public class 0r0 {

        private static var show:Boolean = true;
        private static var view:xh;

        [Inject]
        public var 0X0:DisplayObjectContainer;


        public function execute():void{
            if (show)
            {
                view = new xh();
                view.x = 4;
                view.y = 4;
                this.0X0.addChild(view);
                show = false;
            } else
            {
                this.0X0.removeChild(view);
                view = null;
                show = true;
            }
        }


    }
}//package 1Zz

