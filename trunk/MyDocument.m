//
//  MyDocument.m
//  Camian
//
//  Created by Cameron MacFarland on Thu Mar 17 2005.
//  Copyright (c) 2005 __MyCompanyName__. All rights reserved.
//

#import "MyDocument.h"

@implementation MyDocument

- (id)init
{
    self = [super init];
    if (self) {
    
        // Add your subclass-specific initialization here.
        // If an error occurs here, send a [self release] message and return nil.
    
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *) aController
{
    [super windowControllerDidLoadNib:aController];
   
    if ( fileData != nil ) {
        [textView replaceCharactersInRange:NSMakeRange(0, 0) withRTFD:fileData];
    }
}

- (NSData *)dataRepresentationOfType:(NSString *)aType
{
    NSRange range = NSMakeRange(0, [[textView textStorage] length]);
    return [textView RTFDFromRange:range];
}

- (BOOL)loadDataRepresentation:(NSData *)data ofType:(NSString *)aType
{
    fileData = data;
    return fileData != nil;
}

@end
