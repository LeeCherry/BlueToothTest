//
//  ViewController.m
//  BlueToothTest
//
//  Created by Anarry on 16/1/18.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewRequester.h"
@interface ViewController ()
//@property (nonatomic,strong)AVAudioPlayer *player;
@property (nonatomic,strong)AVPlayer *palyer;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
//    [self getHomeData];
//            self.player = [[AVAudioPlayer alloc]init];
    NSString *urlStr = @"http://www.izuoye100.cn/study-manager/img/test/Sky.mp3";
    NSURL *url = [[NSURL alloc]initWithString:urlStr];
    self.palyer = [[AVPlayer alloc]initWithURL:url];
    [self.palyer play];
//            NSData * audioData = [NSData dataWithContentsOfURL:url];
//            
//            //将数据保存到本地指定位置
//            NSString *docDirPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
//            NSString *filePath = [NSString stringWithFormat:@"%@/%@.mp3", docDirPath , @"temp"];
//            [audioData writeToFile:filePath atomically:YES];
//            
//            //播放本地音乐
//            NSURL *fileURL = [NSURL fileURLWithPath:filePath];
//            self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
//            [self.player play];

    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)getHomeData{
    [HomeViewRequester getAdvertWithSpecial_id:@"http://zbw.nx188.net/mobile/index.php?act=index" success:^(HomeModel *model) {
        if (model) {
            HomeModel *model = model;
        }else{
            NSLog(@"解析失败");
        }
    } failure:^(NSError *error) {
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
