
#import <UIKit/UIKit.h>


#pragma mark --- 变量 ---------------------------------

/** 用来判断的版本号 */
NSString * const KBanbenJudge = @"3.0.1";
/** 品牌编号 */
NSString * const KBrandId = @"99";
/** 品牌名称 */
NSString * const KBrandName = @"汇富金融";
/** 公司名称 */
NSString * const KBrandCommanName = @"四川澎湃电子商务有限公司";
/** JPush */
NSString * const KJPush = @"eecd893c691ea1e1e86cbc11";
/** UMenShare */
NSString * const KUMShare = @"59bb4af7f5ade41f3a000069";
/** AppleID */
NSString * const KAppleID = @"";
/** 美洽 */
NSString * const KMeiQia = @"";
/** 微信分享 */
NSString * const KWechatAppKey = @"wxd254197091ac90ff";
NSString * const KWechatAppSecret = @"bd8063788e49d588778782cf0e219571";
/** QQ分享 */
NSString * const KQQAppKey = @"";
/** 分享标题和内容 */
NSString * const KShareTitle = @"汇富金融，改变您的赚钱方式！";
NSString * const KShareDescr = @"全球化金融电商新平台，支付、购物、信用卡、贷款、便民……互联网+分享经济时代，别人的手机就是您的印钞机！";

#pragma mark --- 缓存 ----------------------------------

/** 是否是第一次启动 */
NSString * const FirstLaunch = @"FirstLaunch";
/** 登录账号 */
NSString * const KUsername = @"username";
/** 登录密码 */
NSString * const KPassword = @"password";
/** 服务器版本 */
NSString * const KBanbenOnWeb = @"banben";
/** 客服电话 */
NSString * const KBrandPhone = @"brandphone";
/** 客服QQ */
NSString * const KBrandQQ = @"brandqq";
/** 客服微信 */
NSString * const KBrandWeChat = @"wechat";
/** 自动升级人数 */
NSString * const KAutoPeopleNum = @"autogradenum";
/** 推送环境 */
BOOL const isProduction = YES;

