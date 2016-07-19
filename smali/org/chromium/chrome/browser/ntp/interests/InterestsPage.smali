.class public Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;
.super Ljava/lang/Object;
.source "InterestsPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/NativePage;


# instance fields
.field private final mBackgroundColor:I

.field private mClicked:Z

.field private final mPageView:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

.field private final mThemeColor:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->ntp_interests:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mTitle:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->ntp_bg:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mBackgroundColor:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mThemeColor:I

    .line 53
    sget v0, Lorg/chromium/chrome/R$layout;->interests_page:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mPageView:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;

    invoke-direct {v0, p3}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    new-instance v1, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$1;-><init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService;->getInterests(Lorg/chromium/chrome/browser/ntp/interests/InterestsService$GetInterestsCallback;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;)Lorg/chromium/chrome/browser/ntp/interests/InterestsView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mPageView:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mClicked:Z

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mClicked:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string/jumbo v0, "MobileNTP.Interests.Dismissed"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mBackgroundColor:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "interests"

    return-object v0
.end method

.method public getThemeColor()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mThemeColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "chrome-native://interests/"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mPageView:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    return-object v0
.end method

.method public setListener(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;->mPageView:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$2;-><init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage;Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->setListener(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;)V

    .line 96
    return-void
.end method

.method public updateForUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
