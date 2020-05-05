# Hero Animations

## What is it?
* Is one of the easiest animations in Flutter.
* In general, we use this type of animation in a screen transition.
* Let's say that page1 and page2 have a shared element. Then, this shared element is going to do the transition between page1 and page2. It has to be present on both pages.
* To do a Hero Animation, you must follow the recipe below:
  * Two Hero Widgets, each one in the two screens that we are going to use to do the animation.
  * A shared Tag property with the same value in both of these Hero widgets.
  * Navigator-bases screen transitions.
  * Seriously, we just have to do what is specified above to make it work. No joke!
