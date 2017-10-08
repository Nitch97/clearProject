#import <UIKit/UIKit.h>


#pragma mark --- 变量 -----------------------------

/** 用来判断的版本号 */
UIKIT_EXTERN NSString * const KBanbenJudge;
/** 品牌编号 */
UIKIT_EXTERN NSString * const KBrandId;
/** 品牌名称 */
UIKIT_EXTERN NSString * const KBrandName;
/** 公司名称 */
UIKIT_EXTERN NSString * const KBrandCommanName;
/** JPush */
UIKIT_EXTERN NSString * const KJPush;
/** UMenShare */
UIKIT_EXTERN NSString * const KUMShare;
/** AppleID */
UIKIT_EXTERN NSString * const KAppleID;
/** 美洽 */
UIKIT_EXTERN NSString * const KMeiQia;
/** 微信分享 */
UIKIT_EXTERN NSString * const KWechatAppKey;
UIKIT_EXTERN NSString * const KWechatAppSecret;
/** QQ分享 */
UIKIT_EXTERN NSString * const KQQAppKey;
/** 分享标题和内容 */
UIKIT_EXTERN NSString * const KShareTitle;
UIKIT_EXTERN NSString * const KShareDescr;


#pragma mark --- 缓存 ----------------------------------

/** 是否是第一次启动 */
UIKIT_EXTERN NSString * const FirstLaunch;
/** 登录账号 */
UIKIT_EXTERN NSString * const KUsername;
/** 登录密码 */
UIKIT_EXTERN NSString * const KPassword;
/** 服务器版本 */
UIKIT_EXTERN NSString * const KBanbenOnWeb;
/** 客服电话 */
UIKIT_EXTERN NSString * const KBrandPhone;
/** 客服QQ */
UIKIT_EXTERN NSString * const KBrandQQ;
/** 客服微信 */
UIKIT_EXTERN NSString * const KBrandWeChat;
/** 自动升级人数 */
UIKIT_EXTERN NSString * const KAutoPeopleNum;
/** 推送环境 */
UIKIT_EXTERN BOOL const isProduction;

