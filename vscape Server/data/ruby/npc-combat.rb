require 'java'
java_import "com.rs2.model.npcs.NpcCombatDef"
java_import "com.rs2.model.content.combat.AttackScript"
java_import "com.rs2.model.content.combat.attacks.BasicAttack"
java_import "com.rs2.model.content.combat.HealersCombatScript"
java_import "com.rs2.model.content.combat.weapon.AttackStyle"
java_import "com.rs2.model.content.combat.AttackType"
java_import "com.rs2.model.content.combat.weapon.Weapon"

java_import "com.rs2.model.content.combat.projectile.ProjectileTrajectory"
java_import "com.rs2.model.Graphic"
java_import "com.rs2.model.content.skills.magic.Spell"
java_import "com.rs2.model.content.combat.weapon.RangedAmmo"

class Man < NpcCombatDef
    def attackScripts attacker, victim
        return [BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, 2, Weapon::FISTS)]
    end
end

class DarkWizard < NpcCombatDef
    def attackScripts attacker, victim
        return [
                BasicAttack.magicAttack(attacker, victim, Spell::WATER_STRIKE),
                BasicAttack.magicAttack(attacker, victim, Spell::CONFUSE)
        ];
    end
end

class TokXil < NpcCombatDef
    def attackScripts attacker, victim
        return [
                BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 14, 4, 2628),
                BasicAttack.projectileAttack(attacker, victim, AttackType::RANGED, AttackStyle::Mode::LONGRANGE, 17, 4, 2633, Graphic.new(-1, 0), Graphic.new(-1, 0), 443, ProjectileTrajectory.ARROW)
        ];
    end
end

class MejKot < NpcCombatDef
    def attackScripts attacker, victim
        return [
                BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 28, 5, 2637)
        ];
    end
end

class KetZek < NpcCombatDef
    def attackScripts attacker, victim
        return [
                BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 54, 5, 2644),
                BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::MAGIC, 49, 6, 2647, Graphic.new(-1, 0), Graphic.new(446, 0), 445, ProjectileTrajectory.SPELL)
        ];
    end
end

class Jad < NpcCombatDef
    def attackScripts attacker, victim
        return [
                BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 1, 8, 2655),
                BasicAttack.projectileAttack(attacker, victim, AttackType::RANGED, AttackStyle::Mode::LONGRANGE, 1, 8, 2652, Graphic.new(-1, 0), Graphic.new(451, 0), 411, ProjectileTrajectory.JAD_RANGE),
                BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::MAGIC, 1, 8, 2656, Graphic.new(447, 250), Graphic.new(157, 0), 448, ProjectileTrajectory.JAD_SPELL)
        ];
    end
end


class YtHurkot < NpcCombatDef
    def attackScripts attacker, victim
        return [
                BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 14, 8, 2637),

        ];
    end
end

class Ahrims < NpcCombatDef
    def attackScripts attacker, victim
        return [
                BasicAttack.magicAttack(attacker, victim, Spell::FIRE_WAVE),
                BasicAttack.magicAttack(attacker, victim, Spell::CONFUSE),
                BasicAttack.magicAttack(attacker, victim, Spell::CURSE)
        ];
    end
end

class Karil < NpcCombatDef
    def attackScripts attacker, victim
        return [
			BasicAttack.rangedAttack(attacker, victim, AttackStyle::Mode::RAPID, 20, Weapon::KARILS_CROSSBOW, RangedAmmo::BOLT_RACK)			
        ];
    end
end

class GreenDragon < NpcCombatDef
    def attackScripts attacker, victim
        return [
		    BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 5, 5, 80),
			BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 8, 5, 80),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE_FAR, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL)
        ];
    end
end

class BlueDragon < NpcCombatDef
    def attackScripts attacker, victim
        return [
		    BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 7, 5, 80),
			BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 10, 5, 80),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE_FAR, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL)
        ];
    end
end

class RedDragon < NpcCombatDef
    def attackScripts attacker, victim
        return [
		    BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 10, 5, 80),
			BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 16, 5, 80),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE_FAR, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL)
        ];
    end
end

class BlackDragon < NpcCombatDef
    def attackScripts attacker, victim
        return [
		    BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 15, 5, 80),
			BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 21, 5, 80),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE_FAR, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL)
        ];
    end
end

class BronzeDragon < NpcCombatDef
    def attackScripts attacker, victim
        return [
		    BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 8, 5, 80),
			BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 12, 5, 80),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE_FAR, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL)
        ];
    end
end

class IronDragon < NpcCombatDef
    def attackScripts attacker, victim
        return [
		    BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 15, 5, 80),
			BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 20, 5, 80),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE_FAR, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL)
        ];
    end
end

class SteelDragon < NpcCombatDef
    def attackScripts attacker, victim
        return [
		    BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 15, 5, 80),
			BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 22, 5, 80),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL),
			BasicAttack.projectileAttack(attacker, victim, AttackType::MAGIC, AttackStyle::Mode::DRAGONFIRE_FAR, 2, 8, 81, Graphic.new(1, 0), Graphic.new(-1, 0), 0, ProjectileTrajectory.SPELL)
        ];
    end
end

class Wallasalki < NpcCombatDef
    def attackScripts attacker, victim
        return [
			BasicAttack.magicAttack(attacker, victim, Spell::WATER_WAVE)
		];
    end
end
 
class DagannothMelee < NpcCombatDef
    def attackScripts attacker, victim
        return [
		    BasicAttack.meleeAttack(attacker, victim, AttackStyle::Mode::MELEE_ACCURATE, AttackStyle::Bonus::SLASH, 15, 5, 1341),
		];
    end
end

class DagannothRange < NpcCombatDef
    def attackScripts attacker, victim
        return [
			BasicAttack.projectileAttack(attacker, victim, AttackType::RANGED, AttackStyle::Mode::LONGRANGE, 11, 8, 1343, Graphic.new(-1, 0), Graphic.new(-1, 0), 294, ProjectileTrajectory.KNIFE)		
		];
    end
end

NpcCombatDef.add([2025], Ahrims.new())
NpcCombatDef.add([2028], Karil.new())
NpcCombatDef.add([2746], YtHurkot.new.bonusDef(1000, 1000, 1000, 1000, 600))
NpcCombatDef.add([2631], TokXil.new.bonusDef(600, 600, 600, 600, 300))
NpcCombatDef.add([2741], MejKot.new.bonusDef(1000, 1000, 1000, 1000, 600))
NpcCombatDef.add([2743], KetZek.new.bonusDef(1300, 1300, 1300, 1300, 700))
NpcCombatDef.add([2745], Jad.new.bonusDef(2000, 2000, 2000, 2000, 1700))
NpcCombatDef.add([1, 2, 3, 4], Man.new.respawnSeconds(10))
NpcCombatDef.add([174], DarkWizard.new.respawnSeconds(10))
NpcCombatDef.add([941], GreenDragon.new())
NpcCombatDef.add([55], BlueDragon.new())
NpcCombatDef.add([53], RedDragon.new())
NpcCombatDef.add([54], BlackDragon.new())
NpcCombatDef.add([1590], BronzeDragon.new())
NpcCombatDef.add([1591], IronDragon.new())
NpcCombatDef.add([1592], SteelDragon.new())
NpcCombatDef.add([2457,2884], Wallasalki.new())
NpcCombatDef.add([2455,2888], DagannothMelee.new())
NpcCombatDef.add([2456,2887], DagannothRange.new())