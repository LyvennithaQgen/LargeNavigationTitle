# LargeNavigationTitle
https://lyvennithasasikumar.medium.com/large-navigation-title-bar-for-tableview-512406caa06e

The tempting thing of developing apps is including native features in our application which makes people to feel the native spice . Similarly, Here I am going to implement native tableView scrolling with large and small navigation titles. You can see this scrolling feature in iPhone’s own settings screen. Here am going to add a piece of code which will makes work like above.

The core logic here is to achieve this feature is
Implement tableView with delegates initially.
Implement scrollview delegate to get content offset.
By Checking content offset, the title for navigation bar size will be determined.
