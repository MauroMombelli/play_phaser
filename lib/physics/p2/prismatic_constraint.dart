part of P2;

class PrismaticConstraint extends p2.PrismaticConstraint {
  Phaser.Game game;
  P2 world;

  PrismaticConstraint(P2 world, p2.Body bodyA, p2.Body bodyB, bool lockRotation, List anchorA, List anchorB, List axis, num maxForce)
  :super(bodyA, bodyB,localAnchorA: [ world.pxmi(anchorA[0]), world.pxmi(anchorA[1]) ], localAnchorB: [ world.pxmi(anchorB[0]), world.pxmi(anchorB[1]) ], localAxisA: axis, disableRotationalLock: !lockRotation, maxForce: maxForce) {

    if ( lockRotation == null) { lockRotation = true; }
    if ( anchorA == null) { anchorA = [0, 0]; }
    if ( anchorB == null) { anchorB = [0, 0]; }
    if ( axis == null) { axis = [0, 0]; }
    if ( maxForce == null) { maxForce = double.MAX_FINITE; }

    /**
     * @property {Phaser.Game} game - Local reference to game.
     */
    this.game = world.game;

    /**
     * @property {Phaser.Physics.P2} world - Local reference to P2 World.
     */
    this.world = world;

    anchorA = [ world.pxmi(anchorA[0]), world.pxmi(anchorA[1]) ];
    anchorB = [ world.pxmi(anchorB[0]), world.pxmi(anchorB[1]) ];

    //var options = { localAnchorA: anchorA, localAnchorB: anchorB, localAxisA: axis, maxForce: maxForce, disableRotationalLock: !lockRotation };

    //p2.PrismaticConstraint.call(this, bodyA, bodyB, options);

  }
}