#pragma mark --- 接口 ----------------------------------
/** 接口版本 */
NSString * const KBanben = @"v1.0";
/** 测试接口 */
NSString * const KCeshiMain = @"http://192.168.1.120:80/";
/** 主接口 */
NSString * const KMainUrl = @"http://ds.jiepaypal.cn:80/";
/** 注册(POST) */
NSString * const KRegisterUrl = @"/user/register";
/** 登录(POST) */
NSString * const KLoginUrl = @"/user/login";
/** 验证码发送(GET) */
NSString * const KSendMessageUrl = @"/notice/sms/send";
/** 验证码接收 */
NSString * const KReceiveMessageUrl = @"/notice/sms/vericode";
/** 短信登录(POST) */
NSString * const KSMSLoginUrl = @"/user/smslogin";
/** 更新登录密码(POST) */
NSString * const KNewLoginUrl = @"/user/password/update";
/** 更改交易密码(token,POST) */
NSString * const KNewPayPassword = @"/user/paypass/update/";
/** 账户信息(token,GET) */
NSString * const KMineAccountUrl = @"/user/account/query/";
/** 个人信息(token,GET) */
NSString * const KGetUserInfoUrl = @"/user/info/query/";
/** 余额明细(token,POST) */
NSString * const KCheckYueUrl = @"/user/balance/query/";
/** 积分明细(token,POST) */
NSString * const KCheckJifenUrl = @"/user/coin/query/";
/** 返佣明细(token,POST) */
NSString * const KCheckFenrunUrl = @"/user/rebate/query/";
/** 总收益和今日收益*/
NSString * const KDayFenRunUrl = @"/user/rebate/query/sumrebate";
/** 所有交易明细(POST) */
NSString * const KGetAllExchangeInfoUrl = @"/transactionclear/payment/query/all";
/** 所有积分明细(POST) */
NSString * const KGetAllJifenInfoUrl = @"/transactionclear/coin/query/all";
/** 所有返佣明细(POST) */
NSString * const KGetAllFenrunInfoUrl = @"/transactionclear/profit/query/all";
/** 用户交易明细(0充值1支付2提现3退款)(token,POST) */
NSString * const KCheckExchangeInfoUrl = @"/transactionclear/payment/query/";
/** 查询银行卡(token,POST) */
NSString * const KCheckBankCardUrl = @"/user/bank/query/userid/";
/** 查询姓名和身份证号(用于绑定银行卡)(token,POST) */
NSString * const KGetNameAndIdcardUrl = @"/paymentchannel/realname/";
/** 增加银行卡(token,POST) */
NSString * const KAddBankCardUrl = @"/user/bank/add/";
/** 设置默认银行卡(token,POST) */
NSString * const KSetMorenCardUrl = @"/user/bank/default/";
/** 删除银行卡(token,POST) */
NSString * const KDeleteCardUrl = @"/user/bank/del/";
/** 查询默认银行卡(POST) */
NSString * const KCheckMorenCard = @"/user/bank/default/userid";
/** 实名认证(token,POST) */
NSString * const KShiMingRenZhengUrl = @"/user/upload/realname";
/** 实名验证(用于判定是否可以上传图片)(token,POST) */
NSString * const KCheckIsShimingUrl = @"/paymentchannel/realname/auth/";
/** 结算费率查询(POST) */
NSString * const KCheckFeilvUrl = @"/user/channel/query/all/brandid";
/** 通道查询(POST) */
NSString * const KChannelUrl = @"/user/channel/query/all/brandid/";
/** 验证支付密码(token,POST) */
NSString * const KMakeSurePaypassUrl = @"/user/paypass/auth/";
/** 获取收款二维码(POST) */
NSString * const KErWeiMaUrl = @"/facade/topup/";
/** 快捷收款(POST) */
NSString * const KYinlianUrl = @"/facade/topup/";
/** 提现(POST) */
NSString * const KTixianUrl = @"/facade/withdraw/";
/** 查询产品(brandId,GET) */
NSString * const KCheckProductUrl = @"/user/thirdlevel/prod/brand/";
/** 查询费率(POST) */
NSString * const KCheckProRate = @"/user/thirdlevel/rate/query/thirdlevelid/";
/** 购买产品(POST) */
NSString * const KBuyProductUrl = @"/facade/purchase/";
/** 查询下级会员(token,POST) */
NSString * const KCheckVIPUlr = @"/user/afer/";
/** 查询指定等级下级会员(token,POST) */
NSString * const KProVIPUlr = @"/user/info/";
/** 查询品牌信息(GET) */
NSString * const KCheckBrandInfoUrl = @"/user/brand/query/id";
/** 查询贴牌配置(POST) */
NSString * const KCheckBrandSetUrl = @"/user/auto/upgrade/Config/brand/query";
/** 查询交易流水(POST) */
NSString * const KCheckDrawUrl = @"/transactionclear/payment/query/sum/userid";
/** 返佣提现(POST) */
NSString * const KFanyongTixianUrl = @"/facade/withdraw/rebate/";
/** 余额相关信息(token) */
NSString * const KQianBaoNum = @"/user/balance/profit/";
/** 添加商户(token,POST) */
NSString * const KAddShopUrl = @"/user/shops/add/";
/** 个人消息记录(token,GET) */
NSString * const KJpushMessageUrl = @"/user/jpush/history/";
/** 平台消息(token,GET) */
NSString * const KJpushBrandUrl = @"/user/jpush/history/brand/";
/** 版本请求(GET) */
NSString * const KBanbenURL = @"/user/versionnumber";
/** 门店二维码(POST) */
NSString * const KShopErWeiMaURL = @"/user/shops/query/uid";
/** 每日抽奖(token,GET) */
NSString * const KDayLottery = @"/facade/red/payment/";
/** 轮播图(POST) */
NSString * const KBannerImagesURL = @"/user/app/slideshow/query/brandid";
/** 分享文案(POST) */
NSString * const KShareImageTextURL = @"/user/app/imagetext/query/brandid";
/** 店铺管理(token,POST) */
NSString * const KShopMannagerURL = @"/user/app/usersys/query/";





