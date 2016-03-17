// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1C9.0Vj

package 1C9{
    import 1uF.Command;
    import 5z.zL;
    import 5z.0Nx;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import 5z.0tK;

    public class 0Vj extends Command {

        [Inject]
        public var model:zL;
        [Inject]
        public var data:XML;


        override public function execute():void{
            if (this.data.Account.hasOwnProperty("PetYardType"))
            {
                this.model.zU(this.1wk());
            };
            if (this.data.hasOwnProperty("Pet"))
            {
                this.model.0mj(this.0eC());
            };
        }

        private function 1wk():int{
            var _local1:String = 0Nx.1tV(this.data.Account.PetYardType).value;
            var _local2:XML = ObjectLibrary.0vY(_local1);
            return (_local2.@type);
        }

        private function 0eC():0tK{
            var _local1:XMLList = this.data.Pet;
            var _local2:0tK = this.model.getPetVO(_local1.@instanceId);
            _local2.apply(_local1[0]);
            return (_local2);
        }


    }
}//package 1C9

