// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//with.26q

package with{
    import _CU._13j;
    import flash.filters.DropShadowFilter;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class 26q {


        public static function 1H-(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean=false):_13j{
            var _local5:_13j = new _13j();
            _local5.setSize(_arg2).setColor(_arg1).setBold(_arg3);
            _local5.setVerticalAlign(_13j.BOTTOM);
            _local5.filters = ((_arg4) ? [new DropShadowFilter(0, 0, 0)] : []);
            return (_local5);
        }

        public static function 1F5(_arg1:uint):Bitmap{
            return (new Bitmap(ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true)));
        }


    }
}//package with

