// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Jg.1bm

package 0Jg{
    import flash.display.DisplayObjectContainer;
    import tB.AF;

    public class 1bm {

        [Inject]
        public var 0X0:DisplayObjectContainer;
        [Inject]
        public var viewManager:AF;


        [PostConstruct]
        public function init():void{
            this.viewManager.1Nt(this.0X0);
        }


    }
}//package 0Jg

