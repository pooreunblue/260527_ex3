---
name: Rider Nexus
colors:
  surface: '#131313'
  surface-dim: '#131313'
  surface-bright: '#393939'
  surface-container-lowest: '#0e0e0e'
  surface-container-low: '#1c1b1b'
  surface-container: '#201f1f'
  surface-container-high: '#2a2a2a'
  surface-container-highest: '#353534'
  on-surface: '#e5e2e1'
  on-surface-variant: '#e9bcb6'
  inverse-surface: '#e5e2e1'
  inverse-on-surface: '#313030'
  outline: '#af8782'
  outline-variant: '#5f3f3b'
  surface-tint: '#ffb4aa'
  primary: '#ffb4aa'
  on-primary: '#690003'
  primary-container: '#e60012'
  on-primary-container: '#fff7f6'
  inverse-primary: '#c0000d'
  secondary: '#e9c349'
  on-secondary: '#3c2f00'
  secondary-container: '#af8d11'
  on-secondary-container: '#342800'
  tertiary: '#00dbe9'
  on-tertiary: '#00363a'
  tertiary-container: '#007f87'
  on-tertiary-container: '#e8fdff'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#ffdad5'
  primary-fixed-dim: '#ffb4aa'
  on-primary-fixed: '#410001'
  on-primary-fixed-variant: '#930007'
  secondary-fixed: '#ffe088'
  secondary-fixed-dim: '#e9c349'
  on-secondary-fixed: '#241a00'
  on-secondary-fixed-variant: '#574500'
  tertiary-fixed: '#7df4ff'
  tertiary-fixed-dim: '#00dbe9'
  on-tertiary-fixed: '#002022'
  on-tertiary-fixed-variant: '#004f54'
  background: '#131313'
  on-background: '#e5e2e1'
  surface-variant: '#353534'
typography:
  display-hero:
    fontFamily: Anton
    fontSize: 48px
    fontWeight: '400'
    lineHeight: 52px
    letterSpacing: 0.02em
  headline-lg:
    fontFamily: Anton
    fontSize: 32px
    fontWeight: '400'
    lineHeight: 36px
    letterSpacing: 0.01em
  headline-md:
    fontFamily: Anton
    fontSize: 24px
    fontWeight: '400'
    lineHeight: 28px
  body-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 18px
    fontWeight: '500'
    lineHeight: 28px
  body-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-tech:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.1em
  headline-lg-mobile:
    fontFamily: Anton
    fontSize: 28px
    fontWeight: '400'
    lineHeight: 32px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  container-margin: 20px
  gutter: 16px
  stack-sm: 8px
  stack-md: 16px
  stack-lg: 32px
  section-gap: 48px
---

## Brand & Style
The design system is engineered for a high-octane, heroic introduction to the world of Kamen Rider. It targets a mobile-first audience of fans and newcomers, aiming to evoke feelings of power, justice, and technological wonder. 

The visual style is a fusion of **Glassmorphism** and **High-Contrast Bold**. It utilizes translucent, dark layers to represent the "inner machinery" of the Rider suits, layered with vibrant, glowing accents that simulate energy cores and transformation effects. The aesthetic is "Tactile-Tech"—it feels like a physical interface found within a Rider's belt or base of operations. 

Key attributes:
- **Heroic:** Large-scale imagery and impactful typography.
- **Dynamic:** Subtle glows and angled containers to imply movement.
- **High-Tech:** Technical data readouts and precision-engineered UI elements.

## Colors
This design system operates exclusively in a dark mode environment to maximize the impact of glowing elements and metallic accents.

- **Primary (Energetic Crimson):** Used for primary actions, transformation cues, and critical "Hero" states. It represents the burning spirit of the Rider.
- **Secondary (Metallic Gold):** Used for premium status, legendary achievements, and subtle ornamental borders.
- **Tertiary (Tech Cyan):** A highlight color used for data readouts, scanning effects, and "Active" status indicators.
- **Neutral (Deep Charcoal/Black):** The foundation of the UI. `Neutral-900` (#121212) serves as the base background, while lighter variants are used for glass cards.

## Typography
The typography strategy creates a hierarchy between the "Spectacle" and the "Data."

- **Headlines (Anton):** Chosen for its tall, commanding presence. It should be used in uppercase for all major section titles to convey a sense of cinematic urgency.
- **Body (Plus Jakarta Sans):** Provides a modern, soft balance to the aggressive headings, ensuring long-form lore and descriptions are highly readable on mobile screens.
- **Technical Labels (JetBrains Mono):** Used for stats (Speed, Jump Height, Punching Power) and UI metadata. The monospaced nature reinforces the high-tech, robotic theme.

## Layout & Spacing
The layout follows a **Fluid Grid** model optimized for one-handed mobile use. 

- **Margins:** A standard 20px safe area on horizontal edges.
- **Rhythm:** An 8px base unit drives all spacing.
- **Composition:** Use "Angled Layouts"—container edges or background decorations should occasionally use a 3-degree shear to create a sense of forward momentum.
- **Breakpoints:** While primarily mobile, the layout scales to tablets by expanding the central container to a max-width of 768px and centering content.

## Elevation & Depth
Depth is achieved through a combination of **Glassmorphism** and **Inner Glows**.

- **Surfaces:** Use semi-transparent backgrounds (e.g., `rgba(18, 18, 18, 0.8)`) with a 12px backdrop-filter blur. 
- **Borders:** Instead of heavy shadows, use 1px "Light Leak" borders—top and left edges get a subtle white or crimson tint, while bottom and right edges remain dark.
- **Glows:** Interactive elements (like a "Transform" button) utilize an outer `box-shadow` with a high blur radius (20px+) and low opacity (30%) in the primary crimson color to simulate energy emission.
- **Z-Axis:** High-priority alerts or "Rider Stats" cards should appear to float higher with a more pronounced backdrop blur and a secondary gold rim.

## Shapes
The shape language is "Aggressive Geometric." 

- **Primary Corners:** Use "Soft" (4px - 8px) rounding for most containers to maintain a modern feel without losing the sharpness of a tech interface.
- **Action Elements:** Buttons and interactive chips should use "Pill-shape" (32px+) rounding to contrast against the more rigid structural cards.
- **Accents:** Incorporate 45-degree clipped corners (chamfers) on card headers or decorative corners to mimic armor plating.

## Components
- **Primary Action Button:** Full-width, crimson background, uppercase Anton text. Add a subtle horizontal "scanning" light animation that passes across the button every 3 seconds.
- **Rider Stat Chips:** JetBrains Mono text inside a dark glass capsule. Use the Tertiary Cyan for the icon and value.
- **Character Cards:** Feature a vertical gradient from transparent to deep black. The Rider's silhouette should break the top boundary of the card (z-index overlap) for a dynamic effect.
- **Transformation Toggle:** A custom radio-style switch that mimics the mechanical "click" of a transformation belt, utilizing Metallic Gold for the "On" state.
- **Lore Lists:** Minimalist borders with a Crimson dot indicator for list items, evoking a digital terminal readout.
- **Hero Carousel:** Full-screen width with a slight parallax effect on the background Rider image and a fixed "Tech Label" overlaying the name and series year.