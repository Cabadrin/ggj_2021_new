{
  "spriteId": {
    "name": "spr_npc3_idle",
    "path": "sprites/spr_npc3_idle/spr_npc3_idle.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "par_collidable",
    "path": "objects/par_collidable/par_collidable.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":32,"eventType":9,"collisionObjectId":null,"parent":{"name":"obj_npc_two","path":"objects/obj_npc_two/obj_npc_two.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":2,"value":"\"Hey Mapwell! I really need you to find me some gold\\nThere's a scary Orc to the west\\nCan you find me a safe way around?\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"text_unfulfilled","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":2,"value":"\"Holy smokes! A safe way!\\nGuess I'm eating well tonight!\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"text_fulfilled","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":2,"value":"\"Come back when you're older\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"text_dismiss","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "NPCs",
    "path": "folders/Objects/NPCs.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_npc_two",
  "tags": [],
  "resourceType": "GMObject",
}