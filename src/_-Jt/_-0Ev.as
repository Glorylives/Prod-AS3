// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Jt.0Ev

package Jt{
    import flash.display3D.IndexBuffer3D;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 0Ev {

        public var name:String;
        public var 0qa:String;
        public var 1ck:IndexBuffer3D;
        var VU:Vector.<Vector.<String>>;
        var 1rN:Vector.<uint>;

        public function 0Ev(_arg1:String=null, _arg2:String=null){
            this.name = _arg1;
            this.0qa = _arg2;
            this.VU = new Vector.<Vector.<String>>();
            this.1rN = new Vector.<uint>();
        }

        public function dispose():void{
            if (this.1ck != null)
            {
                this.1ck.dispose();
                this.1ck = null;
            };
            this.VU.length = 0;
            this.1rN.length = 0;
        }


    }
}//package Jt

