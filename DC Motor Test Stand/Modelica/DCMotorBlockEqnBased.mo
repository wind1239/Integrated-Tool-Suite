model DCMotorBlockEqnBased
  Modelica.Blocks.Continuous.Integrator integrator2 annotation(Placement(visible = true, transformation(origin = {20, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(Placement(visible = true, transformation(origin = {-44, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain K_t(k = 0.0208) annotation(Placement(visible = true, transformation(origin = {-74, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain inverseJ(k = 319590.923618) annotation(Placement(visible = true, transformation(origin = {-12, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain B(k = 0.0000165) annotation(Placement(visible = true, transformation(origin = {-68, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1 annotation(Placement(visible = true, transformation(origin = {38, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain inverseL(k = 5000) annotation(Placement(visible = true, transformation(origin = {-2, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain K_emf(k = 0.0208) annotation(Placement(visible = true, transformation(origin = {-34, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add31(k1 = -1, k3 = -1) annotation(Placement(visible = true, transformation(origin = {-36, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain R(k = 5) annotation(Placement(visible = true, transformation(origin = {-81, 79}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {92, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {84, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator3 annotation(Placement(visible = true, transformation(origin = {66, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput realoutput1 annotation(Placement(visible = true, transformation(origin = {106, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-36, 104}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-196, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {28, 104}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-174, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2(k2 = -1) annotation(Placement(visible = true, transformation(origin = {-36, 76}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(visible = true, transformation(origin = {100, 46}, extent = {{-24, -24}, {24, 24}}, rotation = 0), iconTransformation(origin = {116, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(add2.y, add31.u2) annotation(Line(points = {{-47, 76}, {-62, 76}, {-62, 50}, {-50, 50}, {-50, 50}}, color = {0, 0, 127}));
  connect(integrator3.y, realoutput1) annotation(Line(points = {{77, -30}, {100, -30}, {100, -32}, {100, -32}}, color = {0, 0, 127}));
  connect(integrator2.y, integrator3.u) annotation(Line(points = {{31, -30}, {54, -30}}, color = {0, 0, 127}));
  connect(B.u, integrator3.u) annotation(Line(points = {{-80, -62}, {-86, -62}, {-86, -78}, {44, -78}, {44, -30}, {54, -30}}, color = {0, 0, 127}));
  connect(y, integrator2.y) annotation(Line(points = {{92, 10}, {44, 10}, {44, -30}, {30, -30}, {30, -30}}, color = {0, 0, 127}));
  connect(add31.u3, K_emf.y) annotation(Line(points = {{-48, 42}, {-58, 42}, {-58, 32}, {-18, 32}, {-18, 8}, {-22, 8}, {-22, 8}}, color = {0, 0, 127}));
  connect(R.y, add31.u1) annotation(Line(points = {{-69, 79}, {-58, 79}, {-58, 58}, {-48, 58}, {-48, 58}}, color = {0, 0, 127}));
  connect(integrator1.y, R.u) annotation(Line(points = {{49, 50}, {62, 50}, {62, 22}, {-94, 22}, {-94, 79}}, color = {0, 0, 127}));
  connect(add31.y, inverseL.u) annotation(Line(points = {{-25, 50}, {-14, 50}, {-14, 50}, {-16, 50}, {-16, 50}}, color = {0, 0, 127}));
  connect(K_emf.u, integrator2.y) annotation(Line(points = {{-46, 8}, {-60, 8}, {-60, -10}, {31, -10}, {31, -30}}, color = {0, 0, 127}));
  connect(integrator1.y, K_t.u) annotation(Line(points = {{49, 50}, {62, 50}, {62, 22}, {-94, 22}, {-94, -24}, {-88, -24}, {-88, -24}}, color = {0, 0, 127}));
  connect(inverseL.y, integrator1.u) annotation(Line(points = {{9, 50}, {26, 50}}, color = {0, 0, 127}));
  connect(B.y, add1.u2) annotation(Line(points = {{-57, -62}, {-55.5, -62}, {-55.5, -62}, {-56, -62}, {-56, -49}, {-56, -49}, {-56, -36}}, color = {0, 0, 127}));
  connect(inverseJ.y, integrator2.u) annotation(Line(points = {{-1, -30}, {8, -30}}, color = {0, 0, 127}));
  connect(add1.y, inverseJ.u) annotation(Line(points = {{-33, -30}, {-24, -30}}, color = {0, 0, 127}));
  connect(K_t.y, add1.u1) annotation(Line(points = {{-63, -24}, {-56, -24}}, color = {0, 0, 127}));
  connect(pin_p.v, add2.u1) annotation(Line(points = {{-63, -24}, {-56, -24}}, color = {0, 0, 127}));
  connect(pin_n.v, add2.u2) annotation(Line(points = {{-63, -24}, {-56, -24}}, color = {0, 0, 127}));
  connect(flange_a.phi, realoutput1) annotation(Line(points = {{-63, -24}, {-56, -24}}, color = {0, 0, 127}));
  integrator1.y = pin_p.i;
  pin_p.i = -pin_n.i;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end DCMotorBlockEqnBased;