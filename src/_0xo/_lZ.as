// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0xo.lZ

package _0xo{
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.parameters.Parameters;

    public class _lZ {

        public var ja:GameSprite;


        public function _04d():String{
            return (((this.ja.model.getName()) ? this.ja.model.getName() : this.ja.map.player_.name_));
        }

        public function Fv():String{
            return ((((this.ja.gsc_.gameId_ == Parameters._1rc)) ? "OPTIONS_BUTTON" : "NEXUS_BUTTON"));
        }


    }
}//package 0xo

