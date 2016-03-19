// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.1CW

package 0QW{
    import 0qj.1ae;
    import com.company.ui._eG;
    import flash.filters.DropShadowFilter;

    public class 1CW extends 1ae {

        private static const 1bH:int = 180;

        private var 064:_eG;
        private var 0ms:_eG;

        public function 1CW(_arg1:XML){
            var _local3:XML;
            super(0x363636, 1, 0x9B9B9B, 1, true);
            this.064 = new _eG(16, 0xFFFFFF, false, (1bH - 4), 0);
            this.064.setBold(true);
            this.064.wordWrap = true;
            this.064.text = String(_arg1.@id);
            this.064.1zx();
            this.064.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            this.064.x = 0;
            this.064.y = 0;
            addChild(this.064);
            var _local2 = "";
            if (_arg1.hasOwnProperty("Group"))
            {
                _local2 = (_local2 + (("Group: " + _arg1.Group) + "\n"));
            }
            if (_arg1.hasOwnProperty("Static"))
            {
                _local2 = (_local2 + "Static\n");
            }
            if (_arg1.hasOwnProperty("Enemy"))
            {
                _local2 = (_local2 + "Enemy\n");
                if (_arg1.hasOwnProperty("MaxHitPoints"))
                {
                    _local2 = (_local2 + (("MaxHitPoints: " + _arg1.MaxHitPoints) + "\n"));
                }
                if (_arg1.hasOwnProperty("Defense"))
                {
                    _local2 = (_local2 + (("Defense: " + _arg1.Defense) + "\n"));
                }
            }
            if (_arg1.hasOwnProperty("God"))
            {
                _local2 = (_local2 + "God\n");
            }
            if (_arg1.hasOwnProperty("Quest"))
            {
                _local2 = (_local2 + "Quest\n");
            }
            if (_arg1.hasOwnProperty("Hero"))
            {
                _local2 = (_local2 + "Hero\n");
            }
            if (_arg1.hasOwnProperty("Encounter"))
            {
                _local2 = (_local2 + "Encounter\n");
            }
            if (_arg1.hasOwnProperty("Level"))
            {
                _local2 = (_local2 + (("Level: " + _arg1.Level) + "\n"));
            }
            if (_arg1.hasOwnProperty("Terrain"))
            {
                _local2 = (_local2 + (("Terrain: " + _arg1.Terrain) + "\n"));
            }
            for each (_local3 in _arg1.Projectile)
            {
                _local2 = (_local2 + (((((((((("Projectile " + _local3.@id) + ": ") + _local3.ObjectId) + "\n") + "\tDamage: ") + _local3.Damage) + "\n") + "\tSpeed: ") + _local3.Speed) + "\n"));
                if (_local3.hasOwnProperty("PassesCover"))
                {
                    _local2 = (_local2 + "\tPassesCover\n");
                }
                if (_local3.hasOwnProperty("MultiHit"))
                {
                    _local2 = (_local2 + "\tMultiHit\n");
                }
                if (_local3.hasOwnProperty("ConditionEffect"))
                {
                    _local2 = (_local2 + (((("\t" + _local3.ConditionEffect) + " for ") + _local3.ConditionEffect.@duration) + " secs\n"));
                }
                if (_local3.hasOwnProperty("Parametric"))
                {
                    _local2 = (_local2 + "\tParametric\n");
                }
            }
            this.0ms = new _eG(14, 0xB3B3B3, false, 1bH, 0);
            this.0ms.wordWrap = true;
            this.0ms.text = String(_local2);
            this.0ms.1zx();
            this.0ms.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            this.0ms.x = 0;
            this.0ms.y = (this.064.height + 2);
            addChild(this.0ms);
        }

    }
}//package 0QW

