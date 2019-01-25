// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChannel()
{
    NSString* _displayName;
    NSString* _channelDescription;
    NSArray* _tabs;
}
@end

@implementation MSGraphChannel

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.channel";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) channelDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setChannelDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) tabs
{
    if(!_tabs){
        
    NSMutableArray *tabsResult = [NSMutableArray array];
    NSArray *tabs = self.dictionary[@"tabs"];

    if ([tabs isKindOfClass:[NSArray class]]){
        for (id tempTeamsTab in tabs){
            [tabsResult addObject:tempTeamsTab];
        }
    }

    _tabs = tabsResult;
        
    }
    return _tabs;
}

- (void) setTabs: (NSArray*) val
{
    _tabs = val;
    self.dictionary[@"tabs"] = val;
}


@end
