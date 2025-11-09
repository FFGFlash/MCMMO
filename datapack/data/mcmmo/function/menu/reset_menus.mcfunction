data merge storage mcmmo:menus { \
  Data: [ \
    { \
      Index: 0, \
      Value: { \
        Id: -1, \
        Item: {id: "minecraft:paper", count: 1, components: {"minecraft:custom_name": {translate: "mcmmo.menu.menu_list", color: "yellow", italic: 0b}}}, \
        Items: [ \
          {Slot: 1b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["0"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 0, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 0, size: 21 } } \
          }}}, \
          {Slot: 2b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["1"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 1, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 1, size: 21 } } \
          }}}, \
          {Slot: 3b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["2"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 2, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 2, size: 21 } } \
          }}}, \
          {Slot: 4b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["3"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 3, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 3, size: 21 } } \
          }}}, \
          {Slot: 5b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["4"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 4, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 4, size: 21 } } \
          }}}, \
          {Slot: 6b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["5"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 5, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 5, size: 21 } } \
          }}}, \
          {Slot: 7b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["6"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 6, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 6, size: 21 } } \
          }}}, \
          {Slot: 9b, id: "minecraft:arrow", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.previous", color: "yellow", italic: 0b}, "minecraft:item_model": "mcmmo:menu/left_arrow", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "if_set_component", args: { condition: "score @s mcmmo.menu_list matches ..0", component: "minecraft:item_model", value: "\"mcmmo:menu/blank\"" } }, \
              { id: 1, type: "if_set_component", args: { condition: "score @s mcmmo.menu_list matches ..0", component: "minecraft:tooltip_display", value: "{ hide_tooltip: 1b }" } }, \
              { id: 2, type: "if_remove_component", args: { condition: "score @s mcmmo.menu_list matches ..0", component: "minecraft:custom_data.on_click" } } \
            ], \
            on_click: { type: "decrement_score", args: { score: "mcmmo.menu_list", target: "@s" } } \
          }}}, \
          {Slot: 10b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["7"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 7, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 7, size: 21 } } \
          }}}, \
          {Slot: 11b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["8"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 8, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 8, size: 21 } } \
          }}}, \
          {Slot: 12b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["9"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 9, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 9, size: 21 } } \
          }}}, \
          {Slot: 13b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["10"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 10, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 10, size: 21 } } \
          }}}, \
          {Slot: 14b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["11"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 11, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 11, size: 21 } } \
          }}}, \
          {Slot: 15b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["12"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 12, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 12, size: 21 } } \
          }}}, \
          {Slot: 16b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["13"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 13, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 13, size: 21 } } \
          }}}, \
          {Slot: 17b, id: "minecraft:arrow", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.next", color: "yellow", italic: 0b}, "minecraft:item_model": "mcmmo:menu/right_arrow", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "calc_max_page", args: { size: 21, list: "mcmmo:menus", score: "mcmmo.menu", target: "#mp" } }, \
              { id: 1, type: "if_set_component", args: { condition: "score @s mcmmo.menu_list >= #mp mcmmo.menu", component: "minecraft:item_model", value: "\"mcmmo:menu/blank\"" } }, \
              { id: 2, type: "if_set_component", args: { condition: "score @s mcmmo.menu_list >= #mp mcmmo.menu", component: "minecraft:tooltip_display", value: "{ hide_tooltip: 1b }" } }, \
              { id: 3, type: "if_remove_component", args: { condition: "score @s mcmmo.menu_list >= #mp mcmmo.menu", component: "minecraft:custom_data.on_click" } } \
            ], \
            on_click: { type: "increment_score", args: { score: "mcmmo.menu_list", target: "@s" } } \
          }}}, \
          {Slot: 19b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["14"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 14, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 14, size: 21 } } \
          }}}, \
          {Slot: 20b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["15"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 15, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 15, size: 21 } } \
          }}}, \
          {Slot: 21b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["16"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 16, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 16, size: 21 } } \
          }}}, \
          {Slot: 22b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["17"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 17, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 17, size: 21 } } \
          }}}, \
          {Slot: 23b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["18"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 18, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 18, size: 21 } } \
          }}}, \
          {Slot: 24b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["19"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 19, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 19, size: 21 } } \
          }}}, \
          {Slot: 25b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: ["20"]}, "minecraft:item_model": "mcmmo:menu/list_descriptor", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "menu_modifiers[{id:2}].args.page", type: "int", scale: 1 } }, \
              { id: 1, type: "load_score_to_data", args: { score: "mcmmo.menu_list", target: "@s", path: "on_click.args.page", type: "int", scale: 1 } }, \
              { id: 2, type: "load_item_from_list/page", args: { list: "mcmmo:menus", path: ".Item", page: -1, offset: 20, size: 21 } } \
            ], \
            on_click: { type: "edit_menu", args: { page: -1, offset: 20, size: 21 } } \
          }}}, \
          {Slot: 26b, id: "minecraft:writable_book", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.create", color: "green", italic: 0b}, "minecraft:item_model": "mcmmo:menu/plus_sign"}} \
        ] \
      } \
    }, \
    { \
      Index: 1, \
      Value: { \
        Id: -2, \
        Item: {id: "minecraft:writable_book", count: 1, components: {"minecraft:custom_name": {translate: "mcmmo.menu.menu_settings", color: "yellow", italic: 0b}}}, \
        Items: [ \
          {Slot: 4b, id: "minecraft:paper", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.storage_slot", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/storage_slot", "minecraft:custom_data": { \
            menu_modifiers: [ \
              { id: 0, type: "load_score_to_data", args: { score: "mcmmo.menu_editor", target: "@s", path: "menu_modifiers[{id:1}].args.index", type: "int", scale: 1 } }, \
              { id: 1, type: "load_item_from_list/index", args: { list: "mcmmo:menus", path: ".Item", index: -1 } } \
            ] \
          }}}, \
          {Slot: 11b, id: "minecraft:tnt", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.delete", color: "dark_red", italic: 0b}, "minecraft:item_model": "mcmmo:menu/trash_can"}}, \
          {Slot: 15b, id: "minecraft:writable_book", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.edit", color: "green", italic: 0b}, "minecraft:item_model": "mcmmo:menu/pencil", "minecraft:custom_data": { \
            on_click: { type: "open_editor" } \
          }}}, \
          {Slot: 22b, id: "minecraft:barrier", components: {"minecraft:custom_name": {translate: "mcmmo.menu_editor.return", color: "white", italic: 0b}, "minecraft:item_model": "mcmmo:menu/return_arrow", "minecraft:custom_data": { \
            on_click: { type: "change_menu", args: { index: 0 } } \
          }}} \
        ] \
      } \
    } \
  ], \
  Count: 2 \
}