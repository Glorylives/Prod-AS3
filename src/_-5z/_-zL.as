// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.zL

package 5z{
    import 0YY.125;
    import WZ.0Te;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.map.1qi;
    import __AS3__.vec.*;

    public class zL {

        [Inject]
        public var 0Bk:125;
        [Inject]
        public var SP:0Te;
        private var hash:Object;
        private var pets:Vector.<0tK>;
        private var 1rM:XML;
        private var type:int;
        private var 1Yk:0tK;

        public function zL(){
            this.hash = {};
            this.pets = new Vector.<0tK>();
            super();
        }

        public function getPetVO(_arg1:int):0tK{
            var _local2:0tK;
            if (this.hash[_arg1] != null)
            {
                return (this.hash[_arg1]);
            };
            _local2 = new 0tK(_arg1);
            this.pets.push(_local2);
            this.hash[_arg1] = _local2;
            return (_local2);
        }

        public function 0Gr(_arg1:int):0tK{
            return (this.hash[_arg1]);
        }

        public function 1O5():Vector.<0tK>{
            return (this.pets);
        }

        public function 24T(_arg1:0tK):void{
            this.pets.push(_arg1);
        }

        public function 0mj(_arg1:0tK):void{
            this.1Yk = _arg1;
            var _local2:SavedCharacter = this.SP.zO(this.SP.1IA);
            if (_local2)
            {
                _local2.BP(this.1Yk);
            };
            this.0Bk.dispatch();
        }

        public function 1tI():0tK{
            return (this.1Yk);
        }

        public function 2-F():void{
            var _local1:SavedCharacter = this.SP.zO(this.SP.1IA);
            if (_local1)
            {
                _local1.BP(null);
            };
            this.1Yk = null;
            this.0Bk.dispatch();
        }

        public function 0It(_arg1:int):0tK{
            var _local2:int = this.23P(_arg1);
            if (_local2 == -1)
            {
                return (null);
            };
            return (this.pets[_local2]);
        }

        private function 23P(_arg1:int):int{
            var _local2:0tK;
            var _local3:uint;
            while (_local3 < this.pets.length)
            {
                _local2 = this.pets[_local3];
                if (_local2.try () == _arg1)
                {
                    return (_local3);
                };
                _local3++;
            };
            return (-1);
        }

        public function zU(_arg1:int):void{
            this.type = _arg1;
            this.1rM = ObjectLibrary.0vY(ObjectLibrary.Uq(_arg1));
        }

        public function 0XL():uint{
            return (0Nx.0Yx(this.1rM.@id).rarity.17h);
        }

        public function 1zi():int{
            return (((this.1rM) ? 0Nx.0Yx(this.1rM.@id).17h : 1));
        }

        public function 1Pk(_arg1:1qi):Boolean{
            return (((_arg1.name_) && ((_arg1.name_.substr(0, 8) == "Pet Yard"))));
        }

        public function 0rF():int{
            return (int(this.1rM.Fame));
        }

        public function 22q():int{
            return (int(this.1rM.Price));
        }

        public function Gr():int{
            return (this.type);
        }

        public function Pl(_arg1:int):void{
            this.pets.splice(this.23P(_arg1), 1);
        }

        public function FZ():void{
            this.hash = {};
            this.pets = new Vector.<0tK>();
            this.2-F();
        }


    }
}//package 5z

