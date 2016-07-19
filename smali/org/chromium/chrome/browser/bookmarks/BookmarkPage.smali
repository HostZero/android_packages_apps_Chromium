.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;
.super Ljava/lang/Object;
.source "BookmarkPage.java"

# interfaces
.implements Lorg/chromium/chrome/browser/NativePage;
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate$BookmarkStateChangeListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBackgroundColor:I

.field private mCurrentUrl:Ljava/lang/String;

.field private mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private final mThemeColor:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mActivity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 41
    sget v0, Lorg/chromium/chrome/R$string;->bookmarks:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mTitle:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mBackgroundColor:I

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mThemeColor:I

    .line 47
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 52
    sget v2, Lorg/chromium/chrome/R$dimen;->tab_strip_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lorg/chromium/chrome/R$dimen;->toolbar_height_no_shadow:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setUrlChangeListener(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate$BookmarkStateChangeListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->destroy()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    .line 100
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mBackgroundColor:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "bookmarks"

    return-object v0
.end method

.method public getThemeColor()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mThemeColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBookmarkUIStateChange(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto :goto_0
.end method

.method public updateForUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mCurrentUrl:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;->mManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->updateForUrl(Ljava/lang/String;)V

    .line 94
    return-void
.end method
