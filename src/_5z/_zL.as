// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.zL

package _5z{
import _0YY._125;

import _WZ._0Te;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.map._1qi;
import com.company.assembleegameclient.objects.ObjectLibrary;

    public class _zL {

        [Inject]
        public var _0Bk:_125;
        [Inject]
        public var SP:_0Te;
        private var hash:Object;
        private var pets:Vector.<_0tK>;
        private var _1rM:XML;
        private var type:int;
        private var _1Yk:_0tK;


        public function _zL(){
            this.hash = {};
            this.pets = new Vector.<_0tK>();
            super();
        }

        public function getPetVO(_arg1:int):_0tK{
            var _local2:_0tK;
            if (this.hash[_arg1] != null)
            {
                return (this.hash[_arg1]);
            };
            _local2 = new _0tK(_arg1);
            this.pets.push(_local2);
            this.hash[_arg1] = _local2;
            return (_local2);
        }

        public function _0Gr(_arg1:int):_0tK{
            return (this.hash[_arg1]);
        }

        public function _1O5():Vector.<_0tK>{
            return (this.pets);
        }

        public function _24T(_arg1:_0tK):void{
            this.pets.push(_arg1);
        }

        public function _0mj(_arg1:_0tK):void{
            this._1Yk = _arg1;
            var _local2:SavedCharacter = this.SP.zO(this.SP._1IA);
            if (_local2)
            {
                _local2.BP(this._1Yk);
            };
            this._0Bk.dispatch();
        }

        public function _1tI():_0tK{
            return (this._1Yk);
        }

        public function _2F():void{
            var _local1:SavedCharacter = this.SP.zO(this.SP._1IA);
            if (_local1)
            {
                _local1.BP(null);
            };
            this._1Yk = null;
            this._0Bk.dispatch();
        }

        public function _0It(_arg1:int):_0tK{
            var _local2:int = this._23P(_arg1);
            if (_local2 == -1)
            {
                return (null);
            };
            return (this.pets[_local2]);
        }

        private function _23P(_arg1:int):int{
            var _local2:_0tK;
            var _local3:uint;
            while (_local3 < this.pets.length)
            {
                _local2 = this.pets[_local3];
                if (_local2._try () == _arg1)
                {
                    return (_local3);
                };
                _local3++;
            };
            return (-1);
        }

        public function zU(_arg1:int):void{
            this.type = _arg1;
            this._1rM = ObjectLibrary._0vY(ObjectLibrary.Uq(_arg1));
        }

        public function _0XL():uint{
            return (_0Nx._0Yx(this._1rM.@id).rarity._17h);
        }

        public function _1zi():int{
            return (((this._1rM) ? _0Nx._0Yx(this._1rM.@id)._17h : 1));
        }

        public function _1Pk(_arg1:_1qi):Boolean{
            return (((_arg1.name_) && ((_arg1.name_.substr(0, 8) == "Pet Yard"))));
        }

        public function _0rF():int{
            return (int(this._1rM.Fame));
        }

        public function _22q():int{
            return (int(this._1rM.Price));
        }

        public function Gr():int{
            return (this.type);
        }

        public function Pl(_arg1:int):void{
            this.pets.splice(this._23P(_arg1), 1);
        }

        public function FZ():void{
            this.hash = {};
            this.pets = new Vector.<_0tK>();
            this._2F();
        }


    }
}//package 5z

