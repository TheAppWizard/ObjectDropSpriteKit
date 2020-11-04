# ObjectDropSpriteKit
This project can be used for implementation of Object Dropping with help of SwiftUI and SpriteKit

### Selecting Box Or Circle

Box
```
 let size = CGSize(width: 40, height: 40)
 let box = SKShapeNode(rectOf: size)
 box.fillColor = randomCol
 box.position = location
 box.physicsBody = SKPhysicsBody(rectangleOf: size)
 addChild(box)
```


Circle 
```
  let circle = SKShapeNode( circleOfRadius: 25)
  circle.fillColor = randomCol
  circle.position = location
  circle.physicsBody = SKPhysicsBody(circleOfRadius: 25)
  addChild(circle)
```


### Output
![Image of Output](https://github.com/TheAppWizard/ObjectDropSpriteKit/blob/main/objectdrop.png)


