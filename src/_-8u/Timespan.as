// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//8u.Timespan

package 8u{
    import AO.du;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class Timespan {

        public static const 0W3:Timespan = new Timespan(du.UG, "week");
        public static const 0fG:Timespan = new Timespan(du.IO, "month");
        public static const 0DW:Timespan = new Timespan(du.1B6, "all");
        public static const 0hP:Vector.<Timespan> = new <Timespan>[0W3, 0fG, 0DW];

        private var name:String;
        private var id:String;

        public function Timespan(_arg1:String, _arg2:String){
            this.name = _arg1;
            this.id = _arg2;
        }

        public function getName():String{
            return (this.name);
        }

        public function 67():String{
            return (this.id);
        }


    }
}//package 8u

