# * Talk to Henry after completing "A Man and His Meat"

scoreboard players enable @s mcmmo.option

dialog show @s { \
  type: "minecraft:multi_action", \
  after_action: "none", \
  title: "Henry", \
  pause: false, \
  body: [ \
    { type: "minecraft:plain_message", contents: ["Ah, you've proven your chops!"] }, \
    { type: "minecraft:plain_message", contents: ["But raw beef is only flesh. To transcend it... we must ", { text: "marinate.", italic: true }] }, \
    { type: "minecraft:plain_message", contents: ["The ", { text: "Sacred Marinade", italic: true }, " needs three ingredients - herbs that whisper to the soul of the meat."] } \
    { type: "minecraft:plain_message", contents: ["Bring them to me, and together we shall baste in glory!"] } \
  ], \
  actions: [ \
    { \
      label: "Accept", \
      action: { \
        type: "minecraft:run_command", \
        command: "trigger mcmmo.option set 1" \
      } \
    }, \
    { \
      label: "Decline", \
      action: { \
        type: "minecraft:run_command", \
        command: "trigger mcmmo.option set -1" \
      } \
    } \
  ] \
}