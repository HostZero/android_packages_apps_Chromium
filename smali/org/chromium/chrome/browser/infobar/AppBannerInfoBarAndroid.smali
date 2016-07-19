.class public Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "AppBannerInfoBarAndroid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTALL_STATE_INSTALLED:I = 0x2

.field public static final INSTALL_STATE_INSTALLING:I = 0x1

.field public static final INSTALL_STATE_NOT_INSTALLED:I


# instance fields
.field private final mAppData:Lorg/chromium/chrome/browser/banners/AppData;

.field private final mAppTitle:Ljava/lang/String;

.field private final mAppUrl:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;

.field private mIconView:Landroid/view/View;

.field private mInstallState:I

.field private mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

.field private mTitleView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 55
    invoke-static {}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->getAddToHomescreenText()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppTitle:Ljava/lang/String;

    .line 57
    iput-object v4, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppData:Lorg/chromium/chrome/browser/banners/AppData;

    .line 58
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppUrl:Ljava/lang/String;

    .line 59
    iput v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mInstallState:I

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/chromium/chrome/browser/banners/AppData;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 46
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/banners/AppData;->installButtonText()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppTitle:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppData:Lorg/chromium/chrome/browser/banners/AppData;

    .line 49
    iput-object v4, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppUrl:Ljava/lang/String;

    .line 50
    iput v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mInstallState:I

    .line 51
    return-void
.end method

.method private static createNativeAppInfoBar(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/chromium/chrome/browser/banners/AppData;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/chromium/chrome/browser/banners/AppData;)V

    return-object v0
.end method

.method private static createWebAppInfoBar(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getAddToHomescreenText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->menu_add_to_homescreen:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateButton()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 138
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppData:Lorg/chromium/chrome/browser/banners/AppData;

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v2, 0x0

    .line 143
    iget v3, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mInstallState:I

    if-nez v3, :cond_2

    .line 144
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppData:Lorg/chromium/chrome/browser/banners/AppData;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/banners/AppData;->installButtonText()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$string;->app_banner_view_native_app_install_accessibility:I

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 147
    :cond_2
    iget v3, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mInstallState:I

    if-ne v3, v0, :cond_3

    .line 148
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->app_banner_installing:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v6, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v6

    .line 149
    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->app_banner_open:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1
.end method


# virtual methods
.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 64
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V

    .line 66
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getPrimaryButton()Lorg/chromium/ui/widget/ButtonCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mButton:Landroid/widget/Button;

    .line 67
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mIconView:Landroid/view/View;

    .line 68
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setIsUsingBigIcon()V

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getMessageLayout()Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    .line 72
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mTitleView:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppData:Lorg/chromium/chrome/browser/banners/AppData;

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getPrimaryButton()Lorg/chromium/ui/widget/ButtonCompat;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->app_banner_install_button_bg:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/ui/widget/ButtonCompat;->setButtonColor(I)V

    .line 80
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppData:Lorg/chromium/chrome/browser/banners/AppData;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/banners/AppData;->rating()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addRatingBar(F)Landroid/view/View;

    .line 81
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    sget v2, Lorg/chromium/chrome/R$string;->app_banner_view_native_app_accessibility:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppTitle:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppData:Lorg/chromium/chrome/browser/banners/AppData;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/banners/AppData;->rating()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->updateButton()V

    .line 94
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mIconView:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mIconView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addDescription(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 88
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    sget v2, Lorg/chromium/chrome/R$string;->app_banner_view_web_app_accessibility:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppTitle:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppUrl:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onButtonClicked(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mInstallState:I

    if-ne v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->setControlsEnabled(Z)V

    .line 124
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->updateButton()V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->onButtonClicked(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mMessageLayout:Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mTitleView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mIconView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->onLinkClicked()V

    .line 162
    :cond_1
    return-void
.end method

.method public onInstallStateChanged(I)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->setControlsEnabled(Z)V

    .line 133
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mInstallState:I

    .line 134
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->updateButton()V

    .line 135
    return-void
.end method

.method protected setButtons(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->mAppData:Lorg/chromium/chrome/browser/banners/AppData;

    if-nez v0, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->setButtons(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    sget v1, Lorg/chromium/chrome/R$drawable;->google_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setBottomViews(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0
.end method
