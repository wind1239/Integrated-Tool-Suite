model CoordinatedMotionControl
  BoomSetPointGenerator boomSetPointGenerator1 annotation(Placement(visible = true, transformation(origin = {-162, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PID positionControl (hiLim = 2, kiv = 0, kpv = 1.0, loLim = -2) annotation(Placement(visible = true, transformation(origin = {-18, - 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PID velocityControl (hiLim = 5, kdv = 0, kiv = 0, kpv = 1, loLim = -5) annotation(Placement(visible = true, transformation(origin = {72, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add31(k2 = -1, k3 = 0.0) annotation(Placement(visible = true, transformation(origin = {28, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 (k1 = +1, k2 = -1) annotation(Placement(visible = true, transformation(origin = {-52, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add32(k2 = -1, k3 = 0.0) annotation(Placement(visible = true, transformation(origin = {28, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2(k1 = -1, k2 = +1) annotation(Placement(visible = true, transformation(origin = {-52, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput voltage2 annotation(Placement(visible = true, transformation(origin = {108, 46}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation( origin = {104, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput voltage annotation(Placement(visible = true, transformation(origin = {108, -40}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation( origin = {106, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));  
  Modelica.Blocks.Interfaces.RealInput velocity annotation(Placement(visible = true, transformation(origin = {-110, -82}, extent = {{-20, -20}, {20, 20}}, rotation = 0),  iconTransformation(origin = {-96, 22}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput position annotation(Placement(visible = true, transformation(origin = {-110, -48}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-96, 72}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput velocity2 annotation(Placement(visible = true, transformation(origin = {-114, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-96, -76}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput position2 annotation(Placement(visible = true, transformation(origin = {-112, 78}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-96, -28}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  PID positionControl2(hiLim = 2, kiv = 0.0, kpv = 1.0, loLim = -2) annotation(Placement(visible = true, transformation(origin = {-14, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PID velocityControl2(hiLim = 5, kdv = 0, kiv = 0, kpv = 1, loLim = -5) annotation(Placement(visible = true, transformation(origin = {72, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(positionControl2.u, add2.y) annotation(Line(points = {{-24, 46}, {-42, 46}, {-42, 46}, {-40, 46}}, color = {0, 0, 127}));
  connect(positionControl2.y, add32.u2) annotation(Line(points = {{-4, 46}, {14, 46}, {14, 46}, {16, 46}}, color = {0, 0, 127}));
  connect(velocityControl2.u, add32.y) annotation(Line(points = {{62, 46}, {36, 46}, {36, 46}, {40, 46}, {40, 46}}, color = {0, 0, 127}));
  connect(velocityControl2.y, voltage2) annotation(Line(points = {{82, 46}, { 108, 46}}, color = {0, 0, 127}));
  connect(boomSetPointGenerator1.vsetpt1, add32.u1) annotation(Line(points = {{-152, 8}, {-138, 8}, {-138, 96}, {2, 96}, {2, 54}, {16, 54}, {16, 54}}, color = {0, 0, 127}));
  connect(velocity2, add32.u3) annotation(Line(points = {{-114, 42}, {-88, 42}, {-88, 24}, {10, 24}, {10, 38}, {16, 38}, {16, 38}}, color = {0, 0, 127}));
  connect(boomSetPointGenerator1.vsetpt2, add31.u1) annotation(Line(points = {{-152, -3}, {-6, -3}, {-6, -32}, {16, -32} }, color = {0, 0, 127}));
  connect(boomSetPointGenerator1.psetpt2, add1.u1) annotation(Line(points = {{-152, -6}, {-80, -6}, {-80, -34}, {-64, -34} }, color = {0, 0, 127}));
  connect(boomSetPointGenerator1.psetpt1, add2.u2) annotation(Line(points = {{-151, 4}, {-74, 4}, {-74, 40}, {-64, 40} }, color = {0, 0, 127}));
  connect(position2, add2.u1) annotation(Line(points = {{-112, 78}, {-74, 78}, {-74, 52}, {-64, 52}, {-64, 52}}, color = {0, 0, 127}));
  connect(position, add1.u2) annotation(Line(points = {{-110, -48}, {-64, -48}, {-64, -46}, {-64, -46}}, color = {0, 0, 127}));
  connect(add1.y, positionControl.u) annotation(Line(points = {{-41, -40}, {-28, -40}}, color = {0, 0, 127}));
  connect(velocity, add31.u3) annotation(Line(points = {{-110, -82}, {16, -82}, {16, -48}}, color = {0, 0, 127}));
  connect(positionControl.y, add31.u2) annotation(Line(points = {{-8, -40}, {16, -40} }, color = {0, 0, 127}));
  connect(add31.y, velocityControl.u) annotation(Line(points = {{39, -40}, {62, -40} }, color = {0, 0, 127}));
  connect(velocityControl.y, voltage) annotation(Line(points = {{82, -40}, {108, -40}}, color = {0, 0, 127}));
  annotation(Icon, Diagram);
end CoordinatedMotionControl;