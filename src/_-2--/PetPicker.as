// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.PetPicker

package 2--{
    import _Jy._1HZ;
    import __AS3__.vec.Vector;
    import 5z.0tK;
    import flash.display.DisplayObject;
    import flash.events.MouseEvent;
    import __AS3__.vec.*;

    public class PetPicker extends YD implements _ZS {

        [Inject]
        public var sB:1l2;
        public var 0wT:_1HZ;
        private var 1MO:Vector.<08G>;
        private var fv:int;
        private var 1YB:Vector.<08G>;
        public var 1EI:Boolean = true;

        public function PetPicker(){
            this.0wT = new 1O2();
            this.1YB = new Vector.<08G>();
            super();
        }

        private static function 0zp(_arg1:08G, _arg2:08G):int{
            var _local3:int = _arg1.getPetVO().0S1[0].points;
            var _local4:int = _arg2.getPetVO().0S1[0].points;
            return ((_local4 - _local3));
        }


        public function v(_arg1:Vector.<0tK>):void{
            this.0xI(_arg1);
            this.DV();
            setItems(this.1YB);
            this.0PS();
        }

        private function DV():void{
            var _local1:08G;
            for each (_local1 in this.1MO)
            {
                this.1YB.push(_local1);
            };
        }

        private function 0xI(_arg1:Vector.<0tK>):void{
            var _local2:0tK;
            this.1MO = new Vector.<08G>();
            for each (_local2 in _arg1)
            {
                this.24T(_local2);
            };
            this.1MO.sort(0zp);
        }

        private function 0PS():void{
            this.10g(0db(), 08G.0yr);
            this.10g(1PR(), 08G.1BI);
            this.10g(1q6(), 08G.1Q3);
            this.10g(1Lf(), 08G.1ky);
        }

        private function 10g(_arg1:DisplayObject, _arg2:String):void{
            if (_arg1)
            {
                08G(_arg1).0mR(_arg2);
            };
        }

        public function eB(_arg1:int):void{
            this.fv = _arg1;
        }

        public function 166():Vector.<08G>{
            return (this.1MO);
        }

        public function 0It(_arg1:int):08G{
            return (this.1MO[_arg1]);
        }

        public function EZ(_arg1:0tK):void{
            var _local3:0tK;
            var _local2:int;
            while (_local2 < this.1MO.length)
            {
                _local3 = this.1MO[_local2].getPetVO();
                if (!this.1Su(_arg1, _local3))
                {
                    this.1MO[_local2].disable();
                };
                _local2++;
            };
        }

        public function rx(_arg1:0tK):void{
            var _local3:0tK;
            var _local2:int;
            while (_local2 < this.1MO.length)
            {
                _local3 = this.1MO[_local2].getPetVO();
                if (_local3.try () == _arg1.try ())
                {
                    this.1MO[_local2].disable();
                };
                _local2++;
            };
        }

        private function 1Su(_arg1:0tK, _arg2:0tK):Boolean{
            return ((((_arg1.1m7() == _arg2.1m7())) && ((_arg1.1qz() == _arg2.1qz()))));
        }

        private function 24T(_arg1:0tK):void{
            var pet:1b1;
            var pet_clickHandler:Function;
            var petVO:0tK = _arg1;
            pet_clickHandler = function (_arg1:MouseEvent):void{
                if (pet.isEnabled())
                {
                    0wT.dispatch(petVO);
                };
            };
            pet = this.sB.create(petVO, this.fv);
            this.1MO.push(pet);
            pet.addEventListener(MouseEvent.CLICK, pet_clickHandler);
        }


    }
}//package 2--

