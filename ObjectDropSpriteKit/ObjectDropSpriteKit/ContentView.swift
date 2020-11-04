//
//  ContentView.swift
//  ObjectDropSpriteKit
//
//  Created by Shreyas Vilaschandra Bhike on 04/11/20.
//

import SwiftUI
import SpriteKit


struct ContentView: View {

    var scene : SKScene{
        
        let scene = GameScene()
        scene.size = CGSize(width: 440, height: 800)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View {
    ZStack{
        Color.black.opacity(0.9).edgesIgnoringSafeArea(.all)
        VStack{
            Text("OBJECT DROP SPRITE KIT")
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundColor(Color.white)
                .padding(.all)
        
           SpriteView(scene: scene)
            .frame(width: 400, height: 600, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .overlay(
            RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 2))
            .foregroundColor(.blue)
            
            
            Text("THE APP WIZARD")
                .font(.title2)
                .fontWeight(.thin)
                .foregroundColor(Color.white)
                .padding(.all)

                }
            }
          }
        }
    

//Game Scene Class
class GameScene : SKScene{
    
    
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else{return}
        let location = touch.location(in: self)
        
        
        //Add Color Here
        let colors = [SKColor.green,SKColor.blue,SKColor.red]
        
        //For Random Color Selection
        let randomCol = colors.randomElement() ?? SKColor.yellow
        
    
//        Circle Code
//        let circle = SKShapeNode( circleOfRadius: 25)
//        circle.fillColor = randomCol
//        circle.position = location
//        circle.physicsBody = SKPhysicsBody(circleOfRadius: 25)
//        addChild(circle)
        
        
//        Box Code
          let size = CGSize(width: 40, height: 40)
          let box = SKShapeNode(rectOf: size)
          box.fillColor = randomCol
          box.position = location
          box.physicsBody = SKPhysicsBody(rectangleOf: size)
          addChild(box)
    
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

