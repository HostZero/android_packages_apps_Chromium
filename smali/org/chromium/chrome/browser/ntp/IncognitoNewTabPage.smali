.class public Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;
.super Ljava/lang/Object;
.source "IncognitoNewTabPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/NativePage;
.implements Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBackgroundColor:I

.field private final mIncognitoNewTabPageManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

.field private final mIncognitoNewTabPageView:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

.field private mIsLoaded:Z

.field private final mThemeColor:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage$1;-><init>(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIncognitoNewTabPageManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

    .line 57
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mActivity:Landroid/app/Activity;

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->button_new_tab:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mTitle:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->ntp_bg_incognito:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mBackgroundColor:I

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->incognito_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mThemeColor:I

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    sget v1, Lorg/chromium/chrome/R$layout;->new_tab_page_incognito:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIncognitoNewTabPageView:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIncognitoNewTabPageView:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIncognitoNewTabPageManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->initialize(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;)V

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIncognitoNewTabPageView:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    sget v1, Lorg/chromium/chrome/R$id;->new_tab_incognito_message:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->new_tab_incognito_message:I

    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIsLoaded:Z

    return p1
.end method


# virtual methods
.method public captureThumbnail(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIncognitoNewTabPageView:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->captureThumbnail(Landroid/graphics/Canvas;)V

    .line 135
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 88
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Destroy called before removed from window"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mBackgroundColor:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "newtab"

    return-object v0
.end method

.method public getThemeColor()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mThemeColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "chrome-native://newtab/"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIncognitoNewTabPageView:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    return-object v0
.end method

.method public isLoadedForTests()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIsLoaded:Z

    return v0
.end method

.method public shouldCaptureThumbnail()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;->mIncognitoNewTabPageView:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->shouldCaptureThumbnail()Z

    move-result v0

    return v0
.end method

.method public updateForUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
