# * First time talking to henry

scoreboard players enable @s mcmmo.option

dialog show @s { \
  type: "minecraft:multi_action", \
  after_action: "none", \
  title: "Henry", \
  body: [ \
    { type: "minecraft:plain_message", text: ["Ah! A customer! Or perhaps... a disciple?"] }, \
    { type: "minecraft:plain_message", text: ["Tell me, stranger, do you ", { text: "feel", italic: true }, " it?"] }, \
    { type: "minecraft:plain_message", text: ["That scent... that ", { text: "divine aroma", italic: true }, " of potential sizzling in the air?"] } \
  ], \
  actions: [ \
    { \
      label: "I guess? Smells like meat.", \
      action: { \
        type: "minecraft:run_command", \
        command: "trigger mcmmo.option set 1" \
      } \
    }, \
    { \
      label: "What are you talking about?", \
      action: { \
        type: "minecraft:run_command", \
        command: "trigger mcmmo.option set 2" \
      } \
    } \
  ] \
}