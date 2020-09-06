//
//  ThirdViewController.m
//  1111111
//
//  Created by young_jerry on 2020/9/5.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ThirdViewController.h"
#import "ThirdsonTableViewCell.h"

@interface ThirdViewController ()<UITableViewDelegate,UITableViewDataSource>
@property NSMutableArray *array;
@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"朋友圈";
    
     self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
   
    
    _tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];

    [self.view addSubview:_tableview];
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    
    [self.tableview registerClass:[ThirdsonTableViewCell class] forCellReuseIdentifier:@"111"];
     [self.tableview registerClass:[ThirdsonTableViewCell class] forCellReuseIdentifier:@"222"];
    
    
    UIImageView *backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 392, 200)];
    UIImageView *headImageView = [[UIImageView alloc] initWithFrame:CGRectMake(290,160, 70, 70)];
    _array = [[NSMutableArray alloc] initWithObjects:@"起飞！", @"终于开学了", @"再一次的相遇",@"看看风景好吧",@"高低举个杯啊铁子",@"难受啊铁子",nil];
    
       headImageView.image = [UIImage imageNamed:@"头像.png"];
       backImageView.image = [UIImage imageNamed:@"works_img1.png"];
    
       UIView *iView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 392, 230)];
       [iView addSubview:backImageView];
    [iView addSubview:headImageView];
       _tableview.tableHeaderView = iView;
    UIImage *image = [UIImage imageNamed:@"fanhui-4.png"];
    UIBarButtonItem *lBar = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(pressreturn)];
        self.navigationItem.leftBarButtonItem = lBar;
    
    UIImage *twoimage = [UIImage imageNamed:@"zhaoxiang.png"];
       UIBarButtonItem *Bar = [[UIBarButtonItem alloc] initWithImage:twoimage style:UIBarButtonItemStylePlain target:self action:@selector(pressreturn)];
           self.navigationItem.rightBarButtonItem = Bar;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 6;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
        return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 280;
}
//取消间距下面4个
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    return 0;
//}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [[UIView alloc]init];
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UIView alloc]init];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   if(indexPath.section % 2 == 0 ){
           ThirdsonTableViewCell *cell = [self.tableview dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
       cell.contentLabel.text = _array[indexPath.section];
       cell.idLabel.text = @"Franklin D.Roosevelt";
       cell.positionLabel.text = @"苏州-博纳国际影城(丽丰店)";
       cell.timeLabel.text = @"昨天";
       cell.headImageView.image = [UIImage imageNamed:@"sixin_img2.png"];
       cell.pictureImageView.image = [UIImage imageNamed:@"picture1.jpg"];
        return cell;
    }else{
       ThirdsonTableViewCell *cell = [self.tableview dequeueReusableCellWithIdentifier:@"222" forIndexPath:indexPath];
        cell.contentLabel.text = _array[indexPath.section];
        cell.idLabel.text = @"尼克莱";
        cell.positionLabel.text = @"杭州-浙江农业大学东湖校区c6";
        cell.timeLabel.text = @"11天前";
        cell.headImageView.image = [UIImage imageNamed:@"sixin_img3.png"];
        cell.pictureImageView.image = [UIImage imageNamed:@"picture2.jpg"];
        cell.towPictureImageView.image = [UIImage imageNamed:@"picture3.jpg"];
               return cell;
    }
    
}
-(void)pressreturn{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
