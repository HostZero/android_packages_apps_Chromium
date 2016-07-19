.class public Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private mDeprecatedSHA1Present:Z

.field private final mDialog:Landroid/app/Dialog;

.field private mDismissWithoutAnimation:Z

.field private mDisplayedPermissions:Ljava/util/List;

.field private mFullUrl:Ljava/lang/String;

.field private mIsInternalPage:Z

.field private mNativeWebsiteSettingsPopup:J

.field private mOfflinePageCreationDate:Ljava/lang/String;

.field private mOfflinePageOriginalUrl:Ljava/lang/String;

.field private mParsedUrl:Ljava/net/URI;

.field private mPassiveMixedContentPresent:Z

.field private final mPermissionsList:Landroid/widget/LinearLayout;

.field private final mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

.field private mSecurityLevel:I

.field private final mSiteSettingsButton:Landroid/widget/Button;

.field private final mUrlConnectionMessage:Landroid/widget/TextView;

.field private final mUrlTitle:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private final mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object v4, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 292
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    .line 293
    iput-object p2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 294
    iput-object p3, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 295
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 296
    iput-object p4, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mOfflinePageOriginalUrl:Ljava/lang/String;

    .line 297
    iput-object p5, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mOfflinePageCreationDate:Ljava/lang/String;

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->website_settings:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$1;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/chromium/chrome/R$id;->website_settings_url:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlTitle:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlTitle:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->setProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlTitle:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/chromium/chrome/R$id;->website_settings_connection_message:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlConnectionMessage:Landroid/widget/TextView;

    .line 323
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/chromium/chrome/R$id;->website_settings_permissions_list:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPermissionsList:Landroid/widget/LinearLayout;

    .line 326
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/chromium/chrome/R$id;->website_settings_site_settings_button:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSiteSettingsButton:Landroid/widget/Button;

    .line 328
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSiteSettingsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDisplayedPermissions:Ljava/util/List;

    .line 333
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->setVisibilityOfPermissionsList(Z)V

    .line 336
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$2;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 367
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 370
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 372
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 373
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    :cond_1
    invoke-static {p0, p3}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->nativeInit(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mNativeWebsiteSettingsPopup:J

    .line 378
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$3;

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v0, p0, v2}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$3;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Lorg/chromium/content_public/browser/WebContents;)V

    .line 395
    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;

    invoke-direct {v3, p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$4;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Lorg/chromium/content_public/browser/WebContentsObserver;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 407
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->isShowingOfflinePage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mOfflinePageOriginalUrl:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mFullUrl:Ljava/lang/String;

    move v0, v1

    .line 414
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    sget v3, Lorg/chromium/chrome/R$id;->offline_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mFullUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mParsedUrl:Ljava/net/URI;

    .line 418
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mParsedUrl:Ljava/net/URI;

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->isInternalScheme(Ljava/net/URI;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mIsInternalPage:Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ssl/SecurityStateModel;->getSecurityLevelForWebContents(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSecurityLevel:I

    .line 424
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ssl/SecurityStateModel;->isDeprecatedSHA1Present(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDeprecatedSHA1Present:Z

    .line 425
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ssl/SecurityStateModel;->isPassiveMixedContentPresent(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPassiveMixedContentPresent:Z

    .line 427
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mFullUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    iget v3, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSecurityLevel:I

    iget-boolean v4, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mIsInternalPage:Z

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->emphasizeUrl(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 430
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlTitle:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlConnectionMessage:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->getUrlConnectionMessage()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->isConnectionDetailsLinkVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlConnectionMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mParsedUrl:Ljava/net/URI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mParsedUrl:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mParsedUrl:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mParsedUrl:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 440
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSiteSettingsButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    :cond_4
    return-void

    .line 411
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getVisibleUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mFullUrl:Ljava/lang/String;

    move v0, v7

    goto/16 :goto_0

    .line 420
    :catch_0
    move-exception v0

    iput-object v4, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mParsedUrl:Ljava/net/URI;

    .line 421
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mIsInternalPage:Z

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Z)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->createAllAnimations(Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->updatePermissionDisplay()V

    return-void
.end method

.method static synthetic access$1202(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDismissWithoutAnimation:Z

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Z)Z
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDismissWithoutAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mNativeWebsiteSettingsPopup:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;J)J
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mNativeWebsiteSettingsPopup:J

    return-wide p1
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;J)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->nativeDestroy(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->recordAction(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mFullUrl:Ljava/lang/String;

    return-object v0
.end method

.method private addPermissionSection(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 581
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->setVisibilityOfPermissionsList(Z)V

    .line 582
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDisplayedPermissions:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;

    invoke-static {p3}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->fromInt(I)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;-><init>(Ljava/lang/String;ILorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method private addReadOnlyPermissionSection(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 598
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->website_settings_permission_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 601
    sget v0, Lorg/chromium/chrome/R$id;->website_settings_permission_icon:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 603
    iget v1, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->type:I

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->getImageResourceForPermission(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    iget-object v1, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->setting:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v2, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    if-ne v1, v2, :cond_0

    .line 610
    iget v1, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->isAndroidLocationDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    sget v1, Lorg/chromium/chrome/R$string;->page_info_android_location_blocked:I

    .line 613
    sget v2, Lorg/chromium/chrome/R$id;->permission_intent_override:I

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move v2, v1

    .line 621
    :goto_0
    if-eqz v2, :cond_0

    .line 622
    sget v1, Lorg/chromium/chrome/R$id;->website_settings_permission_unavailable_message:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 624
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 627
    sget v1, Lorg/chromium/chrome/R$drawable;->exclamation_triangle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 628
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->website_settings_popup_text_link:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 631
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->website_settings_permission_status:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 637
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 638
    new-instance v1, Landroid/text/SpannableString;

    iget-object v5, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->name:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 639
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 640
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 642
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 643
    const-string/jumbo v1, " \u2013 "

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 644
    const-string/jumbo v1, ""

    .line 645
    sget-object v3, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$11;->$SwitchMap$org$chromium$chrome$browser$preferences$website$ContentSetting:[I

    iget-object v5, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->setting:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 655
    sget-boolean v3, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->setting:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 615
    :cond_1
    iget v1, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->type:I

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->hasAndroidPermission(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 616
    sget v1, Lorg/chromium/chrome/R$string;->page_info_android_permission_blocked:I

    .line 617
    sget v2, Lorg/chromium/chrome/R$id;->permission_type:I

    iget v5, p1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;->type:I

    invoke-static {v5}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move v2, v1

    goto/16 :goto_0

    .line 647
    :pswitch_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->page_info_permission_allowed:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 659
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPermissionsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    return-void

    .line 651
    :pswitch_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->page_info_permission_blocked:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v2, v3

    goto/16 :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private collectAnimatableViews()Ljava/util/List;
    .locals 3

    .prologue
    .line 792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 793
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlTitle:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlConnectionMessage:Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPermissionsList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 796
    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPermissionsList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSiteSettingsButton:Landroid/widget/Button;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    return-object v1
.end method

.method private createAllAnimations(Z)Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 845
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 849
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 858
    :goto_0
    if-eqz p1, :cond_0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 859
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 861
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->collectAnimatableViews()Ljava/util/List;

    move-result-object v4

    .line 862
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 863
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 864
    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->createInnerFadeAnimator(Landroid/view/View;IZ)Landroid/animation/Animator;

    move-result-object v0

    .line 865
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 862
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 855
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->createDialogSlideAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 868
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$10;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$10;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 874
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 875
    :cond_3
    iput-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 876
    return-object v2
.end method

.method private createDialogSlideAnimator(Z)Landroid/animation/Animator;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 825
    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 827
    if-eqz p1, :cond_0

    .line 828
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 829
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 830
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 835
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 836
    return-object v0

    .line 832
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 833
    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private createInnerFadeAnimator(Landroid/view/View;IZ)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 809
    if-eqz p3, :cond_0

    .line 810
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 811
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 812
    mul-int/lit8 v1, p2, 0x14

    add-int/lit16 v1, v1, 0x96

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 817
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 818
    return-object v0

    .line 814
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v2, v1, v3

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnectionMessageId(IZ)I
    .locals 3

    .prologue
    .line 479
    if-eqz p2, :cond_0

    sget v0, Lorg/chromium/chrome/R$string;->page_info_connection_internal_page:I

    .line 489
    :goto_0
    return v0

    .line 481
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 488
    sget-boolean v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid security level specified: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 483
    :pswitch_0
    sget v0, Lorg/chromium/chrome/R$string;->page_info_connection_http:I

    goto :goto_0

    .line 486
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$string;->page_info_connection_https:I

    goto :goto_0

    .line 489
    :cond_1
    sget v0, Lorg/chromium/chrome/R$string;->page_info_connection_http:I

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getImageResourceForPermission(I)I
    .locals 3

    .prologue
    .line 463
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getIcon(I)I

    move-result v0

    .line 464
    sget-boolean v1, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Icon requested for invalid permission: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 465
    :cond_0
    return v0
.end method

.method private getUrlConnectionMessage()Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 509
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 510
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDeprecatedSHA1Present:Z

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->page_info_connection_sha1:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 539
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->isConnectionDetailsLinkVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 541
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->page_info_details_link:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 543
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$color;->website_settings_popup_text_link:I

    invoke-static {v3, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 546
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 548
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 551
    :cond_0
    return-object v1

    .line 513
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPassiveMixedContentPresent:Z

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->page_info_connection_mixed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 516
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->isShowingOfflinePage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->page_info_connection_offline:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mOfflinePageCreationDate:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 520
    :cond_3
    iget v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSecurityLevel:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    iget v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSecurityLevel:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    iget v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSecurityLevel:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    .line 523
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSecurityLevel:I

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mIsInternalPage:Z

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->getConnectionMessageId(IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 528
    :cond_4
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mFullUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 529
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->formatUrlForSecurityDisplay(Ljava/net/URI;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 535
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->page_info_connection_broken:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 532
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mFullUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method private hasAndroidPermission(I)Z
    .locals 4

    .prologue
    .line 555
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAndroidLocationDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 564
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 567
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isConnectionDetailsLinkVisible()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mIsInternalPage:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSecurityLevel:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPassiveMixedContentPresent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDeprecatedSHA1Present:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowingOfflinePage()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mOfflinePageOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mOfflinePageCreationDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeInit(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private native nativeRecordWebsiteSettingsAction(JI)V
.end method

.method private recordAction(I)V
    .locals 4

    .prologue
    .line 880
    iget-wide v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mNativeWebsiteSettingsPopup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 881
    iget-wide v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mNativeWebsiteSettingsPopup:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->nativeRecordWebsiteSettingsAction(JI)V

    .line 883
    :cond_0
    return-void
.end method

.method private runAfterDismiss(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 708
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 709
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    const-wide/16 v2, 0xd2

    invoke-virtual {v0, p1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setVisibilityOfPermissionsList(Z)V
    .locals 2

    .prologue
    .line 451
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 452
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPermissionsList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    return-void

    .line 451
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static show(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 901
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    .line 905
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isOfflinePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    .line 907
    invoke-interface {v3}, Lorg/chromium/content_public/browser/WebContents;->getVisibleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getPageByOfflineUrl(Ljava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_0

    .line 911
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getCreationTimeMs()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 912
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 913
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 914
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getOfflinePageOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->stripSchemeFromOnlineUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 919
    :goto_0
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    return-void

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method private showDialog()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 668
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 671
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 672
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 678
    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 701
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 702
    return-void

    .line 682
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$5;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$5;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Landroid/content/Context;)V

    .line 695
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 696
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updatePermissionDisplay()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mPermissionsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 592
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mDisplayedPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;

    .line 593
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->addReadOnlyPermissionSection(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$PageInfoPermissionEntry;)V

    goto :goto_0

    .line 595
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mSiteSettingsButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 720
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$6;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->runAfterDismiss(Ljava/lang/Runnable;)V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlTitle:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

    if-ne p1, v0, :cond_2

    .line 737
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlTitle:Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$ElidedUrlTextView;->toggleTruncation()V

    goto :goto_0

    .line 738
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mUrlConnectionMessage:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 739
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$7;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$7;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->runAfterDismiss(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 749
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->website_settings_permission_row:I

    if-ne v0, v1, :cond_0

    .line 750
    sget v0, Lorg/chromium/chrome/R$id;->permission_intent_override:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 752
    if-nez v1, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v0, :cond_4

    .line 754
    sget v0, Lorg/chromium/chrome/R$id;->permission_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v2, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 756
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 757
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v2, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$8;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$8;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_0

    .line 771
    :cond_4
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$9;-><init>(Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->runAfterDismiss(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
