// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0IW.ProductionNoServersDialogFactory

package 0IW{
    import 1t6.Dialog;
    import AO.du;

    public class ProductionNoServersDialogFactory implements 025 {

        private static const forums_link:String = '<font color="#7777EE"><a href="http://forums.wildshadow.com/">forums.wildshadow.com</a></font>';
        private static const 1mP:String = "/offLine";


        public function 1NB():Dialog{
            var _local1:Dialog = new Dialog(du.26Y, "", null, null, 1mP);
            _local1.a.setHTML(true);
            _local1.12Z(du.18P, {forums_link:forums_link});
            return (_local1);
        }


    }
}//package 0IW

