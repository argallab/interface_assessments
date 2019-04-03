`rosrun interface_assessment trajectory_following.py`

`rosrun interface_assessment command_following.py`

Or add to launch file

Items that require customization:

1. In the initializeSubscribers, choose a topic (possibly other than joyThrottled) and adjust the message header at the top
2. In joyThrottledCallback, adjust the linear and angular scale as necessary. 