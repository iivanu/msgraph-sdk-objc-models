// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintDocumentUploadProperties()
{
    NSString* _contentType;
    NSString* _documentName;
    int64_t _size;
}
@end

@implementation MSGraphPrintDocumentUploadProperties

- (NSString*) contentType
{
    return self.dictionary[@"contentType"];
}

- (void) setContentType: (NSString*) val
{
    self.dictionary[@"contentType"] = val;
}

- (NSString*) documentName
{
    return self.dictionary[@"documentName"];
}

- (void) setDocumentName: (NSString*) val
{
    self.dictionary[@"documentName"] = val;
}

- (int64_t) size
{
    _size = [self.dictionary[@"size"] longLongValue];
    return _size;
}

- (void) setSize: (int64_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

@end
