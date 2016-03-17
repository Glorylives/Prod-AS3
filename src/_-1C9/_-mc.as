// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1C9.mc

package 1C9{
    import 5I.Command;
    import WZ.0Te;
    import com.company.assembleegameclient.appengine.Cp;

    public class mc extends Command {

        [Inject]
        public var model:0Te;
        [Inject]
        public var data:XML;


        override public function execute():void{
            this.model.0C5(new Cp(this.data));
            this.model.qv = false;
        }


    }
}//package 1C9

