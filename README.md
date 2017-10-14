# Legendary Crafting (v0.1)

*[MOD] Grim Dawn: Ashes of Malmouth - v1.0.2.1*

---

> 1 [What is this about?](#intro)
>> 1.1 [Setup](#intro-setup)

>> 1.2 [Merging](#intro-merge)

>> 1.3 [Custom Items & Tool Support](#intro-tool)

>> 1.4 [Content Structure](#intro-structure)

> 2 [Features](#feat)
>> 2.1 [Salvaging](#feat-salvage)

>> 2.2 [Crafting](#feat-craft)

>> 2.3 [Balance](#feat-balance)

>> 2.4 [Blueprints](#feat-blueprints)

> 3 [Pictures](#pic)

>> 3.1 [Blacksmith](#pic-crafting)

>> 3.2 [How To Summon The Blacksmith](#pic-jailor)

> 4 [Credits and Thanks](#credits)

>> 4.1 [OMEGA - Legendary Essence and Legendary Dismantle](#credits-omega)

> 5 [License (requirements to use this mod in your project)](#license)

---
<a name="intro"></a>
<a name="1"></a>
# 1 - What is this about?
Keeping every single Legendary in the game will fill up the Stash in no time, the solution is not to have a bigger Stash, but have a possiblity to craft the Legendary at any time while keeping the balance. You won't be able to just get the Legendary you are looking for without any effort, you still have to grind for it.

<a name="intro-setup"></a>
<a name="1.1"></a>
## 1.1 - Setup
Without any other mods simply move or extract the mod into /Grim Dawn/mods/

<a name="intro-merge"></a>
<a name="1.2"></a>
## 1.2 - Merging (ToDo)
In case of Merging this mod with another, you will be able to move the entire source into another mod, there won't be any conflicts as long as any of the other mods don't include another of my mods.

If you are using one of my Mods and want to merge them you will have to add the recipes to that Blacksmith. I will write more about it at a later time.

<a name="intro-tool"></a>
<a name="1.3"></a>
## 1.3 - Custom Items & Tool Support
I made this mod when I was working on a few other features for my Modding Tools, so this is part of it and can be used for any other Mod and Legendaries out there. It only needs the Path for where to look in order to create the Blueprints and add them to the Blacksmith.

WanezToolsGD v0.3.0 is required for this. (not released at the time of the release of this mod)

<a name="intro-structure"></a>
<a name="1.4"></a>
## 1.4 - Content Structure
<pre>
|-- database
	|-- mod_wanez
	|	|-- misc
	|	|	|-- <a href="#2.2">npcs</a>
	|	|-- _lc
	|	|	|-- <a href="#2.3">blueprints</a>
	|-- <a href="#4.1">records</a>
		|-- <a href="#2.2">creatures</a>
		|-- <a href="#4.1">omega</a>
		|-- <a href="#4.1">ui</a>
|-- source
	|-- <a href="#4.1">items</a>
	|-- wanez
	|	|-- <a href="#2.2">conversations</a>
	|	|-- <a href="#2.2">scripts</a>
</pre>
		
---
<a name="feat"></a>
<a name="2"></a>
# 2 - Features

<a name="feat-salvage"></a>
<a name="2.1"></a>
## 2.1 - Salvaging
Legendaries can be salvaged and you will receive a __Legendary Orb__ first used in OMEGA MOD, I decided to use the same item and salvage process to make the mod Mergable with OMEGA and any Compilation with OMEGA.

<a name="feat-craft"></a>
<a name="2.2"></a>
## 2.2 - Crafting
Legendaries can be crafted at the Crafter you "Summon" by talking to the Jailor in Devil's Crossing.

<a name="feat-balance"></a>
<a name="2.3"></a>
## 2.3 - Balance
In order to keep getting Legendaries balanced you will have to bring a lot of Orbs and Iron Bits to craft a Legendary. I'd say you pick up every Legendary you can find and Salvage them in order to get as many orbs as possible, in addition to cleaning up a stash it is more likely for you to get your hands on the Legendary you are looking for.

<a name="feat-blueprints"></a>
<a name="2.4"></a>
## 2.4 - Blueprints
The Blacksmith knows the Blueprints you can use to craft every Epic and Legendary in the Game, the cost depends on the Item's Level. The following equations are for all items with the exception of low level Epics:
* Iron Bits: (itemLevel - 25) * 1000 * 5)
* Legendary Essence: (itemLevel - 25) * 5 + 50)

---

<a name="pic"></a>
<a name="3"></a>
# 3 - Pictures

<a name="pic-crafting"></a>
<a name="3.1"></a>
## 3.1 Blacksmith
![Low Level Epic](https://user-images.githubusercontent.com/20875155/31574958-831dbe4e-b0db-11e7-9b03-c033b38220bb.jpg "Low Level Epic")

![High Level Legendary](https://user-images.githubusercontent.com/20875155/31574957-8300febc-b0db-11e7-9e6a-2dd4cea591aa.jpg "High Level Legendary")

<a name="pic-jailor"></a>
<a name="3.2"></a>
## 3.2 How To Summon The Blacksmith
![Where to Find the Blacksmith - Part 1](https://user-images.githubusercontent.com/20875155/31574959-8339cb5c-b0db-11e7-9663-95b55b9a250a.jpg "Where to Find the Blacksmith - Part 1")
![Where to Find the Blacksmith - Part 2](https://user-images.githubusercontent.com/20875155/31574956-82e0d5ec-b0db-11e7-9494-5515599133c8.jpg "Where to Find the Blacksmith - Part 2")

---

<a name="credits"></a>
<a name="4"></a>
# 4 - Credits and Thanks
## 4.1 - OMEGA - Legendary Essence and Legendary Dismantle
Thanks goes to okami29 for making the __Legendary Essence__ for his OMEGA MOD. This Mod is using them to Craft Legendaries and the files to Dismantle Legendaries.

---

<a name="License"></a>
<a name="5"></a>
# 5 - License
You may change anything you like, but when you do please make a list for everyone accessible - to avoid confusion about features in your Mod, but missing in the original. There is no need to ask about it, however I don't mind getting a notice when this is included in other projects, it's always nice to see where the work ends up.

The only credit I require is a link in your Project to either the Forum Post of this Mod or the GitHub Repo, so others can know about it and use it in their projects, too. In case of using WanezToolsGD to change or add Legendaries please also add a link to either the Forum Post or the GitHub Repo, so others know about the tool and the possible usage to add items.
 