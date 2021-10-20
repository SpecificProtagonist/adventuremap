import codecs
import os
import shutil

items = []

def wrap_text(text):
    return '\'{{"text":"{}"}}\''.format(text)

class Item:
    def __init__(self, name, lore, texture, damage, speed, dmgtype=2,\
                 sweep=0, twoHanded = False, ench="", spell=False, attr=""):
        self.name = name
        self.texture = texture
        self.damage = damage
        self.speed = speed
        self.dmgtype = dmgtype
        self.lore = lore
        self.sweep = sweep
        self.twoHanded = twoHanded
        self.ench = ench
        self.spell = spell
        self.attr = attr
        global items
        items.append(self)

    def get_tag(self, i):
        json = '{{Damage:{12},Unbreakable:1,HideFlags:63,display:{{Lore:[{0}],Name:{1}}},AttributeModifiers:[{{UUIDLeast:1,UUIDMost:6,Name:"a",Slot:mainhand,Operation:0,AttributeName:"generic.attack_damage",Amount:{2}f}},{{UUIDLeast:2,UUIDMost:6,Name:"b",Slot:mainhand,Operation:1,AttributeName:"generic.attack_speed",Amount:{3}f}}{4}],ench:[{{id:22,lvl:{5}}}{6}],upgradeable:{7},upgradeLevel:{8},weaponType:{9},dualWield:{10},spell:"{11}"}}'
        name = self.name + (" + "+str(i) if i>0 else "")
        speed = -1+(self.speed/4)
        damage = (1 + i/5 * 0.8/self.speed)*self.damage
        # rounding
        damage = int(damage*2)/2.0
        desc = str(int(damage)) if damage==int(damage)\
                else str(damage)[:4] if damage>10 else str(damage)[:3]
        if self.dmgtype == 1:
            desc += " Blunt Damage, "
        elif self.dmgtype == 2:
            desc += " Sharp Damage, "
        elif self.dmgtype == 3:
            desc += " Magic Damage, "
        if self.speed < .6:
            desc += "Very Fast"
        elif self.speed < .75:
            desc += "Fast"
        elif self.speed < .82:
            desc += "Medium"
        elif self.speed < .875:
            desc += "Slow"
        else:
            desc += "Very Slow"
        if self.sweep > 0:
            desc += ", Sweeping "+str(self.sweep)
        if self.twoHanded:
            desc += ", Two-Handed"
        if i == 0:
            desc += ', Reinforce for 1 titanite shard'
        elif i == 1:
            desc += ', Reinforce for 2 titanite shards'
        elif i == 2:
            desc += ', Reinforce for 3 titanite shards'
        elif i == 3:
            desc += ', Reinforce for 1 titanite chunk'
        elif i == 4:
            desc += ', Reinforce for 2 titanite chunk'
        lore = ""
        for line in [desc]+self.lore:
            if len(lore)>0:
                lore += ","
            lore += wrap_text(line)
        return json.format(lore, wrap_text(name), damage-1, speed, "", self.sweep,\
            self.ench, 0 if i==5 else 1, i, self.dmgtype,\
            1 if self.twoHanded else 0, self.name, self.texture)

    def get_id(self):
        if self.spell:
            return "carrot_on_a_stick"
        elif self.sweep >= 1:
            return "golden_sword"
        else:
            return "golden_shovel"
    
    def write_give(self):
        filename = self.name.lower().replace(' ','_')
        try:
            shutil.rmtree(filename)
        except:
            pass
        os.mkdir(filename)
        for i in range(6):
            with codecs.open(filename+os.sep+str(i)+".mcfunction",
                    "w","utf-8") as out:
                out.write("give @p "+self.get_id() + self.get_tag(i))

    def get_full_tag(self,level):
        return "{id:"+self.get_id()+",Count:1,Damage:"+str(self.texture)\
                +",tag:"+self.get_tag(level)+"}"

def titanite_shard(num):
    return '{id:fermented_spider_eye,Count:'+str(num)+',tag:{HideFlags:63,display:{Lore:["Used to reinforce weapons.","This material stems from the body","of dead demons slain by the Divinity","if the Good Church is to be believed."],Name:"§rTitanite Shard"}}}'

