# Shadow Puppet Materials Experiment – Round 1

## Purpose
This experiment establishes a controlled methodology for identifying durable alternatives to chipboard while preserving traditional shadow puppet manipulation constraints. The goal is not immediate material selection, but the development of a repeatable evaluation workflow that can scale into future research rounds.

All materials must satisfy real manipulation requirements:
- Pinned joint articulation
- Repeated flex cycling without catastrophic failure
- Stable planar behavior under stage lighting
- Crisp silhouette under backlight
- Practical repairability
- Student-safe fabrication methods

---

# Round 1 Material Set

## A. Traditional Baseline
**Parchment-style hide (or closest workable proxy)**

- Target thickness: record actual measured thickness (typically ~0.040"–0.080")
- Function: Traditional performance baseline for stiffness, joint durability, silhouette clarity, and handling feel

---

## B. Modern Membrane Baseline
**Tyvek – 0.008"–0.0085" (8–8.5 mil)**

- Tear-resistant sheet with paper-like workflow
- Lightweight and flexible
- Accepts pinned joints
- Serves as primary chipboard replacement candidate

Optional secondary test: 0.007" (7 mil) variant if time permits

---

## C. Engineered Hinge Plastic
**Polypropylene (PP) sheet – 0.030" (30 mil)**

- Supports repeated flex cycling
- Suitable for pinned joints
- Enables additional living-hinge testing
- Thickness may adjust in future rounds:
  - 0.020" for smaller puppets
  - 0.040" for larger puppets

---

## D. Metal Body Outlier
**Aluminum sheet – 0.010" (10 mil), 5052 alloy (or equivalent)**

- Thin enough to cut and drill
- Requires mechanical/pinned joints (no flex hinges)
- Evaluates torsional stability and silhouette crispness
- Must be deburred for safety

---

