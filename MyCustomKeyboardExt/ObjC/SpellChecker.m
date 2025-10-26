//
//  SpellChecker.m
//  CustomKeyboard
//
//  Created by Ilona on 10/26/25.
//

#import "SpellChecker.h"


@implementation SpellChecker
- (NSString *)correctWord:(NSString *)word {
    // Фиксируем самые очевидные опечатки
    NSDictionary *map = @{ @"helo": @"hello", @"teh": @"the" };
    NSString *lower = [word lowercaseString];
    NSString *res = map[lower];
    if (res) return res;
    return word;
}
@end
