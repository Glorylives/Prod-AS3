// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0-O.181

package 0-O{
    import com.company.assembleegameclient.objects.Player;
    import flash.display.BitmapData;

    public class 181 {

        public var playerName:String;
        private var 0UL:Player;
        private var 1xj:Boolean;
        private var 0CV:String;
        private var HK:String;

        public function 181(_arg1:Player, _arg2:Boolean=false, _arg3:String="", _arg4:String=""){
            this.0UL = _arg1;
            this.1xj = _arg2;
            this.0CV = _arg3;
            this.HK = _arg4;
            this.playerName = this.0UL.getName();
        }

        public function 0bG(_arg1:Player):void{
            this.0UL = _arg1;
            this.playerName = this.0UL.getName();
        }

        public function 0qb():String{
            return (this.0CV);
        }

        public function getName():String{
            return (this.0UL.getName());
        }

        public function getPortrait():BitmapData{
            return (this.0UL.getPortrait());
        }

        public function get y0():Boolean{
            return (this.1xj);
        }

        public function Vm(_arg1:String, _arg2:String):void{
            this.1xj = true;
            this.0CV = _arg1;
            this.HK = _arg2;
        }

        public function 11z():void{
            this.1xj = false;
            this.0CV = "";
            this.HK = "";
        }


    }
}//package 0-O