## E. Metal Reinforcement Variant
**Tyvek (0.008") + metal eyelets/grommets at joint holes**

- Same substrate as B
- Adds metal hardware only at stress points
- Tests whether joint wear (not substrate weakness) is the primary failure mode

---

# Standardized Test Coupons

All substrates use identical geometry to preserve comparability.

## Coupon A – Detail Lattice Panel
- Fine bridges
- Small negative spaces
- Tests minimum viable detail and tear/crack behavior

## Coupon B – Shoulder Joint Module
- Standardized pinned joint
- Controlled hole diameter and spacing
- Measures hole elongation and joint durability

## Coupon C – Wrist/Hand Joint Module
- Smaller geometry
- Higher stress articulation
- Tests torsional stability and fatigue

## Coupon D – Living Hinge (PP only)
- Controlled hinge strip
- Measures flex fatigue and whitening/crack onset

---

# Joint Standardization

Baseline joint across materials:
- Small rivet, brad, or Chicago screw (select one and standardize)

Exceptions:
- Aluminum: pinned joints only
- PP: additional living-hinge test
- Tyvek variant: metal eyelets installed prior to joint insertion

---

# Evaluation Rubric

## Mechanical Performance
- Planarity before/after light exposure
- Torsional stability during rod manipulation
- Weight per area
- Hole elongation after cycling
- Joint friction and smoothness

## Fabrication Behavior
- Edge quality
- Ease of cutting/drilling
- Minimum bridge width achieved
- Tool compatibility

## Performance Aesthetics
- Silhouette crispness
- Translucency behavior
- Surface finishing compatibility

## Repairability
- Ease of patching
- Joint replacement feasibility
- Structural integrity after repair

---

# Documentation Workflow

Each material receives a "Material Card" including:
- Material specification (type, thickness, supplier)
- Fabrication notes
- Joint method used
- Coupon results (A–D)
- Photos/video documentation
- Observed failure modes
- Narrative assessment

All data and media stored in structured repository folders.

---

# Decision Gates After Round 1

Following evaluation:
1. Select default student prototyping substrate
2. Select traditional fidelity reference material
3. Determine if metal is best used as full body or hardware reinforcement
4. Identify geometric adjustments needed (if stiffness issues persist)

---

# Round 2 (Planned Expansion)

Potential additions:
- Alternate aluminum thicknesses
- Brass sheet comparison
- Stainless shim stock
- Metal spine reinforcement strips
- Additional PP thicknesses

---

This Round 1 experiment establishes a structured materials research pathway aligned with iterative design practice. The output will include reproducible test geometry, documented joint standards, and comparative performance metrics suitable for scaling into broader Blended Shadow Puppet development work.

---

# Future Pivot Mechanism Research Track (Round 2 and Beyond)

In parallel with substrate testing, pivot mechanisms will be evaluated as an independent research axis. This becomes critical as puppets move toward partial or full mechanization ("2D robotic" systems driven by AI or computational control). Pivot selection must therefore consider durability, backlash, friction stability, repeatability, and actuator integration.

## Core Pivot Families to Evaluate

### 1. Simple Pin-Through-Hole (Baseline)
- Brass brads
- Tubular rivets
- Chicago screws
- Small machine screw + locknut

Mechanical pivot created by overlapping sheets and fastening through a single axis point.

Evaluation focus:
- Hole elongation
- Slop/backlash growth
- Friction variability
- Ease of replacement

---

### 2. Pin + Washer Stack (Friction-Managed Pivot)
- Nylon, PTFE, or brass washers
- Controlled clamp preload

Provides tunable friction and reduced wear.

Evaluation focus:
- Friction consistency
- Controlled resistance
- Suitability for motor backdrivability

---

### 3. Eyelet/Grommet-Reinforced Hole + Pin
- Metal eyelet inserted prior to joint hardware

Protects membrane substrates from tear-out and wear.

Evaluation focus:
- Long-term durability
- Reduction of hole deformation
- Compatibility with mechanized linkages

---

### 4. Bushing Pivot (Sleeve Bearing)
- Brass tube
- PTFE tube
- 3D-printed bushing

Creates defined bearing surface separate from sheet material.

Evaluation focus:
- Axis stability
- Reduced wear
- Robotics-ready geometry

---

### 5. Micro Bearing Pivot
- Small flanged radial bearings

Low-friction rotational axis.

Evaluation focus:
- Repeatability
- Backlash control
- Added mass and thickness impact

---

### 6. Captive / Knuckle Hinge
- Metal hinge segment
- Printed hinge assembly

Provides fixed mechanical rotation axis.

Evaluation focus:
- Structural rigidity
- Geometric constraints
- Suitability for large-scale puppets

---

### 7. Living Hinge (Compliant Flexure)
- Polypropylene thin-section hinge

Rotation achieved through material flex rather than mechanical pin.

Evaluation focus:
- Fatigue life
- Backlash-free behavior
- Rotation range limits

---

### 8. Laminated Flexure (Film/Fabric Hinge)
- Tape, cloth, or film joining rigid segments

Distributed compliance rather than single-axis pivot.

Evaluation focus:
- Creep/drift
- Expressive vs mechanical control tradeoffs

---

# Pivot Evaluation Criteria (Mechanization-Oriented)

Each pivot type will be assessed using the following criteria, anticipating AI-driven or computational actuation:

- Backlash and slop growth over cycles
- Friction stability under repeated motion
- Repeatable angular positioning
- Backdrivability for motor integration
- Mounting interface compatibility (servo horns, linkages, pulleys)
- Sensor integration feasibility (encoders, magnetic sensors, potentiometers)
- Maintenance and replacement workflow

---

# Integration Strategy

Material testing (Round 1) isolates substrate behavior.
Pivot testing (Round 2) isolates articulation mechanics.

Future mechanized prototypes will combine the highest-performing substrate with the highest-performing pivot system to develop a scalable 2D articulated robotic puppet platform.

This structured separation prevents early design lock-in and supports long-term integration of AI-driven motion systems within the Blended Shadow Puppet research pathway.

