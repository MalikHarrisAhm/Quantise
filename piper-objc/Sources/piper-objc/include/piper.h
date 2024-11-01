#import <Foundation/Foundation.h>

@interface Piper : NSObject

- (instancetype)initWithModelPath:(NSString *)model
                    andConfigPath:(NSString *)modelConfig;

- (void)synthesize:(NSString *)text withCompletion:(void (^)(void))completion;

- (void)cancel;
- (NSArray<NSNumber *> *)popSamplesWithMaxLength:(NSUInteger)length;
- (BOOL)hasSamplesLeft;
- (BOOL)completed;
- (BOOL)readyToRead;

@end