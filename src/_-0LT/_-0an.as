// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0LT.0an

package 0LT{
    import 0y3.0gx;
    import 0y3.Server;

    import com.company.assembleegameclient.parameters.Parameters;


    public class 0an {

        [Inject]
        public var servers:0gx;
        [Inject]
        public var data:XML;


        public function execute():void{
            this.servers.1uI(this.nD());
        }

        private function nD():Vector.<Server>{
            var _local3:XML;
            var _local1:XMLList = this.data.child("Servers").child("Server");
            var _local2:Vector.<Server> = new <Server>[];
            for each (_local3 in _local1)
            {
                _local2.push(this.0k5(_local3));
            }
            return (_local2);
        }

        private function 0k5(_arg1:XML):Server{
            return (new Server().setName(_arg1.Name).setAddress(_arg1.DNS).setPort(Parameters.1xJ).setLatLong(Number(_arg1.Lat), Number(_arg1.Long)).setUsage(_arg1.Usage).setIsAdminOnly(_arg1.hasOwnProperty("AdminOnly")));
        }


    }
}//package 0LT