#pragma mark --- 接口 ----------------------------------
/** 版本号 */
UIKIT_EXTERN NSString * const KBanben;
/** 测试接口 */
UIKIT_EXTERN NSString * const KCeshiMain;
/** 主接口 */
UIKIT_EXTERN NSString * const KMainUrl;
/** 注册(POST) */
UIKIT_EXTERN NSString * const KRegisterUrl;
/** 登录(POST) */
UIKIT_EXTERN NSString * const KLoginUrl;
/** 验证码发送(GET) */
UIKIT_EXTERN NSString * const KSendMessageUrl;
/** 验证码接收 */
UIKIT_EXTERN NSString * const KReceiveMessageUrl;
/** 短信登录(POST) */
UIKIT_EXTERN NSString * const KSMSLoginUrl;
/** 更新登录密码(POST) */
UIKIT_EXTERN NSString * const KNewLoginUrl;
/** 更改交易密码(token,POST) */
UIKIT_EXTERN NSString * const KNewPayPassword;
/** 账户信息(token,GET) */
UIKIT_EXTERN NSString * const KMineAccountUrl;
/** 个人信息(token,GET) */
UIKIT_EXTERN NSString * const KGetUserInfoUrl;
/** 余额明细(token,POST) */
UIKIT_EXTERN NSString * const KCheckYueUrl;
/** 积分明细(token,POST) */
UIKIT_EXTERN NSString * const KCheckJifenUrl;
/** 返佣明细(token,POST) */
UIKIT_EXTERN NSString * const KCheckFenrunUrl;
/** 总收益和今日收益*/
UIKIT_EXTERN NSString * const KDayFenRunUrl;
/** 所有交易明细(POST) */
UIKIT_EXTERN NSString * const KGetAllExchangeInfoUrl;
/** 所有积分明细(POST) */
UIKIT_EXTERN NSString * const KGetAllJifenInfoUrl;
/** 所有返佣明细(POST) */
UIKIT_EXTERN NSString * const KGetAllFenrunInfoUrl;
/** 用户交易明细(0充值1支付2提现3退款)(token,POST) */
UIKIT_EXTERN NSString * const KCheckExchangeInfoUrl;
/** 查询银行卡(token,POST) */
UIKIT_EXTERN NSString * const KCheckBankCardUrl;
/** 查询姓名和身份证号(用于绑定银行卡)(token,POST) */
UIKIT_EXTERN NSString * const KGetNameAndIdcardUrl;
/** 增加银行卡(token,POST) */
UIKIT_EXTERN NSString * const KAddBankCardUrl;
/** 设置默认银行卡(token,POST) */
UIKIT_EXTERN NSString * const KSetMorenCardUrl;
/** 删除银行卡(token,POST) */
UIKIT_EXTERN NSString * const KDeleteCardUrl;
/** 查询默认银行卡(POST) */
UIKIT_EXTERN NSString * const KCheckMorenCard;
/** 实名认证(token,POST) */
UIKIT_EXTERN NSString * const KShiMingRenZhengUrl;
/** 实名验证(用于判定是否可以上传图片)(token,POST) */
UIKIT_EXTERN NSString * const KCheckIsShimingUrl;
/** 结算费率查询(POST) */
UIKIT_EXTERN NSString * const KCheckFeilvUrl;
/** 通道查询(POST) */
UIKIT_EXTERN NSString * const KChannelUrl;
/** 验证支付密码(token,POST) */
UIKIT_EXTERN NSString * const KMakeSurePaypassUrl;
/** 获取收款二维码(POST) */
UIKIT_EXTERN NSString * const KErWeiMaUrl;
/** 快捷收款(POST) */
UIKIT_EXTERN NSString * const KYinlianUrl;
/** 提现(POST) */
UIKIT_EXTERN NSString * const KTixianUrl;
/** 查询产品(brandId,GET) */
UIKIT_EXTERN NSString * const KCheckProductUrl;
/** 查询费率(POST) */
UIKIT_EXTERN NSString * const KCheckProRate;
/** 购买产品(POST) */
UIKIT_EXTERN NSString * const KBuyProductUrl;
/** 查询下级会员(token,POST) */
UIKIT_EXTERN NSString * const KCheckVIPUlr;
/** 查询指定等级下级会员(token,POST) */
UIKIT_EXTERN NSString * const KProVIPUlr;
/** 查询品牌信息(GET) */
UIKIT_EXTERN NSString * const KCheckBrandInfoUrl;
/** 查询贴牌配置(POST) */
UIKIT_EXTERN NSString * const KCheckBrandSetUrl;
/** 查询交易流水(POST) */
UIKIT_EXTERN NSString * const KCheckDrawUrl;
/** 返佣提现(POST) */
UIKIT_EXTERN NSString * const KFanyongTixianUrl;
/** 余额相关信息(token) */
UIKIT_EXTERN NSString * const KQianBaoNum;
/** 添加商户(token,POST) */
UIKIT_EXTERN NSString * const KAddShopUrl;
/** 个人消息记录(token,GET) */
UIKIT_EXTERN NSString * const KJpushMessageUrl;
/** 平台消息(token,GET) */
UIKIT_EXTERN NSString * const KJpushBrandUrl;
/** 版本请求(GET) */
UIKIT_EXTERN NSString * const KBanbenURL;
/** 门店二维码(POST) */
UIKIT_EXTERN NSString * const KShopErWeiMaURL;
/** 每日抽奖(token,GET) */
UIKIT_EXTERN NSString * const KDayLottery;
/** 轮播图(POST) */
UIKIT_EXTERN NSString * const KBannerImagesURL;
/** 分享文案(POST) */
UIKIT_EXTERN NSString * const KShareImageTextURL;
/** 店铺管理(token,POST) */
UIKIT_EXTERN NSString * const KShopMannagerURL;




