.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;
.super Ljava/lang/Object;
.source "NewTabPageView.java"


# instance fields
.field private mDesiredIconSize:I

.field private mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

.field private mMinIconSize:I

.field private mMostVisitedLayoutBleed:I

.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 916
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 918
    sget v1, Lorg/chromium/chrome/R$dimen;->most_visited_layout_bleed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mMostVisitedLayoutBleed:I

    .line 920
    sget v1, Lorg/chromium/chrome/R$dimen;->most_visited_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mDesiredIconSize:I

    .line 922
    iget v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mDesiredIconSize:I

    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mMinIconSize:I

    .line 923
    iget v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mDesiredIconSize:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 925
    new-instance v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    const/4 v4, 0x4

    const v5, -0x878788

    const/16 v6, 0x14

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    .line 928
    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;)Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;)I
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mDesiredIconSize:I

    return v0
.end method

.method private loadWhitelistIcon(Lorg/chromium/chrome/browser/ntp/MostVisitedItem;Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1004
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getWhitelistIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    :goto_0
    return v0

    .line 1006
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getWhitelistIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1007
    if-nez v1, :cond_1

    .line 1008
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getWhitelistIconPath()Ljava/lang/String;

    goto :goto_0

    .line 1011
    :cond_1
    const/high16 v0, -0x1000000

    invoke-interface {p2, v1, v0}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;->onLargeIconAvailable(Landroid/graphics/Bitmap;I)V

    .line 1012
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createMostVisitedItemView(Landroid/view/LayoutInflater;Lorg/chromium/chrome/browser/ntp/MostVisitedItem;Z)Landroid/view/View;
    .locals 5

    .prologue
    .line 989
    sget v0, Lorg/chromium/chrome/R$layout;->most_visited_item:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;

    .line 991
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getTitleForDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;->setTitle(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->isOfflineAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;->setOfflineAvailable(Z)V

    .line 994
    new-instance v1, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;

    invoke-direct {v1, p0, p2, v0, p3}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;Lorg/chromium/chrome/browser/ntp/MostVisitedItem;Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;Z)V

    .line 995
    if-eqz p3, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # operator++ for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mPendingLoadTasks:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$1508(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)I

    .line 996
    :cond_0
    invoke-direct {p0, p2, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->loadWhitelistIcon(Lorg/chromium/chrome/browser/ntp/MostVisitedItem;Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 997
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mMinIconSize:I

    invoke-interface {v2, v3, v4, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->getLargeIconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)V

    .line 1000
    :cond_1
    return-object v0
.end method

.method public getMostVisitedLayoutBleed()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mMostVisitedLayoutBleed:I

    return v0
.end method

.method public getNumberOfTiles(Z)I
    .locals 1

    .prologue
    .line 931
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public initMostVisitedLayout(Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;Z)V
    .locals 1

    .prologue
    .line 940
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->setMaxRows(I)V

    .line 941
    return-void

    .line 940
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onIconUpdated(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1016
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedItems:[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$1600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedItems:[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$1600(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)[Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1019
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1020
    new-instance v2, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;

    invoke-direct {v2, p0, v4, v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;Lorg/chromium/chrome/browser/ntp/MostVisitedItem;Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;Z)V

    .line 1022
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$000(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mMinIconSize:I

    invoke-interface {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->getLargeIconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)V

    goto :goto_0

    .line 1018
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setSearchProviderHasLogo(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 944
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_0

    sget v0, Lorg/chromium/chrome/R$dimen;->most_visited_layout_padding_top:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 947
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mMostVisitedLayout:Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$300(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 948
    return-void

    .line 944
    :cond_0
    sget v0, Lorg/chromium/chrome/R$dimen;->most_visited_layout_no_logo_padding_top:I

    goto :goto_0
.end method
