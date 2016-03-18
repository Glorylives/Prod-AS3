// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.0kq

package BG{
    import 1uF.1Mf;
    import gx.W5;

    public class 0kq extends 1Mf {

        [Inject]
        public var view:TextPanel;
        [Inject]
        public var data:W5;


        override public function initialize():void{
            this.view.init(this.data.message);
        }


    }
}//package BG

