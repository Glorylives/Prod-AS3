// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0lB.P4

package 0lB{


    public class P4 {

        private var 14p:Vector.<156>;
        private var selected:156;

        public function P4(_arg1:Vector.<156>){
            this.14p = _arg1;
        }

        public function setSelected(_arg1:String):void{
            var _local2:156;
            for each (_local2 in this.14p)
            {
                if (_local2.getValue() == _arg1)
                {
                    this.0sA(_local2);
                    return;
                }
            }
        }

        public function 0NO():156{
            return (this.selected);
        }

        private function 0sA(_arg1:156):void{
            if (this.selected != null)
            {
                this.selected.setSelected(false);
            }
            this.selected = _arg1;
            this.selected.setSelected(true);
        }


    }
}//package 0lB

