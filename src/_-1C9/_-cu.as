// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1C9.cu

package 1C9{
    import 1uF.Command;
    import 0N9.0Fo;

    public class cu extends Command {

        [Inject]
        public var data:XML;
        [Inject]
        public var 9R:0Fo;


        override public function execute():void{
            this.9R.24L(this.data.FilterList.split(/\n/g));
        }


    }
}//package 1C9

