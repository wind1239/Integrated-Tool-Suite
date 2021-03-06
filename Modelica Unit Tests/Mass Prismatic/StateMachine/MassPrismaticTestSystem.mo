model MassPrismaticSystem
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass1(animation = false, m = 0.4, r_0(start = {1.2, 0, 0})) annotation(Placement(visible = true, transformation(origin = {10, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(enableAnimation = false, animateWorld = false, animateGravity = false) annotation(Placement(visible = true, transformation(origin = {-66, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(useAxisFlange = true, animation = false, s(start = 0.6, fixed = true), n = {1, 1, 0}, v(start = 0.0, fixed = true)) annotation(Placement(visible = true, transformation(origin = {-30, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.RelSpeedSensor relspeedsensor1 annotation(Placement(visible = true, transformation(origin = {-32, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force1(useSupport = true, f(fixed = true)) annotation(Placement(visible = true, transformation(origin = {-32, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput vel "Send velocity signal to controller" annotation(Placement(visible = true, transformation(origin = {-4, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-4, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u "Get actuation signal from controller" annotation(Placement(visible = true, transformation(origin = {-74, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-74, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.RelPositionSensor relpositionsensor1 annotation(Placement(visible = true, transformation(origin = {-30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput pos annotation(Placement(visible = true, transformation(origin = {-4, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-8, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(relpositionsensor1.s_rel, pos) annotation(Line(points = {{-30, -51}, {-14, -51}, {-14, -50}, {-14, -50}}, color = {0, 0, 127}));
  connect(relpositionsensor1.flange_b, prismatic1.axis) annotation(Line(points = {{-20, -40}, {-16, -40}, {-16, -10}, {-22, -10}, {-22, -10}}, color = {0, 127, 0}));
  connect(relpositionsensor1.flange_a, prismatic1.support) annotation(Line(points = {{-40, -40}, {-46, -40}, {-46, -10}, {-34, -10}, {-34, -10}, {-34, -10}}, color = {0, 127, 0}));
  connect(u, force1.f) annotation(Line(points = {{-74, 10}, {-44, 10}, {-44, 10}, {-44, 10}}, color = {0, 0, 127}));
  connect(relspeedsensor1.v_rel, vel) annotation(Line(points = {{-32, 29}, {-12, 29}, {-12, 28}, {-12, 28}}, color = {0, 0, 127}));
  connect(relspeedsensor1.flange_a, prismatic1.support) annotation(Line(points = {{-42, 40}, {-50, 40}, {-50, -10}, {-34, -10}, {-34, -10}}, color = {0, 127, 0}));
  connect(relspeedsensor1.flange_b, prismatic1.axis) annotation(Line(points = {{-22, 40}, {-16, 40}, {-16, -10}, {-22, -10}, {-22, -10}}, color = {0, 127, 0}));
  connect(force1.support, prismatic1.support) annotation(Line(points = {{-32, 0}, {-32, 0}, {-32, -4}, {-34, -4}, {-34, -10}, {-34, -10}}, color = {0, 127, 0}));
  connect(force1.flange, prismatic1.axis) annotation(Line(points = {{-22, 10}, {-22, 10}, {-22, -10}, {-22, -10}}, color = {0, 127, 0}));
  connect(prismatic1.frame_a, world.frame_b) annotation(Line(points = {{-40, -16}, {-56, -16}, {-56, -16}, {-56, -16}}, color = {95, 95, 95}));
  connect(prismatic1.frame_b, pointmass1.frame_a) annotation(Line(points = {{-20, -16}, {10, -16}, {10, -16}, {10, -16}}, color = {95, 95, 95}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end MassPrismaticSystem;