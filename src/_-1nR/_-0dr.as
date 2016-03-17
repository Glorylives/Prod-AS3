// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1nR.0dr

package 1nR{
    import yo.0j1;
    import g0.Tz;
    import flash.utils.IDataOutput;

    public class 0dr extends 0j1 {

        public var 0qR:Tz;

        public function 0dr(_arg1:uint, _arg2:Function){
            this.0qR = new Tz();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            this.0qR.writeToOutput(_arg1);
        }


    }
}//package 1nR

