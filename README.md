# MCMMO

## Menu System

The menu rendering is completely data driven, using items with specific data you can define lists, slots with memmory and more.

```nbt
{
  Menus: {
    List: [
      {
        Id: 0,
        Item: {id: "minecraft:paper", count: 1, components: {"minecraft:custom_name": {translate: "mcmmo.menu.menu_list", color: "yellow", italic: 0b}}},
        Items: [
          {Slot: 1b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 0, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 2b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 1, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 3b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 2, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 4b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 3, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 5b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 4, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 6b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 5, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 7b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 6, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},

          {Slot: 9b, id: "minecraft:arrow", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.previous", color: "red", italic: 0b}, "minecraft:item_model": "mcmmo:menu/left_arrow", "minecraft:custom_data": {list_paginator:{score: "mcmmo.menu_list", size: 21, storage: "mcmmo:menu", path: "Menus", dir: -1}}}},

          {Slot: 10b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 7, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 11b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 8, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 12b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 9, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 13b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 10, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 14b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 11, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 15b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 12, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 16b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 13, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},

          {Slot: 17b, id: "minecraft:arrow", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.next", color: "green", italic: 0b}, "minecraft:item_model": "mcmmo:menu/right_arrow", "minecraft:custom_data": {list_paginator:{score: "mcmmo.menu_list", size: 21, storage: "mcmmo:menu", path: "Menus", dir: 1}}}},

          {Slot: 19b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 14, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 20b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 15, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 21b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 16, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 22b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 17, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 23b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 18, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 24b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 19, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},
          {Slot: 25b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": {list:{score: "mcmmo.menu_list", offset: 20, size: 21, storage: "mcmmo:menu", path: "Menus"}}}},

          {Slot: 26b, id: "minecraft:writtable_book", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.create", color: "green", italic: 0b}, "minecraft:item_model": "mcmmo:menu/plus_sign"}}
        ]
      },
      {
        Id: 1,
        Item: {id: "minecraft:writtable_book", count: 1, components: {"minecraft:custom_name": {translate: "mcmmo.menu.menu_settings", color: "yellow", italic: 0b}}},
        Items: [
          {Slot: 4b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.storage_slot", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/storage_slot", "minecraft:custom_data": {storage: {name: "mcmmo:menu", path: "MenuIcon"}}}},
          {Slot: 11b, id: "minecraft:tnt", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.delete", color: "dark_red", italic: 0b}, "minecraft:item_model": "mcmmo:menu/trash_can"}},
          {Slot: 15b, id: "minecraft:writtable_book", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.edit", color: "green", italic: 0b}, "minecraft:item_model": "mcmmo:menu/pencil"}},
          {Slot: 22b, id: "minecraft:barrier", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.return", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/return_arrow"}},
        ]
      }
    ],
    Count: 2
  }
}
```
