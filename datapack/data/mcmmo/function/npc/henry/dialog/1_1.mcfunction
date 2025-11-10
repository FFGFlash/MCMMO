# * Chose option 1

scoreboard players enable @s mcmmo.option

dialog show @s { \
  type: "minecraft:confirmation", \
  after_action: "none", \
  title: "Henry", \
  body: [ \
    { type: "minecraft:plain_message", text: ["Exactly! You ", { text: "understand", italic: true }, "! The spirit of beef is strong in you."] }, \
    { type: "minecraft:plain_message", text: ["Bring me ten slabs of Prime Firstian Beef from the roaming cattle."] }, \
    { type: "minecraft:plain_message", text: ["Treat them with respect. Each cut is a prayer."] } \
  ], \
  yes: { \
    label: "Accept", \
    action: { \
      type: "minecraft:run_command", \
      command: "trigger mcmmo.option set 3" \
    } \
  }, \
  no: { \
    label: "Decline", \
    action: { \
      type: "minecraft:run_command", \
      command: "trigger mcmmo.option set 0" \
    } \
  } \
}