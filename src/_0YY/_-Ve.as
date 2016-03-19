// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.Ve

package 0YY{
    import 5I.Command;
    import 1qg.0io;
    import 2--.24I;

    public class Ve extends Command {

        [Inject]
        public var petName:String;
        [Inject]
        public var 169:int;
        [Inject]
        public var 0n2:0io;


        override public function execute():void{
            this.0n2.dispatch(new 24I(this.petName, this.169));
        }


    }
}//package 0YY

