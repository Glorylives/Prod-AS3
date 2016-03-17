// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.25U

package 5z{
    import _Jy._1HZ;
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class 25U {

        public const 1iq:_1HZ = new _1HZ(25U);

        private var F1:uint;
        private var 10V:XML;
        public var level:int;
        public var points:int;
        public var name:String;
        public var description:String;
        private var 0MT:Boolean;


        public function set type(_arg1:uint):void{
            this.F1 = _arg1;
            this.10V = ObjectLibrary.0sm(this.F1);
            this.name = this.10V.DisplayId;
            this.description = this.10V.Description;
        }

        public function setUnlocked(_arg1:Boolean):void{
            this.0MT = _arg1;
        }

        public function 1AV():Boolean{
            return (this.0MT);
        }


    }
}//package 5z

