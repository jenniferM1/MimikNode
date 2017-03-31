# mimik Node

mimik Node enables developers to discover, connect, and communicate with various heterogeneous devices.
It includes the following components:
Drive: sharing storage and media
Beam: remote media playback
Edge: discovering and connecting devices.

## Requirements

To use MimikNode a cocoapod enabled project is required. 

## Installation

MimikNode is available through [mimik Pods](https://github.com/mimikpods). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs'
source 'https://github.com/mimikpods/Specs'
```

```ruby
pod 'MimikNode'
```

## Setup

Import Node framework into the app:

```ObjectiveC
@import Node;
```

If interested in the logs add CocoaLumberJack framework and set it up:

```ObjectiveC
@import CocoaLumberjack;
```

```ObjectiveC
[DDLog addLogger:[DDTTYLogger sharedInstance]];
```

MimikNode has a very simple API for starting and stoping all the mentioned services.
Simply instanciate NodeService object:
```ObjectiveC
NodeService *nodeService = [[NodeService alloc] init];
```
And start and stop the service using the following API calls:

```ObjectiveC
[nodeService start];
```

```ObjectiveC
[nodeService stop];
```

## Beam

To recieve Beam notifications register to "mimikBeam" using NotificationCentre:

```ObjectiveC
    [[NSNotificationCenter defaultCenter] addObserverForName:@"mimikBeam" object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        // info will be included in note.userInfo
    }];
```

## Example

```ObjectiveC

@import Node;
@import CocoaLumberjack;

@implementation AppDelegate {
    NodeService *nodeService;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    nodeService = [[NodeService alloc] init];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    [nodeService stop];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {    
    [nodeService start];
}

```

## Author

Mo Afrasiabi, mo.afrasiabi@mimik.com

## License

Node is available under the MIT license. See the LICENSE file for more info.
