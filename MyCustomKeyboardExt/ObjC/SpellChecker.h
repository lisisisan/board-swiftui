//
//  SpellChecker.h
//  CustomKeyboard
//
//  Created by Ilona on 10/26/25.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN


@interface SpellChecker : NSObject
- (NSString *)correctWord:(NSString *)word;
@end


NS_ASSUME_NONNULL_END
