// fundamental entity with very determinate degrees of freedom
class Particle {
  //those are three separate degrees of freedom
  double x, y, z;
  Particle(this.x, this.y, this.z);
}

// A timely object is a relation that consists in a object having time
mixin TimelyObject {
  TimelyObject get past;
}

// A physical particle is a relation that consists in a particle a past particle
mixin PhysicalParticle on Particle, TimelyObject {
  @override
  PhysicalParticle get past;
}

// A velocity measurable is a relation that consists in a physical particle having velocity
mixin VelocityMeasurable on PhysicalParticle {
  double get vx => x - past.x;
  double get vy => y - past.y;
  double get vz => z - past.z;
}

