// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.0NK

package 0YY{
    import 1uF.Command;
    import 5z.zL;
    import 5z.0TC;

    public class 0NK extends Command {

        [Inject]
        public var 08K:int;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var 0Bk:125;
        [Inject]
        public var 1UK:0TC;


        override public function execute():void{
            if (this.08K < 0)
            {
                this.1G5.2-F();
            } else
            {
                this.1G5.0mj(this.1G5.0It(this.08K));
            }
            this.1UK.06h = (((this.08K < 0)) ? null : this.1UK.06h = this.1G5.0It(this.08K));
        }


    }
}//package 0YY

