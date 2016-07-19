.class public Lorg/chromium/chrome/browser/ntp/RecentTabsPage;
.super Ljava/lang/Object;
.source "RecentTabsPage.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Lorg/chromium/chrome/browser/NativePage;
.implements Lorg/chromium/chrome/browser/compositor/layouts/content/InvalidationAwareThumbnailProvider;
.implements Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

.field private mForegroundTimeMs:J

.field private mInForeground:Z

.field private mIsAttachedToWindow:Z

.field private final mListView:Landroid/widget/ExpandableListView;

.field private mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

.field private mSnapshotContentChanged:Z

.field private mSnapshotHeight:I

.field private mSnapshotListPosition:I

.field private mSnapshotListTop:I

.field private mSnapshotWidth:I

.field private final mThemeColor:I

.field private final mTitle:Ljava/lang/String;

.field private final mView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mActivity:Landroid/app/Activity;

    .line 83
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->recent_tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mTitle:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mThemeColor:I

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->setUpdatedCallback(Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;)V

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    sget v1, Lorg/chromium/chrome/R$layout;->recent_tabs_page:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    sget v1, Lorg/chromium/chrome/R$id;->odp_listview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    .line 92
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->buildAdapter(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 101
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 104
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->onUpdated()V

    .line 105
    return-void
.end method

.method private static buildAdapter(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V

    return-object v0
.end method

.method private updateForegroundState()V
    .locals 6

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 120
    :goto_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mInForeground:Z

    if-ne v1, v0, :cond_1

    .line 132
    :goto_1
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mInForeground:Z

    .line 125
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mInForeground:Z

    if-eqz v0, :cond_2

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mForegroundTimeMs:J

    .line 127
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordOpenedRecents()V

    goto :goto_1

    .line 129
    :cond_2
    const-string/jumbo v0, "NewTabPage.RecentTabsPage.TimeVisibleAndroid"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mForegroundTimeMs:J

    sub-long/2addr v2, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1
.end method


# virtual methods
.method public captureThumbnail(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/util/ViewUtils;->captureBitmap(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 279
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotContentChanged:Z

    .line 280
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotListPosition:I

    .line 281
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 282
    if-nez v1, :cond_0

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotListTop:I

    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotWidth:I

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotHeight:I

    .line 285
    return-void

    .line 282
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Destroy called before removed from window"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->destroy()V

    .line 170
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mRecentTabsManager:Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->notifyDataSetInvalidated()V

    .line 172
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 176
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 177
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, -0x1

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "recent-tabs"

    return-object v0
.end method

.method public getThemeColor()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mThemeColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "chrome-native://recent-tabs/"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->updateForegroundState()V

    .line 189
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->onChildClick(I)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 247
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 250
    iget-wide v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    .line 251
    iget-wide v2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 253
    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->onCreateContextMenuForGroup(Landroid/view/ContextMenu;Landroid/app/Activity;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 256
    iget-wide v2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 257
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->onCreateContextMenuForChild(ILandroid/view/ContextMenu;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onGroupCollapse(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->setCollapsed(Z)V

    .line 225
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotContentChanged:Z

    .line 226
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->setCollapsed(Z)V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotContentChanged:Z

    .line 219
    return-void
.end method

.method public onUpdated()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->notifyDataSetChanged()V

    .line 232
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mAdapter:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->getGroup(I)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$Group;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 232
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_1

    .line 239
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotContentChanged:Z

    .line 240
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mIsAttachedToWindow:Z

    .line 197
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->updateForegroundState()V

    .line 198
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mIsAttachedToWindow:Z

    .line 204
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->updateForegroundState()V

    .line 205
    return-void
.end method

.method public shouldCaptureThumbnail()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 269
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotContentChanged:Z

    if-nez v2, :cond_2

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotListPosition:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotListTop:I

    if-nez v1, :cond_3

    move v1, v0

    :goto_1
    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotWidth:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;->mSnapshotHeight:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1
.end method

.method public updateForUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method
