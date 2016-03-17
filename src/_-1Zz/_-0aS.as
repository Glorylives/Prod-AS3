// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Zz.0aS

package 1Zz{
    import 5I.Command;
    import com.company.assembleegameclient.game.GameSprite;
    import 0xo.lZ;
    import 1ay.1UQ;

    public class 0aS extends Command {

        [Inject]
        public var ja:GameSprite;
        [Inject]
        public var model:lZ;
        [Inject]
        public var We:1UQ;


        override public function execute():void{
            this.model.ja = this.ja;
            this.We.dispatch();
        }


    }
}//package 1Zz

