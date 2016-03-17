// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//22T.ha

package 22T{
    import 1uF.Command;
    import gx.W5;

    public class ha extends Command {

        [Inject]
        public var model:W5;
        [Inject]
        public var message:String;


        override public function execute():void{
            this.model.message = this.message;
        }


    }
}//package 22T

