// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Wd.01j

package 1Wd{
    import 04m.1MZ;
    import 0-k.0P4;
    import 0-k.0o5;
    import 0-k.20i;
    import 04m.0so;

    public class 01j {

        public static const 06N:Boolean = true;
        public static const 1pA:Boolean = false;

        private static var 1hP:01j;

        private var 2k:1MZ;
        private var 1ax:1MZ;

        public function 01j(_arg1:String=""){
            if (_arg1 != "yoThisIsInternal")
            {
                throw (new Error("Program3DFactory is a singleton. Use Program3DFactory.getInstance()"));
            };
        }

        public static function getInstance():01j{
            if (1hP == null)
            {
                1hP = new 01j("yoThisIsInternal");
            };
            return (1hP);
        }


        public function dispose():void{
            if (this.2k != null)
            {
                this.2k.0PJ().dispose();
            };
            if (this.1ax != null)
            {
                this.1ax.0PJ().dispose();
            };
            1hP = null;
        }

        public function 0gg(_arg1:0so, _arg2:Boolean):1MZ{
            var _local3:1MZ;
            switch (_arg2)
            {
                case 06N:
                    if (this.2k == null)
                    {
                        this.2k = _arg1.createProgram();
                        this.2k.upload(new 0P4().getVertexProgram(), new 0o5().getVertexProgram());
                    };
                    _local3 = this.2k;
                    break;
                case 1pA:
                    if (this.1ax == null)
                    {
                        this.1ax = _arg1.createProgram();
                        this.1ax.upload(new 0P4().getVertexProgram(), new 20i().getVertexProgram());
                    };
                    _local3 = this.1ax;
                    break;
                default:
                    if (this.2k == null)
                    {
                        this.2k = _arg1.createProgram();
                        this.2k.upload(new 0P4().getVertexProgram(), new 0o5().getVertexProgram());
                    };
                    _local3 = this.2k;
            };
            return (_local3);
        }


    }
}//package 1Wd

