// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.Z8

package 0ud{
    import flash.net.SharedObject;
    import com.company.assembleegameclient.util.GUID;

    public class Z8 {

        private var guid:String;


        public function 0Mr():String{
            return ((this.guid = ((this.guid) || (this.0t-()))));
        }

        private function 0t-():String{
            var _local1:String;
            var _local2:SharedObject;
            try
            {
                _local2 = SharedObject.getLocal("KongregateRotMG", "/");
                if (_local2.data.hasOwnProperty("GuestGUID"))
                {
                    _local1 = _local2.data["GuestGUID"];
                };
            } catch(error:Error)
            {
            };
            if (_local1 == null)
            {
                _local1 = GUID.create();
                try
                {
                    _local2 = SharedObject.getLocal("KongregateRotMG", "/");
                    _local2.data["GuestGUID"] = _local1;
                    _local2.flush();
                } catch(error:Error)
                {
                };
            };
            return (_local1);
        }


    }
}//package 0ud

