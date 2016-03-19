// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Jt.0Ev

package _Jt{
    import flash.display3D.IndexBuffer3D;

    public class _0Ev {

        public var name:String;
        public var _0qa:String;
        public var _1ck:IndexBuffer3D;
        var VU:Vector.<Vector.<String>>;
        var _1rN:Vector.<uint>;

        public function _0Ev(_arg1:String=null, _arg2:String=null){
            this.name = _arg1;
            this._0qa = _arg2;
            this.VU = new Vector.<Vector.<String>>();
            this._1rN = new Vector.<uint>();
        }

        public function dispose():void{
            if (this._1ck != null)
            {
                this._1ck.dispose();
                this._1ck = null;
            }
            this.VU.length = 0;
            this._1rN.length = 0;
        }


    }
}//package Jt

