# Custom Animations

## Intro
* In Flutter, we are not limited to use only Hero animations. We can build our own unique animations using some base/fundamental concepts that we are going to learn below.

## Fundamental Concepts
* To create our custom animations, we must follow a recipe that has 3 major ingredients. They are: A Ticker, An Animation Controller and An Animation Value.
  * Ticker: Is exactly what it sounds like. It works like a tick of a clock and it is going to count and is also going to take our animation along so that at each tick of the clock, our animation changes in value and changes in shape or color or whatever it may be. Every time the Ticker ticks it is triggering a new setState to render something new in the screen.
  * Animation Controller: This is a class that is going to manage/control the animation. It is going to tell us the duration of the animation, if it must go forward or backwards,. It also can tell us if the animation must loop back and other type of things.
