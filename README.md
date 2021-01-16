# Pre-work - *Tipper*

**Tipper** is a tip calculator application for iOS.

Submitted by: **Dewan Sunnah**

Time spent: **20** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [x] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Has a feature to split the bill between a maximum of 10 people.

## Video Walkthrough

Here's a walkthrough of my implemented app:

![](https://i.imgur.com/Bdbsr08.gif)

GIF created with [ezgif](https://ezgif.com/video-to-gif).

## Notes

A lot of time was spent on getting the UI correct. However, I tested the app only on the Iphone 11. When I tested it on other phone, I came to the realization that my UI gets messed up because of the differing screen sizes. By this time I had already implemented most of the features that were in my ability. So a good takeaway is to make sure that the UI works for many models before continuing with the actual coding. 

Another challenge was trying to implement a formatted text field for the bill. I wanted to make it so that the text field displayed: "0.00".  
|             On input 1 it would display: "0.01".  
|             On input 2 it would display: "0.12".  
|             On input 3 it would display: "1.23".  
And so on. In the end I failed to get a working implementation and decided it would be best to have the input just remain as integer. If I made the keypad include a decimal then users would be able to input something like: "1.00.1.1" crashing the app. So the decision to keep the keyboard as just numbers is justified.

This is less of a challenge and more of just a note: Even with the app crashing more than half the time, it was fun doing a small project. Doing a single large project is satisfying in its own way, but getting multiple small projects is rewarding as well. Just getting it done is great for my mentality and experience. 

## License

    Copyright [2021] [Dewan Sunnah]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
