// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.25U

package _5z{
    import _Jy._1HZ;
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class _25U {

        public const _1iq:_1HZ = new _1HZ(_25U);

        private var F1:uint;
        private var _10V:XML;
        public var level:int;
        public var points:int;
        public var name:String;
        public var description:String;
        private var _0MT:Boolean;


        public function set type(_arg1:uint):void{
            this.F1 = _arg1;
            this._10V = ObjectLibrary._0sm(this.F1);
            this.name = this._10V.DisplayId;
            this.description = this._10V.Description;
        }

        public function setUnlocked(_arg1:Boolean):void{
            this._0MT = _arg1;
        }

        public function _1AV():Boolean{
            return (this._0MT);
        }


    }
}//package 5z

