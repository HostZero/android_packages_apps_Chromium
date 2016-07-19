.class public Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "RecentTabsRowAdapter.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDefaultFavicon:Landroid/graphics/drawable/Drawable;

.field private final mFaviconCache:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

.field private final mFaviconSize:I

.field private final mGroups:Ljava/util/ArrayList;

.field private final mInvisibleSeparatorGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

.field private final mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

.field private final mRecentlyClosedTabsGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

.field private final mVisibleSeparatorGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V
    .locals 2

    .prologue
    .line 676
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 57
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentlyClosedTabsGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

    .line 58
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mVisibleSeparatorGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

    .line 59
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mInvisibleSeparatorGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

    .line 677
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;

    .line 678
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    .line 680
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->buildFaviconCache(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconCache:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

    .line 682
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 683
    sget v1, Lorg/chromium/chrome/R$drawable;->default_favicon:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mDefaultFavicon:Landroid/graphics/drawable/Drawable;

    .line 684
    sget v1, Lorg/chromium/chrome/R$dimen;->default_favicon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconSize:I

    .line 685
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->loadLocalFavicon(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->loadSyncedFavicon(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->faviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mDefaultFavicon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconCache:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

    return-object v0
.end method

.method private addGroup(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;)V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 817
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mInvisibleSeparatorGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mInvisibleSeparatorGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static buildFaviconCache(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;
    .locals 1

    .prologue
    .line 688
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;-><init>(I)V

    return-object v0
.end method

.method private faviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 702
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 703
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconSize:I

    iget v3, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconSize:I

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private loadLocalFavicon(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 720
    if-nez p2, :cond_1

    .line 722
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mDefaultFavicon:Landroid/graphics/drawable/Drawable;

    .line 742
    :cond_0
    :goto_0
    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {v1, v0, v3, v3, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 744
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconCache:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->getLocalFaviconImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 725
    if-nez v0, :cond_0

    .line 726
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V

    .line 737
    iput-object v0, p1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->imageCallback:Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;

    .line 738
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconSize:I

    invoke-virtual {v1, p2, v2, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->getLocalFaviconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    .line 739
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mDefaultFavicon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private loadSyncedFavicon(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 708
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconCache:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->getSyncedFaviconImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 709
    if-nez v0, :cond_1

    .line 710
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->getSyncedFaviconImageForURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->faviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 711
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mDefaultFavicon:Landroid/graphics/drawable/Drawable;

    .line 712
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconCache:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

    invoke-virtual {v1, p2, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->putSycnedFaviconImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 714
    :cond_1
    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {v1, v0, v2, v2, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 716
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 783
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->getChildType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 859
    invoke-static {}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;->values()[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ChildType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 749
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->getChildView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->getChildrenCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 761
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->getGroupType()Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 809
    invoke-static {}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;->values()[Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$GroupType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->getGroupView(ZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 827
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->getCurrentlyOpenTabs()Ljava/util/List;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$CurrentlyOpenTabsGroup;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->addGroup(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;)V

    .line 831
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentlyClosedTabsGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->addGroup(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;)V

    .line 832
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->getForeignSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;

    .line 833
    new-instance v2, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ForeignSessionGroup;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)V

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->addGroup(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;)V

    goto :goto_0

    .line 835
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->shouldDisplaySyncPromo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SyncPromoGroup;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->addGroup(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;)V

    .line 840
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mRecentlyClosedTabsGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$RecentlyClosedTabsGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 841
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 842
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-eq v0, v1, :cond_3

    .line 843
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mVisibleSeparatorGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 850
    return-void

    .line 845
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    .line 846
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mGroups:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mVisibleSeparatorGroup:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$SeparatorGroup;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method
