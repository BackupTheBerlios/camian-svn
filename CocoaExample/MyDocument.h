//
//  MyDocument.h
//  Camian
//
//  Created by Cameron MacFarland on Thu Mar 17 2005.
//  Copyright (c) 2005 __MyCompanyName__. All rights reserved.
//


#import <Cocoa/Cocoa.h>

@interface MyDocument : NSDocument
{
    IBOutlet NSTextView *textView;
    NSData *fileData;
}
@end