def titanite_chunk(num):
    return '{id:magma_cream,Count:'+str(num)+',tag:{HideFlags:63,display:{Lore:["Used to reinforce weapons further.","It is rare that the Good Church would freely give","a symbol of the Divinities victory such as this up."],Name:"§rTitanite Chunk"}}}'

def twinkling_titanite(num):
    return '{id:clay_ball,Count:'+str(num)+',tag:{HideFlags:63,display:{Lore:["Used to reinforce rings.","Magic clings to it"],Name:"§rTwinkling Titanite"}}}'

def write_smith(items):
    with codecs.open("smith.mcfunction", "w", "utf-8") as out:
        out.write('summon villager ~ ~ ~ {CustomName:\'{"text":"Smith Ludh"}\',Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.knockback_resistance"}],Invulnerable:1,Profession:3,level:4,Offers:{Recipes:[')
        for item in items:
            for i in range(5):
                out.write("{rewardExp:0,maxUses:99,buy:"+item.get_full_tag(i)+",buyB:")
                if i==0:
                    out.write(titanite_shard(1))
                elif i==1:
                    out.write(titanite_shard(2))
                elif i==2:
                    out.write(titanite_shard(3))
                elif i==3:
                    out.write(titanite_chunk(1))
                else:
                    out.write(titanite_chunk(2))
                out.write(",sell:"+item.get_full_tag(i+1))
                out.write("},")
        out.write("]}}")

        
Item("Arming Sword",['Common carried as a side weapon'],11,9,.8,sweep=1)
Item("Athame",['Right-click to let some blood','and gain some mana.','Blood is power'],9,5,.7,spell=True)
Item("Blood Blade",['A blood-infused greatsword.','Creation of artifacts like this was outlawed','nearly a milenium ago, so this must be very','old, or, considering what happened here,','very new'],13,19,.85,twoHanded=True,sweep=2)
Item("Blood Scythe",['A blood-infused sickle.','Creation of artifacts like this was outlawed','nearly a milenium ago, so this must be very','old, or, considering what happened here,','very new'],12,9,.7)
Item("Cleaver",['A butchers tool of choice,','capable of inflicting damage on','humans as easily as on other animals'],10,5,.7,sweep=2)
Item("Cudgel",['Crush damage is helpful against','spiders and armored foes'],2,10,.85,sweep=1)
Item("Dagger",['Seems more than a kitchen','knife than a proper weapon'],7,3,.52)
Item("Fury",['A blood-infused scymitar.','Creation of artifacts like this was outlawed','nearly a milenium ago, so this must be very','old, or, considering what happened here,','very new'],12,5,.52,sweep=3)
Item("Long Cudgel",['Crush damage is helpful against','spiders and armored foes','Wielding weapons as large as this','in one hand seems impossible'],3,13,.9,dmgtype=2,sweep=3,twoHanded=True)
Item("Longsword",['A formidable weapon. Soldiers schooled','in its use are paid double'],8,13,.81,twoHanded=True,sweep=2)
Item("Rapier",[],4,6,.7)
Item("Shortspear",['Knockback'],8,8,.8,twoHanded=True,ench=',{id:knockback,lvl:1}')
Item("Sickle",['Originally made for harvesting crops, not blood'],10,5,.7)
Item("Simple Cudgel",['Basically a stick, but that\\\'s still something'],1,7,.85,dmgtype=1,sweep=1)
Item("Smallsword",['A side weapon that has seen some use','but kept an alright edge.'],0,8,.78)
Item("Spiked Club",['A weapon improvised after unexpected combat.','Not ideal, but still very deadly'],0,4,.7,sweep=1,dmgtype=1)
Item("Thornsword",['An experimental weapon - sadly the','experiment didn\\\'t work out. The Spikes','don\\\'t cut as deep as a normal blade','and get stuck easily.'],6,13,.86,sweep=1,twoHanded=True)
Item("Winged Shortspear",['Knockback, slight defense boost'],9,8,.8,attr=',{UUIDLeast:2,UUIDMost:1,Name:"c",Slot:mainhand,Operation:0,AttributeName:"generic.armor",Amount:2}',ench=',{id:knockback,lvl:1}')
Item("Zweihänder",['Possibly not made for a human, it is','an unusualy large weapon needing two hands to','wield, but if you trust your sword, maybe','you don\\\'t need magic rings or a shield.'],8,14,.85,twoHanded=True,sweep=1)


write_smith(items)
for item in items:
    item.write_give();
