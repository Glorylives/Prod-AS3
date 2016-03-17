// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0wP.kM

package 0wP{
    import _Jy._1HZ;
    import com.company.assembleegameclient.util.1ze;

    public class kM {

        public static const 1W5:int = -1;

        private var zW:Boolean = false;
        public var 0vG:_1HZ;
        public var 260:_1HZ;
        public var 1YU:_1HZ;
        public var 05X:_1HZ;
        public var 057:_1HZ;
        public var ey:_1HZ;
        public var XU:_1HZ;
        public var 0X4:_1HZ;
        public var YM:_1HZ;
        private var 0cj:int;
        private var 01T:Date;
        private var _name:String;
        private var _quantity:int;
        private var JN:int;
        private var _price:int;
        private var HO:String;
        private var Ke:int;
        private var 00F:int;

        public function kM(){
            this.0vG = new _1HZ();
            this.260 = new _1HZ(int);
            this.1YU = new _1HZ(Date);
            this.05X = new _1HZ(int);
            this.057 = new _1HZ(String);
            this.ey = new _1HZ(int);
            this.XU = new _1HZ(int);
            this.0X4 = new _1HZ(int);
            this.YM = new _1HZ(String);
            super();
        }

        public function Va(_arg1:int, _arg2:Date, _arg3:String, _arg4:int, _arg5:int, _arg6:int, _arg7:int, _arg8:String, _arg9:int):void{
            this.0cj = _arg1;
            this.01T = _arg2;
            this._name = _arg3;
            this._quantity = _arg4;
            this.JN = _arg5;
            this.Ke = _arg6;
            this._price = _arg7;
            this.HO = _arg8;
            this.00F = _arg9;
            this.zW = true;
            this.0vG.dispatch();
        }

        public function 0BH():int{
            var _local1:Date = new Date();
            return ((this.01T.time - _local1.time));
        }

        public function YV():Number{
            return (Math.ceil(1ze.ut((this.0BH() / 1000))));
        }

        public function get quantity():int{
            return (this._quantity);
        }

        public function set quantity(_arg1:int):void{
            this._quantity = _arg1;
            this.ey.dispatch(_arg1);
        }

        public function get priority():int{
            return (this.Ke);
        }

        public function set priority(_arg1:int):void{
            this.Ke = _arg1;
        }

        public function get packageID():int{
            return (this.0cj);
        }

        public function set packageID(_arg1:int):void{
            this.0cj = _arg1;
            this.260.dispatch(_arg1);
        }

        public function get 1Om():Date{
            return (this.01T);
        }

        public function set 1Om(_arg1:Date):void{
            this.01T = _arg1;
            this.1YU.dispatch(_arg1);
            this.05X.dispatch(this.0BH());
        }

        public function get name():String{
            return (this._name);
        }

        public function set name(_arg1:String):void{
            this._name = _arg1;
            this.057.dispatch(_arg1);
        }

        public function get max():int{
            return (this.JN);
        }

        public function set max(_arg1:int):void{
            this.JN = _arg1;
            this.XU.dispatch(_arg1);
        }

        public function get price():int{
            return (this._price);
        }

        public function set price(_arg1:int):void{
            this._price = _arg1;
            this.0X4.dispatch(_arg1);
        }

        public function get bz():String{
            return (this.HO);
        }

        public function get numPurchased():int{
            return (this.00F);
        }

        public function set numPurchased(_arg1:int):void{
            this.00F = _arg1;
        }

        public function 13m():Boolean{
            return ((this.00F > 0));
        }

        public function 0Cx():Boolean{
            if (this.max == 1W5)
            {
                return (true);
            };
            return ((this.00F < this.JN));
        }

        public function toString():String{
            return ((((("[Package name=" + this._name) + ", packageId=") + this.0cj) + "]"));
        }


    }
}//package 0wP

