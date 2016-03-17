// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.0jj

package 0sC{
    import 1oo.DateField;

    public class 0jj {


        public static function dv(_arg1:DateField):uint{
            var _local2:Date = new Date(08t(_arg1));
            var _local3:Date = new Date();
            var _local4:uint = (Number(_local3.fullYear) - Number(_local2.fullYear));
            if ((((_local2.month > _local3.month)) || ((((_local2.month == _local3.month)) && ((_local2.date > _local3.date))))))
            {
                _local4--;
            };
            return (_local4);
        }

        public static function 08t(_arg1:DateField):Number{
            var _local2:String = ((((_arg1.pG.text + "/") + _arg1.days.text) + "/") + _arg1.00H.text);
            return (Date.parse(_local2));
        }


    }
}//package 0sC

